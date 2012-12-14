
vexpower_optionTab_ColorSets_colorSet = {
	["1"] = {["r"]=1, ["g"]=0.929, ["b"]=0.0156, ["a"]=1},
	["2"] = {["r"]=0.7725, ["g"]=1, ["b"]=0.043, ["a"]=1},
	["3"] = {["r"]=0.314, ["g"]=1, ["b"]=0.6666, ["a"]=1},
	["4"] = {["r"]=0, ["g"]=1, ["b"]=0.753, ["a"]=1},
	["5"] = {["r"]=0.0078, ["g"]=0.757, ["b"]=1, ["a"]=1},
	["6"] = {["r"]=0.0078, ["g"]=0.757, ["b"]=1, ["a"]=1},
	["change"] = {["r"]=1, ["g"]=0, ["b"]=0, ["a"]=1},
	["used"] = {["r"]=1, ["g"]=0.6, ["b"]=0, ["a"]=1},
	}

vexpower_optionTab_ColorSets_edit_name = ""
vexpower_optionTab_ColorSets_statusMsg = " "
vexpower_optionTab_ColorSets_save_name = ""
vexpower_optionTab_ColorSets_save_name_prev = ""

function vexpower_optionTab_ColorSets_createNew()
	vexpower_optionTab_ColorSets_save_name = "new"
	vexpower_optionTab_ColorSets_edit_name = "-"
	vexpower_optionTab_ColorSets_colorSet = vexpower_CopyTable(vexpower_default_colorpreset)
end

function vexpower_optionTab_ColorSets_existsColorSet(name)
	if name == nil then
		name = vexpower_optionTab_ColorSets_save_name
	end
	
	if vexpower_default_data["colorpresets"][name] ~= nil then
		return true
	else
		return false
	end
end

function vexpower_optionTab_ColorSets_save(update)
	local name = ""
	if update then
		name = vexpower_optionTab_ColorSets_save_name_prev
	else
		name = vexpower_optionTab_ColorSets_save_name
	end
	
	if vexpower_optionTab_Profiles_checkName(name) then
		vexpower_default_data["colorpresets"][name] = vexpower_CopyTable(vexpower_optionTab_ColorSets_colorSet)
		if vexpower_optionTab_ColorSets_existsColorSet(name) then
			vexpower_optionTab_ColorSets_statusMsg = "|CFF00FF00Successfully updated ColorPreset '"..name.."'|r"
		else
			vexpower_optionTab_ColorSets_statusMsg = "|CFF00FF00Successfully saved the new ColorPreset '"..name.."'|r"
		end
	else
		if name == "" then
			vexpower_optionTab_ColorSets_statusMsg = "|CFFC41F3BCouldn't save ColorPreset.|r You need to set a name."
		else
			vexpower_optionTab_ColorSets_statusMsg = "|CFFC41F3BCouldn't save ColorPreset '"..name.."'.|r Invalid symbols used."
		end
	end
end

function vexpower_optionTab_ColorSets_delete()
	if vexpower_optionTab_ColorSets_edit_name == "" then
		vexpower_optionTab_ColorSets_statusMsg = "ERROR: Can't delete current settings"
	else
		if vexpower_default_data["colorpresets"][vexpower_optionTab_ColorSets_edit_name] ~= nil then
			vexpower_default_data["colorpresets"][vexpower_optionTab_ColorSets_edit_name] = nil
			vexpower_optionTab_ColorSets_statusMsg = "|CFF00FF00Successfully deleted ColorPreset '"..vexpower_optionTab_ColorSets_edit_name.."'|r"
			vexpower_optionTab_ColorSets_edit_name = ""
			vexpower_optionTab_ColorSets_save_name = ""
			vexpower_optionTab_ColorSets_createNew()
		else
			vexpower_optionTab_ColorSets_statusMsg = "|CFFC41F3BCouldn't delete ColorPreset '"..vexpower_optionTab_ColorSets_edit_name.."'.|r Preset doesn't exist"
		end
	end
end

function vexpower_optionTab_ColorSets_load()
	if vexpower_default_data["colorpresets"][vexpower_optionTab_ColorSets_edit_name] ~= nil then
		vexpower_parameters["frame"]["combo"]["bg"]["color"] = vexpower_CopyTable(vexpower_default_data["colorpresets"][vexpower_optionTab_ColorSets_edit_name])
		vexpower_optionTab_ColorSets_statusMsg = "|CFF00FF00Successfully loaded ColorPreset '"..vexpower_optionTab_ColorSets_edit_name.."'|r"
	else
		vexpower_optionTab_ColorSets_statusMsg = "|CFFC41F3BCouldn't load ColorPreset '"..vexpower_optionTab_ColorSets_edit_name.."'.|r Preset doesn't exist"
	end
end

function vexpower_optionTab_ColorSets_getList(default)
	local returnvalue = {}
	local timer = 0
	for key in pairs(vexpower_default_data["colorpresets"]) do
		if default then
			local isSet = false
			local presetFor = ""
			local count = 0
			for class,classdata in pairs(vexpower_default_data["classpresets"]) do
				if key == classdata[2] and classdata[1] then
					if count ~= 0 then
						presetFor = presetFor..", "
					end
					presetFor= presetFor.."|CFF"..vexpower_ClassColorHex(class)..class.."|r"
					count=count+1
				end
			end
			
			if count==0 then
				returnvalue[key]=key
			else
				returnvalue[key]=key.." ("..presetFor..")"
			end
		else
			returnvalue[key]=key
		end
		timer = timer + 1
	end
	
	if default then
		returnvalue[""]="current"
	elseif not(default) and timer == 0 then
		returnvalue[""] = "No color sets created"
	end
	
	return returnvalue
end

function vexpower_optionTab_ColorSets_gatherData()
	if vexpower_optionTab_ColorSets_edit_name == "" then
		vexpower_optionTab_ColorSets_colorSet = vexpower_CopyTable(vexpower_parameters["frame"]["combo"]["bg"]["color"])
	elseif vexpower_default_data["colorpresets"][vexpower_optionTab_ColorSets_edit_name] ~= nil then
		vexpower_optionTab_ColorSets_colorSet = vexpower_CopyTable(vexpower_default_data["colorpresets"][vexpower_optionTab_ColorSets_edit_name])
	end
end