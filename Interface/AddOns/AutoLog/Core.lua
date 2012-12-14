AutoLog = {}
local _G = _G
local AutoLog = AutoLog
local LibStub = LibStub
local L = LibStub("AceLocale-3.0"):GetLocale("AutoLog")
local AceConfig = LibStub("AceConfig-3.0")
local AceConfigDialog = LibStub("AceConfigDialog-3.0")
local GetMapNameByID, GetCurrentMapAreaID = GetMapNameByID, GetCurrentMapAreaID
local LoggingCombat = LoggingCombat
local pairs, string, select, print = pairs, string, select, print
local GetBindingKey, SetBinding, IsInInstance = GetBindingKey, SetBinding, IsInInstance
local GetRaidDifficulty, IsInRaid, IsPartyLFG = GetRaidDifficulty, IsInRaid, IsPartyLFG
local IsInLFGDungeon, GetDungeonDifficultyID = IsInLFGDungeon, GetDungeonDifficultyID
local UIFrameFade = UIFrameFade
local alm

--map IDs
local map_id_list = {
	["38ULD"] = 529, ["32NAX"] = 535, ["34EYE"] = 527, ["35OBS"] = 531, ["39VOA"] = 532, ["37TOC"] = 543, ["33ONY"] = 718, 
	["31ICC"] = 604, ["36RUS"] = 609, ["42BWD"] = 754, ["45BTW"] = 758, ["46TFW"] = 773, ["41BAH"] = 752, ["44FIR"] = 800,
	["43DGS"] = 824, ["52MGS"] = 896, ["53TES"] = 886, ["51HOF"] = 897,
}

local raid_list = {"38ULD", "32NAX", "34EYE", "35OBS", "39VOA", "37TOC", "33ONY", "31ICC", "36RUS", "42BWD", "45BTW", "46TFW", "41BAH", "44FIR", "43DGS", "52MGS", "53TES", "51HOF"}
local raid_heroic = {"37TOC", "31ICC", "36RUS", "42BWD", "45BTW", "46TFW", "44FIR", "43DGS", "52MGS", "53TES", "51HOF"}
local raid_lfr = {"43DGS", "52MGS", "53TES", "51HOF"}

local function MakeList(raids)
	local list = {}
	local colours = {["3"] = "ff778899", ["4"] = "ff6e8b3d", ["5"] = "ffffd700"}
	local expsettings = {["3"] = AutoLog.db.char.hidelk, ["4"] = AutoLog.db.char.hidecat, ["3"] = AutoLog.db.char.hidemop}
	for _, r in pairs(raids) do 
		local exp = string.sub(r,1,1)
		if not expsettings[exp] then
			local c = colours[exp]
			list[r] = "|c" .. c .. GetMapNameByID(map_id_list[r])
		end
	end
	return list
end

local function fadeOut(self, elapsed)
	local fadetime = AutoLog.frame.fadetime + elapsed
	if fadetime < 2 then AutoLog.frame.fadetime = fadetime 
	else
		local fadeInfo = {}
		AutoLog.frame:SetScript("OnUpdate", nil)
		AutoLog.frame.fadetime = 0
		fadeInfo.mode = "OUT"
		fadeInfo.timeToFade = 3
		fadeInfo.startAlpha = 1
		fadeInfo.endAlpha = 0
		fadeInfo.finishedFunc = 
			function()
				AutoLog.frame:Hide()
				AutoLog.frame:SetAlpha(1)
			end
		UIFrameFade(AutoLog.frame, fadeInfo)
	end
end

function AutoLog:eventHandler(this, event, arg1, ...)
	if event == "ADDON_LOADED" and arg1 == "AutoLog" then
		--configure binding
		_G.BINDING_HEADER_AUTOLOG = "AutoLog"
		_G.BINDING_NAME_AUTOLOG_TOGGLE = L["Start/Stop logging"]
		local defaults = {
			char = {
				enable = false,	curLogging = false, dungeons = false, hidelk = false, hidecat = false, hidemop = false, osw = true,
				raids10 = {}, raids25 = {}, raids10h = {}, raids25h = {}, lfr = {},
			},
		}
		self.db = LibStub("AceDB-3.0"):New("AutoLog_DB", defaults)
		_G.SLASH_AUTOLOG_CMD1 = "/" .. L["al"]
		_G.SLASH_AUTOLOG_CMD2 = "/" .. L["autolog"]
		_G.SlashCmdList["AUTOLOG_CMD"] = function(input) self:ChatCommand(input) end
	elseif event == "PLAYER_LOGIN" then
		AutoLog.frame:RegisterEvent("ZONE_CHANGED_NEW_AREA")
		--AutoLog.frame:RegisterEvent("GUILD_PARTY_STATE_UPDATED")
		local options = {
			name = "AutoLog", handler = AutoLog, type = "group",
			args = {
				enable = { -- Global enable key
					type = "toggle",
					name = L["Enable auto logging"],
					desc = L["If unchecked, AutoLog will never enable Combat Logging"],
					get = function() return self.db.char.enable end,
					set = function(info, value) self.db.char.enable = value; self:CheckLog() end,
					width = "double",
					order = 1,
				},
				dungeons = { -- Heroic dungeons
					type = "toggle",
					name = L["Log 5 player heroic instances"],
					get = function() return self.db.char.dungeon end,
					set = function(info, value) self.db.char.dungeon = value; self:CheckLog() end,
					order = 2,
					width = "full",
				},
				--guildRuns = { -- Only log guild runs
					--	type = "toggle", name = L["Only log guild runs"], set = "SetGuildRun", get = "GetGuildRun", order = 3, width = "full",
				--},
				hideLK = {	-- Lick king raids
					type = "toggle",
					name = L["Hide Wrath of the Lich King raids"],
					get = function() return self.db.char.hidelk end,
					set = function(info, value) self.db.char.hidelk = value end,
					order = 3.1,
					width = "full",
				},
				osw = { -- on screen warning
					type = "toggle",
					name = L["Show combat log status on screen"],
					get = function() return self.db.char.osw end,
					set = function(info, value) self.db.char.osw = value end,
					order = 3.9,
					width = "full",
				},
				spacer0 = {
					order = 4,
					type = "description",
					name = "\n",
				},
				logginOn = {
					type = "description",
					fontSize = "medium",
					name = L["Combat logging turned on"],
					hidden = function() self.db.char.curLogging = LoggingCombat(); return not self.db.char.curLogging  end,
					image = function() return "Interface\\RAIDFRAME\\ReadyCheck-Ready", 24, 24 end,
					order = 4.1,
				},
				logginOff = {
					type = "description",
					fontSize = "medium",
					name = L["Combat logging turned off"],
					hidden = function() self.db.char.curLogging = LoggingCombat(); return self.db.char.curLogging end,
					image = function() return "Interface\\RAIDFRAME\\ReadyCheck-NotReady", 24, 24 end,
					order = 4.2,
				},
				spacer1 = {
					order = 4.3,
					type = "description",
					name = "\n",
				},
				kb = {
					type = "keybinding",
					name = _G.KEY_BINDING,
					get = function() return GetBindingKey("AUTOLOG_TOGGLE") end,
					set = function(info, binding) SetBinding(select(1,GetBindingKey("AUTOLOG_TOGGLE"))); SetBinding(binding, "AUTOLOG_TOGGLE") end,
					order = 4.5,
				},
				spacer2 = {
					order = 4.7,
					type = "description",
					name = "\n",
				},
				raids10 = { -- 10 Normal raids select
					type = "multiselect",
					name = L["10 Players Raids"],
					desc = L["10 Players raid instances where you want to log combat"],
					values = MakeList(raid_list),
					tristate = false,
					get = function(info, raid) return self:GetSetting("raids10", raid) end,
					set = function(info, raid, value) self:SetSetting("raids10", raid, value) end,
					order = 5,
				},
				raids25 = { -- 25 Normal raids select
					type = "multiselect",
					name = L["25 Players Raids"],
					desc = L["25 Players raid instances where you want to log combat"],
					values = MakeList(raid_list),
					tristate = false,
					get = function(info, raid) return self:GetSetting("raids25", raid) end,
					set = function(info, raid, value) self:SetSetting("raids25", raid, value) end,
					order = 6,
				},
				raids10h = { -- 10 Heroic raids select
					type = "multiselect",
					name = L["10 Players Heroic Raids"],
					desc = L["10 Players heroic raid instances where you want to log combat"],
					values = MakeList(raid_heroic),
					tristate = false,
					get = function(info, raid) return self:GetSetting("raids10h", raid) end,
					set = function(info, raid, value) self:SetSetting("raids10h", raid, value) end,
					order = 7,
				},
				raids25h = { -- 25 Heroic raids select
					type = "multiselect",
					name = L["25 Players Heroic Raids"],
					desc = L["25 Players heroic raid instances where you want to log combat"],
					values = MakeList(raid_heroic),
					tristate = false,
					get = function(info, raid) return self:GetSetting("raids25h", raid) end,
					set = function(info, raid, value) self:SetSetting("raids25h", raid, value) end,
					order = 8,
				},
				lfr = { -- LFR raids select
					type = "multiselect",
					name = L["LFR Raids"],
					desc = L["Raid finder instances where you want to log combat"],
					values = MakeList(raid_lfr),
					tristate = false,
					get = function(info, raid) return self:GetSetting("lfr", raid) end,
					set = function(info, raid, value) self:SetSetting("lfr", raid, value) end,
					order = 9,
				},
			},
		}
		AceConfig:RegisterOptionsTable("AutoLog", options)
		self.optionsFrame = LibStub("AceConfigDialog-3.0"):AddToBlizOptions("AutoLog", "AutoLog")
		--if self.db.char.guildrun then self:RegisterEvent("GUILD_PARTY_STATE_UPDATED") end
		alm = AutoLog.frame:CreateFontString("AutoLogMsg", "ARTWORK", "GameFontNormalLarge")
		alm:SetFont("Fonts\\FRIZQT__.TTF",28)
		alm:SetPoint("CENTER", AutoLog.frame, "CENTER", 0, 0)
	elseif event == "PLAYER_ENTERING_WORLD" or event == "ZONE_CHANGED_NEW_AREA" then
		self:CheckLog()
--[[
	elseif event == "GUILD_PARTY_STATE_UPDATED" then
	
		local  inGroup, numGuildPresent, numGuildRequired, xpMultiplier = InGuildParty()
		print("inGroup",inGroup, "numPresent", numGuildPresent, "numReq", numGuildRequired, "xpMult", xpMultiplier)
]]--		
	end
end

--check for Fall of Deathwing component of Dragon Soul
--looks for a raid group in The Maelstrom
local function checkFOD(mid) return ((mid == 751) or (mid == 737)) end

--GetKey function :
--		- Returns the key name of the raid, if it exists, false otherwise
function AutoLog:GetKey()
	local k, v
	local rk = false
	local mid = GetCurrentMapAreaID()
	if checkFOD(mid) then rk = "43DGS"	
	else
		for k, v in pairs (map_id_list) do
			if v == mid then
				rk = k
				break
			end
		end
	end
	return rk
end

function AutoLog:GetDifficulty() 
	local rd = GetRaidDifficulty()
	if IsInRaid() then 
		if IsPartyLFG() and IsInLFGDungeon() then rd = 5 end
	else
		rd = GetDungeonDifficultyID()
		if rd ~= nil then rd = rd + 10 end		
	end
	return rd
end

--CheckLog function :
--		- Called on event / option changes
--		- Checks whether combat logging should be enabled (or not)
function AutoLog:CheckLog()
	if not self.db.char.enable then return end -- Add-on is disabled
	local difficulty = self:GetDifficulty()
	if not difficulty then return end
	local inInstance, instanceType = IsInInstance()
	local isLogging = LoggingCombat()
	local isDungeon = (instanceType == "party")
	local raidKey, raidType
	local goLog = false
	raidKey = self:GetKey()
	if raidKey then
		if difficulty == 1 then raidType = "raids10"
		elseif difficulty == 2 then raidType = "raids25"
		elseif difficulty == 3 then raidType = "raids10h"
		elseif difficulty == 4 then raidType = "raids25h"
		elseif difficulty == 5 then raidType = "lfr" end
		if not inInstance then goLog = false
		elseif raidKey then goLog = self.db.char[raidType][raidKey] end
	end
	if ((self.db.char.dungeons) and (isDungeon)) then goLog = true end
	self:ShowMessage(goLog, isLogging)
	self.db.char.curLogging = LoggingCombat(goLog)
end

function AutoLog:ChatCommand(input)
	if not input or input:trim() == "" then InterfaceOptionsFrame_OpenToCategory(self.optionsFrame)
	else LibStub("AceConfigCmd-3.0").HandleCommand(AutoLog, "autolog", "AutoLog", input) end
end

function AutoLog:GetSetting(settingtype, raid) return self.db.char[settingtype][raid] end
function AutoLog:SetSetting(settingtype, raid, settingvalue) self.db.char[settingtype][raid] = settingvalue; self:CheckLog() end

function AutoLog:ShowMessage(goLog, isLogging)
	local msg
	if goLog and not isLogging then msg = (L["Combat logging turned on"])
	elseif isLogging and not goLog then msg = (L["Combat logging turned off"]) end
	if not msg then return end
	print(msg)
	if self.db.char.osw then
		alm:SetText(msg)
		AutoLog.frame:Show()
		AutoLog.frame:SetScript("OnUpdate", fadeOut)
	end
end

function AutoLog:ToggleLog()
	local isLogging = LoggingCombat()
	self.db.char.curLogging = LoggingCombat(not isLogging)
	self:ShowMessage(not isLogging, isLogging)
end
--untested code
--[[
function AutoLog:SetGuildRun(info, val)
	self.db.char.guildrun = val
	
	if val then
		self:RegisterEvent("GUILD_PARTY_STATE_UPDATED")
		self:GUILD_PARTY_STATE_UPDATED()
	else
		self:UnregisterEvent("GUILD_PARTY_STATE_UPDATED")
	end
	
	self:CheckLog()
end

function AutoLog:GetGuildRun() return self.db.char.guildrun end
]]--

AutoLog.frame = CreateFrame("Frame","AutoLog",UIParent)
AutoLog.frame:Hide()
AutoLog.frame.fadetime = 0
AutoLog.frame.wait = 0
AutoLog.frame:SetFrameStrata("DIALOG")
AutoLog.frame:SetHeight(200)
AutoLog.frame:SetWidth(UIParent:GetWidth())
AutoLog.frame:SetPoint("CENTER", UIParent, "CENTER", 0, 150)
AutoLog.frame:RegisterEvent("ADDON_LOADED")
AutoLog.frame:RegisterEvent("PLAYER_LOGIN")
AutoLog.frame:RegisterEvent("PLAYER_ENTERING_WORLD")
AutoLog.frame:SetScript("OnEvent", function(...) AutoLog:eventHandler(...) end)