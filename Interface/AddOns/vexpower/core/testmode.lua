function vexpower_Testmode_Auto_handler()
	if vexpower.testmode then
		vexpower_energyTextbar:Hide()
		vexpower_CPsTextbar:Hide()
	else
		vexpower_energyTextbar:Show()
		vexpower_CPsTextbar:Show()
	end
	vexpower_Testmode_Auto_aniStarter()
	vexpower_Testmode_Text_handler()
	vexpower_CPs_toggleBGcolor()
	vexpower_MainFrame_setMovable(vexpower.testmode)
	vexpower_CPs_setMovable(vexpower.testmode)
	vexpower_Testmode_toggleCPBGs()
	vexpower_TestModeWindow_toggle()
end

-- =======================
-- =====POWERBAR AND CPs==
-- =======================
function vexpower_Testmode_Auto_aniStarter()
	if vexpower.testmode then
		local anigrp, ani = vexpower_Timer("vexpower_Testmode_Auto_ani", 0.1, function () vexpower_Testmode_Auto_aniHandler() vexpower_Testmode_Auto_aniStarter() end)
	end
end

function vexpower_Testmode_toggleCPBGs()
	if vexpower_Testmode_createdCPBGs == nil then
		vexpower_Testmode_createdCPBGs = {}
	end
	vexpower_Testmode_nukeCPBGs()
	if vexpower.testmode then
		vexpower_Testmode_createCPBGs()
	end
end

function vexpower_Testmode_nukeCPBGs()
	for i,val in ipairs(vexpower_Testmode_createdCPBGs) do
		if val ~= nil then
			if val[1]~= nil then
				val[1]:Hide()
				vexpower_Testmode_createdCPBGs[i] = nil
			end
		end
	end
end

function vexpower_Testmode_CPs_savePosition(key)
	local maxCPs = vexpower_optionTab_CPs_configCPsetting
	local i = tonumber(key)
	if vexpower_parameters["frame"]["combo"]["posSize"][maxCPs] ~= nil then
		if vexpower_parameters["frame"]["combo"]["posSize"][maxCPs][key] ~= nil then
			vexpower_parameters["frame"]["combo"]["posSize"][maxCPs][key]["anchor"] = select(1, vexpower_Testmode_createdCPBGs[i][1]:GetPoint())
			vexpower_parameters["frame"]["combo"]["posSize"][maxCPs][key]["anchorFrame"] = select(3, vexpower_Testmode_createdCPBGs[i][1]:GetPoint())
			vexpower_parameters["frame"]["combo"]["posSize"][maxCPs][key]["x"] = select(4, vexpower_Testmode_createdCPBGs[i][1]:GetPoint())
			vexpower_parameters["frame"]["combo"]["posSize"][maxCPs][key]["y"] = select(5, vexpower_Testmode_createdCPBGs[i][1]:GetPoint())
		end
	end
end

function vexpower_Testmode_createCPBGs()
	local maxCPs = vexpower_optionTab_CPs_configCPsetting
	if not(vexpower_parameters["frame"]["combo"]["intMode"]) then
		for i=1, tonumber(maxCPs) do
			--Frame
			local frame = CreateFrame("Frame", nil, vexpower_cpsbar)
			
			frame:SetBackdrop({
				bgFile="Interface\\Buttons\\WHITE8X8",
				edgeFile="Interface\\Buttons\\WHITE8X8", tile=false,
				edgeSize=vexpower_parameters["frame"]["combo"]["border"]["size"]})
			local bg = {math.random(), math.random(), math.random()}
			local border = {bg[1] + 0.5, bg[2] + 0.5, bg[3] + 0.5}
			if border[1] > 1 then border[1] = border[1] - 1 end
			if border[2] > 1 then border[2] = border[2] - 1 end
			if border[3] > 1 then border[3] = border[3] - 1 end
			frame:SetBackdropColor(bg[1], bg[2], bg[3], 0.3)
			frame:SetBackdropBorderColor(border[1], border[2], border[3], 1)
			
			if vexpower_parameters["frame"]["combo"]["posSize"][maxCPs] ~= nil then
				frame:SetHeight(vexpower_parameters["frame"]["combo"]["posSize"][maxCPs]["height"])
				frame:SetWidth(vexpower_parameters["frame"]["combo"]["posSize"][maxCPs]["width"])
				frame:ClearAllPoints()
				frame:SetPoint(
					vexpower_parameters["frame"]["combo"]["posSize"][maxCPs][tostring(i)]["anchor"],
					vexpower_cpsbar,
					vexpower_parameters["frame"]["combo"]["posSize"][maxCPs][tostring(i)]["anchorFrame"],
					vexpower_parameters["frame"]["combo"]["posSize"][maxCPs][tostring(i)]["x"],
					vexpower_parameters["frame"]["combo"]["posSize"][maxCPs][tostring(i)]["y"])
				frame:Show()
			else
				frame:Hide()
			end
			
			frame:RegisterForDrag("LeftButton")
			frame:SetScript("OnDragStart", function ()
				frame:StartMoving()
				end)
			frame:SetScript("OnDragStop", function (self)
				self:StopMovingOrSizing()
				local x1, y1 = self:GetLeft(), self:GetTop()
				local x2, y2 = self:GetParent():GetLeft(), self:GetParent():GetTop()
				self:ClearAllPoints()
				self:SetPoint("TOPLEFT", self:GetParent(), "TOPLEFT", x1 - x2, y1 - y2)
				
				vexpower_Testmode_CPs_savePosition(tostring(i))
				vexpower_CPs_setBars()
				end)
			frame:EnableMouse(true)
			frame:SetMovable(true)
			
			
			--FontString
			local fontstring = frame:CreateFontString("vexpower_Testmode_createCPBGsFontstrong["..i.."]", "OVERLAY", "GameFontNormal")
			fontstring:Show()
			fontstring:ClearAllPoints()
			fontstring:SetPoint("CENTER", frame, "CENTER", 0, 0)
			fontstring:SetTextColor(border[1], border[2], border[3], 1)
			fontstring:SetFont(vexpower.LSM:Fetch("font", "Friz Quadrata TT"),"14","OUTLINE")
			fontstring:SetText("- "..tostring(i).." -")
			vexpower_Testmode_createdCPBGs[i] = {}
			vexpower_Testmode_createdCPBGs[i][1] = frame
			vexpower_Testmode_createdCPBGs[i][2] = fontstring
		end
	end
end


function vexpower_Testmode_Auto_aniHandler()
	if vexpower.testmode then
		if vexpower_Testmode_Auto_changePower() then
			vexpower_Testmode_Auto_changeCPs()
			vexpower_Testmode_Auto_changeAltPower()
		end
		vexpower_Text_change()
	end
end

function vexpower_Testmode_Auto_changeCPs()
	if vexpower.maxcps>0 then
		if not(vexpower.AltPower.created) then
			if vexpower.currentcps >= vexpower.maxcps then
				vexpower_CPs_change(-vexpower.maxcps)
			else
				vexpower_CPs_change(1)
			end
		end
	end
end

function vexpower_Testmode_Auto_changeAltPower()
	if vexpower.maxcps>0 then
		if vexpower.AltPower.created then
			local gain = 0
			local loss = 0
			if vexpower.class == "WARLOCK" and vexpower.specType == 266 then
				gain = 50
				loss = -250
			elseif vexpower.class == "WARLOCK" and vexpower.specType == 267 then
				gain = 1
				loss = -10
			end
			for i in ipairs(vexpower.AltPower.Bar) do
				if vexpower.AltPower.currentenergy[i] == vexpower.AltPower.maxenergy[i] then
					vexpower_AltPower_change(i, loss)
				elseif vexpower.AltPower.currentenergy[i]+gain > vexpower.AltPower.maxenergy[i] then
					vexpower_AltPower_change(i, vexpower.AltPower.maxenergy[i]-vexpower.AltPower.currentenergy[i])
				else
					vexpower_AltPower_change(i, gain)
				end
			end
		end
	end
end

function vexpower_Testmode_Auto_changePower()
	local energychange = 0	
	local gained = false
	local gain = math.floor(vexpower.maxenergy/50)
	local loss = math.floor(-(4*vexpower.maxenergy)/10)
	
	if vexpower.currentenergy == vexpower.maxenergy then
		vexpower_Power_change(false, loss)
	elseif vexpower.currentenergy+gain > vexpower.maxenergy then
		vexpower_Power_change(false, vexpower.maxenergy-vexpower.currentenergy)
		gained = true
	else
		vexpower_Power_change(false, gain)
		gained = true
	end
	
	return not(gained)
end





-- =======================
-- =====TEXT==============
-- =======================
function vexpower_Testmode_Text_handler()
	vexpower_Testmode_Text_nukeFrames()
	
	if vexpower.testmode then
		vexpower_Testmode_Text_generateFrames()
	end
end

function vexpower_Testmode_Text_generateFrames()
	for key in pairs(vexpower_parameters["frame"]["energy"]["text"]) do
		if vexpower_parameters["frame"]["energy"]["text"][key] ~= nil then
			if vexpower_energytext_TestFrames == nil then
				vexpower_energytext_TestFrames = {}
			end
			if vexpower_energytext_TestFramesText == nil then
				vexpower_energytext_TestFramesText = {}
			end
			
			--Frame
			vexpower_energytext_TestFrames[key] = CreateFrame("Frame", nil, vexpower_energybarbg)
			vexpower_energytext_TestFrames[key]:SetBackdrop({bgFile="Interface\\Buttons\\WHITE8X8", tile=false, edgeFile="Interface\\Buttons\\WHITE8X8", edgeSize=1})
			local bg = {math.random(), math.random(), math.random()}
			local border = {bg[1] + 0.5, bg[2] + 0.5, bg[3] + 0.5}
			if border[1] > 1 then border[1] = border[1] - 1 end
			if border[2] > 1 then border[2] = border[2] - 1 end
			if border[3] > 1 then border[3] = border[3] - 1 end
			vexpower_energytext_TestFrames[key]:SetBackdropColor(bg[1], bg[2], bg[3], 1)
			vexpower_energytext_TestFrames[key]:SetBackdropBorderColor(border[1], border[2], border[3], 1)
			vexpower_energytext_TestFrames[key]:SetWidth(vexpower_parameters["frame"]["energy"]["text"][key]["width"])
			vexpower_energytext_TestFrames[key]:SetHeight(vexpower_parameters["frame"]["energy"]["text"][key]["size"])
			vexpower_energytext_TestFrames[key]:SetFrameStrata("DIALOG")
			vexpower_energytext_TestFrames[key]:ClearAllPoints()
			vexpower_energytext_TestFrames[key]:SetPoint(
				vexpower_parameters["frame"]["energy"]["text"][key]["anchor"],
				"vexpower_energyTextbar",
				vexpower_parameters["frame"]["energy"]["text"][key]["anchor2"],
				vexpower_parameters["frame"]["energy"]["text"][key]["x"],
				vexpower_parameters["frame"]["energy"]["text"][key]["y"])
			
			vexpower_energytext_TestFrames[key]:RegisterForDrag("LeftButton")
			vexpower_energytext_TestFrames[key]:SetScript("OnDragStart", function ()
				vexpower_energytext_TestFrames[key]:StartMoving()
				end)
			vexpower_energytext_TestFrames[key]:SetScript("OnDragStop", function (self)
				self:StopMovingOrSizing()
				local x1, y1 = self:GetLeft(), self:GetTop()
				local x2, y2 = self:GetParent():GetLeft(), self:GetParent():GetTop()
				self:ClearAllPoints()
				self:SetPoint("TOPLEFT", self:GetParent(), "TOPLEFT", x1 - x2, y1 - y2)
				vexpower_Testmode_Text_savePosition(key)
				vexpower_Text_setFontStrings()
				end)
			vexpower_energytext_TestFrames[key]:EnableMouse(true)
			vexpower_energytext_TestFrames[key]:SetMovable(true)
			
			
			--FontString
			vexpower_energytext_TestFramesText[key] = vexpower_energytext_TestFrames[key]:CreateFontString("vexpower_energytext_TestFramesText["..key.."]", "OVERLAY", "GameFontNormal")
			vexpower_energytext_TestFramesText[key]:Show()
			vexpower_energytext_TestFramesText[key]:ClearAllPoints()
			vexpower_energytext_TestFramesText[key]:SetPoint("CENTER", vexpower_energytext_TestFrames[key], "CENTER", 0, 0)
			vexpower_energytext_TestFramesText[key]:SetTextColor(vexpower_parameters["frame"]["energy"]["text"][key]["color"]["r"],
													vexpower_parameters["frame"]["energy"]["text"][key]["color"]["g"],
													vexpower_parameters["frame"]["energy"]["text"][key]["color"]["b"],
													vexpower_parameters["frame"]["energy"]["text"][key]["color"]["a"])
			vexpower_energytext_TestFramesText[key]:SetFont(vexpower.LSM:Fetch("font", vexpower_parameters["frame"]["energy"]["text"][key]["font"]),
											vexpower_parameters["frame"]["energy"]["text"][key]["size"],
											vexpower_parameters["frame"]["energy"]["text"][key]["effect"])	
			vexpower_energytext_TestFramesText[key]:SetWidth(vexpower_parameters["frame"]["energy"]["text"][key]["width"])	
			vexpower_energytext_TestFramesText[key]:SetJustifyH(vexpower_parameters["frame"]["energy"]["text"][key]["align"])
			if vexpower_parameters["frame"]["energy"]["text"][key]["shadow"]["allow"] then	
				vexpower_energytext_TestFramesText[key]:SetShadowColor(vexpower_parameters["frame"]["energy"]["text"][key]["shadow"]["color"]["r"],
													vexpower_parameters["frame"]["energy"]["text"][key]["shadow"]["color"]["g"],
													vexpower_parameters["frame"]["energy"]["text"][key]["shadow"]["color"]["b"],
													vexpower_parameters["frame"]["energy"]["text"][key]["shadow"]["color"]["a"])
				vexpower_energytext_TestFramesText[key]:SetShadowOffset(vexpower_parameters["frame"]["energy"]["text"][key]["shadow"]["offset"]["x"],
													vexpower_parameters["frame"]["energy"]["text"][key]["shadow"]["offset"]["y"])
			else
				vexpower_energytext_TestFramesText[key]:SetShadowColor(0, 0, 0, 0)
				vexpower_energytext_TestFramesText[key]:SetShadowOffset(0, 0)
			end
			vexpower_energytext_TestFramesText[key]:SetText(vexpower_Text_parseTagInfo(vexpower_parameters["frame"]["energy"]["text"][key]["text"]))
		end
	end
end

function vexpower_Testmode_Text_nukeFrames()
	if vexpower_energytext_TestFrames~= nil then
		for key in pairs(vexpower_energytext_TestFrames) do
			if vexpower_energytext_TestFrames[key]~= nil then
				vexpower_energytext_TestFrames[key]:Hide()
				vexpower_energytext_TestFrames[key] = nil
			end
		end
	end
end

function vexpower_Testmode_Text_savePosition(key)
	vexpower_parameters["frame"]["energy"]["text"][key]["anchor"] =  select(1, vexpower_energytext_TestFrames[key]:GetPoint())
	vexpower_parameters["frame"]["energy"]["text"][key]["anchor2"] =  select(3, vexpower_energytext_TestFrames[key]:GetPoint())
	vexpower_parameters["frame"]["energy"]["text"][key]["x"] =  select(4, vexpower_energytext_TestFrames[key]:GetPoint())-vexpower_parameters["frame"]["energy"]["border"]["size"]
	vexpower_parameters["frame"]["energy"]["text"][key]["y"] =  select(5, vexpower_energytext_TestFrames[key]:GetPoint())+vexpower_parameters["frame"]["energy"]["border"]["size"]
end