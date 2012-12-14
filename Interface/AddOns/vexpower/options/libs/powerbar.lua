vexpower_optionTab_PowerBar_openTab = {
	["position"] = false,
	["size"] = false,
	["powerpool"] = false,
	["background"] = false,
	["usedenergy"] = false,
	["change"] = false,
	}

vexpower_optionTab_PowerBar_EmptyFullStatus = " "

function vexpower_optionTab_PowerBar_toggleTab(tab)
	if vexpower_optionTab_PowerBar_openTab[tab] ~= nil then
		vexpower_optionTab_PowerBar_closeAllTabs()
		vexpower_optionTab_PowerBar_openTab[tab] = true
	end
end
	
function vexpower_optionTab_PowerBar_closeAllTabs()
	for key in pairs(vexpower_optionTab_PowerBar_openTab) do
		vexpower_optionTab_PowerBar_openTab[key] = false
	end
end

function vexpower_optionTab_PowerBar_checkPowerValue(val)
	local returnvalue = false
	
	if string.gsub(val, "^%d+%%?", "") == "" then
		if string.find(val, "%%") ~= nil then
			val = string.gsub(val, "%%", "")
			if tonumber(val) <= 100 then
				returnvalue = true
			end
		else
			returnvalue = true
		end
	end
	
	if val == "" then
		returnvalue = false
	end
	
	return returnvalue
end

function vexpower_optionTab_PowerBar_setPower(situation, val)
	if vexpower_optionTab_PowerBar_checkPowerValue(val) then
		if string.find(val, "%%") ~= nil then
			val = string.gsub(val, "%%", "")
			val = tonumber(val)
			val = val / 100
			val = tostring(val)
		end
		vexpower_parameters["frame"]["energy"]["altcolors"][situation] = val
		vexpower_optionTab_PowerBar_EmptyFullStatus = " "
	else
		if val == "" then
			vexpower_parameters["frame"]["energy"]["altcolors"][situation] = "0"
		end
		vexpower_optionTab_PowerBar_EmptyFullStatus = "|CFFC41F3BInvalid value entered|r"
	end
end
	
function vexpower_optionTab_PowerBar_getPower(situation)
	local value = tonumber(vexpower_parameters["frame"]["energy"]["altcolors"][situation])
	if value <= 1 then
		return tostring(value*100).."%"
	else
		return tostring(value)
	end
end

function vexpower_optionTab_PowerBar_setColoring(style, val)
	if style == "class" then
		vexpower_parameters["frame"]["energy"]["classcolored"] = val
		if val then
			vexpower_parameters["frame"]["energy"]["typecolored"] = false
		end
	elseif style == "type" then
		vexpower_parameters["frame"]["energy"]["typecolored"] = val
		if val then
			vexpower_parameters["frame"]["energy"]["classcolored"] = false
		end
	end
end

function vexpower_optionTab_PowerBar_setRecoloring(bar, style, val)
	if style == "class" then
		vexpower_parameters["frame"]["energy"]["altcolors"]["classcolored"][bar] = val
		if val then
			vexpower_parameters["frame"]["energy"]["altcolors"]["typecolored"][bar] = false
		end
	elseif style == "type" then
		vexpower_parameters["frame"]["energy"]["altcolors"]["typecolored"][bar] = val
		if val then
			vexpower_parameters["frame"]["energy"]["altcolors"]["classcolored"][bar] = false
		end
	end
end