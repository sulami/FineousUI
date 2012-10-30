------------------------------------------------------------------------
-- TimedAward	
------------------------------------------------------------------------
-- Contains methods related to timed awards and the timed awards gui frame. 
-- TimedAwards provide a method to automatically award dkp at certain timed
-- intervals. Players can either set an award to continouously be made or 
-- for a 1 time award to be done after so many minutes.
--
-- Note, values for this module are contained in the WebDKP_Options datastructure. 
-- Important ones: "TimedAwardInProgress" and "TimedAwardTimer"
------------------------------------------------------------------------

-- =====================================================================
-- Performs an automatted award by awarding everyone in the current group the 
-- amount of dkp specified in the timed Boss Award Dkp box
-- Added by Zevious (Bronzebeard)
-- =====================================================================
function WebDKP_BossAward_PerformAward(arg1,arg2,arg7) 

	if( WebDKP_Options["AwardBossDKP"] == 1) then
		ZoneName = GetRealZoneText();

		if ZoneName == "Blackwing Descent" and arg7 == "Onyxia" then
			return;
		end

	-- First check the boss kill list
		if (arg2 =="UNIT_DIED") then
			local bossKilled = WebDKP_BossKillList[arg7];
			if	(bossKilled~=nil) then
				WebDKP_AwardDKP(bossKilled);
				return;
			end	
		end

	-- Then check the council list
		local concilKill = WebDKP_Check_Council_Fights(arg7);
		if (concilKill~=nil) then
			WebDKP_AwardDKP(concilKill);
			return;
		end

	-- check yell list
		local yellKill = WebDKP_BossYellList[arg2]
		if (yellKill~=nil) then
			local YellBossKilled = yellKill[1];
			for k,v in pairs(yellKill[2]) do
				 if (string.find(arg1,v)~=nil) then
					WebDKP_AwardDKP(YellBossKilled);
					return;
				end
			end
		end
	end

-- End of the Boss Award Function
end

-- ================================
-- Awards DKP 
-- input - Boss/fight name to show on dkp 
-- ================================
function WebDKP_AwardDKP(BossName)
	
	local GoFlag = 0;
	RaidTotal = GetNumGroupMembers()

	if RaidTotal > 15 and WebDKP_Options["AwardBossDKP25"] == 1 then GoFlag = 1 end 			-- Is the group 25 and is 25 enabled
	if RaidTotal < 11 and WebDKP_Options["AwardBossDKP10"] == 1 and RaidTotal > 5 then GoFlag = 1 end	-- Is the group 10 and is 10 enabled

	if GoFlag == 1 then

		PlaySound("QUESTCOMPLETED");

		WebDKP_UpdatePlayersInGroup();
		local dkp = WebDKP_GeneralOptions_FrameBossDKP:GetText();
		if(dkp == nil or dkp == "") then
				dkp = 0;
		end
		dkp = tonumber(dkp);
		
		WebDKP_AddDKP(dkp, "Auto Award Boss Kill: "..BossName, "false" , WebDKP_PlayersInGroup);
		WebDKP_AnnounceBossAward(dkp,BossName); 
		WebDKP_Refresh()

	end
end

-- ================================
-- Toggles displaying the timed award panel
-- ================================
function WebDKP_TimedAward_ToggleUI()
	if ( WebDKP_TimedAwardFrame:IsShown() ) then
		WebDKP_TimedAwardFrame:Hide();
	else
		WebDKP_TimedAwardFrame:Show();
		local time = WebDKP_TimedAwardFrameTime:GetText();
		if(time == nil or time == "") then
			WebDKP_TimedAwardFrameTime:SetText("5");
		end
		local dkp = WebDKP_TimedAwardFrameDkp:GetText();
		if(dkp == nil or dkp == "") then
			WebDKP_TimedAwardFrameDkp:SetText("0");
		end
	end
end


-- ================================
-- Toggles displaying mini timer
-- ================================
function WebDKP_TimedAward_ToggleMiniTimer()
	if ( WebDKP_TimedAward_MiniFrame:IsShown() ) then
		WebDKP_TimedAward_MiniFrame:Hide();
		WebDKP_Options["TimedAwardMiniTimer"] = 0;
	else
		WebDKP_TimedAward_MiniFrame:Show();
		WebDKP_Options["TimedAwardMiniTimer"] = 1;
	end
end

-- ================================
-- Shows the Bid UI
-- ================================
function WebDKP_TimedAward_ShowUI()
	WebDKP_TimedAwardFrame:Show();
	local time = WebDKP_TimedAwardFrameTime:GetText();
	if(time == nil or time == "") then
		WebDKP_TimedAwardFrameTime:SetText("0");
	end
	local dkp = WebDKP_TimedAwardFrameDkp:GetText();
	if(dkp == nil or dkp == "") then
		WebDKP_TimedAwardFrameTime:SetText("0");
	end
end

-- ================================
-- Hides the Bid UI
-- ================================
function WebDKP_TimedAward_HideUI()
	WebDKP_TimedAwardFrame:Hide();
end

-- ================================
-- Triggers The Timer to Start / Stop
-- ================================
function WebDKP_TimedAward_ToggleTimer()
	if ( WebDKP_Options["TimedAwardInProgress"] == true ) then			--Stop the timer
		WebDKP_Options["TimedAwardInProgress"] = false;
		WebDKP_TimedAwardFrameStartStopButton:SetText("Start");
		WebDKP_TimedAward_UpdateFrame:Hide();
		WebDKP_TimedAward_UpdateText();

	else
		WebDKP_Options["TimedAwardInProgress"] = true;			--Start the timer
		
		if ( WebDKP_Options["TimedAwardTimer"] == 0 ) then
			local time = WebDKP_TimedAwardFrameTime:GetText();
			if(time == nil or time == "") then
				time = 5;
			end
			WebDKP_Options["TimedAwardTimer"] = time * 60;
		end
		
		WebDKP_TimedAwardFrameStartStopButton:SetText("Stop");
		WebDKP_TimedAward_UpdateFrame:Show();
		WebDKP_TimedAward_UpdateText();
	end
end

-- ================================
-- Resets the timer to start counting from scartch again
-- ================================
function WebDKP_TimedAward_ResetTimer()
	local time = WebDKP_TimedAwardFrameTime:GetText();
	if(time == nil or time == "") then
		time = 5;
	end
	WebDKP_Options["TimedAwardTimer"] = time * 60;
	WebDKP_TimedAward_UpdateText();
end


-- ================================
-- Event handler for the bidding update frame. The update frame is visible (and calling this method)
-- when a timer value was specified. The addon countdowns until 0 - and when it reaches 0 it stops
-- the current bid
-- ================================
function WebDKP_TimedAward_OnUpdate(self, elapsed)
local this = self;	
	this.TimeSinceLastUpdate = this.TimeSinceLastUpdate + elapsed; 	

	if (this.TimeSinceLastUpdate > 1.0) then
		this.TimeSinceLastUpdate = 0;
		-- decrement the count down
		WebDKP_Options["TimedAwardTimer"] = WebDKP_Options["TimedAwardTimer"] - 1;
		
		WebDKP_TimedAward_UpdateText();
		
		--update the gui
		
		if ( WebDKP_Options["TimedAwardTimer"] <= 0 ) then			-- countdown reached 0
			WebDKP_TimedAward_PerformAward();

			-- if we are set to repeat the awards, go ahead and start the timer again
			if ( WebDKP_Options["TimedAwardRepeat"] == 1 ) then
				
				WebDKP_TimedAward_ResetTimer();
			else
				-- it was a one time award, stop everything so we don't start going into negative numbers
				WebDKP_Options["TimedAwardInProgress"] = false;
				WebDKP_TimedAwardFrameStartStopButton:SetText("Start");
				WebDKP_TimedAward_UpdateFrame:Hide();
			end
		end
	end
end

-- ================================
-- Updates the timer gui to show how many minutes / seconds are left
-- ================================
function WebDKP_TimedAward_UpdateText()
	
	local toDisplay = "";
	local minutes = floor(WebDKP_Options["TimedAwardTimer"] / 60);
	local seconds = WebDKP_Options["TimedAwardTimer"] % 60;
	
	if ( minutes > 0 ) then
		toDisplay = toDisplay..minutes..":";
	end
	if ( seconds < 10 ) then
		seconds = "0"..seconds;
	end
	toDisplay = toDisplay..seconds;
	
	WebDKP_TimedAwardFrameTimeLeft:SetText("Time Left: "..toDisplay);
	WebDKP_TimedAward_MiniFrameTimeLeft:SetText(toDisplay);
	
end


-- ================================
-- Performs an automatted award by awarding everyone in the current group the 
-- amount of dkp specified in the timed award gui box. Should be 
-- called when the auto timer finishes
-- ================================
function WebDKP_TimedAward_PerformAward() 

	PlaySound("QUESTCOMPLETED");

	WebDKP_UpdatePlayersInGroup();
	local allplayers = WebDKP_PlayersInGroup;
	local numPlayers = WebDKP_GetTableSize(WebDKP_PlayersInGroup);
	local dkp = WebDKP_TimedAwardFrameDkp:GetText();
	if(dkp == nil or dkp == "") then
		dkp = 0;
	end
	dkp = tonumber(dkp);

	-- Check to see if standby players should count and if any are in standby
	if WebDKP_Options["TimedStandby"] == 1 then
		for k, v in pairs(WebDKP_DkpTable) do
			if ( type(v) == "table" ) then
				local playerName = k; 
				local playerClass = v["class"];
				local playerStandby = v["standby"];
				if playerStandby ~= nil and playerStandby == 1 then
					numPlayers = numPlayers + 1;
					allplayers[numPlayers]=
					{
						["name"] = playerName,
						["class"] = playerClass,
					};

				end

			end
		end
	end

	if WebDKP_Options["EPGPEnabled"] == 1 then
		WebDKP_AddEP(dkp, "Timed Auto Award", "false", WebDKP_PlayersInGroup);
		WebDKP_UpdateTableToShow();
		WebDKP_UpdateEPGPTable();

	else
		WebDKP_AddDKP(dkp, "Timed Auto Award", "false" , WebDKP_PlayersInGroup);
		WebDKP_UpdateTableToShow();
		WebDKP_UpdateTable();
	end
	
	WebDKP_AnnounceTimedAward( WebDKP_TimedAwardFrameTime:GetText(), dkp ); 
	
	WebDKP_Refresh()
	
end

-- ================================
-- This function is used to check council fight
-- input - NPC/Boss name recieved from event
-- output - Boss/event name to be used for awarding dkp 
-- ================================
function WebDKP_Check_Council_Fights(BossName)

local BossKilled = nil;

	---------------------------------------------------------------
	-- Added by Zevious to detect Naxxramas Four Horsemen Kill
	-- 5/26/09
	---------------------------------------------------------------
	if (BossName == "Than Kor'Thazz" and _G["KorFlag"] == 1) then 
		_G["RivendareFlag"] = 0;
		_G["LadyFlag"] = 0;
		_G["SirFlag"] = 0;
	end
	if (BossName == "Baron Rivendare" and _G["RivendareFlag"]) == 1 then 
		_G["KorFlag"] = 0;
		_G["LadyFlag"] = 0;
		_G["SirFlag"] = 0;
	end
	if (BossName == "Lady Blaumeux" and _G["LadyFlag"]) == 1 then 
		_G["KorFlag"] = 0;
		_G["RivendareFlag"] = 0;
		_G["SirFlag"] = 0;
	end
	if (BossName == "Sir Zeliek" and _G["SirFlag"]) == 1 then 
		_G["KorFlag"] = 0;
		_G["RivendareFlag"] = 0;
		_G["LadyFlag"] = 0;
	end
	if (BossName == "Than Kor'Thazz") then _G["KorFlag"] = 1 end
	if (BossName == "Baron Rivendare") then _G["RivendareFlag"] = 1 end
	if (BossName == "Lady Blaumeux") then _G["LadyFlag"] = 1 end
	if (BossName == "Sir Zeliek") then _G["SirFlag"] = 1 end
	if (_G["KorFlag"] + _G["RivendareFlag"] + _G["LadyFlag"] +_G["SirFlag"]  == 3) then 
		BossKilled ="Four Horsemen" 
		_G["KorFlag"] = 0;
		_G["RivendareFlag"] = 0;
		_G["LadyFlag"] = 0;
		_G["SirFlag"] = 0;
	end
	
	return BossKilled;
end

-- ================================
-- Boss kill list used when UNIT_DIED is detected
-- This is in the format of [Parameter recieved by wow] = name you would like to show on dkp
-- e.g. on the spine of deathing fight, the paramter passed is "Deathwing" but the fight is actually spine of deathing
-- ================================ 
WebDKP_BossKillList = {
	["Magmaw"]="Magmaw",
	["Argaloth"] = "Argaloth",
	["Al'Akira"] = "Al'Akira",
	["Cho'gall"] = "Cho'gall",
	["Chimaeron"] = "Chimaeron",
	["Sinestra"] = "Sinestra",
	["Emalon the Storm Watcher"] = "Emalon the Storm Watcher", 
	["Maloriak"] = "Maloriak",
	["Halfus Wyrmbreaker"] = "Halfus Wyrmbreaker",
	["Atramedes"] = "Atramedes",
	["Archavon the Stone Watcher"] = "Archavon the Stone Watcher",
	["Koralon the Flame Watcher"] = "Koralon the Flame Watcher",
	["Onyxia"] = "Onyxia",
	["Anub'Rekhan"] = "Anub'Rekhan",
	["Grand Widow Faerlina"] = "Grand Widow Faerlina",
	["Maexxna"] = "Maexxna",
	["Icehowl"] = "Icehowl",
	["Lord Jaraxxus"] = "Lord Jaraxxus",
	["Instructor Razuvious"] = "Instructor Razuvious",
	["Gothik the Harvester"] = "Gothik the Harvester",
	["Four Horsemen"] = "Four Horsemen",
	["Patchwerk"] = "Patchwerk",
	["Grobbulus"] = "Grobbulus",
	["Gluth"] = "Gluth",
	["Thaddius"] = "Thaddius",
	["Noth the Plaguebringer"] = "Noth the Plaguebringer",
	["Heigan the Unclean"] = "Heigan the Unclean",
	["Loatheb"] = "Loatheb",
	["Sapphiron"] = "Sapphiron",
	["Kel'Thuzad"] = "Kel'Thuzad",
	["Flame Leviathan"] = "Flame Leviathan",
	["Ignis the Furnace Master"] = "Ignis the Furnace Master",
	["Razorscale"] = "Razorscale",
	["XT-002 Deconstructor"] = "XT-002 Deconstructor",
	["Kologarn"] = "Kologarn",
	["Iron Council"] = "Iron Council",
	["Auriaya"] = "Auriaya",
	["Mimiron"] = "Mimiron",
	["Freya"] = "Freya",
	["Thorim"] = "Thorim",
	["Hodir"] = "Hodir",
	["General Vezax"] = "General Vezax",
	["Sartharion"] = "Sartharion",
	["Yogg-Saron"] = "Yogg-Saron",
	["Malygos"] = "Malygos",
	["Anub'arak"] = "Anub'arak",
	["Fjola Lightbane"] = "Fjola Lightbane",
	["Lord Marrowgar"] = "Lord Marrowgar",
	["Lady Deathwhisper"] = "Lady Deathwhisper",
	["Deathbringer Saurfang"] = "Deathbringer Saurfang",
	["Festergut"] = "Festergut",
	["Rotface"] = "Rotface",
	["Professor Putricide"] = "Professor Putricide",
	["Blood-Queen Lana'thel"] = "Blood-Queen Lana'thel",
	["Sindragosa"] = "Sindragosa",
	["Valiona"] = "Valiona",
	["Alysrazor"] = "Alysrazor",
	["Ragnaros"] = "Ragnaros",
	["Beth'tilac"] = "Beth'tilac",
	["Majordomo Staghelm"] = "Majordomo Staghelm",
	["The Lich King"] = "The Lich King",
	["Morchok"] = "Morchok",
	["Warlord Zon'ozz"] = "Warlord Zon'ozz",
	["Yor'sahj the Unsleeping"] = "Yor'sahj the Unsleeping",
	["Hagara the Stormbinder"] = "Hagara the Stormbinder",
	["Ultraxion"] = "Ultraxion",
	["Deathwing"] = "Spine of Deathwing",
	["Warmaster Blackhorn"] = "Warmaster Blackhorn",
	
	 -------------------------
    --  Mists of Pandaria  --
    -------------------------
	  -- Heart of Fear
    ["Imperial Vizier Zor'lok"] = "Imperial Vizier Zor'lok",
    ["Blade Lord Ta'yak"] = "Blade Lord Ta'yak",
    ["Garalon"] = "Garalon",
    ["Wind Lord Mel'jarak"] = "Wind Lord Mel'jarak",
    ["Amber-Shaper Un'sok"] = "Amber-Shaper Un'sok",
    ["Grand Empress Shek'zeer"] = "Grand Empress Shek'zeer",
	
    -- Mogu'shan Vaults
    --["Stone Guard"] = "The Stone Guard",                    		-- Council type - possible boss yell added below
    ["Feng the Accursed"] = "Feng the Accursed",
    ["Gara'jal the Spriritbinder"] = "Gara'jal the Spriritbinder",
    ["The Spirit Kings"] = "The Spirit Kings",               		-- Council type - need to get boss yell
    ["Elegon"] = "Elegon",
    ["Will of the Emperor"] = "Will of the Emperor",            	-- Council type -  need to get boss yell
    
    -- Terrace of the Endless Spring
    ["Protectors of the Endless"] = "Protectors of the Endless",    -- Council type -  need to get boss yell
    ["Tsulong"] = "Tsulong",
    ["Lei Shi"] = "Lei Shi",
    ["Sha of Fear"] = "Sha of Fear"
  
};

-- ================================
-- Boss Yell list used when an NPC yell is used to determine the fight
-- This is in the format of [NPC who made the yell] = {name you would like to show on dkp, {Yell1,yell2,etc..}}
-- ================================ 
WebDKP_BossYellList ={
["Valithria Dreamwalker"] = {"Valithria Dreamwalker",{"I AM RENEWED! Ysera grant me the favor to lay these foul creatures to rest!"}},
["Lord Victor Nefarius"] = {"Lord Victor Nefarius",{"Hmm. A shame to lose that experiment...","Impressive! You managed to destroy one of my most horrific creations - a task I'd thought impossible until now.","I should've known better than to rely on something SO stupidly named... to entertain me for long.","I should've known better than to rely on something SO stupidly named... to entertain me for long."}},
["Muradin Bronzebeard"] = {"Gunship Battle - ICC", {"Don't say I didn't warn ya, scoundrels! Onward, brothers and sisters!", "That malfunctioning piece of junk was murder on the repair bills."}},
["High Overlord Saurfang"] = {"Gunship Battle - ICC",{"The Alliance falter. Onward to the Lich King!"}},
["Omnotron"] = {"Omnotron Defense system",{"Defense systems obliterated. Powering down..."}},
["Brann Bronzebeard"] = {"Iron Council",{"You've defeated the Iron Council"}},
["Thorim"] =  {"Thorim",{"Stay your arms! I yield!"}},
["Hodir"] = {"Hodir",{"I... I am released from his grasp... at last."}},
["Freya"] = {"Freya",{"His hold on me dissipates."}},
["Mimiron"] = {"Mimiron",{"It would appear that I've made a slight miscalculation."}},
["Lord Jaraxxus"] = {"Lord Jaraxxus",{"Another will take my place. Your world is doomed."}},
["King Varian Wrynn"] = {"The Champions - ToC",{"GLORY TO THE ALLIANCE!"}},
["Garrosh Hellscream"] = {"The Champions - ToC",{"FOR THE HORDE!"}},
["Al'Akir"] = {"Al'Akir" ,{"GLORY TO THE ALLIANCE!","The Conclave of Wind has dissipated. Your honorable conduct and determination have earned you","After every storm... comes the calm..."}},
["Cho'gall"] = {"Cho'gall", {"Foolish mortals-(Usurper's children!)"}},
["Elementium Monstrosity"] = {"Elementium Monstrosity",{"Impossible..."}},
["Nefarian"] = {"Nefarian",{"Defeat has never tasted so bitter..."}},
["Shannox"] = {"Shannox",{"Ohh... the pain"}},
["Lord Rhyolith"] = {"Lord Rhyolith",{"Broken. Mnngghhh... broken..."}},
["Baleroc"] = {"Baleroc",{"Mortal filth... the master's keep is forbidden...."}},
["Alysrazor"] = {"Alysrazor",{"The light..."}},
["Ragnaros"] = {"Ragnaros",{"Too soon!"}},
["Kalecgos"] ={"Madness of Deathwing",{"I will realign the flow of mana and fill the Dragon Soul with all my arcane might"}},
["Alexstrasza"] = {"Madness of Deathwing",{"Excellent work. The fire of my heart glows with a brilliant purity unmatched"}},
["Nozdormu"] = {"Madness of Deathwing",{"I will expend EVERYTHING to bind every thread here, now, around the Dragon Soul. What comes to pass will never be undone"}},
["Ysera"] = {"Madness of Deathwing",{"We are one step closer. The unknowable, transcendent power of the Emerald Dream, I now give unto the Dragon Soul"}},

	-------------------------
    --  Mists of Pandaria  --
    -------------------------
	
	  -- Mogu'shan Vaults
["Lorewalker Cho"] = {"The Stone Guard",{"That was close"}}
}