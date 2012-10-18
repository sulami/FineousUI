local me = ZygorGuidesViewer
local ZGV = me
if not ZGV then return end

local standingnames={}
local standingnamesrev={}
local standingnameseng={"Hated","Hostile","Unfriendly","Neutral","Friendly","Honored","Revered","Exalted"}
local tillerrepnameseng={["Stranger"]=5, ["Acquaintance"]=6, ["Buddy"]=6, ["Friend"]=7, ["GoodFriend"]=7, ["BestFriend"]=8 } --Yes Aquaintance and Buddy are both 6 atm.. Blizzard....
local standingnamesengrev={}
me.StandingNamesEngRev = standingnamesengrev
me.StandingNamesEng = standingnameseng
me.StandingNames = standingnames
local standingcolors = {"aa0000","ff0000","ff8800","ffff00","00ff00","00ff88","00ffff","cc88ff"}

local LF=ZygorGuidesViewer_L("Faction")

tinsert(me.startups,function(self)
	self:AddEvent("PLAYER_ENTERING_WORLD","UPDATE_FACTION_Faction")
	--self:AddEvent("CHAT_MSG_COMBAT_FACTION_CHANGE","CHAT_MSG_COMBAT_FACTION_CHANGE_Faction")

	local sex = UnitSex("player")==3 and "_FEMALE" or ""
	for i=1,8 do standingnames[i]=_G['FACTION_STANDING_LABEL'..i..sex] end
	for i,v in ipairs(standingnames) do standingnamesrev[v]=i end
	for i,v in ipairs(standingnameseng) do standingnamesengrev[v]=i end
	for i,v in pairs(tillerrepnameseng) do standingnamesengrev[i]=v end --Add the Tiller rep names in.

	self.reputations[""]={
		standing=4,min=0,max=0,val=0,
		progress=0,
		CalcTo=me.Rep_CalcTo,
		Current=me.Rep_Current,
		Going=me.Rep_Going,
		EqualOrAbove=me.Rep_EqualOrAbove,
		Below=me.Rep_Below
	}
end)

local function FormatStanding(standing)
	return ("|cff%s%s|r"):format(standingcolors[standing],standingnames[standing])
end

ZGV.factions_mentioned = {}

local defaultReps = {
	["The Mag'har"]=3, --unfriendly
	["Kurenai"]=3, --unfriendly
}

local function GetNewRep(name)
	return {
		standing=defaultReps[name] or 4,min=0,max=0,val=0,
		progress=0,
		CalcTo=me.Rep_CalcTo,
		Current=me.Rep_Current,
		Going=me.Rep_Going,
		EqualOrAbove=me.Rep_EqualOrAbove,
		Below=me.Rep_Below
	}
end

function me:GetFakeRep(name,standing,min,max,val)
	local rep = GetNewRep(name)
	rep.standing = standing or rep.standing
	if min then rep.min=min end
	if max then rep.max=max end
	if val then rep.val=val end
	return rep
end

function me:CacheRep(name,standing,min,max,val)
	local oldval,oldmin,oldprog
	local rep = self.reputations[name]
	if rep then
		if rep.val~=val then
			oldval=rep.val
			oldmin=rep.min
			oldprog=rep.progress
		end
	else
		rep = GetNewRep(name)
		self.reputations[name]=rep
	end
	if max==min then max=min+1 end
	local progress = (val-min)/(max-min)
	rep.standing = standing
	rep.min=min
	rep.max=max
	rep.val=val
	rep.progress=progress
	if oldval and self.db.profile.analyzereps then
		print(("|cffbbbbff%s|r: %s%d (%.1f%%) - %s"):format(
			name,
			val-oldval>=0 and "+" or "", val-oldval,
			oldmin==min and (progress-oldprog)*100 or progress*100,
			rep:Going(true)
			))
	end
end

function me:CacheReputations()
	for i=1,200 do
		local name,_,standing,min,max,val,_,_,header,_,hasrep,_,_ = GetFactionInfo(i)
		if name and min and (not header or hasrep) then
			self:CacheRep(name,standing,min,max,val)
		end
	end
end

function me:GetReputation(name)
	ZGV.factions_mentioned[name] = name
	if self.BFL[name] then name=self.BFL[name] end
	return self.db.profile.fakereps[name] and self:GetFakeRep(name,self.db.profile.fakereps[name])
		or self.reputations[name]
		or GetNewRep(name)
end

---
-- @return
function me.Rep_CalcTo(rep,standing)
	if type(standing)=="string" then standing=standingnamesengrev[standing] if not standing then return end end
	if standing-rep.standing>1 then
		return nil,nil
	elseif standing<=rep.standing then
		return 0
	else
		return rep.max-rep.val
	end
end

function me.Rep_Current(rep)
	return standingnames[rep.standing]
end

function me.Rep_Going(rep,color)
	if color then
		if rep.standing==8 then return FormatStanding(8) else return LF["going"]:format(rep.progress*100,FormatStanding(rep.standing+1)) end
	else
		if rep.standing==8 then return standingnames[8] else return LF["going"]:format(rep.progress*100,standingnames[rep.standing+1]) end
	end
end

function me.Rep_EqualOrAbove(rep,standing)
	if type(standing)=="string" then standing=standingnamesengrev[standing] if not standing then return end end
	return rep.standing>=standing
end

function me.Rep_Below(rep,standing)
	if type(standing)=="string" then standing=standingnamesengrev[standing] if not standing then return end end
	return rep.standing<standing
end

function me:UPDATE_FACTION_Faction()
	self:CacheReputations()
	self:UpdateFrame(true)
end

local messages={FACTION_STANDING_DECREASED,FACTION_STANDING_DECREASED_GENERIC,FACTION_STANDING_INCREASED,FACTION_STANDING_INCREASED_BONUS,FACTION_STANDING_INCREASED_GENERIC}
for i,msg in ipairs(messages) do messages[i]=msg:gsub("%%[.%d]?[sdf]","(.*)") end

function me:CHAT_MSG_COMBAT_FACTION_CHANGE_Faction(event,text)
	--print("Faction!",text)
	for i,msg in ipairs(messages) do
		local faction = text:match(msg)
		if faction then
			local rep = self:GetReputation(faction)
			print(("%s: %s (%s)"):format(faction,rep:Current(),rep:Going()))
			return
		end
	end
end
