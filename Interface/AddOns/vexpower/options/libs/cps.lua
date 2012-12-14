vexpower_optionTab_CPs_openTab = {
	["layout"] = false,
	["border"] = false,
	["background"] = false,
	["fadeout"] = false,
	["change"] = false,
	["sound"] = false,
	}

vexpower_optionTab_CPs_configCPsetting = "6"
	
function vexpower_optionTab_CPs_toggleTab(tab)
	if vexpower_optionTab_CPs_openTab[tab] ~= nil then
		vexpower_optionTab_CPs_closeAllTabs()
		vexpower_optionTab_CPs_openTab[tab] = true
	end
end

function vexpower_optionTab_CPs_closeAllTabs()
	for key in pairs(vexpower_optionTab_CPs_openTab) do
		vexpower_optionTab_CPs_openTab[key] = false
	end
end

function vexpower_optionTab_CPs_getConfigString(namestring)
	if namestring == nil then
		namestring = vexpower_optionTab_CPs_configCPsetting
	end

	local prefix = ""
	if namestring == "6" then
		prefix = "s (General Setting)"
	elseif namestring ~= "1" then
		prefix = "s"
	end
	return namestring.." ComboPoint"..prefix
end

function vexpower_optionTab_CPs_getHiddenCP(number)
	if number > tonumber(vexpower_optionTab_CPs_configCPsetting) then
		return true
	else
		return false
	end
end

function vexpower_optionTab_CPs_getList()
	local returnvalue = {}
	for i=1, 6 do
		local prefix = ""
		if i~=1 then
			prefix = prefix.."s"
		end
		if i==6 then
			prefix = prefix.." ('general'-setting)"
		elseif vexpower_optionTab_CPs_getSize("change",tostring(i)) then
			prefix = prefix.." |CFF00FF00(overwrite active)|r"
		end
		returnvalue[tostring(i)] = i.." ComboPoint"..prefix
	end
	return returnvalue
end

function vexpower_optionTab_CPs_getSize(size, number)
	if number == nil then
		number = vexpower_optionTab_CPs_configCPsetting
	end
	if vexpower_parameters["frame"]["combo"]["posSize"][number] ~= nil then
		if vexpower_parameters["frame"]["combo"]["posSize"][number][size] ~= nil then
			return vexpower_parameters["frame"]["combo"]["posSize"][number][size]
		end
	end
end

function vexpower_optionTab_CPs_setSize(size, val)
	if vexpower_parameters["frame"]["combo"]["posSize"][vexpower_optionTab_CPs_configCPsetting] ~= nil then
		if vexpower_parameters["frame"]["combo"]["posSize"][vexpower_optionTab_CPs_configCPsetting][size] ~= nil then
			vexpower_parameters["frame"]["combo"]["posSize"][vexpower_optionTab_CPs_configCPsetting][size] = val
		end
	end
end

function vexpower_optionTab_CPs_getPos(number, key)
	if vexpower_parameters["frame"]["combo"]["posSize"][vexpower_optionTab_CPs_configCPsetting] ~= nil then
		if vexpower_parameters["frame"]["combo"]["posSize"][vexpower_optionTab_CPs_configCPsetting][number] ~= nil then
			if vexpower_parameters["frame"]["combo"]["posSize"][vexpower_optionTab_CPs_configCPsetting][number][key] ~= nil then
				return vexpower_parameters["frame"]["combo"]["posSize"][vexpower_optionTab_CPs_configCPsetting][number][key]
			end
		end
	end
end

function vexpower_optionTab_CPs_setPos(number, key, val)
	if vexpower_parameters["frame"]["combo"]["posSize"][vexpower_optionTab_CPs_configCPsetting] ~= nil then
		if vexpower_parameters["frame"]["combo"]["posSize"][vexpower_optionTab_CPs_configCPsetting][number] ~= nil then
			if vexpower_parameters["frame"]["combo"]["posSize"][vexpower_optionTab_CPs_configCPsetting][number][key] ~= nil then
				vexpower_parameters["frame"]["combo"]["posSize"][vexpower_optionTab_CPs_configCPsetting][number][key] = val
			end
		end
	end
end














