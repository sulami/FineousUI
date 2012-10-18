local Guide = { }

local ZGV = ZygorGuidesViewer
if not ZGV then return end

local L = ZGV.L

local table,string,tonumber,ipairs,pairs,setmetatable = table,string,tonumber,ipairs,pairs,setmetatable
local CHAIN = ZGV.ChainCall

ZGV.GuideProto = Guide
local GuideProto_mt = { __index=Guide }

function Guide:New(tit,title,data,extra)
	local guide = {['title']=title,['title_short']=tit or title,['rawdata']=data,['extra']=extra, num=#ZGV.registeredguides+1, parsed=nil, fully_parsed=nil}
	setmetatable(guide,GuideProto_mt)
	return guide
end

local GetPrimaryTalentTree = ZGV.Expansion_Mists and GetSpecialization or GetPrimaryTalentTree
local GetTalentTabInfo = ZGV.Expansion_Mists and GetSpecializationInfo or GetTalentTabInfo

function Guide:DoCond(which,...)
	if which=="valid" and not self.condition_valid then
		-- Check class/spec compatiblity
		if self.class then
			local lclass,kclass=UnitClass("player")
			if kclass~=self.class then
				local classeslocalized={}
				FillLocalizedClassList(classeslocalized,UnitSex("player")==3)
				return false,classeslocalized[self.class].." class is required." -- TODO localize
			elseif self.spec then
				if ZGV.db.profile.beta then else
				if not self.spec[GetPrimaryTalentTree()] then
					local specnames="",multiple
					for k,v in pairs(self.spec) do
						local _,specname=GetTalentTabInfo(k)
						if specnames~="" then specnames=specnames..", " multiple=true end
						specnames=specnames..specname
					end
					return false,"Only the following spec"..(multiple and "s are" or " is").." eligible: "..specnames
				end
				end
			end
		end

		if self.startlevel then
			return ZGV:GetPlayerPreciseLevel()>=self.startlevel,"Level "..ZGV.FormatLevel(self.startlevel).." or higher is required."
		end
		-- If above is ok
		return true
	end

	if which=="suggested" and not self.condition_suggested and self.startlevel and self.type=="LEVELING" then return ZGV:GetPlayerPreciseLevel()>=self.startlevel end
	if which=="end" and not self.condition_end and self.endlevel then return ZGV:GetPlayerPreciseLevel()>=self.endlevel,"Level "..ZGV.FormatLevel(self.endlevel).." reached." end
	if which and self['condition_'..which] then
		return self['condition_'..which](self,...),self['condition_'..which..'_msg']
	end
end

function Guide:GetStatus()
	local ret,msg

	ret,msg = self:DoCond("invalid")
	if ret then return "INVALID",msg end

	ret,msg = self:DoCond("valid")
	if ret then
		ret,msg = self:DoCond("end")
		if ret then return "COMPLETE",msg end
		msg="" -- TODO it's a bug, we ask the end condition and we're reusing its value even if the guide isnt complete

		if self.condition_suggested_raw or self.type=="LEVELING" then
			ret,msg = self:DoCond("suggested")
			if ret then return "SUGGESTED" end
		end

		return "VALID",msg
	else
		return "INVALID",msg
	end
end

function Guide:GetCompletion()
	self.completionmode = self.completionmode
		or (self.type=="LOREMASTER" and "quests")
		or (self.type=="LEVELING" and "level")
		or "steps"
	local mode = self.completionmode

	if mode=="macro" then
		local acc=self.macro:MacroExists("account")
		local char=self.macro:MacroExists("character")
		return (acc or char) and 1 or 0,acc,char
	end

	if self.parse_failed then return "error","parsing failed" end

	if mode=="quests" or mode=="steps" then
		-- request full parsing for those
		if not self.fully_parsed then
			self.need_to_parse=true
			ZGV:Debug("Guide:GetCompletion : '"..self.title.."' needs parsing for completion type '"..mode.."'")
			return "loading"
		end
	end

	if mode=="none" then
		return "none"
	elseif mode=="level" then
		if not self.startlevel or not self.endlevel then return "error","no starting/ending level set" end
		return min(1,max(0,(ZGV:GetPlayerPreciseLevel()-self.startlevel)/(self.endlevel-self.startlevel)))
	elseif mode=="quests" then
		if not next(ZGV.completedQuests) then return "loading","waiting for quest data to arrive from server" end
		local quests = self:GetQuests()
		local count,comp = 0,0
		for qid,step in pairs(quests) do
			count=count+1
			if ZGV.completedQuests[qid] then comp=comp+1 end
		end
		return count>0 and comp/count or 0, comp,count
	elseif mode=="steps" then
		local count,comp = 0,0
		for si,step in ipairs(self.steps) do
			if not step:IsAuxiliary() then
				count=count+1
				if step:IsComplete() then comp=comp+1 end
			end
		end
		return count>0 and comp/count or 0, comp,count
	elseif mode=="skill" then
		local skill = ZGV:GetSkill(self.completionparams[1])
		return skill.level/self.completionparams[2] or 525, skill.level, self.completionparams[2] or 525
	end
	-- other completions might not need a full parse.
	return "error","we don't know if this guide completes or not"
end

function Guide:GetCompletionText()
	local comp,a,b,c,d = self:GetCompletion()
	assert(comp) -- Sanity!
	if comp=="loading" then return "...","(loading)" end
	if comp=="error" or type(comp)~="number" then return "?",("(an error occurred: %s)"):format(a or "black magic") end

	if self.completionmode=="none" then
		return "-", "This guide does not complete."
	elseif self.completionmode=="skill" then
		local skill = ZGV:GetSkill(self.completionparams[1])
		--return ("%d/%d"):format(a,b), ("%s skill: %d/%d"):format(ZGV.LocaleSkills[self.completionparams[1]],a,b)
		return math.floor(comp*100).."%", ("%s skill: %d/%d"):format(ZGV.LocaleSkills[self.completionparams[1]],a,b)
	elseif self.completionmode=="quests" then
		return math.floor(comp*100).."%", ("Quests completed: %d/%d"):format(a,b)
	elseif self.completionmode=="level" then
		return math.floor(comp*100).."%", ("Level %2d (+%d bars) reached: %d%%"):format(self.endlevel,(self.endlevel-math.floor(self.endlevel))*20,math.floor(comp*100))
	elseif self.completionmode=="steps" then
		return math.floor(comp*100).."%", ("Steps completed: %d/%d"):format(a,b)
	elseif self.completionmode=="macro" then
		return comp~=0 and "+" or "—",comp~=0 and L["macro_status_yes"]:format((a and b) and L["macro_both"] or (a and L["macro_acc"] or L["macro_char"])) or L["macro_status_no"]
	else
		return math.floor(comp*100).."%", ""
	end
end

function Guide:Load(step)
	ZGV:SetGuide(self,step)
end

function Guide:Unload()
	self.steps=nil
	self.fully_parsed=nil
	collectgarbage("step",100)
end

function Guide:Parse(fully)
	if self.rawdata and (not self.parsed or not self.fully_parsed) then

		if self.parse_failed then return end

		if fully then ZGV:Debug("Parsing guide: "..self.title) end

		local lastparsed = {linenum=-2,linedata="-?-"}
		local success,parsed,err,line,stepnum,linedata = coroutine_safe_pcall(function() return ZGV.Parser:ParseEntry(self,fully,lastparsed) end)

		if not success then
			local err = parsed
			ZGV:Error(L["message_errorloading_critical"]:format(self.title,err,lastparsed.linenum,lastparsed.linedata))
			self.parse_failed = true
			return nil

		elseif not parsed then
			if err then
				ZGV:Error(L["message_errorloading_full"]:format(self.title,line or 0,stepnum or "?",linedata or "???",err))
			else
				ZGV:Error(L["message_errorloading_brief"]:format(self.title))
			end
			self.parse_failed = true
			return nil

		else

			self.parsed = true

			-- parsed!
			for k,v in pairs(parsed) do self[k]=v end

			if self.steps and (#self.steps>0) then
				self.fully_parsed = true

				-- cap it with a finisher step
				if (self.steps[#self.steps].condition_valid or self.steps[#self.steps].requirement) then
					tinsert(self.steps,
						ZGV.StepProto:New {
							num=#self.steps+1,
							parentGuide=self,
							finish=true,
							goals = {
								[1] = ZGV.GoalProto:New {
									num=1,
									action="",
									text="This guide is now complete.",
									parentStep=step
								}
							}
						}
					)
				end

				-- gather all step labels, round'em up and brand'em
				self.steplabels={}
				for si,step in ipairs(self.steps) do
					local label=step.label
					if label then
						if not self.steplabels[label] then self.steplabels[label]={} end
						tinsert(self.steplabels[label],si)
					end
				end

				return true
			end

		end
		--if full_load then self.rawdata=nil end
		--self:Debug("Parsed: "..guide.title)
	end
end

function Guide:GetQuests()
	self:Parse(true)
	if not self.parsed then return end
	local tab={}
	for si,step in ipairs(self.steps) do
		for gi,goal in ipairs(step.goals) do
			if goal.questid then tab[goal.questid]=si end
		end
	end
	return tab
end

------- hello popup

StaticPopupDialogs['ZYGORGUIDESVIEWER_NEXTGUIDE'] = {
	text = L['static_caption']..L['static_nextguide'],
	button1 = ACCEPT,
	button2 = CANCEL,
	hideOnEscape = 1,
	timeout = 0,
	whileDead = 1,
	OnAccept = function(self) ZGV:SetGuide(self.guide) end,
	OnCancel = function(self) ZGV.db.char.ignoredguides[self.guide.title]=true  end,
}

StaticPopupDialogs['ZYGORGUIDESVIEWER_BADGUIDE'] = {
	text = L['static_caption']..L['static_badguide'],
	button1 = YES,
	button2 = NO,
	hideOnEscape = 1,
	timeout = 0,
	whileDead = 1,
	OnAccept = function(self)  ZGV.db.char.goodbadguides[self.guide.title]=true  ZGV:SetGuide(self.guide,self.step)  end,
	OnCancel = function(self)  ZGV.Menu:Show(self.guide)  end,
}

function Guide:AdvertiseWithPopup(nodelay)
	local delay = true
	if nodelay then delay=false end
	if delay and ZGV:IsPlayerInCombat() then
		ZGV.call_after_combat = function() self:AdvertiseWithPopup(true) end
		ZGV:Print("Next guide is ready. Just finish your combat.")
	else
		local dialog = StaticPopup_Show('ZYGORGUIDESVIEWER_NEXTGUIDE',self.title_short)
		dialog.guide=self
	end
end

function Guide:GetFirstValidStep(start)
	if not self.fully_parsed then return end
	local first = self.steps[start or 1]
	assert(first,"no steps?? what the hell?")
	if first:AreRequirementsMet() or ZGV.db.profile.showwrongsteps then return first end
	local firstvalid = first:GetNextValidStep()
	if not firstvalid then
		-- uh-oh! Either we started on an invalid step and there are only invalids to the end... or something went very wrong.
		assert(start>1,"The guide has NO valid steps!")
		first = self.steps[1]
		if first:AreRequirementsMet() then return first end
		firstvalid = first:GetNextValidStep()
		assert(firstvalid,"The guide has NO valid steps! (after retry at start)")
		ZGV:Print("No valid steps past "..start.." found. Restarting guide at step 1.")
	end
	return firstvalid  -- always returns something, or breaks.
end

local function AskReload() --reload after a panda has choosen a faction.
	local reload=CreateFrame("Frame","ReloadRequest",UIParent)
		reload:SetBackdrop({bgFile="Interface\\DialogFrame\\UI-DialogBox-Background",edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", tile = true, edgeSize=32, tileSize = 1, insets = { left = 11, right = 12, top = 10, bottom = 11 }})
		reload:SetBackdropColor(1,0,0,1)
		reload:SetWidth(400)
		reload:ClearAllPoints()
		reload:SetPoint("TOP",0,-100)
		reload:SetSize(300,85)
		reload:SetFrameStrata("DIALOG")
		reload:Show()

	local text=reload:CreateFontString("BuyConfirm_Text","ARTWORK","SystemFont_Med2")
		text:ClearAllPoints()
		text:SetPoint("TOP",0,-20)

		local zgname = ZygorGuidesViewer_L("Main")["zgname"]
		text:SetText(L['static_pandareload']:format(zgname))

	local acceptbutton=CreateFrame("Button", "ReloadRequest_AcceptButton",reload,"UIPanelButtonTemplate,SecureActionButtonTemplate")
		acceptbutton:SetSize(100,15)
		acceptbutton:ClearAllPoints()
		acceptbutton:SetPoint("LEFT",reload,"BOTTOMLEFT",25,25)
		acceptbutton:SetAttribute("type","macro")
		acceptbutton:SetAttribute("macrotext","/console reloadui")
		acceptbutton:SetText("Accept")

	local declinebutton=CreateFrame("Button", "ReloadRequest_DeclineButton",reload,"UIPanelButtonTemplate")
		declinebutton:SetSize(100,15)
		declinebutton:ClearAllPoints()
		declinebutton:SetPoint("RIGHT",reload,"BOTTOMRIGHT",-25,25)
		declinebutton:SetText("Decline")

	local function escaped()
		reload:Hide()
		StaticPopup_DisplayedFrames[6]=nil
	end

	local function declined(self,key)
		if key=="LeftButton" then
			reload:Hide()
			StaticPopup_DisplayedFrames[6]=nil
		end
	end

	local function accepted()
		reload:Hide()
		StaticPopup_DisplayedFrames[6]=nil
	end

	declinebutton:SetScript("OnClick",declined)

	hooksecurefunc("StaticPopup_EscapePressed",escaped)
	ReloadRequest.hideOnEscape=true -- tricking the game to think a static popup is displayed so that escape works correctly.
	StaticPopup_DisplayedFrames[6]=ReloadRequest
end

function Guide:CreateDungeonPopup()
	ZGV:Debug("Creating Dungeon Popup")

	self.DungeonPopup= CHAIN(CreateFrame("Frame","ZygorDungeonPopup",UIParent))
		:SetBackdrop({bgFile="Interface\\DialogFrame\\UI-DialogBox-Background",edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", tile = true, edgeSize=32, tileSize = 1, insets = { left = 11, right = 12, top = 10, bottom = 11 }})
		:SetBackdropColor(1,0,0,1)
		:SetSize(400,150)
		:ClearAllPoints()
		:SetPoint("TOP",0,-75)
		:SetFrameStrata("DIALOG")
		:Hide() .__END

	local F=self.DungeonPopup

	F.text=CHAIN(F:CreateFontString("","ARTWORK","SystemFont_Med2"))
		:ClearAllPoints()
		:SetPoint("TOP",0,-20)
		:SetText(L['static_caption']..L['static_dungeon'])
	.__END

	F.checkbutton=CHAIN(CreateFrame("CheckButton", "DungeonCheck",F,"UICheckButtonTemplate"))
		:SetSize(20,20)
		:ClearAllPoints()
		:SetPoint("BOTTOMLEFT",F,"BOTTOMLEFT",15,10)
	.__END
	_G[F.checkbutton:GetName().."Text"]:SetText(L['static_dungeondontshow'])

	F.declinebutton=CHAIN(CreateFrame("Button", "",F,"UIPanelButtonTemplate"))
		:SetSize(80,15)
		:ClearAllPoints()
		:SetPoint("BOTTOMRIGHT",F,"BOTTOMRIGHT",-15,13)
		:SetText(L['static_dungeondecline'])
	.__END

	F.acceptbutton=CHAIN(CreateFrame("Button", "",F,"UIPanelButtonTemplate"))
		:SetSize(80,15)
		:ClearAllPoints()
		:SetPoint("RIGHT",F.declinebutton,"LEFT",-10,0)
		:SetText(L['static_dungeonaccept'])
	.__END

	local function declined(self,key)
		F:Hide()
		StaticPopup_DisplayedFrames[6]=nil
		local checked=F.checkbutton:GetChecked()

		if key then --Clicked and not Escape.
			if checked then
				ZGV.db.profile.suggestiondungeonnum[F.map].allow=false
			end
		end
	end

	local function accepted()
		local checked=F.checkbutton:GetChecked()

		if checked then
			ZGV.db.profile.suggestiondungeonnum[F.map].allow=false
		end
		F:Hide()
		ZGV:SetGuide(F.guide)
		
		StaticPopup_DisplayedFrames[6]=nil
	end

	F.acceptbutton:SetScript("OnClick",accepted)
	F.declinebutton:SetScript("OnClick",declined)
	hooksecurefunc("StaticPopup_EscapePressed",declined)
end

function Guide:SuggestDungeonGuide(num,map)
	ZGV:Debug("Suggesting guide number "..num.." for dungeon "..GetMapNameByID(map))

	if not self.DungeonPopup then 
		self:CreateDungeonPopup()
	end
	
	self.DungeonPopup.hideOnEscape=true -- tricking the game to think a static popup is displayed so that escape works correctly.
	StaticPopup_DisplayedFrames[6]=self.DungeonPopup

	ZGV.db.profile.suggestiondungeonnum[map] = {}
	local dung= ZGV.db.profile.suggestiondungeonnum[map]
	dung.lastdate=date():gsub("%s.*","") --Returns a string with the last date saved.
	dung.lasttime=GetTime()
	dung.allow=true --assume we will allow it, adjust it if they tell us to.

	self.DungeonPopup.text:SetText(L['static_caption']..L['static_dungeon']:format(ZGV.registeredguides[num].title_short))
	self.DungeonPopup.guide=num
	self.DungeonPopup.map=map
	self.DungeonPopup:Show()
end

function Guide:IsDungeon()
	local map = GetCurrentMapAreaID()
	local dung = ZGV.db.profile.suggestiondungeonnum[map]
	local day=date():gsub("%s.*","") --Returns a string with date in 00/00/00 format.
	local time=GetTime()

	if ZGV.db.profile.suggestiondungeon and ZGV.Frame:IsVisible() then--allow dungeons at all, Is the guide viewer even up?
		if (dung and dung.allow --Did they block this dungeon?
	         and (dung.lastdate~=day or (time-dung.lasttime)>3600)) --Is it the same day and been more than an hour?
		 or not dung then --have not been to this dungeon yet.

			for i,guide in ipairs(ZGV.registeredguides) do
				if guide.dungeon and guide.dungeon == map then
					if ZGV.db.char.guidename==guide.title then break end --If they already have the guide loaded.
					Guide:SuggestDungeonGuide(i,map)
					break
				end
			end
		end
	end
end

local function OnEvent(self,event)
	if event=="NEUTRAL_FACTION_SELECT_RESULT" then
		AskReload() --Panda only
	elseif event=="PLAYER_ENTERING_WORLD" then --Not on zone change because reloading in a dungeon doesn't fire Zone Change.
		--Map doesn't update right away.
		ZGV:ScheduleTimer(function() Guide:IsDungeon() end,3.0) --Let them get in and then ask.
	end
end

local eventFrame=CreateFrame("Frame")
eventFrame:RegisterEvent("NEUTRAL_FACTION_SELECT_RESULT")
eventFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
eventFrame:SetScript("OnEvent", OnEvent)
