
vexpower_optionTab_Markers_openTab = {
	["information"] = false,
	["add"] = false,
	["delete"] = false,
	["appearance"] = false,
	}
	
function vexpower_optionTab_Markers_toggleTab(tab)
	if vexpower_optionTab_Markers_openTab[tab] ~= nil then
		vexpower_optionTab_Markers_closeAllTabs()
		vexpower_optionTab_Markers_openTab[tab] = true
	end
end
	
function vexpower_optionTab_Markers_closeAllTabs()
	for key in pairs(vexpower_optionTab_Markers_openTab) do
		vexpower_optionTab_Markers_openTab[key] = false
	end
end

vexpower_optionTab_Markers_new_location = ""
vexpower_optionTab_Markers_new_spec = ""
vexpower_optionTab_Markers_edit_location = ""
vexpower_optionTab_Markers_edit_spec = ""
vexpower_optionTab_Markers_edit_spec_prev = ""
vexpower_optionTab_Markers_edit_powertypes = {
	["FOCUS"] = true,
	["MANA"] = true,
	["RUNIC_POWER"] = true,
	["ENERGY"] = true,
	["RAGE"] = true,
	}

vexpower_optionTab_Markers_powertypes_defaults = {
	["FOCUS"] = true,
	["MANA"] = true,
	["RUNIC_POWER"] = true,
	["ENERGY"] = true,
	["RAGE"] = true,
	}
	
vexpower_optionTab_Markers_new_powertypes = {
	["FOCUS"] = true,
	["MANA"] = true,
	["RUNIC_POWER"] = true,
	["ENERGY"] = true,
	["RAGE"] = true,
	}
	
vexpower_optionTab_Markers_statusMsg_created = " "
vexpower_optionTab_Markers_statusMsg_deleted = " "

function vexpower_optionTab_Markers_loadToEdit(key, spec)
	local markers = {}
	if spec == "a" then
		markers = vexpower_parameters["frame"]["energy"]["markers"]["points_spec_a"]
	elseif spec == "b" then
		markers = vexpower_parameters["frame"]["energy"]["markers"]["points_spec_b"]
	else
		markers = vexpower_parameters["frame"]["energy"]["markers"]["points"]
	end
	
	if markers[key] ~= nil then
		vexpower_optionTab_Markers_edit_location = key
		vexpower_optionTab_Markers_edit_spec = spec
		vexpower_optionTab_Markers_edit_spec_prev = spec
		vexpower_optionTab_Markers_edit_powertypes = vexpower_CopyTable(markers[key])
	else
		vexpower_optionTab_Markers_statusMsg_created = " "
		vexpower_optionTab_Markers_statusMsg_deleted = "|CFFC41F3BCouldn't load marker (location: "..pos..", visible for: "..specname..").|r Marker doesn't exist"
	end
end

function vexpower_optionTab_Markers_getList(val)
	local markers = {}
	if val == "spec a" then
		markers = vexpower_parameters["frame"]["energy"]["markers"]["points_spec_a"]
	elseif val == "spec b" then
		markers = vexpower_parameters["frame"]["energy"]["markers"]["points_spec_b"]
	else
		markers = vexpower_parameters["frame"]["energy"]["markers"]["points"]
	end
	
	local returnvalue = {}
	local timer = 0
	for key,val in pairs(markers) do
		local powertypes = ""
		local powertypeCount = 0
		for k,v in pairs(val) do
			if v then
				local text = ""
				if k == "FOCUS" then
					text = "|CFF"..vexpower_PowerTypeColorHex(k).."F|r"
				elseif k == "MANA" then
					text = "|CFF"..vexpower_PowerTypeColorHex(k).."M|r"
				elseif k == "RUNIC_POWER" then
					text = "|CFF"..vexpower_PowerTypeColorHex(k).."RP|r"
				elseif k == "ENERGY" then
					text = "|CFF"..vexpower_PowerTypeColorHex(k).."E|r"
				elseif k == "RAGE" then
					text = "|CFF"..vexpower_PowerTypeColorHex(k).."R|r"
				end
				if text ~= "" then
					if powertypes ~= "" then
						powertypes = powertypes..", "
					end
					powertypes = powertypes..text
					powertypeCount = powertypeCount + 1
				end
			end
		end
		
		if powertypeCount == 5 then
			powertypes = "|CFF00FF00all powertypes|r"
		end
		
		returnvalue[key]=key.." ("..powertypes..")"
		timer = timer + 1
	end
	
	if timer == 0 then
		returnvalue[""] = "No markers created"
	end
	
	return returnvalue
end

function vexpower_optionTab_Markers_existsMarker()
	local pos = vexpower_optionTab_Markers_new_location
	local spec = vexpower_optionTab_Markers_new_spec
	local overwrite = false
	if spec == "" 	then
		overwrite = vexpower_parameters["frame"]["energy"]["markers"]["points"][pos] ~= nil
	elseif spec == "a" then
		overwrite = vexpower_parameters["frame"]["energy"]["markers"]["points_spec_a"][pos] ~= nil
	elseif spec == "b" then
		overwrite = vexpower_parameters["frame"]["energy"]["markers"]["points_spec_b"][pos] ~= nil
	end
	
	return overwrite
end

function vexpower_optionTab_Markers_addMarker()
	local pos = vexpower_optionTab_Markers_new_location
	local spec = vexpower_optionTab_Markers_new_spec
	
	if vexpower_optionTab_Markers_checkMarker(pos) then
		local overwrite
		local specname = ""
		if spec == "" 	then
			specname = "Both Specs"
			overwrite = vexpower_parameters["frame"]["energy"]["markers"]["points"][pos] ~= nil
			vexpower_parameters["frame"]["energy"]["markers"]["points"][pos] = vexpower_CopyTable(vexpower_optionTab_Markers_new_powertypes)
		elseif spec == "a" then
			specname = "Primary Spec"
			overwrite = vexpower_parameters["frame"]["energy"]["markers"]["points_spec_a"][pos] ~= nil
			vexpower_parameters["frame"]["energy"]["markers"]["points_spec_a"][pos] = vexpower_CopyTable(vexpower_optionTab_Markers_new_powertypes)
		elseif spec == "b" then
			specname = "Secondary Spec"
			overwrite = vexpower_parameters["frame"]["energy"]["markers"]["points_spec_b"][pos] ~= nil
			vexpower_parameters["frame"]["energy"]["markers"]["points_spec_b"][pos] = vexpower_CopyTable(vexpower_optionTab_Markers_new_powertypes)
		end
		
		if overwrite then
			vexpower_optionTab_Markers_statusMsg_created = "|CFF00FF00marker (location: "..pos..", visible for: "..specname..") has been overwritten|r"
			vexpower_optionTab_Markers_statusMsg_deleted = " "
		else
			vexpower_optionTab_Markers_statusMsg_created = "|CFF00FF00marker (location: "..pos..", visible for: "..specname..") successfully created|r"
			vexpower_optionTab_Markers_statusMsg_deleted = " "
		end
	else
		vexpower_optionTab_Markers_statusMsg_created = "|CFFC41F3B'"..pos.."' is not a valid marker|r"
		vexpower_optionTab_Markers_statusMsg_deleted = " "
	end
end

function vexpower_optionTab_Markers_update()
	local pos = vexpower_optionTab_Markers_edit_location
	local spec = vexpower_optionTab_Markers_edit_spec
	
	if vexpower_optionTab_Markers_edit_spec_prev == "" then
		if vexpower_parameters["frame"]["energy"]["markers"]["points"][pos] ~= nil then
			vexpower_parameters["frame"]["energy"]["markers"]["points"][pos] = nil
		end
	elseif vexpower_optionTab_Markers_edit_spec_prev == "a" then
		if vexpower_parameters["frame"]["energy"]["markers"]["points_spec_a"][pos] ~= nil then
			vexpower_parameters["frame"]["energy"]["markers"]["points_spec_a"][pos] = nil
		end
	elseif vexpower_optionTab_Markers_edit_spec_prev == "b" then
		if vexpower_parameters["frame"]["energy"]["markers"]["points_spec_b"][pos] ~= nil then
			vexpower_parameters["frame"]["energy"]["markers"]["points_spec_b"][pos] = nil
		end
	end
	
	if vexpower_optionTab_Markers_checkMarker(pos) then
		local specname = ""
		if spec == "" 	then
			specname = "Both Specs"
			vexpower_parameters["frame"]["energy"]["markers"]["points"][pos] = vexpower_CopyTable(vexpower_optionTab_Markers_edit_powertypes)
		elseif spec == "a" then
			specname = "Primary Spec"
			vexpower_parameters["frame"]["energy"]["markers"]["points_spec_a"][pos] = vexpower_CopyTable(vexpower_optionTab_Markers_edit_powertypes)
		elseif spec == "b" then
			specname = "Secondary Spec"
			vexpower_parameters["frame"]["energy"]["markers"]["points_spec_b"][pos] = vexpower_CopyTable(vexpower_optionTab_Markers_edit_powertypes)
		end
		
		vexpower_optionTab_Markers_statusMsg_deleted = "|CFF00FF00marker (location: "..pos..", visible for: "..specname..") successfully updated|r"
		vexpower_optionTab_Markers_statusMsg_created = " "
		vexpower_optionTab_Markers_edit_location = ""
		vexpower_optionTab_Markers_edit_spec = ""
		vexpower_optionTab_Markers_edit_spec_prev = ""
		vexpower_optionTab_Markers_edit_powertypes = vexpower_CopyTable(vexpower_optionTab_Markers_powertypes_defaults)
	else
		vexpower_optionTab_Markers_statusMsg_deleted = "|CFFC41F3B'"..pos.."' is not a valid marker|r"
		vexpower_optionTab_Markers_statusMsg_created = " "
	end
end

function vexpower_optionTab_Markers_checkMarker(val)
	local returnvalue = false
	
	if string.gsub(val, "^%d+%%?", "") == "" then
		returnvalue = true
	end
	
	if val == "" then
		returnvalue = false
	end
	
	return returnvalue
end

function vexpower_optionTab_Markers_delete()
	local pos = vexpower_optionTab_Markers_edit_location
	local spec = vexpower_optionTab_Markers_edit_spec
	local exists = false
	local specname = ""
	
	if spec == "" then
		specname = "Both Specs"
		if vexpower_parameters["frame"]["energy"]["markers"]["points"][pos] ~= nil then
			vexpower_parameters["frame"]["energy"]["markers"]["points"][pos] = nil
			exists = true
		end
	elseif spec == "a" then
		specname = "Primary Spec"
		if vexpower_parameters["frame"]["energy"]["markers"]["points_spec_a"][pos] ~= nil then
			vexpower_parameters["frame"]["energy"]["markers"]["points_spec_a"][pos] = nil
			exists = true
		end
	elseif spec == "b" then
		specname = "Secondary Spec"
		if vexpower_parameters["frame"]["energy"]["markers"]["points_spec_b"][pos] ~= nil then
			vexpower_parameters["frame"]["energy"]["markers"]["points_spec_b"][pos] = nil
			exists = true
		end
	end
	if exists then
		vexpower_optionTab_Markers_statusMsg_deleted = "|CFF00FF00marker (location: "..pos..", visible for: "..specname..") successfully deleted|r"
		vexpower_optionTab_Markers_statusMsg_created = " "
		vexpower_optionTab_Markers_edit_location = ""
		vexpower_optionTab_Markers_edit_spec = ""
		vexpower_optionTab_Markers_edit_spec_prev = ""
		vexpower_optionTab_Markers_edit_powertypes = vexpower_CopyTable(vexpower_optionTab_Markers_powertypes_defaults)
	else
		vexpower_optionTab_Markers_statusMsg_deleted = "|CFFC41F3BCouldn't delete marker (location: "..pos..", visible for: "..specname..").|r Marker doesn't exist"
		vexpower_optionTab_Markers_statusMsg_created = " "
		vexpower_optionTab_Markers_edit_location = ""
		vexpower_optionTab_Markers_edit_spec = ""
		vexpower_optionTab_Markers_edit_spec_prev = ""
		vexpower_optionTab_Markers_edit_powertypes = vexpower_CopyTable(vexpower_optionTab_Markers_powertypes_defaults)
	end
end