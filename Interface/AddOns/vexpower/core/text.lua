function vexpower_Text_change()
	for key in pairs(vexpower_parameters["frame"]["energy"]["text"]) do
		if vexpower.testmode then
			if vexpower_energytext_TestFramesText ~= nil then
				if vexpower_energytext_TestFramesText[key] ~= nil then
					vexpower_energytext_TestFramesText[key]:SetText(vexpower_Text_parseTagInfo(vexpower_parameters["frame"]["energy"]["text"][key]["text"]))
				end
			end
		else
			if vexpower_text[key] ~= nil then
				vexpower_text[key]:SetText(vexpower_Text_parseTagInfo(vexpower_parameters["frame"]["energy"]["text"][key]["text"]))
			end
		end
	end
end

function vexpower_Text_parseTagInfo(text)
	local percenergy = vexpower_Text_getPercEnergy()
	local missingEnergy = vexpower.maxenergy-vexpower.currentenergy
	local missingCPs = vexpower.maxcps - vexpower.currentcps
	local PowerAltCurrent,PowerAltMax = vexpower_Text_getAltPower()
	local time_total, time_left, time_leftShort = vexpower_Text_getTimeData()
	
	text = string.gsub(text, "%[PowerCurrent%]", vexpower.currentenergy)
	text = string.gsub(text, "%[PowerCurrentSmart%]", vexpower_Text_convertEnergyShort(vexpower.currentenergy, true, vexpower.maxenergy))
	text = string.gsub(text, "%[PowerCurrentShort%]", vexpower_Text_convertEnergyShort(vexpower.currentenergy, false, vexpower.maxenergy))
	
	text = string.gsub(text, "%[PowerMax%]", vexpower.maxenergy)
	text = string.gsub(text, "%[PowerMaxSmart%]", vexpower_Text_convertEnergyShort(vexpower.maxenergy, true, vexpower.maxenergy))
	text = string.gsub(text, "%[PowerMaxShort%]", vexpower_Text_convertEnergyShort(vexpower.maxenergy, false, vexpower.maxenergy))
	
	text = string.gsub(text, "%[PowerMissing%]", missingEnergy)
	text = string.gsub(text, "%[PowerMissingSmart%]", vexpower_Text_convertEnergyShort(missingEnergy, true, vexpower.maxenergy))
	text = string.gsub(text, "%[PowerMissingShort%]", vexpower_Text_convertEnergyShort(missingEnergy, false, vexpower.maxenergy))
	
	text = string.gsub(text, "%[PowerPerc%]", vexpower_Text_convertEnergyShort(percenergy, false, 100))
	text = string.gsub(text, "%[PowerPercSmart%]", vexpower_Text_convertEnergyShort(percenergy, true, 100))
	
	text = string.gsub(text, "%[TimeTotal%]", time_total)
	text = string.gsub(text, "%[TimeLeft%]", time_left)
	text = string.gsub(text, "%[TimeLeftShort%]", time_leftShort)
		
	text = string.gsub(text, "%[PowerAltCurrent%]", vexpower_Text_deleteZero(PowerAltCurrent))
	text = string.gsub(text, "%[PowerAltMax%]", vexpower_Text_deleteZero(PowerAltMax))
	
	text = string.gsub(text, "%[CPsCurrent%]", vexpower_Text_getCurrentCPs())
	text = string.gsub(text, "%[CPsMax%]", tostring(vexpower.maxcps))
	text = string.gsub(text, "%[CPsMissing%]", tostring(missingCPs))
	return text
end

function vexpower_Text_getTimeData()
	local time_total, time_left, time_leftShort
	
	if vexpower.class == "MAGE" and vexpower.specType == 62 then
		time_total = vexpower_Text_getTimeDebuff("total")
		time_left = vexpower_Text_getTimeDebuff("left")
	elseif vexpower.class == "PALADIN" or vexpower.class == "MONK" then
		time_total = 10
		if GetTime()-vexpower.infightTime >= time_total or vexpower.infightUndelayed or vexpower.currentcps==0 then
			time_left = 0
		else
			time_left = time_total-GetTime()+vexpower.infightTime
			if time_left >= 10 then
				time_left = string.sub(time_left, 1,4)
			elseif time_left < 10 and time_left > 0 then
				time_left = string.sub(time_left, 1,3)
			end
		end
	else
		time_total = vexpower_Text_getTimeBuff("total")
		time_left = vexpower_Text_getTimeBuff("left")
	end
	
	time_total = vexpower_Text_deleteZero(time_total)
	time_left = vexpower_Text_deleteZero(time_left)
	time_leftShort = vexpower_Text_convertTimeShort(vexpower_Text_convertTimeShort(time_left))
	
	return time_total, time_left, time_leftShort
end

function vexpower_Text_convertTimeShort(amount)
	if string.find(amount, "%.") ~= nil then
		amount = string.gsub(amount, "%.%d+$", "")
		amount = tonumber(amount)+1
		return tostring(amount)
	else
		return amount
	end
end

function vexpower_Text_getTimeDebuff(type)
	local returnvalue = ""
	local auraid = vexpower_CPs_getSpecAura()
	
	if auraid ~= 0 and not(vexpower.testmode) then
		local buffname = select(1, GetSpellInfo(auraid))
		if UnitDebuff("player", buffname) ~= nil then
			if type == "total" then
					returnvalue = tostring(select(6, UnitDebuff("player", buffname)))
			elseif type == "left" then
				local expire = select(7, UnitDebuff("player", buffname))
				local left = expire-GetTime()
				if left >= 10 then
					left = string.sub(left, 1,4)
					returnvalue = tostring(left)
				elseif left < 10 and left > 0 then
					left = string.sub(left, 1,3)
					returnvalue = tostring(left)
				end
			end
		end
	end
	
	return returnvalue
end

function vexpower_Text_getTimeBuff(type)
	local returnvalue = ""
	local auraid = vexpower_CPs_getSpecAura()
	
	if auraid ~= 0 and not(vexpower.testmode) then
		local buffname = select(1, GetSpellInfo(auraid))
		if UnitBuff("player", buffname) ~= nil then
			if type == "total" then
					returnvalue = tostring(select(6, UnitBuff("player", buffname)))
			elseif type == "left" then
				local expire = select(7, UnitBuff("player", buffname))
				local left = expire-GetTime()
				if left >= 10 then
					left = string.sub(left, 1,4)
					returnvalue = tostring(left)
				elseif left < 10 and left > 0 then
					left = string.sub(left, 1,3)
					returnvalue = tostring(left)
				end
			end
		end
	end
	
	return returnvalue
end

function vexpower_Text_getPercEnergy()
	local percenergy = 0
	if vexpower.maxenergy ~= 0 then
		percenergy = (vexpower.currentenergy/vexpower.maxenergy)*100
	end
	return percenergy
end

function vexpower_Text_getCurrentCPs()	
	if vexpower.class == "WARLOCK" and vexpower.specType == 267 then
		local count = 0
		for i in ipairs(vexpower.AltPower.Bar) do
			if vexpower.AltPower.currentenergy[i] == vexpower.AltPower.maxenergy[i] then
				count = count + 1
			end
		end
		return count
	elseif vexpower.class == "WARLOCK" and vexpower.specType == 266 then
		return ""
	else
		return tostring(vexpower.currentcps)
	end
end

function vexpower_Text_getAltPower()
	local PowerAltCurrent = ""
	local PowerAltMax = ""
	
	if vexpower.class == "WARLOCK" and vexpower.specType == 267 then
		PowerAltCurrent = 0
		for i in ipairs(vexpower.AltPower.Bar) do
			if vexpower.AltPower.currentenergy[i] ~= nil then
				
				PowerAltCurrent = PowerAltCurrent + vexpower.AltPower.currentenergy[i]
			end
		end
		if PowerAltCurrent ~= 0 then
			PowerAltMax = vexpower.AltPower.maxenergy[1]
			local temp = tostring(tonumber(PowerAltCurrent)/tonumber(PowerAltMax))
			if temp == "0" then
				PowerAltCurrent = "0"
			elseif string.find(temp, "%.") == nil then
				PowerAltCurrent = PowerAltMax
			else
				PowerAltCurrent = string.gsub(temp, "^%d+%.", "")
			end
		end
	elseif vexpower.class == "WARLOCK" and vexpower.specType == 266 then
		PowerAltMax = vexpower.AltPower.maxenergy[1]
		PowerAltCurrent = vexpower.AltPower.currentenergy[1]
	end
	return PowerAltCurrent, PowerAltMax
end

function vexpower_Text_deleteZero(text)
	if text == 0 or text == "0" then
		return ""
	else
		return tostring(text)
	end
end

function vexpower_Text_convertEnergyShort(amount, smart, maximum)
	local returnvalue = ""
	if maximum < 1000 then
		amount = amount*1000
	end
	if smart then
		amount = tonumber(amount)/100
		amount = vexpower_Text_ceilNumber(tonumber(amount))
		amount = tostring(amount / 10)
		if string.find(amount, "%.") == nil then
			amount = amount..".0"
		end
		returnvalue = amount
	else
		amount = tonumber(amount)/1000
		amount = vexpower_Text_ceilNumber(tonumber(amount))
		returnvalue = tostring(amount)
	end
	return returnvalue
end

function vexpower_Text_ceilNumber(amount)
	local returnvalue = ""
	amount = tostring(amount)
	if string.find(amount, "%.") ~= nil then
		local amount_l = string.gsub(amount, "%.%d+$", "")
		local amount_r = string.gsub(amount, "^%d+%.", "0.")
		amount_l = tonumber(amount_l)
		amount_r = tonumber(amount_r)
		if amount_r >= 0.5 then
			amount_l = amount_l+1
		end
		returnvalue = amount_l
	else
		returnvalue = tonumber(amount)
	end
	return returnvalue
end

function vexpower_Text_setEnergyTextbar()
	vexpower_energyTextbar:SetBackdrop({bgFile="Interface\\Buttons\\WHITE8X8", edgeFile="Interface\\Buttons\\WHITE8X8", tile=false, edgeFile="Interface\\Buttons\\WHITE8X8", edgeSize=1})
	vexpower_energyTextbar:SetBackdropColor(0, 0, 0, 0)
	vexpower_energyTextbar:SetBackdropBorderColor(1,1,1,0)
	vexpower_energyTextbar:SetWidth(vexpower.maxwidth)
	vexpower_energyTextbar:SetFrameStrata(vexpower_optionTab_Strata_convertValue(vexpower_parameters["frame"]["strata"]["text"]))
	vexpower_energyTextbar:SetHeight(vexpower_parameters["frame"]["energy"]["size"]["height"]-(vexpower_parameters["frame"]["energy"]["border"]["size"]*2))
	vexpower_energyTextbar:ClearAllPoints()
	vexpower_energyTextbar:SetPoint("TOPLEFT", vexpower_energybarbg, "TOPLEFT",
						vexpower_parameters["frame"]["energy"]["border"]["size"],
						-vexpower_parameters["frame"]["energy"]["border"]["size"])
end

function vexpower_Text_setCPsTextbar()
	vexpower_CPsTextbar:SetBackdrop({bgFile="Interface\\Buttons\\WHITE8X8", edgeFile="Interface\\Buttons\\WHITE8X8", tile=false, edgeFile="Interface\\Buttons\\WHITE8X8", edgeSize=1})
	vexpower_CPsTextbar:SetBackdropColor(0, 0, 0, 0)
	vexpower_CPsTextbar:SetBackdropBorderColor(1,1,1,0)
	vexpower_CPsTextbar:SetWidth(vexpower.maxwidth)
	vexpower_CPsTextbar:SetFrameStrata(vexpower_optionTab_Strata_convertValue(vexpower_parameters["frame"]["strata"]["text"]))
	vexpower_CPsTextbar:SetHeight(vexpower_parameters["frame"]["energy"]["size"]["height"]-(vexpower_parameters["frame"]["energy"]["border"]["size"]*2))
	vexpower_CPsTextbar:ClearAllPoints()
	vexpower_CPsTextbar:SetPoint("TOPLEFT", vexpower_energybarbg, "TOPLEFT",
						vexpower_parameters["frame"]["energy"]["border"]["size"],
						-vexpower_parameters["frame"]["energy"]["border"]["size"])
end

function vexpower_Text_setFontStrings()
	for key in pairs(vexpower_text) do
		if vexpower_text[key] ~= nil then
			vexpower_text[key]:Hide()
		end
	end
	for key in pairs(vexpower_parameters["frame"]["energy"]["text"]) do
		if vexpower_text[key] ~= nil then
			vexpower_text[key]:Show()
			vexpower_text[key]:ClearAllPoints()
			vexpower_text[key]:SetPoint(
				vexpower_parameters["frame"]["energy"]["text"][key]["anchor"],
				"vexpower_energyTextbar",
				vexpower_parameters["frame"]["energy"]["text"][key]["anchor2"],
				vexpower_parameters["frame"]["energy"]["text"][key]["x"],
				vexpower_parameters["frame"]["energy"]["text"][key]["y"])
			vexpower_text[key]:SetTextColor(vexpower_parameters["frame"]["energy"]["text"][key]["color"]["r"],
													vexpower_parameters["frame"]["energy"]["text"][key]["color"]["g"],
													vexpower_parameters["frame"]["energy"]["text"][key]["color"]["b"],
													vexpower_parameters["frame"]["energy"]["text"][key]["color"]["a"])
			vexpower_text[key]:SetFont(vexpower.LSM:Fetch("font", vexpower_parameters["frame"]["energy"]["text"][key]["font"]),
											vexpower_parameters["frame"]["energy"]["text"][key]["size"],
											vexpower_parameters["frame"]["energy"]["text"][key]["effect"])	
			vexpower_text[key]:SetWidth(vexpower_parameters["frame"]["energy"]["text"][key]["width"])	
			vexpower_text[key]:SetJustifyH(vexpower_parameters["frame"]["energy"]["text"][key]["align"])
			if vexpower_parameters["frame"]["energy"]["text"][key]["shadow"]["allow"] then	
				vexpower_text[key]:SetShadowColor(vexpower_parameters["frame"]["energy"]["text"][key]["shadow"]["color"]["r"],
													vexpower_parameters["frame"]["energy"]["text"][key]["shadow"]["color"]["g"],
													vexpower_parameters["frame"]["energy"]["text"][key]["shadow"]["color"]["b"],
													vexpower_parameters["frame"]["energy"]["text"][key]["shadow"]["color"]["a"])
				vexpower_text[key]:SetShadowOffset(vexpower_parameters["frame"]["energy"]["text"][key]["shadow"]["offset"]["x"],
													vexpower_parameters["frame"]["energy"]["text"][key]["shadow"]["offset"]["y"])
			else
				vexpower_text[key]:SetShadowColor(0, 0, 0, 0)
				vexpower_text[key]:SetShadowOffset(0, 0)
			end
		end
	end	
end	

function vexpower_Text_createFontStrings()
	if vexpower_text == nil then
		vexpower_text = {}
	end
	for key in pairs(vexpower_parameters["frame"]["energy"]["text"]) do
		if vexpower_text[key] == nil then
			if vexpower_parameters["frame"]["energy"]["text"][key]["cptext"] then 
				vexpower_text[key] = vexpower_CPsTextbar:CreateFontString("vexpower_text["..key.."]", "OVERLAY", "GameFontNormal")
			else
				vexpower_text[key] = vexpower_energyTextbar:CreateFontString("vexpower_text["..key.."]", "OVERLAY", "GameFontNormal")
			end
		end
	end
end