local ZGV=ZygorGuidesViewer
if not ZGV then return end

local Pointer = {}
ZGV.Pointer = Pointer

local _G,assert,table,string,tinsert,tonumber,tostring,type,ipairs,pairs,setmetatable,math,wipe = _G,assert,table,string,tinsert,tonumber,tostring,type,ipairs,pairs,setmetatable,math,wipe

local L=ZGV.L

local BZL=ZGV.BZL

Pointer.Debug = ZGV.Debug

Pointer.nummanual = 0

Pointer.waypoints = {}

Pointer.antphase=0

local Astrolabe = DongleStub("Astrolabe-ZGV")

local unusedMarkers = {}


local last_distance=0
local speed=0
local last_speed=0

local initialdist=nil

local lastminimapdist=99999
local minimapcontrol_suspension=0
local minimap_lastset = 0

local cuedinged=nil

local profile={}

local inscale = 300
local MinimapSize = {
	indoor = {
		[0] = inscale, -- scale
		[1] = inscale*0.8, -- 1.25
		[2] = inscale*0.6, -- 5/3
		[3] = inscale*0.4, -- 2.5
		[4] = inscale*0.26666,  -- 3.75
		[5] = inscale*0.16666,  -- 6
	},
	outdoor = {
		[0] = 466 + 2/3, -- scale
		[1] = 400,       -- 7/6
		[2] = 333 + 1/3, -- 1.4
		[3] = 266 + 2/6, -- 1.75
		[4] = 200,       -- 7/3
		[5] = 133 + 1/3, -- 3.5
	},
}

local submap_cache = nil

local function AstrolabeFixZones(za,zb)
	if Astrolabe.WorldMapSize and Astrolabe.WorldMapSize[za].system==za then Astrolabe.WorldMapSize[za]=Astrolabe.WorldMapSize[zb] end
end


local MapFloorCountCache

function ZGV:SanitizeMapFloor(map,flr)
	--if not MapFloorCountCache then MapFloorCountCache=LibRover.MapFloorCountCache end
	--local maxfloor = 666 or MapFloorCountCache[map] or 0  --sinus: max is high, don't force it down - breaks on sneak-leveled MoP maps
	local mapData = Astrolabe.WorldMapSize[map]
	if not mapData or mapData==0 then return 0 end
	if rawget(mapData,flr) then return flr or 0 end  -- sinus: This is evil. Astrolabe is being TOO nice, striving to give us some values, but we don't want any charity. Hence, this to circumvent its metatable.
	return mapData.floorMin or 0
	--flr --[[and min (flr or 0,MapFloorCountCache[map])]] or MapFloorCountCache[map]>0 and 1 or 0 -- TODO make correct clamping if flr > max
end


Pointer.MapFloors = {}  setmetatable(Pointer.MapFloors,{__index=function(self,id) return rawget(self,id) or 0 end})

function Pointer:CacheFloors()
	local mapfloors = self.MapFloors
	for id=1,1000 do
		local sane_id = self:SanitizePhase(id)
		if GetMapNameByID(sane_id) then
			SetMapByID(sane_id)
			local l = GetNumDungeonMapLevels()
			if l>0 then mapfloors[id] = l end
		end
	end
	SetMapToCurrentZone()
end

function Pointer:Startup()
	profile = ZGV.db.profile

	self:CacheFloors()  -- universal, used NOT only by the internal pointer.

	self:SetArrowSkin(profile.arrowskin)

	--[[
	self.EventFrame = CreateFrame("FRAME")
	self.EventFrame:Show()
	self.EventFrame:SetScript("OnEvent",PointerEventFrame_OnEvent)
	self.EventFrame:RegisterEvent("WORLD_MAP_UPDATE")
	--]]

	local overlay = CreateFrame("FRAME","ZygorGuidesViewerPointerOverlay",WorldMapButton)
	self.OverlayFrame = overlay
	overlay:SetAllPoints(true)
	overlay:SetWidth(1002)
	overlay:SetHeight(668)
	--overlay:SetFrameStrata("DIALOG")
	--overlay:SetFrameLevel(WorldMapButton:GetFrameLevel()+1)
	overlay:SetScript("OnEvent",self.Overlay_OnEvent)
	overlay:RegisterEvent("PLAYER_ENTERING_WORLD")
	overlay:RegisterEvent("PLAYER_ALIVE")
	overlay:RegisterEvent("PLAYER_UNGHOST")
	overlay:RegisterEvent("ZONE_CHANGED_NEW_AREA")
	overlay:RegisterEvent("WORLD_MAP_UPDATE")
	ZGV:ScheduleRepeatingTimer(function()  if not WorldMapFrame:IsVisible() then SetMapToCurrentZone() end  end, 10.0)   -- to help the current zone cache

	--overlay:EnableMouse(true)
	--overlay:SetScript("OnMouseUp",self.Overlay_OnClick)
	overlay:SetScript("OnUpdate",self.Overlay_OnUpdate)
	--hooksecurefunc("WorldMapButton_OnClick",ZGV.Pointer.hook_WorldMapButton_OnClick)

	--[[
	local texture = overlay:CreateTexture("ZygorGuidesViewerPointerOverlayTexture","OVERLAY")
	texture:SetAllPoints(true)
	--texture:SetTexture(ZGV.DIR .. "\\Maps\\deadmines")
	texture:SetTexCoord(0,0.975,0,0.65)
	texture:Hide()
	overlay.texture = texture

	local youarehere = overlay:CreateTexture("ZygorGuidesViewerPointerOverlayYouarehere","OVERLAY")
	youarehere:SetTexture(ZGV.DIR .. "\\Skins\\minimaparrow-green-dot")
	overlay.youarehere = youarehere
	--]]

	self:UpdateArrowVisibility()

	--hooksecurefunc("WorldMapFrame_OnShow",ZGV.Pointer.hook_WorldMapFrame_OnShow)


	--WorldMapFrame.PlayerCoord = WorldMapFrame:CreateFontString(nil,"ARTWORK","GameFontHighlightSmall")
	--WorldMapFrame.CursorCoord = WorldMapFrame:CreateFontString(nil,"ARTWORK","GameFontHighlightSmall")

	--WorldMapFrame.PlayerCoord:SetText("Player")
	--WorldMapFrame.CursorCoord:SetText("Cursor")

	--ZGV.ScheduleRepeatingTimer(self,"FixMapLevel", 1.0)

	-- try to fix Astrolabe zoning problems...
	AstrolabeFixZones(770,700) --twilight
	AstrolabeFixZones(700,770)
	AstrolabeFixZones(539,545) --gilneas
	AstrolabeFixZones(545,539)
	AstrolabeFixZones(678,679)
	AstrolabeFixZones(679,678)
	AstrolabeFixZones(544,681)
	AstrolabeFixZones(682,681)
	AstrolabeFixZones(681,682)

	self:SetMinimapPlayerTexture()

	self.ready = true
end


Pointer.Icons = {
	greendot = { icon=ZGV.DIR.."\\Skins\\minimaparrow-green-dot", size=40, minisize=25, rotates=false, edgeicon=ZGV.DIR.."\\Skins\\minimaparrow-green-edge", edgesize=60, spinner=true },
	arrow = { icon=ZGV.DIR.."\\Skins\\minimaparrow-path", size=70, minisize=60, rotates=true, edgeicon=ZGV.DIR.."\\Skins\\minimaparrow-path", edgesize=50 },
	ant =		   { icon=ZGV.DIR.."\\Skins\\minimaparrow-ant", alpha=0.8, size=30, minisize=25, rotates=false, edgeicon=nil, edgesize=1 },
	ant_g = { icon=ZGV.DIR.."\\Skins\\minimaparrow-ant", r=0.4, g=1, b=0, alpha=0.8, size=30, minisize=25, rotates=false, edgeicon=nil, edgesize=1 },
	ant_b =   { icon=ZGV.DIR.."\\Skins\\minimaparrow-ant", r=0, g=0.7, b=1, alpha=0.8, size=30, minisize=25, rotates=false, edgeicon=nil, edgesize=1 },
	ant_p =   { icon=ZGV.DIR.."\\Skins\\minimaparrow-ant", r=0.8, g=0.3, b=1, alpha=0.8, size=30, minisize=25, rotates=false, edgeicon=nil, edgesize=1 },
	ant_y =   { icon=ZGV.DIR.."\\Skins\\minimaparrow-ant", r=1, g=0.8, b=0, alpha=0.8, size=30, minisize=25, rotates=false, edgeicon=nil, edgesize=1 },
	none = { icon="", alpha=0.0, size=1, minisize=1, rotates=false, edgeicon=nil, edgesize=1 },
}



--[[
local numlevels=0
local oldlevel=1
function Pointer.FixMapLevel()
	local x,y = GetPlayerMapPosition("player")
	if x<=0 and y<=0 then
		-- perhaps wrong floor indeed.
		numlevels = GetNumDungeonMapLevels()
		if numlevels>1 then
			oldlevel = GetCurrentMapDungeonLevel()
			for lev=1,numlevels do
				if lev~=oldlevel and GetPlayerMapPosition("player")>0 then
					GetCurrentMapDungeonLevel()
			end
		end
end
--]]

--[[
	data elements:
	title - guess
	type - 'way' 'poi' 'manual' 'corpse' 'path'
	icon - texture path
	onminimap - 'always' 'zone'
	overworld - show on world map
	persistent - don't hide when arrived at
--]]
local function add_default_data(data)
	if not data then data={} end
	--if not data.title then data.title="Waypoint" end
	if not data.type then data.type="way" end
	if not data.icon then data.icon=Pointer.Icons.greendot end
	return data
end

local phasedBases={ [1]=539, [2]=606, [3]=544, [4]=737, [5]=700, [6]=720, [7]=697 }
local phasedMaps = {
	[539]=1, -- Gilneas
	[545]=1,
	[678]=1,
	[679]=1,
	[606]=2, -- Mount Hyjal
	[683]=2,
	[544]=3, -- The Lost Isles
	[681]=3,
	[682]=3,
	[737]=4, -- The Maelstrom
	[751]=4,
	[700]=5, -- Twilight Highlands
	[770]=5,
	[720]=6, -- Uldum
	[748]=6,
	[697]=7, -- Zul'Gurub
	[793]=7
} -- TODO expand as per need
setmetatable(phasedMaps,{__index=function(t,map) return 10000+map or 0 end})
ZGV.Pointer.phasedMaps = phasedMaps

-- initialize phase bases with... something from the phase maps. This might suck, beware.
--for map,num in pairs(phasedMaps) do phasedBases[num]=phasedBases[num] or map end -- hardcoded the bases in because they were not getting assigned correctly here.

function Pointer:IsEnvironmentPhased(target_map)
	-- Assumption: if the player is/was in a map which is known to be phased, the best fit map is the current one
	-- WARNING Blizz works in mysterious ways. If something's broken with phased terrain corpse display, please look here
	-- keywords: worgen arrow not working qq

	-- No no no! Such extensive setmapping seems to cause lag...
	--[[
	local _mm,_ff=GetCurrentMapAreaID(),GetCurrentMapDungeonLevel()
	SetMapToCurrentZone()
	local mm,ff=GetCurrentMapAreaID(),GetCurrentMapDungeonLevel()
	SetMapByID(_mm) SetDungeonMapLevel(_ff)
	--]]
	local mm=ZGV.CurrentMapID
	if mm then
		return rawget(phasedMaps,mm) and phasedMaps[mm]>0 and phasedMaps[target_map]==phasedMaps[mm]
	end
end

-- Save this map as its group's base phase. Do it with map ids obtained fresh from GetCurrentMapAreaID() calls, NEVER from any ID you happen to think of.
function Pointer:SetBasePhase(map)
	local group = phasedMaps[map]
	if not group then return end
	phasedBases[group] = phasedBases[group] and map
end

function Pointer:SanitizePhase(map)
	return phasedBases[phasedMaps[map] or 0] or map
end

function Pointer:SetWaypoint (m,f,x,y,data,arrow)
	data = add_default_data(data)

	-- Halt, Resetzeit!
	--[[
	local _mm,_ff=GetCurrentMapAreaID(),GetCurrentMapDungeonLevel()
	SetMapToCurrentZone()
	local mm,ff=GetCurrentMapAreaID(),GetCurrentMapDungeonLevel()
	SetMapByID(_mm) SetDungeonMapLevel(_ff)
	--]]

	-- Let's see if this is evil. If current map is phased, remember it and use it to de-phase other maps of the same group.
	local mapm,mapf = GetCurrentMapAreaID(),GetCurrentMapDungeonLevel()
	self:SetBasePhase(mapm)  -- Assuming nobody in their right mind is viewing a wrong-phase map. Calling SetMapByID(phasedmap) WILL break this...

	if not m then
		m,f=mapm,mapf  -- Use fresh values, NOT the cached crap. No map means put markers on CURRENTLY DISPLAYED map, not the player's current.
	else
		m=self:SanitizePhase(m)  -- de-phase map!
	end

	--[[
	local phased=self:IsEnvironmentPhased(m)
	if not m or phased then
		if data.type~="ant" then
			--ZGV:Debug("The player and the target are in the same phased environment, putting a marker on the current map instead.")
		end
		--m,f=mm,ff
	end
	--]]

	-- moved to Parser.lua
	--if self.MapFloors[m]>0 then f=max(1,f or 0) end  -- if there are floors, f>=1. Otherwise, f==0.

	local waypoint = self:CreateMapMarker (m,f or 0,x,y,data)

	--ZGV:Debug("Adding waypoint type "..data.type.." in "..c..","..z..","..x..","..y)

	if not waypoint then return end

	waypoint.t=data.title or ("%s %d,%d"):format(Pointer.GetMapNameByID2(waypoint.m or 0) or "?",waypoint.x*100,waypoint.y*100)

	--waypoint.type=data.type
	--waypoint.angle=data.angle	-- not needed, as that's set in CreateMapMarker from data

	local icon = data.icon
	waypoint.minimapFrame.icon:SetTexture(icon.icon)
	waypoint.minimapFrame.icon:SetRotation(icon.rotates and data.angle or 0)
	waypoint.minimapFrame.icon:SetSize(icon.minisize,icon.minisize)
	waypoint.minimapFrame.icon:SetDesaturated(icon.desat)
	waypoint.minimapFrame.icon:SetVertexColor(icon.r or 1,icon.g or 1,icon.b or 1)
	waypoint.minimapFrame.icon:SetAlpha(icon.alpha or 1)
	waypoint.minimapFrame.arrow:SetTexture(icon.edgeicon)
	waypoint.minimapFrame.arrow:SetSize(icon.edgesize,icon.edgesize)
	waypoint.worldmapFrame.icon:SetTexture(icon.icon)
	waypoint.worldmapFrame.icon:SetRotation(icon.rotates and data.angle or 0)
	waypoint.worldmapFrame.icon:SetSize(icon.size,icon.size)
	waypoint.worldmapFrame.icon:SetDesaturated(icon.desat)
	waypoint.worldmapFrame.icon:SetVertexColor(icon.r or 1,icon.g or 1,icon.b or 1)
	waypoint.worldmapFrame.icon:SetAlpha(icon.alpha or 1)
	--if icon.spinner then waypoint.worldmapFrame.spinner:Show() else waypoint.worldmapFrame.spinner:Hide() end
	waypoint.worldmapFrame.spinner:Hide()

	Pointer.MinimapButton_OnUpdate(waypoint.minimapFrame,1000)

	if arrow==nil then arrow=true end
	if arrow and (waypoint.type=="manual" or waypoint.type=="way" or waypoint.type=="corpse") then
		self:ShowArrow(waypoint)
	end

	if waypoint.type=="manual" then
		self.nummanual = self.nummanual + 1
	end



	tinsert(self.waypoints,waypoint)

	--if waypoint and waypoint.type~="ant" then ZGV:Debug("Waypoint set to map:"..waypoint.m.." floor:"..waypoint.f) end

	return waypoint
end

function Pointer:ShowWaiting(phase)
	self.ArrowFrame.WaitingPhase = phase
end

function Pointer:CreateMapMarker (m,f,x,y,data)
	--ZGV:Debug("Internal CreateMapMarker: "..tostring(c).." "..tostring(z).." "..tostring(x).." "..tostring(y).." "..tostring(title))
	if not m and not f then
		m,f = GetCurrentMapAreaID(),GetCurrentMapDungeonLevel()
	end
	--ZGV:Debug("Internal CreateMapMarker nums: "..tostring(c).." "..tostring(z).." "..tostring(x).." "..tostring(y).." "..tostring(title))

	if not m or not f or not x or not y then
		ZGV:Debug("CreateMapMarker bailing out; map=%s/%d %.2f %.2f",m,f,x,y)
		return
	end

	--if x>1 or y>1 then x,y=x/100,y/100 end

	local waypoint = self:GetMarker()
	--local c = LibRover.ContinentsByID[m] or -1
	local c = Astrolabe.WorldMapSize[m].system
	table.zygor_join(waypoint,{ m=m,f=f,x=x,y=y, c=c })
	table.zygor_join(waypoint,data)
	-- TODO: add callbacks for distance detection

	waypoint.minimapFrame.waypoint = waypoint
	waypoint.worldmapFrame.waypoint = waypoint

	waypoint.minimapFrame:EnableMouse(not data.passive)
	waypoint.worldmapFrame:EnableMouse(not data.passive)

	local lm,lf = GetCurrentMapAreaID(),GetCurrentMapDungeonLevel()
	waypoint:UpdateWorldMapIcon(lm,lf)
	waypoint:UpdateMiniMapIcon(lm,lf)

	--if lc==c and lz==z then Astrolabe:PlaceIconOnMinimap(waypoint.minimapFrame, c, z, x, y) end

	return waypoint
end

local dont_setwaypoint=false
function Pointer:ClearWaypoints (waytype)
	local n=0
	local w=1
	dont_setwaypoint=true
	while w<=#self.waypoints do
		if not waytype or self.waypoints[w].type==waytype then
			n=n+1
			self:RemoveWaypoint(w)
		else
			w=w+1
		end
	end
	dont_setwaypoint=false
	--if waytype=="path" then
	--	Pointer.TempWaypath = nil
	--end
	return n
end

function Pointer:RemoveWaypoint(waypoint)
	local wayn
	if type(waypoint)=="number" then  wayn=waypoint  waypoint=self.waypoints[wayn]  end
	if not wayn then for w=1,#self.waypoints do if self.waypoints[w]==waypoint then wayn=w end end end
	assert(wayn,"No waypoint number")
	assert(waypoint,"Waypoint not found")
	Astrolabe:RemoveIconFromMinimap(waypoint.minimapFrame)
	waypoint.minimapFrame:Hide()
	waypoint.minimapFrame.waypoint=nil
	waypoint.worldmapFrame:Hide()
	waypoint.worldmapFrame.waypoint=nil

	--if waypoint.type~="ant" then print("Removing way "..waypoint.type) end

	if waypoint.type=="manual" then
		self.nummanual = max(0,self.nummanual - 1)
	end

	if self.ArrowFrame.waypoint==waypoint then self:HideArrow() end
	if self.CurrentPathTarget==waypoint then
		ZGV:Debug("Removed CurrentPathTarget")
		self.CurrentPathTarget=nil  self.TempWaypath=nil  end

	for k,v in pairs(waypoint) do if k~="minimapFrame" and k~="worldmapFrame" then waypoint[k]=nil end end
	table.insert(unusedMarkers, waypoint)
	table.remove(self.waypoints,wayn)

	if not dont_setwaypoint then ZGV:SetWaypoint() end
end

function Pointer:HideArrow()
	self.ArrowFrame.waypoint = nil
	self:ResetMinimapZoom() -- to perhaps reset the zoom
	--self.ArrowFrame:Hide()
end

function Pointer:ShowArrow(waypoint)
	if not waypoint then return self:HideArrow() end
	--if waypoint.type~="manual" then self:ClearWaypoints("manual") end

	-- fix for "arrow stuck to cursor", probably
	ZygorGuidesViewerPointer_ArrowCtrl:StopMovingOrSizing()
	self.ArrowFrame.dragging=nil

	Astrolabe:PlaceIconOnMinimap(waypoint.minimapFrame, waypoint.m, waypoint.f, waypoint.x, waypoint.y) -- if it's not already there, place it

	self.ArrowFrame.waypoint = waypoint

	self.ArrowFrame.WaitingPhase = nil

	last_distance=0
	speed=0
	lastbeeptime=GetTime()+3
	cuedinged=nil

	initialdist = nil
	lastminimapdist=99999

	--self.ArrowFrame.temporarilyhidden = true
	--self.ArrowFrame:Show()
end

--[[
function Pointer:GetWaypointBearings(way)
	--local dx,dy =
	if type(way)==number then way=self.waypoints[way] end

end
--]]

local markerproto = {}
local markermeta = {__index=markerproto}
local nummarkers=0

function Pointer:GetMarker()
	local marker = table.remove(unusedMarkers)
	if marker then return marker end

	-- create a new marker
	marker = {visible=true}
	setmetatable(marker,markermeta)

	nummarkers=nummarkers+1
	marker.minimapFrame = CreateFrame("Button", "ZGVMarker"..nummarkers.."Mini", Minimap, "ZygorGuidesViewerPointerMinimapMarker")
	marker.minimapFrame.isZygorWaypoint=true -- marking the marker to be protected by substituted Minimap:GetChildren() call. Pun intended.
	--marker.minimapFrame.icon:SetTexture(ZGV.DIR.."Arrows\\Cloqwerk\\minimaparrow-green-dot")
	--marker.minimapFrame.arrow:SetTexture(ZGV.DIR.."Arrows\\Cloqwerk\\minimaparrow-green-edge")
	marker.worldmapFrame = CreateFrame("Button", "ZGVMarker"..nummarkers.."World", self.OverlayFrame, "ZygorGuidesViewerPointerWorldMapMarker")
	--marker.worldmapFrame.icon:SetTexture(ZGV.DIR.."Arrows\\Cloqwerk\\minimaparrow-green-dot")

	return marker
end

function markerproto:Hide()
	self.minimapFrame:Hide()
	self.worldmapFrame:Hide()
	self.visible = false
end

function markerproto:Show()
	self.minimapFrame:Show()
	self.worldmapFrame:Show()
	self.visible = true
end

function markerproto:UpdateWorldMapIcon(m,f)
	local show=true

	if GetCurrentMapZone()==0 and GetCurrentMapContinent()>=0 then
		-- it's world map all right.
		if self.type=="antQQ" then
			show=false
		else
			self.worldmapFrame:EnableMouse(false)
			local halfsize = self.icon.size/2
			self.worldmapFrame.icon:SetSize(halfsize,halfsize)
		end
	else
		self.worldmapFrame:EnableMouse(not self.passive)
		local fullsize = self.icon.size
		self.worldmapFrame.icon:SetSize(fullsize,fullsize)
	end

	if not ZGV.Pointer.OverlayFrame:IsShown() or self.hidden then show=false end

	if not m then m,f=GetCurrentMapAreaID(),GetCurrentMapDungeonLevel() end

	if show and not self.overworld then
		if self.m~=m then show=false end
	end

	if show and self.m==m and self.f~=f   -- same map, wrong floor. HIDE it?
	 -- NO. FADE IT.
	--and not (Astrolabe.WorldMapSize[m][f] and Astrolabe.WorldMapSize[m][f].microName)  -- unless we're in a cave, show outside points
	--and not (Astrolabe.WorldMapSize[self.m][self.f] and Astrolabe.WorldMapSize[self.m][self.f].microName)  -- unless it's in a cave, show those from overworld
	--and self.type~="ant" then  -- or it's an ant.
	then
		self.worldmapFrame:SetAlpha(0.3)
	else
		self.worldmapFrame:SetAlpha(1.0)
		--show=false
	end

	if show then
		local x,y = Astrolabe:PlaceIconOnWorldMap(ZGV.Pointer.OverlayFrame, self.worldmapFrame, self.m, self.f, self.x, self.y)
		if not x or not y
		or x<0 or y<0 or x>1 or y>1
		then
			show=false
		end
	end

	if show then
		self.worldmapFrame:Show()
		--self.worldmapFrame.icon:ClearAllPoints()
		--self.worldmapFrame.icon:SetAllPoints()
		--ZGV:Print("Showing "..way.title)
	else
		self.worldmapFrame:Hide()
	end
end

function markerproto:UpdateMiniMapIcon(m,f)
	if not m then m,f=GetCurrentMapAreaID(),GetCurrentMapDungeonLevel() end
	if profile.minicons
	and not self.hidden
	and not (GetInstanceInfo()==BZL["Deeprun Tram"])
	and
	(
	 self.onminimap=="always" or
	 ZGV.Pointer.ArrowFrame.waypoint==self or
	 ((self.onminimap=="zone" or self.onminimap=="zonedistance") and m==self.m)
	) then
		local r = Astrolabe:PlaceIconOnMinimap(self.minimapFrame, self.m, self.f, self.x, self.y)
	else
		Astrolabe:RemoveIconFromMinimap(self.minimapFrame)
	end
end



-----------------------------------------------------------------------
--[[
do
	local lastx,lasty
	local x,y,zone
	function Pointer:GetPlayerPosition()
		local x,y = GetPlayerMapPosition("player")
	end
end

function Pointer:GetDistFromPlayer(c,z,x,y)
	local pc,pz,px,py

	local px, py = GetPlayerMapPosition("player")
	px, py, pzone = self:GetCurrentPlayerPosition()
	if pzone then
		pzone = BZL[pzone]
	end

	if px == 0 or py == 0 or not px or not py then
		return nil
	end
	if pzone and BZH[pzone] then
		pzone = BZL[pzone]
	end
	if zone and BZH[zone] then
		zone = BZL[zone]
	end
	if not zone then
		zone = GetRealZoneText()
	end
	if not pzone then
		pzone = zone
	end
	local dist = Tourist:GetYardDistance(zone, x, y, pzone, px, py)
	return dist
end
--]]


-- Code taken from HandyNotes, thanks Xinhuan
---------------------------------------------------------
-- Public functions for plugins to convert between MapFile <-> C,Z
--

--[[
local continentMapFile = {
	[WORLDMAP_COSMIC_ID] = "Cosmic", -- That constant is -1
	[0] = "World",
	[1] = "Kalimdor",
	[2] = "Azeroth",
	[3] = "Expansion01",
	[scarlet_cont] = "ScarletEnclave",
}
local reverseMapFileC = {}
local reverseMapFileZ = {}
for C in pairs(Astrolabe.ContinentList) do
	for Z = 1, #Astrolabe.ContinentList[C] do
		local mapFile = Astrolabe.ContinentList[C][Z]
		reverseMapFileC[mapFile] = C
		reverseMapFileZ[mapFile] = Z
	end
end
for C = -1, 3 do
	local mapFile = continentMapFile[C]
	reverseMapFileC[mapFile] = C
	reverseMapFileZ[mapFile] = 0
end
--]]

--[[
function Pointer:GetMapFile(C, Z)
	if type(C)=="string" then return end
	if not C or not Z then return end
	if Z == 0 then
		return continentMapFile[C]
	elseif C > 0 then
		return Astrolabe.ContinentList[C][Z]
	end
end
function Pointer:GetCZ(mapFile)
	return reverseMapFileC[mapFile], reverseMapFileZ[mapFile]
end
--]]

local function FormatDistance(dist)
	if profile.arrowmeters then
		local mdist = dist * 0.9144
		if mdist>1000 then
			return L['dist_km']:format(mdist/1000)
		else
			return L['dist_m']:format(mdist)
		end
	else
		if dist>1760 then
			return L['dist_mi']:format(dist/1760)
		else
			return L['dist_yd']:format(dist)
		end
	end
end
ZGV.FormatDistance=FormatDistance

---------------
function Pointer:CreateArrowFrame()
	if not self.ArrowFrameCtrl then
		self.ArrowFrameCtrl = ZygorGuidesViewerPointer_ArrowCtrl
		self.ArrowFrameCtrl:SetScript("OnUpdate",self.ArrowFrameControl_OnUpdate)
		--self.ArrowFrameCtrl:SetPoint("CENTER",UIParent,"BOTTOMLEFT",ZGV.db.profile.arrowposx,ZGV.db.profile.arrowposy)
		--self.ArrowFrameCtrl:SetMovable(1)
		--self.ArrowFrameCtrl:Show()
	end

	if not self.CurrentArrowSkin then
		self:SetArrowSkin(ZGV.db.profile.arrowskin)
	end

	self:SetupArrow()
end

function Pointer:SetupArrow()
	self.ArrowFrame = self.CurrentArrowSkin:CreateFrame()

	--self.ArrowFrame:SetScript("OnMouseUp",ZygorGuidesViewer.Pointer.ArrowFrame_OnMouseDown) -- messes with EnableMouse below! Do this first.
	--self.ArrowFrame:SetScript("OnMouseDown",ZygorGuidesViewer.Pointer.ArrowFrame_OnMouseUp)
	self.ArrowFrame:SetScript("OnClick",ZygorGuidesViewer.Pointer.ArrowFrame_OnClick)

	-- freeze
	self.ArrowFrame:RegisterForDrag(not profile.arrowfreeze and "LeftButton")
	self.ArrowFrame:RegisterForClicks(not profile.arrowfreeze and "AnyUp")
	self.ArrowFrame:EnableMouseWheel(not profile.arrowfreeze)
	self.ArrowFrame:EnableMouse(not profile.arrowfreeze)

	-- scale
	local scale = profile.arrowscale
	if not scale then return end
	self.ArrowFrame:SetScale(scale)
	self.ArrowFrame:SetScale(scale)
	self.ArrowFrame:SetScale(scale)
	self.ArrowFrame:SetScale(scale)

	-- opacity
	self.ArrowFrame:SetAlpha(profile.arrowalpha)

	local CHAIN = ZGV.ChainCall

	local iconScale = 38*profile.arrowscale
	if not self.ArrowFrame.ArrowIcon then
		self.ArrowFrame.ArrowIcon = CHAIN(CreateFrame("Button","ZygorGuidesViewerPointerArrow_Icon",self.ArrowFrameCtrl,"SecureActionButtonTemplate"))
			:SetSize(iconScale,iconScale)
			:SetPoint("CENTER",self.ArrowFrame,"CENTER",0,-1)
			:RegisterForClicks("LeftButtonUp")
			:SetAttribute("type","spell")
			:SetFrameLevel(self.ArrowFrame:GetFrameLevel()+2)
			:RegisterForDrag(not profile.arrowfreeze and "LeftButton")
			:Hide()
			:SetScript("OnDragStart",self.ArrowFrame:GetScript("OnDragStart"))
			:SetScript("OnDragStop",self.ArrowFrame:GetScript("OnDragStop"))
			.__END
		self.ArrowFrame.ArrowIcon.texture = self.ArrowFrame.ArrowIcon:CreateTexture("ZygorGuidesViewerPointerArrow_IconTexture","OVERLAY")
	end
	--Set Scale and opacity of the icon over the arrow.
	self.ArrowFrame.ArrowIcon:SetSize(iconScale,iconScale)
	self.ArrowFrame.ArrowIcon.texture:SetAlpha(profile.arrowalpha)
end

function Pointer:UpdateWaypoints()
	-- worldmap updates only, so far
	local m,f=GetCurrentMapAreaID(),GetCurrentMapDungeonLevel()
	for w,way in ipairs(self.waypoints) do
		if way.m==m and way.f==f then
			Astrolabe:PlaceIconOnWorldMap(self.OverlayFrame, way.worldmapFrame, way.m, way.f, way.x, way.y )
			way:UpdateMiniMapIcon(m,f)
		end
	end
end

function Pointer:SetFontSize(size)
	local f=self.ArrowFrame.title:GetFont()
	self.ArrowFrame.title:SetFont(f,size)
	--[[
	self.ArrowFrame.dist:SetFont(f,size)
	self.ArrowFrame.eta:SetFont(f,size)

	self.ArrowFrame.title:SetHeight(size)
	self.ArrowFrame.dist:SetHeight(size)
	self.ArrowFrame.eta:SetHeight(size)
	--]]
end



function Pointer:MinimapZoomChanged()
	if profile.minimapzoom then
		--minimapcontrolled = true
	else
		--minimapcontrolled = false
		Minimap:SetZoom(0)
		MinimapZoomOut:Disable()
		MinimapZoomIn:Enable()
	end
end

function Pointer:ResetMinimapZoom()
	if profile.minimapzoom then
		Minimap:SetZoom(0)
		MinimapZoomOut:Disable()
		MinimapZoomIn:Enable()
	end
	--minimap_lastset = 0
end

local function ShowTooltip(button,tooltip)
	if not button.waypoint or not button.waypoint.t then return end
	tooltip:SetOwner(button,"ANCHOR_TOP")
	tooltip:ClearLines()
	tooltip:SetText(button.waypoint.t)
	if button.waypoint.OnEnter then
		local r = button.waypoint:OnEnter(tooltip)
		if r==false then return end
	end
	--GameTooltip:SetFrameStrata("TOOLTIP")
	tooltip:Show()
end

function Pointer.MinimapButton_OnEnter(self,arg)
	if self.waypoint and (self.icon:IsVisible() or self.arrow:IsVisible()) then
		ShowTooltip(self,GameTooltip)
		GameTooltip:AddLine(("Distance: %s"):format(FormatDistance(self.dist)))
		GameTooltip:Show()
		self.hastooltip=true
	end
end

function Pointer.WorldmapButton_OnEnter(self,arg)
	if self.waypoint and (self.icon:IsVisible() or self.arrow:IsVisible()) then
		WorldMapPOIFrame.old_allowBlobTooltip = WorldMapPOIFrame.allowBlobTooltip
		WorldMapPOIFrame.allowBlobTooltip = false

		ShowTooltip(self,WorldMapTooltip)
	end
end

function Pointer.MinimapButton_OnLeave(self)
	GameTooltip:Hide()
	self.hastooltip=false
end

function Pointer.WorldmapButton_OnLeave(self)
	WorldMapTooltip:Hide()

	WorldMapPOIFrame.allowBlobTooltip = WorldMapPOIFrame.old_allowBlobTooltip
	WorldMapPOIFrame.old_allowBlobTooltip = nil
end

local oldfacing=-1
function Pointer.MinimapButton_OnUpdate(self,elapsed)
	if not self.waypoint then return end
	local c = self.minimap_count
	if not c then c=0 end
	c = c + elapsed
	if c < 0.1 then
		self.minimap_count = c
		return
	end
	elapsed = c
	self.minimap_count = 0

	if GetInstanceInfo()==BZL['Deeprun Tram']
	or not profile.minicons
	then -- We're in a mapless place. Tough luck.
		self.icon:Hide() self.arrow:Hide() return
	end

	local dist,x,y = Astrolabe:GetDistanceToIcon(self)

	if not dist --[[or IsInInstance()--]] then self.icon:Hide() self.arrow:Hide() return end

	self.lastdist=self.dist
	self.dist = dist
	if self.waypoint.OnUpdate then self.waypoint:OnUpdate() end

	if self.waypoint.hidden or self.waypoint.hideminimap then
		self.icon:Hide()
		self.arrow:Hide()
		return
	end

	local edge = Astrolabe:IsIconOnEdge(self)

	local facing = GetPlayerFacing()
	local rotate_minimap = GetCVar("rotateMinimap")=="1"

	if edge then
		if self.showonedge or ZGV.Pointer.ArrowFrame.waypoint==self.waypoint then
			self.icon:Hide()
			self.arrow:Show()

			local angle = Astrolabe:GetDirectionToIcon(self)
			--angle = angle + 2.356194  -- rad(135)

			if rotate_minimap then
				angle = angle - GetPlayerFacing()
			end

			--local sin,cos = math.sin(angle)*0.71, math.cos(angle) * 0.71
			--self.arrow:SetTexCoord(0.5-sin, 0.5+cos, 0.5+cos, 0.5+sin, 0.5-cos, 0.5-sin, 0.5+sin, 0.5-cos)
			self.arrow:SetRotation(angle)
		else
			self.icon:Hide()
			self.arrow:Hide()
		end
	else
		self.icon:Show()
		self.arrow:Hide()
		if self.waypoint.angle and self.waypoint.icon.rotates then
			self.icon:SetRotation(self.waypoint.angle - (rotate_minimap and facing or 0))
		end
	end
	--oldfacing=facing

	-- handle tooltip distance updates
	if self.lastdist~=self.dist and self.hastooltip then
		ZGV.Pointer.MinimapButton_OnEnter(self)
	end

	-- minimap autozoom
	if profile.minimapzoom then
		local Minimap = Minimap
		local getzoom = Minimap:GetZoom()
		if getzoom~=minimap_lastset then
			-- user playing with minimap; suspend our activities for a while
			minimapcontrol_suspension = 5.0
			minimap_lastset = getzoom
		end

		-- are we pointed to?
		if Pointer.ArrowFrame.waypoint==self.waypoint then
			if minimapcontrol_suspension>0 then
				minimapcontrol_suspension = minimapcontrol_suspension - elapsed
			else
				local old_minimap_lastset=minimap_lastset
				local dist = dist*2
				if dist~=lastminimapdist then
					local mapsizes = MinimapSize[Astrolabe.minimapOutside and 'outdoor' or 'indoor']

					minimap_lastset=0
					for i=1,Minimap:GetZoomLevels()-1 do
						if dist<mapsizes[i]*0.7 then minimap_lastset=i end
					end

					if old_minimap_lastset~=minimap_lastset then
						-- sanitise buttons
						if(minimap_lastset == (Minimap:GetZoomLevels() - 1)) then MinimapZoomIn:Disable() else MinimapZoomIn:Enable() end
						if(minimap_lastset == 0) then MinimapZoomOut:Disable() else MinimapZoomOut:Enable() end

						Minimap:SetZoom(minimap_lastset)
					end
				end
				lastminimapdist=dist
			end
		end
	end
end

function Pointer.MinimapButton_OnClick(self,button)
	if button=="RightButton" then
		if ZGV.Pointer.ArrowFrame.waypoint==self.waypoint then ZGV.Pointer:HideArrow() end
		if self.waypoint.type=="manual" then ZGV.Pointer:RemoveWaypoint(self.waypoint) end
		if ZGV.db.profile.debug and self.waypoint and self.waypoint.type=="path" and self.waypoint.pathnode and ZGV.Pointer.pathfollow=="pathfind" then  LibRover.banned_nodes[self.waypoint.pathnode]=1  ZGV:Debug("Banned node: %s",self.waypoint.pathnode:tostring())  LibRover:UpdateNow()  end
		ZGV:SetWaypoint()
	else
		ZGV.Pointer:ShowArrow(self.waypoint)

		if ZGV.db.profile.pathfinding and not LibRover.is_stub then
			if self.waypoint.type=="path" then return end
			ZGV.Pointer.CurrentPathTarget = self.waypoint
			LibRover:FindPath(0,0,0,0,self.waypoint.m,self.waypoint.f,self.waypoint.x,self.waypoint.y, ZGV.Waypoints_PathFoundHandler, {title=self.waypoint.title})
		else
			ZGV.Pointer.CurrentPathTarget = nil
		end
	end
end

function Pointer.MinimapButton_OnEvent(self,event,...)
	-- temporarily unused
	ZGV:Debug("MINIMAP ONEVENT "..event)
	if not self.waypoint then self:Hide() return end

	if event == "PLAYER_ENTERING_WORLD" then
		local way = self.waypoint

		if way then
			way:UpdateMiniMapIcon()
		end
	end
end

function Pointer.WorldMapButton_OnEvent(self,event,...)
	local way = self.waypoint

	--ZGV:Print("WORLDMAP ONEVENT "..event)
	if event == "WORLD_MAP_UPDATE" then
		--[[
		local show=true
		if not way.showinallzones then
			local m,f = GetCurrentMapAreaID(),GetCurrentMapDungeonLevel()
			if way.m~=m or way.f~=f then show=false end
		end

		if way and way.OnEvent then way:OnEvent(event,...) end
		if not way or way.hidden then self:Hide() return end

		local x,y = Astrolabe:PlaceIconOnWorldMap(ZGV.Pointer.OverlayFrame, self, self.waypoint.m, self.waypoint.f, self.waypoint.x, self.waypoint.y)
		if (x and y and (0 < x and x <= 1) and (0 < y and y <= 1)) then
			self:Show()
		else
			self:Hide()
		end

		self.icon:ClearAllPoints()
		self.icon:SetAllPoints()
		--]]

		--[[
		if GetCurrentMapZone()==0 then
			self:SetWidth(10)
			self:SetHeight(10)
		else
		end
		--]]

		--[[
		self:SetWidth(25)
		self:SetHeight(25)
		--]]

	elseif event == "PLAYER_ENTERING_WORLD" or event=="ZONE_CHANGED_NEW_AREA" then
		if way then way:UpdateMiniMapIcon() end
	end
end

function Pointer:IsCorpseArrowNeeded() -- small utility against bulky ifs, NB: waypointer-independent
	return ZGV.db.profile.corpsearrow and UnitIsDeadOrGhost("player") and select(2, IsInInstance()) ~= "pvp" and not IsActiveBattlefieldArena()
end

function Pointer.Overlay_OnEvent(self,event,...)
	if event == "WORLD_MAP_UPDATE" then
	 --[[
		if not WorldMapFrame:IsVisible() then
			return

		elseif IsInInstance() and GetPlayerMapPosition("player")==0 then
			--magic!
			local inst = instancemaps[GetZoneText()]
			if inst then
				ZGV.Pointer.OverlayFrame.texture:SetTexture(ZGV.DIR .. "\\Maps\\" ..inst.map)
				ZGV.Pointer.OverlayFrame.texture:Show()
				ZGV.Pointer.OverlayFrame:EnableMouse(true)

				local room = inst.rooms and inst.rooms[GetMinimapZoneText()]
				if room then
					--ZGV:Print("room")
					self.youarehere:SetPoint("CENTER",self,"TOPLEFT",room.x*self:GetWidth(),-room.y*self:GetHeight())
					self.youarehere:Show()
				else
					self.youarehere:Hide()
				end

				WorldMapFrameTitle:SetText(GetZoneText())
				WorldMapFrameAreaLabel:SetAlpha(0)
			end

			for way,w in pairs(ZGV.Pointer.waypoints) do
				way:Hide()
			end

		else
			--magic!
			-- hide instance overlay
			ZGV.Pointer.OverlayFrame.texture:Hide()
			ZGV.Pointer.OverlayFrame:EnableMouse(false)
			WorldMapFrameAreaLabel:SetAlpha(1)

			--ZGV:Print("showing...")
		end
	 --]]
		local m,f = GetCurrentMapAreaID(),GetCurrentMapDungeonLevel()
		local count=0
		for w,way in ipairs(ZGV.Pointer.waypoints) do
			way:UpdateWorldMapIcon(m,f)
			if way.worldmapFrame:IsShown() and way.OnEvent then way:OnEvent(event,...) end
		end
	elseif (event=="PLAYER_ALIVE" or event=="PLAYER_ENTERING_WORLD" or event=="ZONE_CHANGED_NEW_AREA")
			and ZGV.db.profile.waypointaddon=="internal" then
		if ZGV.Pointer:IsCorpseArrowNeeded() then
			ZGV:Debug(event.." (dead)")
			-- corpse arrow
			if not ZGV.Pointer.corpsearrow then ZGV.Pointer:SetCorpseArrow() end
		else
			ZGV:Debug(event.." (not dead)")
			ZGV.Pointer.corpsearrow = nil
			local n=ZGV.Pointer:ClearWaypoints("corpse")
			if n>0 then ZGV:SetWaypoint() end
		end

		--[[
		for way,w in pairs(ZGV.Pointer.waypoints) do
			way:UpdateMiniMapIcon()
		end
		--]]

	elseif event=="PLAYER_UNGHOST" then
		ZGV:Debug("Player unghosted!")
		ZGV.Pointer:ClearWaypoints("corpse")
		ZGV.Pointer.corpsearrow = nil
		ZGV:SetWaypoint()
	end
end
------------------------------------------- ARROW -----------------


--[[
function Pointer.ArrowFrame_OnEvent(self,event,...)
	if event=="WORLD_MAP_UPDATE" then
		ZGV.Pointer:UpdateWaypoints()
	end
end
--]]



local arrowctrl_elapsed=0
local arrowfps = 1/60
local forceupdate_elapsed = 0

function Pointer.ArrowFrameControl_OnUpdate(self,elapsed)
	arrowctrl_elapsed = arrowctrl_elapsed + elapsed
	if arrowctrl_elapsed >= arrowfps then   -- 20fps MAX
		-- update skin IF WE HAVE ONE ON only, dammit
		if Pointer.ArrowFrame then Pointer.ArrowFrame_OnUpdate_Common(Pointer.ArrowFrame,arrowctrl_elapsed) end
		arrowctrl_elapsed = 0
	end

	local icon=ZygorGuidesViewerPointerArrow_Icon
	if icon:IsVisible() and not ZGV.Pointer.ArrowFrame:IsVisible() then icon:Hide() end

	-- update waypoints periodically, in case some get stuck on player-out-of-map,-go-away state
	forceupdate_elapsed = forceupdate_elapsed + elapsed
	if forceupdate_elapsed > 3 then
		Pointer:UpdateWaypoints()
		forceupdate_elapsed = 0
	end
end

-- And we have an onupdating frame even if hidden. Yay!

-- map perc as: t1..t2 to 0.0..0.5  t3..t4 to 0.5..1.0
function Pointer.CalculateDirectionTiers(perc,t1,t2,t3,t4)
	if perc<t1 then return 0 , 1
	elseif perc<t2 then return (perc-t1)/(t2-t1)*0.5 , 2
	elseif perc<t3 then return 0.5 , 3
	elseif perc<t4 then return ((perc-t3)/(t4-t3)*0.5) + 0.5 , 4
	else return 1.0 , 5 end
end

local oldangle = 0

local title,disttxt,etatxt

local speeds={}
local stoptime=0
local avgspeed=0

local eta_elapsed=0
local etadisp_elapsed=0

local lastbeeptime=GetTime()
local lastturntime=lastbeeptime
local laststoptime=lastbeeptime
local lastmovetime=lastbeeptime

local msin,mcos,mabs=math.sin,math.cos,math.abs

local eta

local DEFAULT_STEP_DIST = 30

local pathfindlockout = 0

local function TableFind(table,val)  -- unused, yeah
	for k,v in pairs(table) do if v==val then return k end end
end

--- Find 2 values in a table
-- @return key1,key2
local function TableFind2(table,val1,val2)
	local k1,k2
	for k,v in pairs(table) do  if v==val1 then k1=k end  if v==val2 then k2=k end  end
	return k1 or -1,k2 or -1
end

-- Floor orderings:
-- 1 = "floors" (higher number is above lower)
-- -1 = "dungeons" (higher number is below lower)
-- table - order your floors from TOP to BOTTOM.
local FloorUpDowns = {
	[721] = 1, --Blackrock Spire
	[321] = -1, --Orgrimmar
	[504] = -1, --Dalaran
	[691] = -1, --Gnomeregan
	[688] = {2,1,3},
	[903] = 1,
}

function FloorOrder(map,a,b)
	local order = FloorUpDowns[map]
	if not order then return b-a end
	if type(order)=="number" then return order*(b-a) end
	if type(order)=="table" then
		if order[1] then
			-- plain ordering
			a,b=TableFind2(order,a,b)
			return a-b
		end
		-- "2_3" ordering
		return order[a.."_"..b] or 0
	end
	return 0
end


faction = UnitFactionGroup("player")=="Alliance" --true if alliance false if horde

local teleLocs = {
		[504] = { ["id"] = 53140, ["name"]="Dalaran",},
		[481] = { ["id"] = faction and 33690 or 35715, ["name"]="Shattrath",},
		[38] = { ["id"] = 49358, ["name"]="Stonard",},
		[141] = { ["id"] = 49359, ["name"]="Theramore",},
		[362] = { ["id"] = 3566, ["name"]="ThunderBluff",},
		[480] = { ["id"] = 32272, ["name"]="Silvermoon",},
		[382] = { ["id"] = 3563, ["name"]="UnderCity",},
		[321] = { ["id"] = 3567, ["name"]="Orgrimmar",},
		[381] = { ["id"] = 3565, ["name"]="Darnassus",},
		[471] = { ["id"] = 32271, ["name"]="Exodar",},
		[301] = { ["id"] = 3561, ["name"]="StormWind",},
		[341] = { ["id"] = 3562, ["name"]="IronForge",},
		[708] = { ["id"] = faction and 88342 or 88344, ["name"]="TolBarad",},
		[241] = { ["id"] = 18960, ["name"]="Moonglade",}, --Druids
		[23] = { ["id"] = 50977, ["name"]="UnderCity",}, --Death Knights
}

local function ZoneIsOutdoor(map)
	local mapdata = Astrolabe.WorldMapSize[map]   if not mapdata then return end
	local system = mapdata.system
	return (system==13 or system==14 or system==466 or system==485 or system==862) and map~=504 and map~=321 and map~=903
	-- continents
end

local function GetPreciseFloorCrossingText(map,f_from,f_to)
	if ZoneIsOutdoor(map) then -- overworld, assuming we're in/out of a cave or mine.
		if f_from==0 then return L['pointer_floors_incave'] end
		if f_to==0 then return L['pointer_floors_outcave'] end
	end
	return nil
end


local cache_throttle=0
local were_in_unknown_location

function Pointer.ArrowFrame_OnUpdate_Common(self,elapsed)

	--[[
	arrow_throttle = arrow_throttle + elapsed
	if arrow_throttle < 0.05 then return end
	elapsed = arrow_throttle
	arrow_throttle = 0
	--]]

	if (not self.waypoint or not ZGV.db.profile.arrowshow) or not UIParent:IsVisible() or PetBattleFrame:IsVisible()
	or (profile.hidearrowwithguide and self.waypoint and self.waypoint.type=="way" and not ZGV.Frame:IsVisible())
	then
		if not InCombatLockdown() then self:Hide() end
		return
	end
	--if GetCurrentMapContinentAndZone()~=self.waypoint.c then end

	cache_throttle = cache_throttle + elapsed
	if cache_throttle > 1.0 then
		cache_throttle = 0
		ZGV:CacheCurrentMapID()
	end

	-- adding icons over arrow for different types of teleports
	-- sequential digging in, safe and pretty fast
	local node = Pointer.TempWaypath and Pointer.TempWaypath.coords[2]
	local link = node and node.pathnode and node.pathnode.calclink
	local mode = link and link.mode
	-- now mode contains mode of transport!

	local icon = ZygorGuidesViewerPointerArrow_Icon
	local arrow=ZGV.Pointer.ArrowFrame

	if MouseIsOver(icon) and IsMouseButtonDown("RightButton") then
		Pointer.ArrowFrame_OnClick(nil,"RightButton") --***Is possible for it to not work if click goes up and down without OnUpdate running***
	end

	local safe =  not InCombatLockdown() 

	if mode=="hearth" and not UnitIsDeadOrGhost("player") then
		if safe then
			icon:SetAttribute("type","item")
			icon:SetAttribute("item",GetSpellInfo(8690)) --Yes, get local name for hearthstone then cast it by item name. Casting by spell doesn't work
			icon:Show()
		
			icon.texture:SetAllPoints(true)
			icon.texture:SetTexture("Interface\\ICONS\\INV_MISC_RUNE_01")
	
			arrow:ShowNothing()
		end
		self:ShowText(self.waypoint.arrowtitle or self.waypoint.t)
		return
	elseif mode=="astralrecall" and not UnitIsDeadOrGhost("player") then
		if safe then
			icon:SetAttribute("type","spell")
			icon:SetAttribute("spell",GetSpellInfo(556))
			icon:Show()
		
			icon.texture:SetAllPoints(true)
			icon.texture:SetTexture("Interface\\ICONS\\spell_nature_astralrecal")
			arrow:ShowNothing()
		end
		self:ShowText(self.waypoint.arrowtitle or self.waypoint.t)
		return
	elseif mode=="teleport" and not UnitIsDeadOrGhost("player") then
		local endid=node.map or node.m
		if safe then
			icon:SetAttribute("type","spell")		
			icon:SetAttribute("spell",GetSpellInfo(teleLocs[endid].id))
			icon:Show()
		
			icon.texture:SetAllPoints(true)
			icon.texture:SetTexture("Interface\\ICONS\\spell_arcane_teleport"..teleLocs[endid].name)
			arrow:ShowNothing()
		end
		self:ShowText(self.waypoint.arrowtitle or self.waypoint.t)
		return
	end

	-- normal operation...
	
	if safe then icon:Hide() end

	local dist,x,y
	local badfloor,errortxt
	local cm,cf,cc = ZGV.CurrentMapID,ZGV.CurrentMapFloor,Astrolabe.WorldMapSize[ZGV.CurrentMapID or 0].system --,LibRover.ContinentsByID[ZGV.CurrentMapID]

	if IsInInstance() and cm~=self.waypoint.m then self:Hide() return end

	--ZGV:Debug("Waypoint Map: "..self.waypoint.m.." Current: "..cm.." Waypoint Floor:"..self.waypoint.f)

	-- If the Minimap is shown, then there is no need for overhead, just take what Astrolabe calculated for us this frame

	if GetInstanceInfo()==BZL['Deeprun Tram']
	then -- We're in a mapless place. Tough luck.
		return
	end

	if not Astrolabe:GetCurrentPlayerPosition() then
		if GetUnitSpeed("player")>0 then
		-- we're in an unknown location, and moving - our location is totally unknown now. DON'T display distances.
			were_in_unknown_location = true
		end
	else
		were_in_unknown_location = false
	end


	-- Calculate distance, or at least get a fake one

	if Minimap:IsShown() then
		dist,x,y = Astrolabe:GetDistanceToIcon(self.waypoint.minimapFrame)
	else
		-- When Minimap is hidden, Astrolabe ceases updating, so let us force calculation
		local _x, _y=GetPlayerMapPosition("player")
		local wp=self.waypoint.minimapFrame.waypoint
		dist, x, y = Astrolabe:ComputeDistance(ZGV.CurrentMapID, ZGV.CurrentMapFloor, _x, _y, wp.m, wp.f, wp.x, wp.y)
		-- Since Astrolabe does not update it when the minimap is hidden, let's do it on our own instead
		self.waypoint.minimapFrame.dist=dist
	end

	local transcontinental
	if self.waypoint.c~=cc then
		dist=nil
		transcontinental = true
	end

	if were_in_unknown_location then
		dist=nil
		if WorldMapFrame:IsVisible() then
			errortxt = L['pointer_close_map']
		else
			errortxt = "(current position unknown)"
		end
	end
	dist=dist or 99999999  -- this means FAR. Causes "zone, continent" display.


	local show_stairs
	
	local samemap = (self.waypoint.m==cm or phasedMaps[self.waypoint.m]==phasedMaps[cm])   -- same map, just maybe different phase

	-- TODO: clean this shit up properly. Decide actions first, then strings to display, etc., not randomly like this. ~sinus
	
	--if samemap or self.waypoint.c==cc then   -- why check dist here..?
		-- same map, or at least same (sane) continent.
		-- can point, but might be wrong map or floor.
		if samemap and self.waypoint.f~=cf then
			badfloor=FloorOrder(cm,cf,self.waypoint.f)
			--print(cm,cf,self.waypoint.f,badfloor)
			local function L_or_nil(id)
				local l = L[id]
				if l==id then return nil else return l end
			end
			errortxt = L_or_nil('pointer_floors_'..cm..'_'..cf..'_'..self.waypoint.f)
					or L_or_nil('pointer_floors_'..cm..'_'..cf..'_*')
					or L_or_nil('pointer_floors_'..cm..'_*_'..self.waypoint.f)
					or L_or_nil('pointer_floors_'..cm)
					or GetPreciseFloorCrossingText(cm,cf,self.waypoint.f)
					or (badfloor>0 and L['pointer_floors_up'] or L['pointer_floors_down'])
			show_stairs=true

			if ZoneIsOutdoor(self.waypoint.m) then errortxt,show_stairs=nil end  -- Don't warn about floors on outdoor maps. TODO: remove later. 
				-- diff floor? prepare to do floor warnings.
		end
		-- Otherwise just point. No funny stuff here.
	--else
	--	errortxt = "far"
	--end

	-- Safety measure, make sure self.badfloortxt is updated to reflect current surroundings
	self.errortxt = errortxt


	-- okay, we're live. 3, 2, 1, action!

	if safe then self:Show() end

	local playerangle = GetPlayerFacing()
	local angle=0

	local going_up
	if errortxt then
		local plusminus,err2=errortxt:match("([+-])(.*)")
		if plusminus then  going_up=(plusminus=="+") and 1 or -1  errortxt=err2  end
	end

	if show_stairs and self.ShowStairs then
		-- wrong floor, omg
			self:ShowStairs((going_up or badfloor)>0)

	elseif dist <= (self.waypoint.dist or 10.0)
	and not self.waypoint.player  -- don't ever "arrive" on player waypoint
	then

		if not self.waypoint.arrived then
			-- ARRIVED!
			self.waypoint.arrived = true

			self:ShowArrived()

			--self.eta:Hide()
			--self.dist:Hide()


			-- remove waypoint when standing on the destination for a bit

			--[[
				oldangle = oldangle + elapsed * 3
				while oldangle>6.28319 do oldangle = oldangle - 6.28319 end
				local sin,cos = msin(oldangle + 2.356194)*0.71, mcos(oldangle + 2.356194)*0.71
				self.back:SetTexCoord(0.5-sin, 0.5+cos, 0.5+cos, 0.5+sin, 0.5-cos, 0.5-sin, 0.5+sin, 0.5-cos)
				--]]

				--[[
				count = count + 1
				if count >= 55 then
					count = 0
				end

				cell = count
				local column = cell % 9
				local row = floor(cell / 9)

				local xstart = (column * 53) / 512
				local ystart = (row * 70) / 512
				local xend = ((column + 1) * 53) / 512
				local yend = ((row + 1) * 70) / 512
				arrow:SetTexCoord(xstart,xend,ystart,yend)
			--]]
		end

		-- clear-on-arrival waypoints? who uses these?
		if self.waypoint.clearonarrival then
			self.heretime = (self.heretime or 0) + elapsed

			if self.heretime>1 then
				ZGV.Pointer:RemoveWaypoint(self.waypoint)
				ZGV:SetWaypoint()
				return
			end
		end

		-- pick next in path
		if (self.waypoint.type=="path" and (ZGV.Pointer.pathfollow=="strict" or ZGV.Pointer.pathfollow=="pathfind"))
		and not self.waypoint.noskip
		and GetTime()>pathfindlockout then
			local nextway = ZGV.Pointer:GetNextInPath()
			if nextway and nextway~=self.waypoint then ZGV.Pointer:ShowArrow(nextway) end
			pathfindlockout = GetTime()+0.5  -- don't try to pathfind sooner than in 0.5 secs
		end

	elseif self.WaitingPhase then

		if self.ShowWaiting then
			self:ShowWaiting(self.WaitingPhase)
		end

	else

		self.waypoint.arrived = false

		self.heretime=0

		--self.eta:Show()
		--self.dist:Show()


		--[[ angle ]]--

		angle = Astrolabe:GetDirectionToIcon(self.waypoint.minimapFrame)
		if not angle or errortxt=="far" then
			angle=3.1415
		else
			--local player = profile.arrowcam and cam_yaw - (is_moving and GetPlayerFacing() or 0) or GetPlayerFacing()
			angle = angle - playerangle
		end
		while angle<0 do angle=angle+6.28319 end

		--angle = angle + 2.356194  -- rad(135)

		if profile.arrowsmooth and self.CurrentArrowSkin and self.CurrentArrowSkin.features.smooth then
			local dif = angle-oldangle
			if dif>0.001 or dif<0.001 then
				while dif>3.14159 do dif=dif-6.28319 end
				while dif<-3.14159 do dif=dif+6.28319 end

				angle = angle-dif/(1+elapsed*20) --speed!

				--local newdif = newangle-oldangle
				--while newdif>3.14159 do newdif=newdif-6.28319 end
				--while newdif<-3.14159 do newdif=newdif+6.28319 end

				--if newdif*dif>0 then  -- no jittering
				--	angle=newangle
				while angle>6.28319 do angle=angle-6.28319 end
				while angle<0 do angle=angle+6.28319 end
				--end
			end
			oldangle=angle
		end

		--


		-------------

		local perc = mabs(1-angle*0.3183)  -- 1/pi  ;  0=target backwards, 1=target ahead
		local t1,t2,t3,t4,t5 = 0.7,0.75,0.95,1.0
		if perc<t1 then perc=0
		elseif perc<t2 then perc=(t2-perc)/(t2-t1)*0.5
		elseif perc<t3 then perc=0.5
		elseif perc<t4 then perc=(t4-perc)/(t4-t3)*0.5 + 0.5
		else perc=1.0 end


		self:ShowTraveling(elapsed,angle,dist)


		--[[
		local cell

		local perc = math.abs((math.pi - math.abs(angle)) / math.pi)

		local gr,gg,gb = unpack(TomTom.db.profile.arrow.goodcolor)
		local mr,mg,mb = unpack(TomTom.db.profile.arrow.middlecolor)
		local br,bg,bb = unpack(TomTom.db.profile.arrow.badcolor)
		local r,g,b = ColorGradient(perc, br, bg, bb, mr, mg, mb, gr, gg, gb)
		arrow:SetVertexColor(r,g,b)

		cell = floor(angle / twopi * 108 + 0.5) % 108
		local column = cell % 9
		local row = floor(cell / 9)

		local xstart = (column * 56) / 512
		local ystart = (row * 42) / 512
		local xend = ((column + 1) * 56) / 512
		local yend = ((row + 1) * 42) / 512
		arrow:SetTexCoord(xstart,xend,ystart,yend)
		--]]
	end


	-- labels

	--ZGV:Debug(("dist %.2f  chg %.2f  speed %.2f  ela %.2f"):format(dist,last_distance-dist,speed,eta_elapsed))

	local limit,minlimit=30,5

	eta_elapsed = eta_elapsed + elapsed
	if eta_elapsed >= 0.2 then

		if (ZGV.Pointer.pathfollow=="smart" or ZGV.Pointer.pathfollow=="loose" or ZGV.Pointer.pathfollow=="smart2")
		and (not self.waypoint or self.waypoint.type=="path") then
			local nextway = ZGV.Pointer:GetNextInPath()
			if nextway and nextway~=self.waypoint then ZGV.Pointer:ShowArrow(nextway) end
		end

		speed = (last_distance-dist) / eta_elapsed
		if last_distance == 0 then speed = 0 end
		if last_distance==dist then stoptime=stoptime+eta_elapsed else stoptime=0 end

		--speed=tonumber(("%.2f"):format(speed))
		--ZGV:Print(("dist %.2f  chg %.2f  speed %.2f  thr %.2f"):format(dist,last_distance-dist,speed,eta_elapsed))


		--ZGV:Debug(stoptime)

		if speed>=0 and stoptime<2 then
			table.insert(speeds,1,speed)
			if #speeds>limit then table.remove(speeds) end
		else
			--if stoptime>=10 then
			speed=0
			wipe(speeds)
			--end
		end

		-- Speed meter. Perhaps one day.
		--[[
		profile.arrowshowspeed = true
		if profile.arrowshowspeed then
			local spd
			if profile.arrowmeters then
				spd=("%.02f km/h"):format(speed) --*3.6
			else
				spd=("%.02f mph"):format(speed) --*2.0454
			end
			print(spd)
			self.eta:SetText(spd)
		end
		--]]
		--ZGV:Print(eta_elapsed)

		--ZGV:Print(("elapsed %.2f  mov %.2f  speed %.2f  thr %.2f"):format(elapsed,last_distance-dist,speed,eta_elapsed))

		--ZGV:Debug(("%d stops, %.2f straight"):format(stoptime,t-lastturntime))
		if ZGV.db.profile.audiocues and IsFlying() then
			local t=GetTime()
			if lastplayerangle~=playerangle then lastturntime=t end
			if last_distance==dist then laststoptime=t else lastmovetime=t end
			if t-lastmovetime<=1 and t-laststoptime>3 and t-lastturntime>5 then
				-- if flying, basically.
				-- and beelining for the last 3 seconds.

				-- ZGV:Debug(("will cue; dist=%d initial=%d lastbeep=%d"):format(dist,initialdist,GetTime()-lastbeeptime))
				if dist<=100 and not cuedinged then
					PlaySoundFile("Sound\\Doodad\\BoatDockedWarning.wav")
					-- lastwayding=self.waypoint  -- DO NOT COMPARE WAYPOINTS. They come from a POOL and are REUSED!
					cuedinged=true
					--ZGV:Debug("dinging")
				else
					--ZGV:Debug("not dinging, dist="..dist..", lastway="..(lastwayding and lastwayding.t or "nil"))
				end
				--ZGV:Debug("cuedinged "..tostring(cuedinged))

				-- warning beeps
				if self.arrow:IsVisible()  then
					local perc = mabs(1-angle*0.3183)  -- 1/pi
					if perc<=0.9 then
						if t-lastbeeptime>2 then
							PlaySoundFile( [[Sound\Item\Weapons\Ethereal\Ethereal2H3.wav]] )

							if self.ShowWarning then self:ShowWarning() end

							lastbeeptime=t
						end
					end
				end
			end
			lastplayerangle=playerangle
		end



		last_distance = dist
		eta_elapsed = 0
	end

	--ZGV:Print(table.concat(speeds,"  "))

	etadisp_elapsed = etadisp_elapsed + elapsed
	if etadisp_elapsed >= 0.9 then

		local avg=speed
		for i=2,#speeds do avg=avg+speeds[i] end
		avg=avg/max(#speeds,1)

		--ZGV:Debug("eta: #speeds="..#speeds)
		if #speeds>=minlimit and avg>0 then
			eta = math.abs(dist / avg)
		else
			eta = nil
		end
		etadisp_elapsed = 0
	end

	-- spew it out.

	self:ShowText(
		self.waypoint.arrowtitle or self.waypoint.t,
		dist,
		eta,
		errortxt)

end

-- The function! It does nothing!
function Pointer.ArrowFrame_Proto_ShowText(frame)
end

function Pointer.ArrowFrame_Proto_GetFarText(self)
	local way = self.waypoint
	local m = way.m or 0

	local lastm = Astrolabe.LastPlayerPosition and Astrolabe.LastPlayerPosition[1]
	local lastc = Astrolabe.WorldMapSize[lastm].system
	return (Pointer.GetMapNameByID2(way.m) or ("(bad map #%d)"):format(way.m))
		  .. (way.c~=lastc and way.c>0 and way.c~=way.m and (", " .. (Pointer.GetMapNameByID2(way.c) or "?")) or "")
end

function Pointer.ArrowFrame_Proto_GetDistTxt(self,dist)
	if not dist or dist=="far" or (tonumber(dist or 0)>9999998) then return Pointer.ArrowFrame_Proto_GetFarText(self)
	elseif type(dist)=="string" then return dist
	else  return ZGV.FormatDistance(dist)
	end
end

local mfloor=math.floor
function Pointer.ArrowFrame_Proto_GetETATxt(self,eta)
	if eta and eta<7200 and eta>0 then
		local time=GetTime()
		time=time-mfloor(time)
		local etacolor = (eta<10 and time>0.7) and "ffff7700" or "ffffbb00"
		return ("  |c"..etacolor.."%01d:%02d|r"):format(eta / 60, eta % 60)
	end
end

function Pointer.ArrowFrame_OnShow(frame)
	lastturntime=GetTime()
end

--[[
function Pointer.ArrowFrame_OnMouseDown(frame,button)
	--if button=="RightButton" then
	--	ZGV.Pointer.prev_cameraYawMoveSpeed = GetCVar("cameraYawMoveSpeed")
	--end
end
--]]

function Pointer.ArrowFrame_OnClick(frame,button)
	if button=="LeftButton" then
		if not frame.dragging and ZygorGuidesViewer.db.profile.pathfinding and ZGV.Pointer.pathfollow=="pathfind" and not LibRover.is_stub then
			LibRover:UpdateNow()
		end
	elseif button=="RightButton" then
		Pointer.ArrowFrame_ShowMenu()
	end
end

function Pointer.ArrowFrame_ShowMenu()
	local self=ZGV.Pointer.ArrowFrame
	if not self.menu then self.menu = CreateFrame("FRAME",self:GetName().."Menu",self,"UIDropDownMenuTemplate") end

	UIDropDownMenu_SetAnchor(self.menu, 0, 0, "TOP", self, "BOTTOM")
	--local backdrop = DropDownList1:GetBackdrop()
	--backdrop.edgeSize=16
	--DropDownList1:SetBackdrop(backdrop)
	local menu = {}

	local simpleway = not ZGV.db.profile.pathfinding
	if simpleway then

		tinsert(menu,{
				text = self.waypoint.t,  isTitle = true,notCheckable=true,
			})

		local cont = self.waypoint.c>0 and select(self.waypoint.c,GetMapContinents())
		if cont then tinsert(menu,{
				text = ("%s, %s/%d %.1f;%.1f"):format(cont,Pointer.GetMapNameByID2(self.waypoint.m),self.waypoint.f,self.waypoint.x*100,self.waypoint.y*100),
				isTitle = true, notCheckable=true,
		}) else tinsert(menu,{
				text = ("%.1f;%.1f"):format(self.waypoint.x*100,self.waypoint.y*100),
				isTitle = true, notCheckable=true,
		}) end

		if self.waypoint.type~="path" then
			tinsert(menu,{
					text = L['pointer_arrowmenu_removeway'],
					func = function() ZGV.Pointer:RemoveWaypoint(self.waypoint) end,
					notCheckable=true,
				})
		end

		if not LibRover.is_stub then
			tinsert(menu,{
					text = L['pointer_arrowmenu_route_enable'],
					tooltipTitle = L['pointer_arrowmenu_route_enable'],
					tooltipText = L['pointer_arrowmenu_route_enable_desc'],
					tooltipOnButton=1,
					--checked = function() return ZGV.db.profile.pathfinding end,
					func = function() ZGV:SetOption("Travelsystem","pathfinding on") end,
					notCheckable=1,
					isNotRadio=1,
				})
		end

	else  -- pathfinding

		local list=menu
		--[[
		local list = {}
		tinsert(menu,{
				text = L['pointer_arrowmenu_route'],
				hasArrow=true,
				menuList = list
		})
		--]]
		if ZGV.Pointer.TempWaypath then  -- no path plotted, but might have been attempted.
			local CPT = ZGV.Pointer.CurrentPathTarget or ZGV.Pointer.TempWaypath.coords and ZGV.Pointer.TempWaypath.coords[1]
			tinsert(list,{
				text = L['pointer_arrowmenu_route_destination']:format(CPT and CPT.title or "waypoint",Pointer.GetMapNameByID2(CPT.m or CPT.map),CPT.x*100,CPT.y*100),
				isTitle=true, notCheckable=true,
			})
			local coords = ZGV.Pointer.TempWaypath.coords
			local n=1 --ugly second counter >_<
			for i=2,#coords do
				local node=coords[i].pathnode
				if not (node.is_arrival and LibRover.cfg.strip_arrivals) then
					local text = (node.text or "?"):gsub("\n","; ")
					if ZGV.DEV then text=text .. " -- " .. node:tostring() end
					tinsert(list,{
						text = L['pointer_arrowmenu_route_node'..(n==1 and '1' or '')]:format(n,text),
						isTitle=true, notCheckable=true,
					})
					n=n+1
				end
			end
			local last=coords[#coords].pathnode
			tinsert(list,{
				text = L['pointer_arrowmenu_route_est']:format(floor(last.time/60),last.time%60),
				isTitle=true, notCheckable=true,
			})
		end

		if ZGV.Pointer.CurrentPathTarget then
			if ZGV.Pointer.CurrentPathTarget.type=="manual" then
				tinsert(menu,{
						text = L['pointer_arrowmenu_removeway'],
						func = function() ZGV.Pointer:ClearWaypoints("manual")  ZGV:SetWaypoint()  end,
						--notCheckable=true,
					})
			end
			tinsert(list,{
					text = L['pointer_arrowmenu_route_retry'],
					tooltipTitle = L['pointer_arrowmenu_route_retry'],
					tooltipText = L['pointer_arrowmenu_route_retry_desc'],
					tooltipOnButton=1,
					notCheckable=true,
					func = function()  LibRover:UpdateNow()  end,
			})
		end

		if ZGV.db.profile.debug and self.waypoint.pathnode then
			tinsert(menu,{
					text = L["|cffff0000[DEV]|r Ban this point"],
					func = function() LibRover.banned_nodes[self.waypoint.pathnode]=1  LibRover:UpdateNow() end,
					notCheckable=1,
					isNotRadio=1,
				})
			tinsert(menu,{
					text = L["|cffff0000[DEV]|r Unban all points"],
					func = function() LibRover.banned_nodes={}  LibRover:UpdateNow() end,
					notCheckable=1,
					isNotRadio=1,
				})
		end

		tinsert(menu,{
				text = L['pointer_arrowmenu_route_disable'],
				tooltipTitle = L['pointer_arrowmenu_route_disable'],
				tooltipText = L['pointer_arrowmenu_route_disable_desc'],
				tooltipOnButton=1,
				--checked = function() return ZGV.db.profile.pathfinding end,
				func = function() ZGV:SetOption("Travelsystem","pathfinding off") end,
				notCheckable=1,
				isNotRadio=1,
			})

		tinsert(menu,{
				text = L['opt_pathfinding_lazy'],
				tooltipTitle = L['opt_pathfinding_lazy'],
				tooltipText = L['opt_pathfinding_lazy_desc'],
				tooltipOnButton=1,
				--checked = function() return ZGV.db.profile.pathfinding end,
				func = function() ZGV:SetOption("Travelsystem","pathfinding_lazy") end,
				checked = function() return ZGV.db.profile.pathfinding_preferfly end,
				isNotRadio=1,
			})

	end
	--end

	local arrowoptions = {}
	tinsert(menu,{
			text = L['pointer_arrowmenu_arrowheader'],
			hasArrow=true,
			menuList = arrowoptions,
			notCheckable=true,
		})
	tinsert(arrowoptions,{
			text = L['pointer_arrowmenu_hide'],
			tooltipTitle = L['pointer_arrowmenu_hide'],
			tooltipText = L['pointer_arrowmenu_hide_desc'],
			tooltipOnButton=1,
			func = function() ZGV:SetOption("Waypointer","arrowshow off") end,
			notCheckable=1,
		})
	tinsert(arrowoptions,{
			text = L['pointer_arrowmenu_freeze'],
			tooltipTitle = L['pointer_arrowmenu_freeze'],
			tooltipText = L['pointer_arrowmenu_freeze_desc'],
			tooltipOnButton=1,
			checked = function() return ZGV.db.profile.arrowfreeze end,
			func = function()  ZGV:SetOption("Waypointer","arrowfreeze "..(profile.arrowfreeze and "off" or "on"))  end,
			notCheckable=1,
		})
	tinsert(arrowoptions,{
			text = L['pointer_arrowmenu_opacity'],
			hasArrow = true,
			menuList = {
				{ text = "100%", checked = function() return (profile.arrowalpha>0.95) end, func = ZGV.Pointer.ArrowFrame_SetAlpha, arg1=1 },
				{ text = "75%",  checked = function() return (profile.arrowalpha>0.70 and profile.arrowalpha<0.80) end, func = ZGV.Pointer.ArrowFrame_SetAlpha, arg1=0.75 },
				{ text = "50%",  checked = function() return (profile.arrowalpha>0.45 and profile.arrowalpha<0.55) end, func = ZGV.Pointer.ArrowFrame_SetAlpha, arg1=0.5 },
			},
			notCheckable=1,
		})
	tinsert(arrowoptions,{
			text = L['pointer_arrowmenu_scale'],
			hasArrow = true,
			menuList = {
				{ text = "200%", checked = function() return (profile.arrowscale>1.90) end, func = ZGV.Pointer.ArrowFrame_SetScale, arg1=2 },
				{ text = "175%", checked = function() return (profile.arrowscale>1.65 and profile.arrowscale<1.85) end, func = ZGV.Pointer.ArrowFrame_SetScale, arg1=1.75 },
				{ text = "150%", checked = function() return (profile.arrowscale>1.40 and profile.arrowscale<1.60) end, func = ZGV.Pointer.ArrowFrame_SetScale, arg1=1.50 },
				{ text = "125%", checked = function() return (profile.arrowscale>1.15 and profile.arrowscale<1.35) end, func = ZGV.Pointer.ArrowFrame_SetScale, arg1=1.25 },
				{ text = "100%", checked = function() return (profile.arrowscale>0.90 and profile.arrowscale<1.10) end, func = ZGV.Pointer.ArrowFrame_SetScale, arg1=1.00 },
				{ text = "80%",  checked = function() return (profile.arrowscale>0.75 and profile.arrowscale<0.85) end, func = ZGV.Pointer.ArrowFrame_SetScale, arg1=0.80 },
				{ text = "60%",  checked = function() return (profile.arrowscale>0.55 and profile.arrowscale<0.65) end, func = ZGV.Pointer.ArrowFrame_SetScale, arg1=0.60 },
			},
			notCheckable=1,
		})
	tinsert(arrowoptions,{
			text = L['pointer_arrowmenu_options'],
			func = function() InterfaceOptionsFrame_OpenToCategory(ZGV.optionpanels['map']) end,
			notCheckable=1,
		})

	EasyMenu(menu,self.menu,nil,0,0,"MENU",10)
	UIDropDownMenu_SetWidth(self.menu, 300)
end

function Pointer.ArrowFrame_SetAlpha(but,v)
	ZGV:SetOption("Waypointer","arrowalpha "..v)
end

function Pointer.ArrowFrame_SetScale(but,v)
	ZGV:SetOption("Waypointer","arrowscale "..v)
end

local leftbutdown
local rightbutdown
local old_c,old_z
local zonechangecount=0

local oldzone,zone
function Pointer.Overlay_OnUpdate(frame,but,...)
	-- zone change behaviour is out

	--[[
	local c,z = GetCurrentMapContinentAndZone()
	local zonechanged
	if c~=old_c or z~=old_z then zonechangecount=1 end
	old_c,old_z=c,z
	if zonechangecount>0 then
		if not IsMouseButtonDown("LeftButton") then leftbutdown=false end
		if not IsMouseButtonDown("RightButton") then rightbutdown=false end
		zonechangecount=zonechangecount-1
		return
	end
	--]]



	-- set waypoints by shift-leftclicking the world map

	if IsMouseButtonDown("LeftButton") and IsShiftKeyDown() then
		leftbutdown=true
		oldzone=GetCurrentMapAreaID()
	else
		if leftbutdown then
			leftbutdown=nil
			-- left click

			if GetCurrentMapAreaID()~=oldzone then
				-- map changed with the click! Don't put any notes here.
				return
			end

			-- these are processed AFTER click procs. Necessary to IGNORE (not DELAY) clicks.
			local foc,foundWF=GetMouseFocus(),nil
			while foc do if foc==WorldMapButton then foundWF=true end foc=foc:GetParent() end
			if not foundWF then return end

			local mapframe = frame:GetParent()

			local x,y=GetCursorPosition()
			--ZGV:Print(x.." "..y)
			x=(x-(frame:GetLeft()*frame:GetEffectiveScale()))/(frame:GetWidth()*frame:GetEffectiveScale())
			y=(y-(frame:GetBottom()*frame:GetEffectiveScale()))/(frame:GetHeight()*frame:GetEffectiveScale())
			y=1-y
			--ZGV:Print(x.." "..y)
			if (x>0 and x<1 and y>0 and y<1) then
				--ZGV.Pointer:ClearWaypoints("manual")
				--ZGV.Pointer:SetWaypoint(nil,nil,x*100,y*100,{title=WorldMapFrameAreaLabel:GetText(),type="manual",clearonarrival=true,overworld=true,onminimap="always"})
				local txt = WorldMapFrameAreaLabel:GetText()
				local fmt = ZGV.db.profile.debug and "%s %.1f,%.1f /%d" or "%s %d,%d"

				ZGV:SetWaypoint(x,y,(txt and txt.." ("..fmt..")" or fmt):format(Pointer.GetMapNameByID2(GetCurrentMapAreaID(),GetCurrentMapDungeonLevel()),x*100,y*100,GetCurrentMapDungeonLevel()),"manual")

				ZGV:Debug("Setting manual on map "..GetCurrentMapAreaID())

				-- put coords in chat editbox
				if ChatFrame1EditBox:HasFocus() then
					ChatFrame1EditBox:SetText(ChatFrame1EditBox:GetText()..("%s/%s %.1f,%.1f"):format(Pointer.GetMapNameByID2(oldzone),GetCurrentMapDungeonLevel(),x*100,y*100))
					ChatFrame1EditBox:SetFocus(true)
				end
			end
		end
	end
end

local function GenerateSubmapCache()
	if not submap_cache then submap_cache={} end
	local system
	-- FIXME that's ugly
	for i=0,999 do
		system=Astrolabe:GetMapInfo(i,0)
		if system then -- make Astrolabe do the research if such a map exists
			if not submap_cache[system] then submap_cache[system]={} end
			table.insert(submap_cache[system],i)
		end
	end
end

local function RestartCorpseSearch() -- made it a func not to duplicate code
	-- WTF, no corpse?
	ZGV:Debug("SetCorpseArrow, corpse not found anywhere, will retry")
	ZGV:ScheduleTimer(function() ZGV.Pointer:SetCorpseArrow() end,0.2)
end

function Pointer:SetCorpseArrow(reset)

	if self.corpsearrow and not reset then return end
	if not UnitIsDeadOrGhost("player") then ZGV:Debug("Pointer.SetCorpseArrow: not dead!") return end

	local x=0
	local y=0

	local mm,mf = GetCurrentMapAreaID(),GetCurrentMapDungeonLevel()
	-- some magic here...

	ZGV:Debug("SetCorpseArrow, mm/mf="..mm.."/"..mf)

	-- If submap cache is not ready, recreate it
	if not submap_cache then
		GenerateSubmapCache()
		RestartCorpseSearch() return -- FIXME temporary workaround the bug giving the body in Dalaran Crater
	end

	-- We probably want to put a dot on all maps where the corpse is seen, just to look consistent
	local mapcandidates = {}

	-- Locating the player on the parent level map
	local system,_,_,_,_,_=Astrolabe:GetMapInfo(mm,mf)
	SetMapByID(system)
	SetDungeonMapLevel(0) -- sanity
	x,y=GetCorpseMapPosition()
	local m,f=system,0
	if x>0 and y>0 then
		ZGV:Debug("SetCorpseArrow, Corpse found in system "..system)
		ZGV:Debug("SetCorpseArrow, Searching the best fit among "..#submap_cache[system].." maps")

		-- Right, so what our criteries are in the order of descending importance
		-- • The body is seen within the map
		-- • Map is small(for example Darnassus in Teldrassil)
		local smallestarea,bestmap
		for i,id in ipairs(submap_cache[system]) do -- Also each map includes self in the list
			SetMapByID(id)
			local _x, _y
			local levels = GetNumDungeonMapLevels()
			for l=levels>0 and 1 or 0,levels do -- perusing the current map dungeon levels  --sinus: 1..max   or just 0
				SetDungeonMapLevel(l)
				_x,_y = GetCorpseMapPosition()
				if _x>0 and _y>0 then -- aha, we can see the body on that map, let's note it
					table.insert(mapcandidates,{mapid=id,floor=l,x=_x,y=_y})
					local _,_,_w,_h,_,_=Astrolabe:GetMapInfo(id,l)
					if not bestmap or smallestarea>_w then -- alex: little overhead here is okay, we don't get more that 4 maps anyway
						smallestarea=_w
						bestmap={mapid=id,floor=l} -- this whole thing is excessive for phased maps, but they aren't numerous in a system set
					end -- TODO if somebody wishes to it can be removed for them with some checks
					break
				end
			end
		end


		if #mapcandidates==0 then   -- -- sinus>alex: #table can't be <0, can it..?
			RestartCorpseSearch()
		else
			-- Now we have a list of maps where the body is seen and the id of the smallest one
			ZGV:Debug("SetCorpseArrow, Body found on "..#mapcandidates.." map/floor combinations")
			ZGV:Debug("SetCorpseArrow, best fit map/floor: "..bestmap.mapid.."/"..bestmap.floor)
			self:ClearWaypoints("corpse")

			for key,map in pairs(mapcandidates) do
				if map.mapid==bestmap.mapid and map.floor==bestmap.floor then
					self:SetWaypoint(map.mapid,map.floor,map.x,map.y,{title= ZGV.db.profile.corpsearrowjokes and L["pointer_corpselabel"..math.random(L["pointer_corpselabel#"])] or L["pointer_corpselabel"],type="corpse"})
					self.corpsearrow=true
-- 				else -- this does not work yet but the client put a dot anyway
-- 					self:CreateMapMarker(v.mapid,v.floor,v.x*100,v.y*100,{title= ZGV.db.profile.corpsearrowjokes and L["pointer_corpselabel"..math.random(L["pointer_corpselabel#"])] or L["pointer_corpselabel"],type="corpse"})
				end
			end
		end
	else
		RestartCorpseSearch()
	end
		--[[
		if not m then
			-- failed! set a flag
			self.corpsewait=true
		end
		--]]

	-- Clean up
	SetMapByID(mm)
	SetDungeonMapLevel(mf)
end


Pointer.ArrowSkins = {}

local function _new_skin(id,name)
	local skin = {id=id or "skin", name=name or "unnamed skin",styles={} }
	return skin
end

function Pointer:AddArrowSkin(id,name)
	local skin = _new_skin(id,name)
	self.ArrowSkins[id] = skin
	return skin
end

function Pointer:GetSkinPath(skin)
	if not skin then skin=ZGV.db.options.arrowskin end
	return ZGV.DIR .. "\\Arrows\\" .. skin .. "\\"
end

function Pointer:SetArrowSkin(skin)
	-- no style? grab default
	if not skin then
		skin = next(self.ArrowSkins)
		assert(skin,"No arrow skin to fall back to!")
		return self:SetArrowSkin(skin)
	end
	local skindata = self.ArrowSkins[skin]
	if not skindata then
		ZGV:Print("Unknown arrow skin '"..skin.."', falling back to default")
		return self:SetArrowSkin()
	end

	local way
	if self.CurrentArrowSkin then
		way = self.ArrowFrame.waypoint
		self.ArrowFrame:Hide()
	end

	ZGV.db.profile.arrowskin = skin

	self.CurrentArrowSkin = skindata
	self.ArrowSkinDir = self:GetSkinPath(skin,style)

	self:CreateArrowFrame()

	self.ArrowFrame.waypoint = way
end

function Pointer:UpdateArrowVisibility()
	if not self.ArrowFrame then return end
	if ZGV.db.profile.arrowshow then self.ArrowFrame:Show() else self.ArrowFrame:Hide() end
end

function Pointer:SetMinimapPlayerTexture()
	Minimap:SetPlayerTexture(ZGV.DIR.."\\skins\\minimaparrow-player")
end

function Pointer:GetNextInPath()
	if self.pathfollow == "smart" then
		-- broken with ants
		local neardist=9999999999
		local nearnum
		for w,way in ipairs(self.waypoints) do  if way.type=="path" then
			if way.minimapFrame and way.minimapFrame.dist<neardist then
				neardist=way.minimapFrame.dist
				nearnum=w
			end
		end  end
		local nearway=self.waypoints[nearnum]

		local nextnum=nearnum+1
		if nextnum>#self.waypoints then
			if self.pathloop then nextnum=1 else return self.waypoints[nearnum] end
		end
		local nextway=self.waypoints[nextnum]

		if neardist<50 then return nextway end

		local nextdist = nextway.minimapFrame.dist
		local nearnextdist = Astrolabe:ComputeDistance(nearway.m,nearway.f,nearway.x,nearway.y,nextway.m,nextway.f,nextway.x,nextway.y)
		if not nearnextdist then
			return nearway
		else
			-- fun part.
			if neardist+nextdist < nearnextdist*1.2 then return nextway else return nearway end
		end
		return self.waypoints[nextnum]
	elseif self.pathfollow == "smart2" then
		-- broken with ants
		local neardist=9999999999
		local nears={}
		local nearnum
		for w,way in ipairs(self.waypoints) do  if way.minimapFrame and way.minimapFrame.dist<neardist then  neardist=way.minimapFrame.dist  nearnum=w  end  end
		tinsert(nears,nearnum)
		repeat
			local neardistmin=neardist
			neardist=neardist*1.1
			for w,way in ipairs(self.waypoints) do  if way.minimapFrame and way.minimapFrame.dist>=neardistmin and way.minimapFrame.dist<neardist then  tinsert(nears,w)  end  end
		until #nears>=3
		ZGV:Debug("nears",unpack(nears))

		local minnum = min(unpack(nears))
		local maxnum = max(unpack(nears))
		local size = #self.waypoints
		local halfway = floor(size/2)
		if maxnum-minnum>halfway then -- first and last choice span more than half the path?
			--for i in ipairs(nears) do  if way.minimapFrame and way.minimapFrame.dist<neardist then  neardist=way.minimapFrame.dist  nearnum=w  end  end
			for i=1,#nears do nears[i]=nears[i]-halfway  if nears[i]<0 then nears[i]=nears[i]+size end  end
			maxnum = max(unpack(nears))
			ZGV:Debug("nears fix",unpack(nears))
		end
		ZGV:Debug("maxnum",maxnum)

		return self.waypoints[maxnum]
	elseif self.pathfollow == "strict"  then
		local nextnum=self.ArrowFrame.waypoint and (self.ArrowFrame.waypoint.num+1) or 1
		if nextnum>#self.waypoints or self.waypoints[nextnum].type=="ant" then
			if self.pathloop then
				for w,way in ipairs(self.waypoints) do if way.type=="path" then nextnum=w break end end
			else
				return
			end
		end
		return self.waypoints[nextnum]
	elseif self.pathfollow == "loose" then
		local curnum
		for w,way in ipairs(self.waypoints) do
			if way.type=="path" then
				local mf = way.minimapFrame
				local dist = mf and mf.dist or 9999
				if dist<=(way.dist or DEFAULT_STEP_DIST) then
					curnum=w
				end
			end
		end
		if not curnum then return self.ArrowFrame.waypoint end  -- current stays.

		local nextnum = curnum+1
		if nextnum>#self.waypoints or self.waypoints[nextnum].type~="path" then
			if self.pathloop then
				for w,way in ipairs(self.waypoints) do if way.type=="path" then nextnum=w break end end
			else
				return
			end
		end
		return self.waypoints[nextnum]
	elseif self.pathfollow == "pathfind" then
		--LibRover.updating = true
		LibRover:UpdateNow()
		--ZGV:SetWaypoint() -- UGLY. TODO. Clears manual path, that's bad.
	end
end

--[[
function Pointer.GetMapName(id)
	local map,floor = Pointer.UnwrapMapFloor(mapfloor)
	local mapname = GetMapNameByID(map)
end
-- TODO later.
--]]

-- store continent numbers, for zone continent comparison later.
local conts = {GetMapContinents()}
local extramaps = {[13]=conts[1],[14]=conts[2],[466]=conts[3],[485]=conts[4],[751]=conts[5]}
function Pointer.GetMapNameByID2(id,floor)
	-- floor might be used in the future...
	--local mapdata = Astrolabe.WorldMapSize[id]
	--if mapdata and mapdata[floor] and mapdata[floor]
	return GetMapNameByID(id or 0) or extramaps[id]
end


local flash_delay=0
local flash=nil
do
	local F = CreateFrame("FRAME","ZGVPointerExtraFrame")
	local ela=0
	local ant_interval = 0.05
	local ant_speed = 0.7
	F:SetScript("OnUpdate",function(self,elapsed)
		ela=ela+elapsed
		if ela>=ant_interval then
			if (ZGV.CurrentStep and ZGV.CurrentStep.waypath) or ZGV.Pointer.TempWaypath then
				local phase = Pointer.antphase or 0
				phase = phase + ela*ant_speed
				while phase>=1 do phase = phase - 1.0 end
				Pointer.antphase = phase
				ZGV:SetWaypoint(nil,nil,nil,"ant")
			end
			repeat  ela=ela-ant_interval  until ela<=ant_interval
		end
		-- Flashing node dots. Prettier than the standard, too. And slightly bigger.
		--[[
		flash_delay=flash_delay+elapsed
		if flash_delay>0.25 then
			flash=not flash
			Minimap:SetBlipTexture(ZGV.DIR.."\\Skins\\Dot"..(flash and "On" or "Off"))
			flash_delay=0
		end
		--]]

	end)

	--[[
	local CHAIN = ZGV.ChainCall
	F:SetPoint("CENTER",UIParent)
	F:Show()
	CHAIN(F:CreateTexture()) :SetTexture(ZGV.DIR.."\\Skins\\DotOn") :SetSize(50,50) :SetNonBlocking(true) :Show()
	CHAIN(F:CreateTexture()) :SetTexture(ZGV.DIR.."\\Skins\\DotOff") :SetSize(50,50) :SetNonBlocking(true) :Show()
	--]]
end