-- pNameplates
-- Version:  2.1.0
-- Authors:  Crushbeers

--[[       TABLE OF CONTENTS      ]]--
--[[ ---------------------------- ]]--
--[[ 1. TEXTURES/LOCAL VARIABLES  ]]--
--[[ 2. UTILITY FUNCTIONS		  ]]--
--[[ 3. STYLE FUNCTIONS			  ]]--
--[[ 4. THREAT MANAGEMENT		  ]]--
--[[ 5. UPDATE FUNCTIONS		  ]]--
--[[ 6. CORE FUNCTIONS			  ]]--
--[[ 7. SLASH COMMANDS			  ]]--

--------------------------------------
-- 1. TEXUTURES AND LOCAL VARIABLES
--------------------------------------

local total        = -1
local ForceUpdate  = false
local MoveText     = false
local InCombat     = false

local backgroundTexture  	  = "Interface\\Buttons\\WHITE8x8"
local barTexture         	  = "Interface\\AddOns\\pNameplates\\Textures\\bar"

local MarkColors = {
	["0"] = {
		["0"]    = { 1.00, 1.00, 0.00 }, -- Star
		["0.25"] = { 1.00, 0.50, 0.00 }, -- Circle
		["0.5"]  = { 0.78, 0.30, 1.00 }, -- Diamond
		["0.75"] = { 0.30, 1.00, 0.30 }  -- Triangle
	},
	["0.25"] = {
		["0"]    = { 0.60, 0.60, 0.60 }, -- Moon
		["0.25"] = { 0.20, 0.60, 1.00 }, -- Square
		["0.5"]  = { 1.00, 0.30, 0.30 }, -- Cross
		["0.75"] = { 1.00, 1.00, 1.00 }  -- Skull
	}
}

-- Font Variables
local Fonts = {
	[1] = "ARIALN",
	[2] = "FRIZQT__",
	[3] = "MORPHEUS",
	[4] = "skurri",
}

-- Text Location
local TLoc = {
	["top"]     = { "BOTTOM", "TOP"   ,  0, 2, "THINOUTLINE", "CENTER" },
	["left"]    = { "RIGHT" , "LEFT"  , -2, 0, "THINOUTLINE", "RIGHT"  },
	["right"]   = { "LEFT"  , "RIGHT" ,  2, 0, "THINOUTLINE", "LEFT"   },
	["center"]  = { "CENTER", "CENTER",  0, 0, "NONE",        "CENTER" },
	["inleft"]  = { "LEFT"  , "LEFT"  ,  2, 0, "THINOUTLINE", "LEFT"   },
	["inright"] = { "RIGHT" , "RIGHT" , -2, 0, "THINOUTLINE", "RIGHT"  }
}

-- Threat Setting Lists
local ThreatLow = {
	Right   = { loc = "TOPRIGHT", x = 1, y = 2 },
	Left    = { loc = "BOTTOMLEFT", x = -1, y = -2 },
	Color   = { r = 0.0, g = 0.7, b = 0.0 },
	Texture = "Interface\\AddOns\\pNameplates\\Textures\\threat_LOW",
	HPScale = 1,
}

local ThreatMed = {
	Right   = { loc = "TOPRIGHT", x = 4, y = 5 },
	Left    = { loc = "BOTTOMLEFT", x = -4, y = -5 },
	Color   = { r = 0.7, g = 0.7, b = 0.0 },
	Texture = "Interface\\AddOns\\pNameplates\\Textures\\threat_MED",
	HPScale = 1,
}

local ThreatHigh = {
	Right   = { loc = "TOPRIGHT", x = 4, y = 5 },
	Left    = { loc = "BOTTOMLEFT", x = -4, y = -5 },
	Color   = { r = 0.8, g = 0.0, b = 0.0 },
	Texture = "Interface\\AddOns\\pNameplates\\Textures\\threat_HIGH",
	HPScale = 1.18,
}

--------------------------------------
-- 2. UTILITY FUNCTIONS
--------------------------------------

local function Copy(t)
	  local u = { }
	  for k, v in pairs(t) do u[k] = v end
	  return setmetatable(u, getmetatable(t))
end

local function Contains(s, tab)
  	for k, v in pairs(tab) do 
  		if (k:match(s)) then return k end
  	end
  	return false
end

local function List(t)
	local s = "|cFF48D1CCSaved Profile List:  |r"
	for k, v in pairs(t) do s = s..k..",  " end
		s = string.sub(s, 1, string.len(s)-3)
	print(s)
end

local function RoundNum(num, dec)
	num = num * math.pow(10, dec)
	num = math.ceil(num)
	num = num / math.pow(10, dec)
	return num
end

local function FormatHP(val)
	if (val >= 1000000) then val = RoundNum((val/1000000), 1).."m"
	elseif (val >= 1000) then val = RoundNum((val/1000), 1).."k" end
	return val
end

local function GetRaidMark(plate)
	plate.ULx = select(1, plate.Raid:GetTexCoord())..""
	plate.ULy = select(2, plate.Raid:GetTexCoord())..""
end

--------------------------------------
-- 3. STYLE FUNCTIONS
--------------------------------------

--[[
local function AbbreviateName(name)
	abbrv = ""
	for token in string.gmatch(name, "[^%s]+") do abbrv = abbrv..token:sub(1, 1)..". " end
	return (abbrv:sub(1, abbrv:len()-3)..name:match("%s+.-$"):sub(2))
end

local function CheckAbbrv(plate)
	print(plate.Name:IsTruncated())
	plate.Name:SetText(plate.ONa:GetText())
	if (cfg.abbrv and plate.Name:IsTruncated()) then
		plate.Name:SetText(AbbreviateName(plate.ONa:GetText()))
	end
end
]]--

local function HideBlizz(plate)
	plate.OHB:Hide()
	plate.ONa:Hide()
	plate.OBo:Hide()
	plate.OLv:SetWidth(1)
	plate.OHi:SetTexture(0, 0, 0, 0)
	plate.Thr:SetTexture(0, 0, 0, 0)
	plate.ODg:SetTexture(0, 0, 0, 0)
    plate.OCB.Shield:SetTexture(0, 0, 0, 0)
end

local function StyleCastbar(plate)
	plate.OCB:SetBackdrop({
        bgFile = backgroundTexture,
        insets = { left = -1, right = -1, top = -1, bottom = -1 }
    })
    plate.OCB:SetBackdropColor(0, 0, 0, 0.6)
    
	plate.OCB:ClearAllPoints()
    plate.OCB:SetPoint("TOPRIGHT", plate.HB, "BOTTOMRIGHT", (cfg.cbw/2)-(cfg.hpw/2), -4)
    plate.OCB:SetPoint("BOTTOMLEFT", plate.HB, "BOTTOMLEFT", (cfg.hpw/2)-(cfg.cbw/2), -5-cfg.cbh)
	
	plate.OCB.Border:SetTexture(0, 0, 0, 1)
    plate.OCB.Border:SetTexCoord(0, 1, 0, 1)
    plate.OCB.Border:ClearAllPoints()
    plate.OCB.Border:SetPoint("TOPRIGHT", plate.OCB, 0, 0)
    plate.OCB.Border:SetPoint("BOTTOMLEFT", plate.OCB, 0, 0)
    plate.OCB.Border:SetDrawLayer("BORDER")
    
    plate.OCB.Fill:SetTexture(barTexture)
    plate.OCB.Fill:ClearAllPoints()
    plate.OCB.Fill:SetPoint("TOPRIGHT", plate.OCB.Border, "TOPRIGHT", 1, -1)
    plate.OCB.Fill:SetPoint("TOPRIGHT", plate.OCB.Border, "BOTTOMLEFT", -1, 1)
    
    plate.OCB.Icon:SetSize(12,12)
    plate.OCB.Icon:ClearAllPoints()
    plate.OCB.Icon:SetPoint("LEFT", plate.OCB, "RIGHT", 2, 0)
    
    plate.OCB.Time = plate.OCB:CreateFontString(nil, "HIGH")
	plate.OCB.Time:SetFont(cfg.FontType, cfg.FontSize_Cast, "THINOUTLINE")
	plate.OCB.Time:SetPoint("RIGHT", 0, 0)
	
	plate.OCB.Spell = plate.OCB:CreateFontString(nil, "HIGH")
	plate.OCB.Spell:SetFont(cfg.FontType, cfg.FontSize_Cast, "THINOUTLINE")
	plate.OCB.Spell:SetPoint("LEFT", 1, 0)
end

local function StyleFonts(plate)
	plate.OCB.Time:SetFont(cfg.FontType, cfg.FontSize_Cast, "THINOUTLINE")
	plate.OCB.Spell:SetFont(cfg.FontType, cfg.FontSize_Cast, "THINOUTLINE")
	if (plate.Low and InCombat) then return end
	plate.HB.Txt:SetFont(cfg.FontType, cfg.FontSize_Perc, cfg.Mvmt["perc"][5])
	plate.Name:SetFont(cfg.FontType, cfg.FontSize_Name, cfg.Mvmt["name"][5])
	plate.Level:SetFont(cfg.FontType, cfg.FontSize_Level, cfg.Mvmt["level"][5])
end

local function ApplyShadow(text)
	text:SetShadowColor(0, 0, 0, 1)
	text:SetShadowOffset(1, -1)
end

local function RemoveShadow(text)
	text:SetShadowColor(0, 0, 0, 0)
end

local function StyleLevelText(plate)
	if (plate.Boss:IsShown()) then plate.Level:Hide() return
	else plate.Level:Show() end
	
	plate.Level:SetTextColor(plate.OLv:GetTextColor())
	local string = plate.OLv:GetText()
	if (not string) then string = "" end
	if (plate.ODg:IsShown()) then string = string.."+" end
	return string
end

local function LowHealthWarn(plate)
	if (plate.Low) then
		plate.HB.Txt:SetFont(cfg.FontType, cfg.FontSize_Perc+3, cfg.Mvmt["perc"][5])
		plate.HB.Txt:SetTextColor(1, 0.5, 0)
	else
		plate.HB.Txt:SetFont(cfg.FontType, cfg.FontSize_Perc, cfg.Mvmt["perc"][5])
		plate.HB.Txt:SetTextColor(1, 1, 1)
	end
end

--------------------------------------
-- 4. THREAT MANAGEMENT
--------------------------------------

local function SetThreatStyle(plate, Threat)
	if (not cfg.RaidMarkColor or (cfg.RaidMarkColor and not plate.Raid:IsShown())) then
		plate.HB:SetStatusBarColor(Threat.Color.r, Threat.Color.g, Threat.Color.b, 1)
	end
	plate.Threat:SetPoint(Threat.Right.loc, plate.Border, Threat.Right.x, Threat.Right.y)
	plate.Threat:SetPoint(Threat.Left.loc, plate.Border, Threat.Left.x, Threat.Left.y)
	plate.Threat:SetTexture(Threat.Texture)
	plate.HB:SetScale(Threat.HPScale)
end

local function UpdateThreat(plate)
	if ((not InCombat and plate.Threat:IsShown()) or not cfg.ThreatEnabled or plate.Player) then
		plate.Threat:Hide()
		plate.HB:SetStatusBarColor(plate.OHB:GetStatusBarColor())
		plate.HB:SetScale(1)
		plate.ThreatOn = false
		return 
	elseif (InCombat and not plate.Player) then
		plate.ThreatOn = true
		plate.Threat:Show()
	else return end -- Returns if out of combat AND threat objects are hidden
	
	local red, green, blue, _ = plate.Thr:GetVertexColor()
	local shown = plate.Thr:IsShown()
	
	if (not shown) then 
		if (cfg.DPSHealerMode) then SetThreatStyle(plate, ThreatLow)
		else SetThreatStyle(plate, ThreatHigh) end
	elseif (red > 0) then
		if (green > 0) then SetThreatStyle(plate, ThreatMed) return end
		if (cfg.DPSHealerMode) then SetThreatStyle(plate, ThreatHigh)
		else SetThreatStyle(plate, ThreatLow) end
	end
end

--------------------------------------
-- 5. UPDATE FUNCTIONS
--------------------------------------

local function UpdateDisplay(plate)
	GetRaidMark(plate)
	
	plate.HB:SetSize(cfg.hpw,cfg.hph)
	plate.Name:SetText(plate.ONa:GetText())
	plate.Level:SetText(StyleLevelText(plate))
	
	local _, max = plate.OHB:GetMinMaxValues()
	local value = plate.OHB:GetValue()
	local perc = math.floor((value/max)*100)
	plate.Low = (cfg.LowHP[1] and perc <= cfg.LowHP[2])
	
	if (ForceUpdate) then UpdateThreat(plate) end
	if (InCombat) then LowHealthWarn(plate) end
	
	if ((cfg.RaidMarkColor and plate.Raid:IsShown()) or not plate.Mod) then
		plate.HB:SetStatusBarColor(MarkColors[plate.ULy][plate.ULx][1],
		MarkColors[plate.ULy][plate.ULx][2], MarkColors[plate.ULy][plate.ULx][3], 1)
	elseif (not InCombat or (InCombat and not plate.Raid:IsShown() and not cfg.ThreatEnabled)) then
		plate.HB:SetStatusBarColor(plate.OHB:GetStatusBarColor())
	end
	
	if (cfg.ShowPercent) then
		if (perc >= 100 and not cfg.ShowWhenMax) then plate.HB.Txt:SetText("")
		else
			if (cfg.ShowHPValue) then plate.HB.Txt:SetText(FormatHP(value).." / "..perc.."%")
			else plate.HB.Txt:SetText(perc.."%") end
		end
	else
		plate.HB.Txt:SetText("")
	end
	
	--CheckAbbrv(plate)
end

local function UpdateCastInfo(Castbar)
	plate = Castbar:GetParent()

	Castbar:ClearAllPoints()
    Castbar:SetPoint("TOPRIGHT", plate.HB, "BOTTOMRIGHT", (cfg.cbw/2)-(cfg.hpw/2), -4)
    Castbar:SetPoint("BOTTOMLEFT", plate.HB, "BOTTOMLEFT", (cfg.hpw/2)-(cfg.cbw/2), -5-cfg.cbh)

	local SpellName = select(3, UnitCastingInfo("target"))
	if (not SpellName) then SpellName = select(3, UnitChannelInfo("target")) end
	local _, max = Castbar:GetMinMaxValues()
	local current = Castbar:GetValue()
	local finish = math.floor((max-current)*10)/10
	
	--print(min.." "..current.." "..max.." "..finish)
	
	Castbar.Time:SetText(finish)
	Castbar.Spell:SetText(SpellName)
	
	-- Fixes phantom Castbar frames appearing
	if (not finish or finish <= 0) then Castbar:Hide()
	else Castbar:Show() end
end

local function UpdateTextLocations(plate)
	plate.HB.Txt:ClearAllPoints()
	plate.HB.Txt:SetPoint(cfg.Mvmt["perc"][1], plate.HB, cfg.Mvmt["perc"][2], cfg.Mvmt["perc"][3], cfg.Mvmt["perc"][4])
	plate.HB.Txt:SetJustifyH(cfg.Mvmt["perc"][6])
	if (cfg.Mvmt["perc"][5] == "NONE") then ApplyShadow(plate.HB.Txt)
	else RemoveShadow(plate.HB.Txt) end
	
	plate.Name:ClearAllPoints()
	plate.Name:SetPoint(cfg.Mvmt["name"][1], plate.HB, cfg.Mvmt["name"][2], cfg.Mvmt["name"][3], cfg.Mvmt["name"][4])
	plate.Name:SetJustifyH(cfg.Mvmt["name"][6])
	if (cfg.Mvmt["name"][5] == "NONE") then ApplyShadow(plate.Name)
	else RemoveShadow(plate.Name) end
	
	plate.Level:ClearAllPoints()
	plate.Level:SetPoint(cfg.Mvmt["level"][1], plate.HB, cfg.Mvmt["level"][2], cfg.Mvmt["level"][3], cfg.Mvmt["level"][4])
	plate.Level:SetJustifyH(cfg.Mvmt["level"][6])
	if (cfg.Mvmt["level"][5] == "NONE") then ApplyShadow(plate.Level)
	else RemoveShadow(plate.Level) end
	
	plate.Raid:ClearAllPoints()
	plate.Raid:SetSize(cfg.raidSize, cfg.raidSize)
	plate.Raid:SetPoint(cfg.Mvmt["raid"][1], plate.HB, cfg.Mvmt["raid"][2], cfg.Mvmt["raid"][3], cfg.Mvmt["raid"][4])
	
	plate.Boss:ClearAllPoints()
	plate.Boss:SetPoint(plate.Level:GetPoint())
	
	--CheckAbbrv(plate)
end

--------------------------------------
-- 6. CORE FUNCTIONS
--------------------------------------

local function init(plate)
	OldFrames, OldName = plate:GetChildren()
	plate.ONa = OldName:GetRegions()
	plate.OHB, plate.OCB = OldFrames:GetChildren()
	
    plate.OCB.Fill, plate.OCB.Border, plate.OCB.Shield, plate.OCB.Icon = plate.OCB:GetRegions()
    plate.Thr, plate.OBo, plate.OHi, plate.OLv, plate.Boss, plate.Raid, plate.ODg = OldFrames:GetRegions()
	
	plate.HB = CreateFrame("StatusBar", nil, plate)
	plate.HB:SetPoint("BOTTOM", plate, "BOTTOM", 0, 0)
	plate.HB:SetSize(cfg.hpw,cfg.hph)
	plate.HB:SetStatusBarTexture(barTexture)
    plate.HB:SetBackdrop({
        bgFile = backgroundTexture,
        insets = { left = 0, right = 0, top = 0, bottom = 0 }
    })
    plate.HB:SetBackdropColor(0, 0, 0, 0.6)
    plate.HB:SetStatusBarColor(plate.OHB:GetStatusBarColor())
    
    plate.Over = plate:CreateTexture(nil, "Texture")
    plate.Over:SetParent(plate.HB)
    plate.Over:SetDrawLayer("OVERLAY", 7)
    plate.Over:SetTexture(1, 1, 1, 0.25)
	plate.Over:SetPoint("TOPLEFT", plate.HB, "TOPLEFT", 0, 0)
	plate.Over:SetPoint("BOTTOMRIGHT", plate.HB, "BOTTOMRIGHT", 0, 0)
	plate.Over:Hide()
	
	plate.Border = CreateFrame("Frame", nil, plate.HB)
	plate.Border:SetAllPoints(plate.HB)
	plate.Border:SetBackdrop( { 
		bgFile = nil, 
		edgeFile = backgroundTexture, 
		tile = false, tileSize = 0, edgeSize = 1, 
		insets = { left = 1, right = 1, top = 1, bottom = 1 }
	})
	plate.Border:SetBackdropBorderColor(0, 0, 0, 1)
    
    plate.Threat = plate:CreateTexture(nil, "Texture")
    plate.Threat:SetPoint("TOPRIGHT", plate.Border, 1, 2)
    plate.Threat:SetPoint("BOTTOMLEFT", plate.Border, -1, -2)
	
	plate.Level = plate.HB:CreateFontString(nil, "ARTWORK", plate.HB)
	plate.Level:SetFont(cfg.FontType, cfg.FontSize_Level, cfg.Mvmt["level"][5])
	
	plate.Name = plate.HB:CreateFontString(nil, "ARTWORK", plate.HB)
	plate.Name:SetFont(cfg.FontType, cfg.FontSize_Name, cfg.Mvmt["name"][5])
	plate.Name:SetText(plate.ONa:GetText())
	plate.Name:SetWordWrap(false)
	plate.Name:SetWidth(100)
	
	plate.Raid:SetPoint(cfg.Mvmt["raid"][1], plate.HB, cfg.Mvmt["raid"][2], cfg.Mvmt["raid"][3], cfg.Mvmt["raid"][4])
	plate.Raid:SetSize(cfg.raidSize, cfg.raidSize)
	
	plate.HB.Txt = plate.HB:CreateFontString(nil, "ARTWORK", plate.HB)
	plate.HB.Txt:SetFont(cfg.FontType, cfg.FontSize_Perc, cfg.Mvmt["perc"][5])
	
	-- Initialization Stuff
	plate.Mod = true
	HideBlizz(plate)
	UpdateTextLocations(plate)
	UpdateDisplay(plate)
	StyleCastbar(plate)
	
	plate.OCB:SetScript("OnValueChanged", UpdateCastInfo)
	plate.OCB:SetParent(plate)
	
	plate:SetScript("OnUpdate", function(plate, time)
		if (plate.OHi:IsShown()) then plate.Over:Show() else plate.Over:Hide() end
	
		plate.HB:SetMinMaxValues(plate.OHB:GetMinMaxValues())
		plate.HB:SetValue(plate.OHB:GetValue())
		
		local r1, g1, b1, _ = plate.HB:GetStatusBarColor()
		local r2, g2, b2, _ = plate.OHB:GetStatusBarColor()
		if (b2 > 0 and g2 > 0) then plate.Player = true else plate.Player = false end
		if (cfg.ThreatEnabled) then UpdateThreat(plate) end
		if (not plate.HB or (plate.ThreatOn and not plate.Player) or plate.Raid:IsShown()) then return end
		if (r1 ~= r2 or g1 ~= g2 or b1 ~= b2) then
			plate.HB:SetStatusBarColor(plate.OHB:GetStatusBarColor())
		end
	end)
	
	plate.HB:SetScript("OnShow", function()
		UpdateDisplay(plate)
		UpdateCastInfo(plate.OCB)
	end)
	plate.HB:SetScript("OnHide", function() UpdateDisplay(plate) end)
	plate.HB:SetScript("OnValueChanged", function() UpdateDisplay(plate) end)
	plate.HB:SetScript("OnMinMaxChanged", function() UpdateDisplay(plate) end)
	
	plate:SetScript("OnEvent", function(plate, event)
		if (event == "RAID_TARGET_UPDATE") then
			UpdateDisplay(plate) end end)
	plate:RegisterEvent("RAID_TARGET_UPDATE")
end

local function GetObjects(frame, elapsed)
    local current = select("#", WorldFrame:GetChildren())
    if (current ~= total or ForceUpdate or MoveText) then
    	total = current
	  	for i = 1, current do
			local plate = select(i, WorldFrame:GetChildren())
			if (plate:GetName() and plate:GetName():match("NamePlate")) then
		  		if (not plate.Mod) then init(plate)
		  		else 
		  			UpdateDisplay(plate)
		  			if (ForceUpdate or MoveText) then StyleFonts(plate) end
		  			if (MoveText) then UpdateTextLocations(plate) end
		  		end
		  	end
		end
		ForceUpdate = false
		MoveText = false
    end
end

local function CheckDefaults()
	if (not cfg) then cfg = { } end
	
	if (not cfg.FontSize_Perc) then cfg.FontSize_Perc = 12 end
	if (not cfg.FontSize_Name) then cfg.FontSize_Name = 10 end
	if (not cfg.FontSize_Cast) then cfg.FontSize_Cast = 10 end
	if (not cfg.FontSize_Level) then cfg.FontSize_Level = 12 end
	if (not cfg.FontType) then cfg.FontType = "Fonts\\ARIALN.ttf" end
	if (not cfg.hpw) then cfg.hpw = 100 end
	if (not cfg.hph) then cfg.hph = 14 end
	if (not cfg.cbw) then cfg.cbw = 100 end
	if (not cfg.cbh) then cfg.cbh = 10 end
	if (not cfg.raidSize) then cfg.raidSize = 24 end
	
	-- Boolean Variables
	if (cfg.ShowPercent == nil) then cfg.ShowPercent = true end
	if (cfg.ShowWhenMax == nil) then cfg.ShowWhenMax = true end
	if (cfg.ShowHPValue == nil) then cfg.ShowHPValue = false end
	if (cfg.ThreatEnabled == nil) then cfg.ThreatEnabled = true end
	if (cfg.DPSHealerMode == nil) then cfg.DPSHealerMode = true end
	if (cfg.RaidMarkColor == nil) then cfg.RaidMarkColor = true end
	--if (cfg.abbrv == nil) then cfg.abbrv = true end
	
	-- Text Element Positions
	if (not cfg.Mvmt) then cfg.Mvmt = { } end
	if (not cfg.Mvmt["raid"])  then cfg.Mvmt["raid"]  = { "RIGHT" , "LEFT"  ,-5, 0, "THINOUTLINE", "RIGHT"  } end
	if (not cfg.Mvmt["perc"])  then cfg.Mvmt["perc"]  = { "BOTTOM", "TOP"   , 0, 2, "THINOUTLINE", "CENTER" } end
	if (not cfg.Mvmt["name"])  then cfg.Mvmt["name"]  = { "CENTER", "CENTER", 0, 0, "NONE",        "CENTER" } end
	if (not cfg.Mvmt["level"]) then cfg.Mvmt["level"] = { "LEFT"  , "RIGHT" , 2, 0, "THINOUTLINE", "LEFT"   } end
	
	-- Low Health Warning
	if (not cfg.LowHP) then cfg.LowHP = {
		[1] = false,    -- Enabled?
		[2] = 25,       -- Threshold
	} end

	if (not prof) then prof = { } end
	if (#prof < 1) then prof["default"] = Copy(cfg) end
end

local f = CreateFrame("Frame")
f:SetScript("OnEvent", function(g, event)
	ForceUpdate = true
	if (event == "PLAYER_LOGIN") then
		CheckDefaults()
		SetCVar("ShowClassColorInNameplate", 1)
		g:SetScript("OnUpdate", GetObjects)
	elseif (event == "PLAYER_REGEN_DISABLED") then
		InCombat = true
	elseif (event == "PLAYER_REGEN_ENABLED") then
		InCombat = false
	end
	collectgarbage()
end)

-- if (UtoG[plate.Name:GetText()..string.sub(plate:GetName(), 10)])
-- if (GtoU[GUID])
  
f:RegisterEvent("PLAYER_LOGIN")
f:RegisterEvent("PLAYER_REGEN_DISABLED") -- Enter Combat
f:RegisterEvent("PLAYER_REGEN_ENABLED")  -- Leave Combat

--------------------------------------
-- 7. SLASH COMMANDS
--------------------------------------

local function handler(args)
	args = args:lower()
	if (not args or args == "") then
		print("|cFF48D1CCp|rNameplates |cFF48D1CCBasic Command List:|r")
		print("|cFF48D1CC/pp percent|r, to toggle Health Percents.")
		print("|cFF48D1CC/pp value|r, to toggle Health Value.")
		print("|cFF48D1CC/pp max|r, to toggle 100% Health.")
		print("|cFF48D1CC/pp font #(1-4)|r, to choose font type.")
		print("|cFF48D1CC/pp threat|r, to toggle Threat mechanics.")
		print("|cFF48D1CC/pp cast size #|r, to set Castbar font size.")
		print("|cFF48D1CC/pp raid/name/level/health size #|r, to set font (or icon) size.")
		print("|cFF48D1CC/pp raid/name/level/health move #|r, to move text (or icon).")
		print("|cFF48D1CC/pp hbar w/h #|r, to set Healthbar width/height.")
		print("|cFF48D1CC/pp cbar w/h #|r, to set Castbar width/height.")
		print("|cFF48D1CC/pp save/load/delete name|r, to save/load/delete profiles.")
		print("|cFFCB4040Note|r: Please see Commands.txt file for a complete listing of commands.")
	elseif (args:match("sav.-%s+%a+")) then
		local name = select(2, string.split(' ', args))
		if (not prof[name]) then print("|cFF48D1CCProfile |r"..name.."|cFF48D1CC has been saved.|r")
    	else print("|cFF48D1CCProfile |r"..name.."|cFF48D1CC has been overwritten.|r") end
    	prof[name] = Copy(cfg)
	elseif (args:match("loa.-%s+%a+")) then
		local name = select(2, string.split(' ', args))
		if (not prof[name]) then print("|cFF48D1CCProfile |r"..name.."|cFF48D1CC does not exist.|r")
    	else cfg = Copy(prof[name]) print("|cFF48D1CCProfile |r"..name.."|cFF48D1CC has been loaded.|r") end
	elseif (args:match("dele.-%s+%a+")) then
		local name = select(2, string.split(' ', args))
		if (name:match"default") then print("|cFFCB4040Invalid Entry|r: Cannot delete default.")
    	elseif (not prof[name]) then print("|cFF48D1CCProfile |r"..name.."|cFF48D1CC does no exist.|r")
    	else prof[name] = nil print("|cFF48D1CCProfile |r"..name.."|cFF48D1CC has been deleted.|r") end
	elseif (args:match("perc")) then
		if (cfg.ShowPercent == true) then cfg.ShowPercent = false else cfg.ShowPercent = true end
		print("|cFF48D1CCp|rNameplates|cFF48D1CC: Health percent toggled.|r")
	elseif (args:match("val")) then
		if (cfg.ShowHPValue == true) then cfg.ShowHPValue = false else cfg.ShowHPValue = true end
		print("|cFF48D1CCp|rNameplates|cFF48D1CC: HP Value toggled.|r")
	elseif (args:match("max")) then
		if (cfg.ShowWhenMax == true) then cfg.ShowWhenMax = false else cfg.ShowWhenMax = true end
		print("|cFF48D1CCp|rNameplates|cFF48D1CC: 100% Health toggled.|r")
	elseif (args:match("thre")) then
		if (cfg.ThreatEnabled == true) then cfg.ThreatEnabled = false else cfg.ThreatEnabled = true end
		print("|cFF48D1CCp|rNameplates|cFF48D1CC: Threat mechanics toggled.|r")
	elseif (args:match("mark")) then
		if (cfg.RaidMarkColor == true) then cfg.RaidMarkColor = false else cfg.RaidMarkColor = true end
		print("|cFF48D1CCp|rNameplates|cFF48D1CC: Raid Mark coloring toggled.|r")
	elseif (args:match("role")) then
		if (cfg.DPSHealerMode == true) then cfg.DPSHealerMode = false else cfg.DPSHealerMode = true end
		print("|cFF48D1CCp|rNameplates|cFF48D1CC: Threat Role toggled.|r")
	elseif (args:match("fon.-%s+%d")) then
		local num = tonumber(select(2, string.split(' ', args)))
		if (num > 4 or num < 1) then print("|cFF48D1CCp|rNameplates|cFF48D1CC: Selection must be between 1-4.") return
		else cfg.FontType = "Fonts\\"..Fonts[num]..".ttf" end
		print("|cFF48D1CCp|rNameplates|cFF48D1CC: Font Type changed to |r"..Fonts[num])
	elseif (args:match("mot.-%s+%d")) then
		local num = tonumber(select(2, string.split(' ', args)))
		if (num > 2 or num < 0) then print("|cFF48D1CCp|rNameplates|cFF48D1CC: Selection must be between 0-2.") return end
		SetCVar("nameplateMotion", num)
		print("|cFF48D1CCp|rNameplates|cFF48D1CC: Nameplate Motion changed.|r")
	elseif (args:match("cas.-%s+siz.-%s+%d")) then
		local num = tonumber(select(3, string.split(' ', args)))
		cfg.FontSize_Cast = num
		print("|cFF48D1CCp|rNameplates|cFF48D1CC: Castbar font size is now |r"..num)
	elseif (args:match("nam.-%s+siz.-%s+%d")) then
		local num = tonumber(select(3, string.split(' ', args)))
		cfg.FontSize_Name = num
		print("|cFF48D1CCp|rNameplates|cFF48D1CC: Name font size is now |r"..num)
	elseif (args:match("nam.-%s+mov.-%s+%a+")) then
		local loc = select(3, string.split(' ', args))
		if (not Contains(loc, TLoc)) then print("|cFF48D1CCp|rNameplates|cFF48D1CC: Invalid selection -- |r"..loc) return end
		cfg.Mvmt["name"] = TLoc[loc]
		print("|cFF48D1CCp|rNameplates|cFF48D1CC: Name location is now |r"..loc)
	elseif (args:match("lev.-%s+siz.-%s+%d")) then
		local num = tonumber(select(3, string.split(' ', args)))
		cfg.FontSize_Level = num
		print("|cFF48D1CCp|rNameplates|cFF48D1CC: Level font size is now |r"..num)
	elseif (args:match("lev.-%s+mov.-%s+%a+")) then
		local loc = select(3, string.split(' ', args))
		if (not Contains(loc, TLoc)) then print("|cFF48D1CCp|rNameplates|cFF48D1CC: Invalid selection -- |r"..loc) return end
		cfg.Mvmt["level"] = TLoc[loc]
		print("|cFF48D1CCp|rNameplates|cFF48D1CC: Level location is now |r"..loc)
	elseif (args:match("heal.-%s+siz.-%s+%d")) then
		local num = tonumber(select(3, string.split(' ', args)))
		cfg.FontSize_Perc = num
		print("|cFF48D1CCp|rNameplates|cFF48D1CC: Health font size is now |r"..num)
	elseif (args:match("heal.-%s+mov.-%s+%a+")) then
		local loc = select(3, string.split(' ', args))
		if (not Contains(loc, TLoc)) then print("|cFF48D1CCp|rNameplates|cFF48D1CC: Invalid selection -- |r"..loc) return end
		cfg.Mvmt["perc"] = TLoc[loc]
		print("|cFF48D1CCp|rNameplates|cFF48D1CC: Health location is now |r"..loc)
	elseif (args:match("raid.-%s+siz.-%s+%d")) then
		local num = tonumber(select(3, string.split(' ', args)))
		cfg.raidSize = num
		MoveText = true
		print("|cFF48D1CCp|rNameplates|cFF48D1CC: Raid Icon size is now |r"..num)
	elseif (args:match("raid.-%s+mov.-%s+%a+")) then
		local loc = select(3, string.split(' ', args))
		if (not Contains(loc, TLoc)) then print("|cFF48D1CCp|rNameplates|cFF48D1CC: Invalid selection -- |r"..loc) return end
		cfg.Mvmt["raid"] = TLoc[loc]
		cfg.Mvmt["raid"][3] = (TLoc[loc][3] > 0 and TLoc[loc][3]+3 or TLoc[loc][3] < 0 and TLoc[loc][3]-3 or TLoc[loc][3])
		print("|cFF48D1CCp|rNameplates|cFF48D1CC: Raid Icon location is now |r"..loc)
	elseif (args:match("hb.-%s+w%a-%s+%d")) then
		cfg.hpw = tonumber(args:match("%d+"))
		print("|cFF48D1CCp|rNameplates|cFF48D1CC: Healthbar WIDTH is now |r"..cfg.hpw)
	elseif (args:match("hb.-%s+h%a-%s+%d")) then
		cfg.hph = tonumber(args:match("%d+"))
		print("|cFF48D1CCp|rNameplates|cFF48D1CC: Healthbar HEIGHT is now |r"..cfg.hph)
	elseif (args:match("cb.-%s+w%a-%s+%d")) then
		cfg.cbw = tonumber(args:match("%d+"))
		print("|cFF48D1CCp|rNameplates|cFF48D1CC: Castbar WIDTH is now |r"..cfg.cbw)
	elseif (args:match("cb.-%s+h%a-%s+%d")) then
		cfg.cbh = tonumber(args:match("%d+"))
		print("|cFF48D1CCp|rNameplates|cFF48D1CC: Castbar HEIGHT is now |r"..cfg.cbh)
	elseif (args:match("low.-%s+%d")) then
		cfg.LowHP[2] = tonumber(args:match("%d+"))
		print("|cFF48D1CCp|rNameplates|cFF48D1CC: Low HP limit is now |r"..cfg.LowHP[2])
	--elseif (args:match("low.-%s+%a+")) then print("low color")
	elseif (args:match("low")) then
		if (cfg.LowHP[1] == true) then cfg.LowHP[1] = false else cfg.LowHP[1] = true end
		print("|cFF48D1CCp|rNameplates|cFF48D1CC: Low HP warning toggled.|r")
	elseif (args:match("vis.-%s+gua.-")) then
		SetCVar("nameplateShowEnemyGuardians", math.abs(GetCVar("nameplateShowEnemyGuardians")-1))
		print("|cFF48D1CCp|rNameplates|cFF48D1CC: Enemy Guardian nameplates toggled.|r")
	elseif (args:match("vis.-%s+tot.-")) then
		SetCVar("nameplateShowEnemyTotems", math.abs(GetCVar("nameplateShowEnemyTotems")-1))
		print("|cFF48D1CCp|rNameplates|cFF48D1CC: Enemy Totem nameplates toggled.|r")
	elseif (args:match("vis.-%s+pet.-")) then
		SetCVar("nameplateShowEnemyPets", math.abs(GetCVar("nameplateShowEnemyPets")-1))
		print("|cFF48D1CCp|rNameplates|cFF48D1CC: Enemy Pet nameplates toggled.|r")
	elseif (args:match("list.-")) then
		List(prof)
	else print("|cFFCB4040Invalid Entry|r: /pp "..args)
	end
	
	collectgarbage()
	ForceUpdate = true
	if (args:match("%s+mov.-")) then MoveText = true end
end
 
SLASH_pp1 = "/pp";
SlashCmdList["pp"] = handler;

print("|cFF48D1CCp|rNameplates  |cFF48D1CC(v2.1.0)|r  is loaded: |cFF48D1CC/pp|r for a Basic Command list.")