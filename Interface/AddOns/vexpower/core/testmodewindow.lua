

function vexpower_TestModeWindow_toggle()
	local vexpower_TestModeWindow_text = "|CFFFF7D0AVex Power|r Testmode is |CFFC41F3Bactive|r !\n\n"
	vexpower_TestModeWindow_text = vexpower_TestModeWindow_text.."- ComboPoint gain and loss are |CFF00FF00simulated|r\n"
	vexpower_TestModeWindow_text = vexpower_TestModeWindow_text.."- Textfields get a colored background and are |CFF00FF00moveable|r\n"
	vexpower_TestModeWindow_text = vexpower_TestModeWindow_text.."- Powerbar and ComboPointBar become |CFF00FF00movable|r\n\n"
	
	if not(vexpower_parameters["frame"]["combo"]["intMode"]) then
		vexpower_TestModeWindow_text = vexpower_TestModeWindow_text.."|CFFC41F3BWARNING|r:\nYou deactivated the Intelligent-CP-Mode. Thus movable frames representing ComboPoints will be visible during the testmode. "
		vexpower_TestModeWindow_text = vexpower_TestModeWindow_text.."These Frames are movable and can be dragged to adjust the config which is currently active.\n\n"
		vexpower_TestModeWindow_text = vexpower_TestModeWindow_text.."Currently adjusting:\n"
		vexpower_TestModeWindow_text = vexpower_TestModeWindow_text.."|CFF00FF00"..vexpower_optionTab_CPs_getConfigString().."|r\n"
		vexpower_TestModeWindow_text = vexpower_TestModeWindow_text.."Due to your settings, your class and your spec the addon currently uses the following config for the simulation:\n"
		vexpower_TestModeWindow_text = vexpower_TestModeWindow_text.."|CFF00FF00"..vexpower_optionTab_CPs_getConfigString(vexpower_CPs_getAltPos()).."|r\n\n"
		if vexpower_optionTab_CPs_getConfigString() == vexpower_optionTab_CPs_getConfigString(vexpower_CPs_getAltPos()) then
			vexpower_TestModeWindow_text = vexpower_TestModeWindow_text.."Thus the additonal frames you see |CFF00FF00represent|r the ComboPoints that are simulated"
		else
			vexpower_TestModeWindow_text = vexpower_TestModeWindow_text.."Thus the additonal frames you see |CFFC41F3Bdon't represent|r the ComboPoints that are simulated. "
			vexpower_TestModeWindow_text = vexpower_TestModeWindow_text.."So moving a frame won't move the position of one of the ComboPoints!"
		end
	end
	
	if vexpower.testmode then
		--Frame
		if vexpower_TestModeWindow == nil then
			vexpower_TestModeWindow = CreateFrame("Frame", nil, UIparent)
		
			vexpower_TestModeWindow:SetBackdrop({bgFile="Interface\\Buttons\\WHITE8X8", edgeFile="Interface\\Buttons\\WHITE8X8", tile=true, edgeSize=2})
			vexpower_TestModeWindow:SetBackdropColor(0.3, 0.3, 0.3, 0.8)
			vexpower_TestModeWindow:SetBackdropBorderColor(0,0,0,1)
			vexpower_TestModeWindow:SetFrameStrata("TOOLTIP")
			vexpower_TestModeWindow:SetWidth(270)
			vexpower_TestModeWindow:SetHeight(200)
			
			vexpower_TestModeWindow:RegisterForDrag("LeftButton")
			vexpower_TestModeWindow:SetScript("OnDragStart", function ()
				vexpower_TestModeWindow:StartMoving()
				end)
			vexpower_TestModeWindow:SetScript("OnDragStop", function (self)
				self:StopMovingOrSizing()
				end)
			vexpower_TestModeWindow:EnableMouse(true)
			vexpower_TestModeWindow:SetMovable(true)
			
			
			--FontString
			vexpower_TestModeWindowText = vexpower_TestModeWindow:CreateFontString("vexpower_TestModeWindowText", "OVERLAY", "GameFontNormal")
			vexpower_TestModeWindowText:ClearAllPoints()
			vexpower_TestModeWindowText:SetPoint("TOPLEFT", vexpower_TestModeWindow, "TOPLEFT", 5, -5)
			vexpower_TestModeWindowText:SetTextColor(1, 1, 1, 1)
			vexpower_TestModeWindowText:SetFont(vexpower.LSM:Fetch("font", "Friz Quadrata TT"), 8)
			vexpower_TestModeWindowText:SetJustifyH("LEFT")
			vexpower_TestModeWindowText:SetJustifyV("TOP")
			vexpower_TestModeWindowText:SetText(vexpower_TestModeWindow_text)
			vexpower_TestModeWindowText:SetWidth(260)
			vexpower_TestModeWindowText:SetHeight(190)
			
			--CloseButton
			vexpower_TestModeWindowButton = CreateFrame("Button", "vexpower_TestModeWindowButton", vexpower_TestModeWindow, "UIPanelButtonTemplate")
			vexpower_TestModeWindowButton:SetWidth(100)
			vexpower_TestModeWindowButton:SetHeight(20)
			vexpower_TestModeWindowButton:SetScale(0.7)
			vexpower_TestModeWindowButton:SetPoint("TOPRIGHT", vexpower_TestModeWindow, "TOPRIGHT", -6, -5)
			vexpower_TestModeWindowButton:SetText("deactivate")
			vexpower_TestModeWindowButton:SetScript("OnClick", function () vexpower.testmode=false vexpower_Testmode_Auto_handler()  end)
		end
		
		if not(vexpower_parameters["frame"]["combo"]["intMode"]) then
			if vexpower_optionTab_CPs_getConfigString() == vexpower_optionTab_CPs_getConfigString(vexpower_CPs_getAltPos()) then
				vexpower_TestModeWindow:SetHeight(175)
			else
				vexpower_TestModeWindow:SetHeight(185)
			end
		else
			vexpower_TestModeWindow:SetHeight(50)
		end
		
		vexpower_TestModeWindowText:SetText(vexpower_TestModeWindow_text)
		vexpower_TestModeWindow:ClearAllPoints()
		vexpower_TestModeWindow:SetPoint("TOPLEFT", UIparent, "TOPLEFT", 30, -30)
		vexpower_TestModeWindow:Show()
	else
		vexpower_TestModeWindow:Hide()
	end
end