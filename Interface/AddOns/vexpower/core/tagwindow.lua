vexpower_TagWindows_text = "Current Power:\n|CFFFF7D0A[PowerCurrent]|r: Shows '19218' (current power)\n|CFFFFCC00[PowerAltCurrent]|r: Shows '19218' (current alternative power)\n|CFFFF7D0A[PowerCurrentShort]|r: Shows '19' instead of '19218' (current power)\n|CFFFF7D0A[PowerCurrentSmart]|r: Shows '19.2' instead of '19218' (current power)\n\nMaximum Power:\n|CFFFF7D0A[PowerMax]|r: Shows '19218' (maximum power)\n|CFFFFCC00[PowerAltMax]|r: Shows '19218' (maximum alternative power)\n|CFFFF7D0A[PowerMaxShort]|r: Shows '19' instead of '19218' (maximum power)\n|CFFFF7D0A[PowerMaxSmart]|r: Shows '19.2' instead of '19218' (maximum power)\n\nMissing Power:\n|CFFFF7D0A[PowerMissing]|r: Shows '19218' (missing power)\n|CFFFF7D0A[PowerMissingShort]|r: Shows '19' instead of '19218' (missing power)\n|CFFFF7D0A[PowerMissingSmart]|r: Shows '19.2' instead of '19218' (missing power)\n\nPercentage Power:\n|CFFFF7D0A[PowerPerc]|r: Shows '18' for 18.3%\n|CFFFF7D0A[PowerPercSmart]|r: Shows '18.3' for 18.3%\n\nComboPoints:\n|CFFFF7D0A[CPsCurrent]|r: Shows your current ComboPoints/HolyPower/etc\n|CFFFF7D0A[CPsMax]|r: Shows your maximum ComboPoints/HolyPower/etc\n|CFFFF7D0A[CPsMissing]|r: Shows your missing ComboPoints/HolyPower/etc\n\nTime:\nThese Tags are only available when Buffs/Debuffs, Chi or Holy Power are tracked\n|CFFFF7D0A[TimeLeft]|r: Shows the time left ('18.2')\n|CFFFF7D0A[TimeLeftShort]|r: Shows the time left ('18')\n|CFFFF7D0A[TimeTotal]|r: Shows the total duration\n\n|CFFFFCC00[PowerAlt...]|r are only available for warlocks to show the number of\nember shards or their demonic fury"

function vexpower_TagWindows_toggle()
	if not(vexpower.tagWindow) then
		--Frame
		if vexpower_tagWindow == nil then
			vexpower_tagWindow = CreateFrame("Frame", nil, InterfaceOptionsFramePanelContainer)
		
			vexpower_tagWindow:SetBackdrop({bgFile="Interface\\Buttons\\WHITE8X8", edgeFile="Interface\\Buttons\\WHITE8X8", tile=true, edgeSize=2})
			vexpower_tagWindow:SetBackdropColor(0.3, 0.3, 0.3, 0.8)
			vexpower_tagWindow:SetBackdropBorderColor(0,0,0,1)
			vexpower_tagWindow:SetFrameStrata("TOOLTIP")
			
			vexpower_tagWindow:RegisterForDrag("LeftButton")
			vexpower_tagWindow:SetScript("OnDragStart", function ()
				vexpower_tagWindow:StartMoving()
				end)
			vexpower_tagWindow:SetScript("OnDragStop", function (self)
				self:StopMovingOrSizing()
				end)
			vexpower_tagWindow:EnableMouse(true)
			vexpower_tagWindow:SetMovable(true)
			
			
			--FontString
			vexpower_tagWindowText = vexpower_tagWindow:CreateFontString("vexpower_tagWindowText", "OVERLAY", "GameFontNormal")
			vexpower_tagWindowText:ClearAllPoints()
			vexpower_tagWindowText:SetPoint("TOPLEFT", vexpower_tagWindow, "TOPLEFT", 5, -5)
			vexpower_tagWindowText:SetTextColor(1, 1, 1, 1)
			vexpower_tagWindowText:SetFont(vexpower.LSM:Fetch("font", "Friz Quadrata TT"), 10)
			vexpower_tagWindowText:SetJustifyH("LEFT")
			vexpower_tagWindowText:SetText(vexpower_TagWindows_text)
			
			--CloseButton
			vexpower_tagWindowButton = CreateFrame("Button", "vexpower_tagWindowButton", vexpower_tagWindow, "UIPanelButtonTemplate")
			vexpower_tagWindowButton:SetWidth(50)
			vexpower_tagWindowButton:SetHeight(20)
			vexpower_tagWindowButton:SetScale(0.7)
			vexpower_tagWindowButton:SetPoint("TOPRIGHT", vexpower_tagWindow, "TOPRIGHT", -6, -5)
			vexpower_tagWindowButton:SetText("Close")
			vexpower_tagWindowButton:SetScript("OnClick", function () vexpower_TagWindows_toggle() end)
			
			
			vexpower_tagWindow:SetWidth(vexpower_tagWindowText:GetWidth()+10)
			vexpower_tagWindow:SetHeight(vexpower_tagWindowText:GetHeight()+10)
		end
		
		vexpower_tagWindow:ClearAllPoints()
		vexpower_tagWindow:SetPoint("TOPLEFT", InterfaceOptionsFramePanelContainer, "TOPRIGHT", 0, 0)
		vexpower_tagWindow:Show()
		vexpower.tagWindow = true
	else
		vexpower_tagWindow:Hide()
		vexpower.tagWindow = false
	end
end