-- queue
local queueFrame
local queueList
-- [1] skillName
-- [2] queued count
local skillLine
local name2idx = {}
local version = 1.70
local processing
local processingCount

--local SIGN_SPELL_FAILED_REAGENTS = strsplit(":", SPELL_FAILED_REAGENTS)
--local SIGN_SPELL_FAILED_REQUIRES_SPELL_FOCUS = strsplit(" ", SPELL_FAILED_REQUIRES_SPELL_FOCUS)

local function deepcopy(object)
	local lookup_table = {}
	local function _copy(object)
		if type(object) ~= "table" then
			return object
		elseif lookup_table[object] then
			return lookup_table[object]
		end
		local new_table = {}
		lookup_table[object] = new_table
		for index, value in pairs(object) do
			new_table[_copy(index)] = _copy(value)
		end
		return setmetatable(new_table, getmetatable(object))
	end
	return _copy(object)
end

local function RegisterEvents(self)
	self:RegisterEvent("UNIT_SPELLCAST_STOP")
	--self:RegisterEvent("UNIT_SPELLCAST_START")
	self:RegisterEvent("UNIT_SPELLCAST_CHANNEL_STOP")
	self:RegisterEvent("UNIT_SPELLCAST_INTERRUPTED")
	--self:RegisterEvent("UPDATE_TRADESKILL_RECAST")
	self:RegisterEvent("UI_ERROR_MESSAGE")
end

local function UnregisterEvents(self)
	self:UnregisterEvent("UNIT_SPELLCAST_STOP")
	--self:UnregisterEvent("UNIT_SPELLCAST_START")
	self:UnregisterEvent("UNIT_SPELLCAST_CHANNEL_STOP")
	self:UnregisterEvent("UNIT_SPELLCAST_INTERRUPTED")
	--self:UnregisterEvent("UPDATE_TRADESKILL_RECAST")
	self:UnregisterEvent("UI_ERROR_MESSAGE")
end

local function TradeSkillDWQueue_CreateNode(idx, parent)
	local b = CreateFrame("Button", "TradeSkillDW_QueueButton"..idx, parent, "TradeSkillDW_QueueButtonTemplate")
	b:SetWidth(parent:GetWidth() - 45)
	b:SetHeight(TRADE_SKILL_HEIGHT - 2)
	b.tag = idx
	b.text = _G[b:GetName().."Text"]
	b.count = _G[b:GetName().."Count"]
	b.avail = _G[b:GetName().."AvailCount"]
	return b
end 

local function TradeSkillDWQueue_SetListButtons()
	local height = queueFrame:GetHeight() - queueFrame.df:GetHeight() - 108
	queueFrame.sf.count = math.floor(height / TRADE_SKILL_HEIGHT)
	for i = queueFrame.sf.count + 1, #queueFrame.sf.buttons do
		queueFrame.sf.buttons[i]:Hide()
	end
	for i = 1, queueFrame.sf.count do
		if not(queueFrame.sf.buttons[i]) then
			queueFrame.sf.buttons[i] = TradeSkillDWQueue_CreateNode(i, queueFrame)
			if i == 1 then
				queueFrame.sf.buttons[i]:SetPoint("TOPLEFT", queueFrame, "TOPLEFT", 8, -66)
			else
				queueFrame.sf.buttons[i]:SetPoint("TOPLEFT", queueFrame.sf.buttons[i - 1], "BOTTOMLEFT", 0, -2)
			end
		end
	end
	FauxScrollFrame_Update(queueFrame.sf, queueFrame.sf.count + 1, queueFrame.sf.count, TRADE_SKILL_HEIGHT)
end

local function GetSkillIndexByName(skillName)
	return name2idx[skillName]
end

local function FillSkillIndexByName()
	local numTradeSkills = GetNumTradeSkills()
	name2idx = {}
	for i = 1, numTradeSkills do
		local skillName = GetTradeSkillInfo(i)
		name2idx[skillName] = i
	end
end

function TradeSkillDW_QueueButtonEnter(self)
	if ( queueFrame.selectedIdx ~= 0 ) then
		GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
		local v = queueList[queueFrame.selectedIdx]
		if v then
			local tidx = GetSkillIndexByName(v[1])
			if tidx then
				GameTooltip:SetTradeSkillItem(tidx)
			end
		end
	end
	CursorUpdate(self)
end

function TradeSkillDW_QueueItemButtonEnter(self, idx)
	if ( queueFrame.selectedIdx > 0 ) then
		GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
		local v = queueList[queueFrame.selectedIdx]
		if v then
			local tidx = GetSkillIndexByName(v[1])
			if tidx then
				GameTooltip:SetTradeSkillItem(tidx, idx)
			end
		end
	end
	CursorUpdate(self)
end

function TradeSkillDW_QueueReagentClick(reag_idx)
	local v = queueList[queueFrame.selectedIdx]
	if v then
		local tidx = GetSkillIndexByName(v[1])
		if tidx then
			local reagentName = GetTradeSkillReagentInfo(tidx, reag_idx)
	
			local numTradeSkills = GetNumTradeSkills()
			for i = 1, numTradeSkills do
				local skillName = GetTradeSkillInfo(i)
				if skillName == reagentName then
					TradeSkillFrame_SetSelection(i)
					TradeSkillFrame_Update()
					return
				end
			end
		end
	end
end

local function TradeSkillDW_QueueGetScrollListIndex(idx)
	local offset = FauxScrollFrame_GetOffset(queueFrame.sf)
	return idx - offset
end

local function TradeSkillDW_QueueHighlight(idx)
	local listIdx = TradeSkillDW_QueueGetScrollListIndex(idx)

	for i = 1, queueFrame.sf.count do
		local sb = queueFrame.sf.buttons[i]
		sb:UnlockHighlight()
		sb.isHighlighted = false
	end
	
	if (listIdx > 0) and (listIdx <= queueFrame.sf.count) and (listIdx <= #queueList) then
		queueFrame.hf:ClearAllPoints()
		queueFrame.hf:SetPoint("TOPLEFT", queueFrame.sf.buttons[listIdx])
		queueFrame.hf:Show()
		local sb = queueFrame.sf.buttons[listIdx]
		sb:LockHighlight()
		sb.isHighlighted = true
		local v = queueList[idx]
		if v then
			local tidx = GetSkillIndexByName(v[1])
			if tidx then
				local _, skillType = GetTradeSkillInfo(tidx)
				local color = TradeSkillTypeColor[skillType]
				if color then
					queueFrame.hf.highlight:SetVertexColor(color.r, color.g, color.b)
				end
			end
		end
	else
		queueFrame.hf:Hide()
	end
end

local function TradeSkillDW_QueueHideDetails()
	queueFrame.df.cf.Name:Hide()
	queueFrame.df.cf.Icon:Hide()
	queueFrame.df.cf.HeaderLeft:Hide()
	queueFrame.df.cf.RequirementLabel:Hide()
	queueFrame.df.cf.RequirementText:SetText("")
	queueFrame.df.cf.ReagentLabel:Hide()
	queueFrame.df.cf.Description:Hide()
	queueFrame.df.cf.Cooldown:Hide()
	for i = 1, MAX_TRADE_SKILL_REAGENTS do
		queueFrame.df.cf.Reagents[i]:Hide()
	end
end

local function RemoveIdx(idx)
	table.remove(queueList, idx)
	TradeSkillDWQueue_Update()
	--if queueFrame:IsShown() then
		local listIdx = TradeSkillDW_QueueGetScrollListIndex(idx)
		if (listIdx > #queueList) then
			listIdx = listIdx - 1
		end
		if (listIdx > 0) and (listIdx <= queueFrame.sf.count) then
			TradeSkillDW_QueueButtonClick(queueFrame.sf.buttons[listIdx])
		else
			queueFrame.selectedIdx = 0
			TradeSkillDW_QueueHighlight(0)
		end
	--end
end

function TradeSkillDWQueue_RemoveClick(self)
	local idx = self:GetParent():GetID()
	RemoveIdx(idx)
end

function TradeSkillDWQueue_ClearClick()
	queueList = {}
	TradeSkillDWQueue_Update()
	TradeSkillDWQueue_SetSelection(0)
end

local function UpdateButtons()
	if processing then
		queueFrame.UpButton:Disable()
		queueFrame.DownButton:Disable()
		queueFrame.ClearButton:Disable()
		queueFrame.DoButton:Disable()
		return
	end
	
	local idx = queueFrame.selectedIdx

	if idx > 1 then
		queueFrame.UpButton:Enable()
	else
		queueFrame.UpButton:Disable()
	end

	if (idx > 0) and (idx < #queueList) then
		queueFrame.DownButton:Enable()
	else
		queueFrame.DownButton:Disable()
	end
	
	if #queueList > 0 then
		queueFrame.ClearButton:Enable()
	else
		queueFrame.ClearButton:Disable()
	end
	
	local v = queueList[queueFrame.selectedIdx]
	if not(v) then
		queueFrame.DoButton:Disable()
		return
	end
	
	local tidx = GetSkillIndexByName(v[1])
	if tidx then
		local _, _, numAvailable = GetTradeSkillInfo(tidx)
		if numAvailable > 0 then
			queueFrame.DoButton:Enable()
		else
			queueFrame.DoButton:Disable()
		end
	end
end

local function UpdateDetails()
	if not(queueList) then
		return
	end
	local v = queueList[queueFrame.selectedIdx]
	if not(v) then
		return
	end
	
	local tidx = GetSkillIndexByName(v[1])
	if tidx == nil then
		return
	end
	
	local skillName = GetTradeSkillInfo(tidx)
	
	queueFrame.df.cf.Name:SetText(skillName)
	queueFrame.df.cf.Name:Show()
	if GetTradeSkillCooldown(tidx) then
		queueFrame.df.cf.Cooldown:SetText(COOLDOWN_REMAINING.." "..SecondsToTime(GetTradeSkillCooldown(tidx)))
	else
		queueFrame.df.cf.Cooldown:SetText("")
	end
	queueFrame.df.cf.Icon:SetNormalTexture(GetTradeSkillIcon(tidx))
	queueFrame.df.cf.Icon:Show()
	queueFrame.df.cf.HeaderLeft:Show()

	-- Reagents
	local numReagents = GetTradeSkillNumReagents(tidx)
	if (numReagents > 0) then
		queueFrame.df.cf.ReagentLabel:Show()
	else
		queueFrame.df.cf.ReagentLabel:Hide()
	end
	for i = 1, numReagents do
		local reagentName, reagentTexture, reagentCount, playerReagentCount = GetTradeSkillReagentInfo(tidx, i)
		local reagent = queueFrame.df.cf.Reagents[i]
		local name = _G[queueFrame.df.cf.Reagents[i]:GetName().."Name"]
		local count = _G[queueFrame.df.cf.Reagents[i]:GetName().."Count"]
		if ( not reagentName or not reagentTexture ) then
			reagent:Hide()
		else
			reagent:Show()
			SetItemButtonTexture(reagent, reagentTexture)
			name:SetText(reagentName)
			-- Grayout items
			if ( playerReagentCount < reagentCount ) then
				SetItemButtonTextureVertexColor(reagent, 0.5, 0.5, 0.5);
				name:SetTextColor(GRAY_FONT_COLOR.r, GRAY_FONT_COLOR.g, GRAY_FONT_COLOR.b)
				creatable = nil;
			else
				SetItemButtonTextureVertexColor(reagent, 1.0, 1.0, 1.0);
				name:SetTextColor(HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b)
			end
			if ( playerReagentCount >= 100 ) then
				playerReagentCount = "*"
			end
			local v = queueList[queueFrame.selectedIdx]
			if v then
				reagentCount = reagentCount * v[2]
			end
			count:SetText(playerReagentCount.." /"..reagentCount)
		end
	end
	-- Place reagent label
	local reagentToAnchorTo = numReagents
	if ( (numReagents > 0) and (mod(numReagents, 2) == 0) ) then
		reagentToAnchorTo = reagentToAnchorTo - 1
	end
	
	for i = numReagents + 1, MAX_TRADE_SKILL_REAGENTS do
		queueFrame.df.cf.Reagents[i]:Hide()
	end

	local spellFocus = BuildColoredListString(GetTradeSkillTools(tidx));
	if ( spellFocus ) then
		queueFrame.df.cf.RequirementLabel:Show();
		queueFrame.df.cf.RequirementText:SetText(spellFocus);
	else
		queueFrame.df.cf.RequirementLabel:Hide();
		queueFrame.df.cf.RequirementText:SetText("");
	end

	local descr = GetTradeSkillDescription(tidx)
	if ( descr ) then
		queueFrame.df.cf.Description:Show()
		queueFrame.df.cf.Description:SetText(descr)
		queueFrame.df.cf.ReagentLabel:SetPoint("TOPLEFT", queueFrame.df.cf.Description, "BOTTOMLEFT", 0, -10);
	else
		queueFrame.df.cf.Description:Hide()
		queueFrame.df.cf.Description:SetText(" ");
		queueFrame.df.cf.ReagentLabel:SetPoint("TOPLEFT", queueFrame.df.cf.Description, "TOPLEFT", 0, 0);
	end
end

function TradeSkillDWQueue_DoClick()
	TradeSkillSetFilter(-1, -1)
	local v = queueList[queueFrame.selectedIdx]
	if not(v) then
		return
	end
	
	local tidx = GetSkillIndexByName(v[1])
	if tidx then
		local skillName, skillType, numAvailable = GetTradeSkillInfo(tidx)
		processingCount = v[2]
		if processingCount > numAvailable then
			processingCount = numAvailable
		end
		TradeSkillFrame_SetSelection(tidx)
		TradeSkillFrame_Update()
		TradeSkillInputBox:SetNumber(processingCount)

		processing = true
		RegisterEvents(queueFrame)
		UpdateButtons()
		DoTradeSkill(tidx, processingCount)
		TradeSkillInputBox:ClearFocus()
	end
end

function TradeSkillDWQueue_UpClick()
	local idx = queueFrame.selectedIdx
	if idx > 1 then
		local temp = queueList[idx - 1]
		queueList[idx - 1] = queueList[idx]
		queueList[idx] = temp
		local listIdx = TradeSkillDW_QueueGetScrollListIndex(idx)
		local offset = FauxScrollFrame_GetOffset(queueFrame.sf)
		if (listIdx <= 2) and (offset > 0) then
			FauxScrollFrame_SetOffset(queueFrame.sf, offset - 1)
		end
		if listIdx > 1 then
			TradeSkillDW_QueueButtonClick(queueFrame.sf.buttons[listIdx - 1])
		end
		TradeSkillDWQueue_Update()
	end
end

function TradeSkillDWQueue_DownClick()
	local idx = queueFrame.selectedIdx
	if idx < #queueList then
		local temp = queueList[idx + 1]
		queueList[idx + 1] = queueList[idx]
		queueList[idx] = temp
		local listIdx = TradeSkillDW_QueueGetScrollListIndex(idx)
		if listIdx >= queueFrame.sf.count - 1 then
			FauxScrollFrame_SetOffset(queueFrame.sf, FauxScrollFrame_GetOffset(queueFrame.sf) + 1)
		end
		if listIdx < queueFrame.sf.count then
			TradeSkillDW_QueueButtonClick(queueFrame.sf.buttons[listIdx + 1])
		end
		TradeSkillDWQueue_Update()
	end
end

function TradeSkillDWQueue_SetSelection(idx)
	if not(idx) or not(skillLine) then
		return
	end
	
	queueFrame.selectedIdx = idx
	TradeSkillDW_QueueSettings[skillLine].selectedIdx = idx
	UpdateButtons()
	TradeSkillDW_QueueHighlight(queueFrame.selectedIdx)
	UpdateDetails()
end

function TradeSkillDW_QueueButtonClick(self)
	TradeSkillDWQueue_SetSelection(self:GetID())
end

function TradeSkillDWQueue_Update()
	if not(queueList) then
		return
	end
	TradeSkillDW_QueueSettings[skillLine].queueList = deepcopy(queueList)
	--if not(queueFrame:IsShown()) then
	--	return
	--end
	
	local line -- 1 to ts.listCount of our window to scroll
	local lineplusoffset -- an index into our data calculated from the scroll offset
	local itemcount = #queueList
	local offset = FauxScrollFrame_GetOffset(queueFrame.sf)

	if itemcount == 0 then
		TradeSkillDW_QueueHideDetails()
	end
	
	for line = 1, queueFrame.sf.count do
		lineplusoffset = line + offset
		if (lineplusoffset <= itemcount) then
			local v = queueList[lineplusoffset]
			local sb = queueFrame.sf.buttons[line]
			if (v) and (v[1])and (v[2]) then
				--print("v[1] "..v[1]..", v[2] "..v[2])
				local tidx = GetSkillIndexByName(v[1])
				--print("tidx "..tostring(tidx))
				if tidx then
					local skillName, skillType, numAvailable = GetTradeSkillInfo(tidx) --v[1]
					--print("skillName "..skillName..", skillType "..skillType)
					if (skillName) and (skillType) then
						sb.text:SetText(skillName)
						sb.text:SetWidth(TRADE_SKILL_TEXT_WIDTH)
						sb.count:SetText("["..v[2].."]")
						sb.avail:SetText("["..numAvailable.."]")
						--sb.text:SetText(skillName.."["..v[2].."] ["..numAvailable.."]")
						local color = TradeSkillTypeColor[skillType];
						sb:SetNormalFontObject(color.font);
						sb.r = color.r;
						sb.g = color.g;
						sb.b = color.b;
						sb:SetID(lineplusoffset)
						sb:Show()
					end
				end
			else
				sb:Hide()
			end
		else
			queueFrame.sf.buttons[line]:Hide()
		end
	end
	
	UpdateButtons()
	
	-- (frame, numItems, numToDisplay, valueStep, button, smallWidth, bigWidth, highlightFrame, smallHighlightWidth, bigHighlightWidth, alwaysShowScrollBar )
	FauxScrollFrame_Update(queueFrame.sf, itemcount, queueFrame.sf.count, TRADE_SKILL_HEIGHT)
end

function TradeSkillDWQueue_VerticalScroll(self, offset)
	FauxScrollFrame_OnVerticalScroll(self, offset, TRADE_SKILL_HEIGHT, TradeSkillDWQueue_Update)
	TradeSkillDW_QueueHighlight(queueFrame.selectedIdx)
end

function TradeSkillDWQueue_OnClick(self, button) -- on click Queue button
	if button == "LeftButton" then
		if TradeSkillFrame.selectedSkill then
			local skillName = GetTradeSkillInfo(TradeSkillFrame.selectedSkill)
			table.insert(queueList, {skillName, TradeSkillInputBox:GetNumber()})
			if #queueList == 1 then
				TradeSkillDWQueue_SetSelection(1)
			end
			TradeSkillDWQueueFrame:Show()
			TradeSkillDWQueue_Update()
		end
	elseif button == "RightButton" then
		TradeSkillDWQueueFrame:Show()
	end
end

function TradeSkillDWQueueButton_OnEnter(self)
	GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
	GameTooltip:SetText(HIGHLIGHT_FONT_COLOR_CODE.."Left click add, Right click show"..FONT_COLOR_CODE_CLOSE)
end

function TradeSkillDWQueueButton_OnLeave(self)
	GameTooltip:Hide()
end

local function LoadSettings()
	skillLine = GetTradeSkillLine()
	TradeSkillDW_QueueSettings[skillLine] = TradeSkillDW_QueueSettings[skillLine] or {}
	TradeSkillDW_QueueSettings[skillLine].queueList = TradeSkillDW_QueueSettings[skillLine].queueList or {}
	queueList = deepcopy(TradeSkillDW_QueueSettings[skillLine].queueList) or {}
	if (TradeSkillDW_QueueSettings["version"] == nil) or (TradeSkillDW_QueueSettings["version"] < 1.70) then
		for k, v in pairs(queueList) do
			v[1] = v[3]
			v[3] = nil
		end
		TradeSkillDW_QueueSettings["version"] = 1.70
	end
	queueFrame.selectedIdx = TradeSkillDW_QueueSettings[skillLine].selectedIdx or 0
end

local function ClearProcessingState(self)
	UnregisterEvents(self)
	processing = nil
	processingCount = 0
end

local function SpellcastStop(self)
	--decrease amount	
	processingCount = processingCount - 1
	queueList[queueFrame.selectedIdx][2] = queueList[queueFrame.selectedIdx][2] - 1
	--print(processingCount, queueList[queueFrame.selectedIdx][2])
	if queueList[queueFrame.selectedIdx][2] <= 0 then
		RemoveIdx(queueFrame.selectedIdx)
	else
		TradeSkillDWQueue_Update()
	end
	if processingCount <= 0 then
		ClearProcessingState(self)
	end
end

local function SpellcastStart(self)
end

local function SpellcastInterrupted(self)
	ClearProcessingState(self)
	TradeSkillDWQueue_Update()
end

local function OnRecast(self)
	--print(GetTradeskillRepeatCount())
	TradeSkillDWQueue_Update()
end

local function OnEvent(self, event, ...)
	--print(event)
	if (event == "TRADE_SKILL_CLOSE") then
		self:UnregisterEvent("TRADE_SKILL_CLOSE")
		StopTradeSkillRepeat()
		ClearProcessingState(self)
		return
	end

	--if not(TradeSkillFrame:IsShown()) then
	--	return
	--end
	
	local arg1 = ...
	if (event == "UNIT_SPELLCAST_STOP" or event == "UNIT_SPELLCAST_CHANNEL_STOP") then
		if (arg1 == "player") then
			SpellcastStop(self)
		end
	elseif (event == "UNIT_SPELLCAST_START") then
		if (arg1 == "player") then
			SpellcastStart(self)
		end
	elseif (event == "UNIT_SPELLCAST_INTERRUPTED") then
		if (arg1 == "player") then
			SpellcastInterrupted(self)
		end
	elseif (event == "UPDATE_TRADESKILL_RECAST") then
		OnRecast(self)
	elseif (event == "UI_ERROR_MESSAGE") then
		--print(arg1)
		SpellcastInterrupted(self)
		--[[if (arg1 == INVENTORY_FULL) then
			SpellcastInterrupted(self)
		end
		if string.find(arg1, SIGN_SPELL_FAILED_REAGENTS, 1, true) then
			SpellcastInterrupted(self)
		end
		if string.find(arg1, SIGN_SPELL_FAILED_REQUIRES_SPELL_FOCUS, 1, true) then
			SpellcastInterrupted(self)
		end]]
	end
end

function TradeSkillDWQueue_Init()
	TradeSkillDW_QueueSettings = TradeSkillDW_QueueSettings or {}
	LoadSettings()
	FillSkillIndexByName()
	TradeSkillDW_QueueHideDetails()
	TradeSkillDWQueue_SetListButtons()
	TradeSkillDWQueue_Update()
	TradeSkillDWQueue_SetSelection(queueFrame.selectedIdx)
	if #queueList > 0 then
		TradeSkillDWQueueFrame:Show()
	else
		TradeSkillDWQueueFrame:Hide()
	end
	queueFrame:RegisterEvent("TRADE_SKILL_CLOSE")
end

-- queue init

TradeSkillDWQueueFrame = CreateFrame("Frame", "TradeSkillDW_QueueFrame", TradeSkillFrame, "TradeSkillDW_QueueTemplate")
queueFrame = TradeSkillDWQueueFrame
queueFrame.selectedIdx = 0
queueFrame.sf = _G[queueFrame:GetName().."ScrollFrame"]
queueFrame.df = _G[queueFrame:GetName().."DetailScrollFrame"]
queueFrame.hb = _G[queueFrame:GetName().."HorizontalBarLeft"]
queueFrame.sf.buttons = {}
queueFrame.hf = _G[queueFrame:GetName().."HighlightFrame"]
queueFrame.hf.highlight = _G[queueFrame.hf:GetName().."Highlight"]
queueFrame.df.cf = _G[queueFrame:GetName().."DetailScrollFrameChildFrame"]
queueFrame.df.cf.Name 				= _G[queueFrame.df.cf:GetName().."Name"]
queueFrame.df.cf.RequirementLabel 	= _G[queueFrame.df.cf:GetName().."RequirementLabel"]
queueFrame.df.cf.RequirementText 	= _G[queueFrame.df.cf:GetName().."RequirementText"]
queueFrame.df.cf.Description 		= _G[queueFrame.df.cf:GetName().."Description"]
queueFrame.df.cf.ReagentLabel 		= _G[queueFrame.df.cf:GetName().."ReagentLabel"]
queueFrame.df.cf.Icon 				= _G[queueFrame.df.cf:GetName().."Icon"]
queueFrame.df.cf.Count 				= _G[queueFrame.df.cf.Icon:GetName().."Count"]
queueFrame.df.cf.HeaderLeft 		= _G[queueFrame.df.cf:GetName().."HeaderLeft"]
queueFrame.df.cf.Cooldown 			= _G[queueFrame.df.cf:GetName().."Cooldown"]
queueFrame.df.cf.Reagents = {}
for i = 1, MAX_TRADE_SKILL_REAGENTS do
	queueFrame.df.cf.Reagents[i] 	= _G[queueFrame.df.cf:GetName().."Reagent"..i]
end
queueFrame:SetScript("OnEvent", OnEvent)

