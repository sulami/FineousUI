vexpower_optionTab_Text_currentTextfield = ""
vexpower_optionTab_Text_statusMsg = " "

vexpower_optionTab_Text_openTab = {
	["content"] = false,
	["format"] = false,
	["position"] = false,
	["misc"] = false,
	["shadow"] = false,
	}
	
function vexpower_optionTab_Text_toggleTab(tab)
	if vexpower_optionTab_Text_openTab[tab] ~= nil then
		vexpower_optionTab_Text_closeAllTabs()
		vexpower_optionTab_Text_openTab[tab] = true
	end
end
	
function vexpower_optionTab_Text_closeAllTabs()
	for key in pairs(vexpower_optionTab_Text_openTab) do
		vexpower_optionTab_Text_openTab[key] = false
	end
end

function vexpower_optionTab_Text_createNew()
	local newname = vexpower_optionTab_Text_getNewName()
	vexpower_default_textfield["x"], vexpower_default_textfield["y"] = vexpower_optionTab_Text_getNewPosition()
	vexpower_parameters["frame"]["energy"]["text"][newname] = vexpower_CopyTable(vexpower_default_textfield)
	vexpower_optionTab_Text_currentTextfield = newname
	vexpower_optionTab_Text_statusMsg = "|CFF00FF00New textfield '"..newname.."' created successfully|r"
	vexpower_Testmode_Text_handler()
end

function vexpower_optionTab_Text_getNewPosition()
	local x = 0
	local y = 0
	local x_new = 0
	local y_new = 0
	local x_current = vexpower_default_textfield["x"]
	local y_current = vexpower_default_textfield["y"]
	local found = false
	local timer = 0
	
	while not(found) do
		if not(vexpower_optionTab_Text_checkForExisting(x_current+x, y_current+y)) then
			found = true
			x_new = x_current+x
			y_new = y_current+y
		end
		timer = timer + 1
		
		if timer == 1 then
			x = x + 100
		elseif timer == 2 then
			x = x - 200
			
			x = x - 100
		elseif timer == 3 then
			x = x + 200
			
			y = y + 20
		elseif timer == 4 then
			y = y - 20
			
			y = y - 20
		elseif timer == 5 then
			y = y + 20
			
			x = x + 100
			y = y + 20
			timer = 0
		end
	end
	
	return x_new,y_new
end

function vexpower_optionTab_Text_checkForExisting(x, y)
	local returnvalue = false
	for key,val in pairs(vexpower_parameters["frame"]["energy"]["text"]) do
		if val["x"] == x or val["y"] == y then
			returnvalue = true
		end
	end
	return returnvalue
end

function vexpower_optionTab_Text_clone()
	if vexpower_parameters["frame"]["energy"]["text"][vexpower_optionTab_Text_currentTextfield] ~= nil then
		local newname = vexpower_optionTab_Text_getNewName()
		vexpower_parameters["frame"]["energy"]["text"][newname] = vexpower_CopyTable(vexpower_parameters["frame"]["energy"]["text"][vexpower_optionTab_Text_currentTextfield])
		vexpower_optionTab_Text_statusMsg = "|CFF00FF00New textfield '"..newname.."' created successfully (Clone of "..vexpower_optionTab_Text_currentTextfield..")|r"
		vexpower_optionTab_Text_currentTextfield = newname
	else
		vexpower_optionTab_Text_statusMsg = "|CFFC41F3BCouldn't clone textfield.|r Textfield '"..vexpower_optionTab_Text_currentTextfield.."' doesn't exist"
	end
	vexpower_Testmode_Text_handler()
end

function vexpower_optionTab_Text_delete()
	if vexpower_parameters["frame"]["energy"]["text"][vexpower_optionTab_Text_currentTextfield] ~= nil then
		vexpower_parameters["frame"]["energy"]["text"][vexpower_optionTab_Text_currentTextfield] = nil
		vexpower_text[vexpower_optionTab_Text_currentTextfield]:Hide()
		vexpower_text[vexpower_optionTab_Text_currentTextfield] = nil
		vexpower_optionTab_Text_statusMsg = "|CFF00FF00Textfield '"..vexpower_optionTab_Text_currentTextfield.."' deleted successfully|r"
		vexpower_optionTab_Text_currentTextfield = vexpower_optionTab_Text_getFirst()
	else
		vexpower_optionTab_Text_statusMsg = "|CFFC41F3BCouldn't delete textfield.|r Textfield '"..vexpower_optionTab_Text_currentTextfield.."' doesn't exist"
	end
	vexpower_Testmode_Text_handler()
end

function vexpower_optionTab_Text_getFirst()
	local number = 1
	local found = false
	local exist = false
	
	for key in pairs(vexpower_parameters["frame"]["energy"]["text"]) do
		if vexpower_parameters["frame"]["energy"]["text"][key] ~= nil then
			exist = true
		end
	end
	
	if exist then
		while not(found) do
			local name = tostring(number)
			if vexpower_parameters["frame"]["energy"]["text"][name] ~= nil then
				found = true
			else
				number = number + 1
			end
		end
		return tostring(number)
	else
		return ""
	end
end

function vexpower_optionTab_Text_getNewName()
	local number = 1
	local found = false
	while not(found) do
		local name = tostring(number)
		if vexpower_parameters["frame"]["energy"]["text"][name] == nil then
			found = true
		else
			number = number + 1
		end
	end
	return tostring(number)
end

function vexpower_optionTab_Text_getDisabled()
	if vexpower_parameters["frame"]["energy"]["text"][vexpower_optionTab_Text_currentTextfield] ~= nil then
		return false
	else
		return true
	end
end

function vexpower_optionTab_Text_getList()
	local returnvalue = {}
	local timer = 0
	for key in pairs(vexpower_parameters["frame"]["energy"]["text"]) do
		if key ~= "profilelist" then
			returnvalue[key]=key
			timer = timer + 1
		end
	end
	
	if timer == 0 then
		returnvalue[""] = "No textfields created"
	end
	
	return returnvalue
end

function vexpower_optionTab_Text_insertTag(text, tag)
	if vexpower_parameters["frame"]["energy"]["text"][vexpower_optionTab_Text_currentTextfield] ~= nil then
		vexpower_parameters["frame"]["energy"]["text"][vexpower_optionTab_Text_currentTextfield]["text"] = vexpower_parameters["frame"]["energy"]["text"][vexpower_optionTab_Text_currentTextfield]["text"].."["..tag.."] "
	end
end

function vexpower_optionTab_Text_setData_direct(data, key)
	if data == "cptext" then
		if key == "POWERBAR" then
			key = false
		else
			key = true
		end
	end
	
	if vexpower_parameters["frame"]["energy"]["text"][vexpower_optionTab_Text_currentTextfield] ~= nil then
		vexpower_parameters["frame"]["energy"]["text"][vexpower_optionTab_Text_currentTextfield][data] = key
	end
end

function vexpower_optionTab_Text_getData_direct(data)
	if vexpower_parameters["frame"]["energy"]["text"][vexpower_optionTab_Text_currentTextfield] ~= nil then
		local temp = vexpower_parameters["frame"]["energy"]["text"][vexpower_optionTab_Text_currentTextfield][data]
		
		if data == "cptext" then
			if temp == false or temp == nil then
				temp = "POWERBAR"
			else
				temp = "CPSBAR"
			end
		end
		return temp
	end
end

function vexpower_optionTab_Text_getData_color(data)
	if vexpower_parameters["frame"]["energy"]["text"][vexpower_optionTab_Text_currentTextfield] ~= nil then
		return vexpower_parameters["frame"]["energy"]["text"][vexpower_optionTab_Text_currentTextfield]["color"][data]
	end
end

function vexpower_optionTab_Text_setData_color(data, key)
	if vexpower_parameters["frame"]["energy"]["text"][vexpower_optionTab_Text_currentTextfield] ~= nil then
		vexpower_parameters["frame"]["energy"]["text"][vexpower_optionTab_Text_currentTextfield]["color"][data] = key
	end
end

function vexpower_optionTab_Text_getData_shadow(folder, data)
	if vexpower_parameters["frame"]["energy"]["text"][vexpower_optionTab_Text_currentTextfield] ~= nil then
		if folder == false then
			return vexpower_parameters["frame"]["energy"]["text"][vexpower_optionTab_Text_currentTextfield]["shadow"][data]
		else
			if folder == "color" and data == "a" then
				return vexpower_parameters["frame"]["energy"]["text"][vexpower_optionTab_Text_currentTextfield]["shadow"][folder][data]*100
			else
				return vexpower_parameters["frame"]["energy"]["text"][vexpower_optionTab_Text_currentTextfield]["shadow"][folder][data]
			end
		end
	end
end

function vexpower_optionTab_Text_setData_shadow(folder, data, key)
	if vexpower_parameters["frame"]["energy"]["text"][vexpower_optionTab_Text_currentTextfield] ~= nil then
		if folder == false then
			vexpower_parameters["frame"]["energy"]["text"][vexpower_optionTab_Text_currentTextfield]["shadow"][data] = key
		else
			vexpower_parameters["frame"]["energy"]["text"][vexpower_optionTab_Text_currentTextfield]["shadow"][folder][data] = key
		end
	end
end