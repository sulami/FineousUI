function vexpower_loadData(force)
	local newChar, newAccount = vexpower_loadData_checkForNewCharNewAccount()
	local defaultProfileLoaded = vexpower_loadData_loadDefaultProfile()
	vexpower_loadData_changeClassSetDefaults(newAccount)
	local PowerShowWithMana, CPsShowWithMana, CPsShowWithoutEnergy, infightshow, infightshowCP, vehiclehide, stealthshow, stealthshowCP, markers, markers_a, markers_b, textfields, colorsets = vexpower_loadData_getOldData()
	
	if newChar and not(defaultProfileLoaded) then
		vexpower_defaults["frame"]["energy"]["text"] = vexpower_CopyTable(vexpower_text_defaults)
	end
	
	vexpower_default_data =  vexpower_loadData_checkTablecontent(vexpower_default_data_default, vexpower_default_data, force)
	vexpower_parameters =  vexpower_loadData_checkTablecontent(vexpower_defaults, vexpower_parameters, force)
	
	vexpower_checkOldVariables6()
	vexpower_checkOldVariables7(PowerShowWithMana, CPsShowWithMana, CPsShowWithoutEnergy)
	vexpower_checkOldVariables8(infightshow, infightshowCP, vehiclehide, stealthshow, stealthshowCP)
	textfields = vexpower_checkOldVariables10(textfields)
	
	if vexpower_profiles == nil then vexpower_profiles = { } end
	
	vexpower_loadData_loadAdditions(markers, markers_a, markers_b, textfields, colorsets)
	vexpower_checkOldVariables11()
	vexpower_checkOldVariables12()
	vexpower_loadData_loadColorSet(newChar, newAccount)
	vexpower_checkOldVariables13()
	
	if force then vexpower_initialize(true) end
end

function vexpower_loadData_checkTablecontent(defaults, saved, force, noadding)
	local temp = {}
	if force or type(saved) ~= "table" then temp=defaults
	else
		for key,val in pairs(defaults) do
			if type(val) == "table" then
				temp[key] = {}
				if saved[key] == nil then
					temp[key] = val
				else
					temp[key] = vexpower_loadData_checkTablecontent(defaults[key], saved[key], force, noadding)
				end
			else
				if saved[key] == nil then
					temp[key] = val
				else
					temp[key] = saved[key]
				end
			end
		end
	end
	return temp
end

function vexpower_loadData_checkForNewCharNewAccount()
	local newChar = false
	local newAccount = false
	
	if vexpower_parameters == nil and vexpower_profiles == nil and vexpower_default_data == nil then
		newAccount = true
	end
	if vexpower_parameters == nil then
		newChar = true
	end
	return newChar, newAccount
end

function vexpower_loadData_loadDefaultProfile()
	local defaultProfileLoaded = false
	if vexpower_parameters == nil and vexpower_profiles ~= nil and vexpower_default_data ~= nil then
		if vexpower_default_data["activate"] then
			if vexpower_profiles[vexpower_default_data["profile"]] ~= nil then
				vexpower_optionTab_Profiles_currentProfile = vexpower_default_data["profile"]
				vexpower_optionTab_Profiles_load()
				defaultProfileLoaded = true
			else
				print("|CFFFF7D0AVex Power|r ERROR: Could not load default profile. Default profile '"..vexpower_default_data["profile"].."' doesn't exist.")
				print("|CFFFF7D0AVex Power|r ERROR: Default addon settings will loaded instead. You can still load another profile manually in the options")
			end
		end
	end
	return defaultProfileLoaded
end

function vexpower_loadData_loadAdditions(markers, markers_a, markers_b, textfields, colorsets)
	if markers ~= nil then
		for key,val in pairs(markers) do
			vexpower_parameters["frame"]["energy"]["markers"]["points"][key] = vexpower_loadData_checkTablecontent(vexpower_default_marker, val, force)
		end
	end
	
	if markers_a ~= nil then
		for key,val in pairs(markers_a) do
			vexpower_parameters["frame"]["energy"]["markers"]["points_spec_a"][key] = vexpower_loadData_checkTablecontent(vexpower_default_marker, val, force)
		end
	end
	
	if markers_b ~= nil then
		for key,val in pairs(markers_b) do
			vexpower_parameters["frame"]["energy"]["markers"]["points_spec_b"][key] = vexpower_loadData_checkTablecontent(vexpower_default_marker, val, force)
		end
	end
	
	if textfields ~= nil then
		for key,val in pairs(textfields) do
			vexpower_parameters["frame"]["energy"]["text"][key] =  vexpower_loadData_checkTablecontent(vexpower_default_textfield, val, force)
		end	
	end
	
	if colorsets ~= nil then
		for key,val in pairs(colorsets) do
			vexpower_default_data["colorpresets"][key] =  vexpower_loadData_checkTablecontent(vexpower_default_colorpreset, val, force)
		end
	end
end

function vexpower_loadData_changeClassSetDefaults(newAccount)
	if newAccount then
		for key in pairs(vexpower_default_data_default["classpresets"]) do
			if key ~= "DEATHKNIGHT" then
				vexpower_default_data_default["classpresets"][key][1] = true
			end
		end
	end
end

function vexpower_loadData_loadColorSet(newChar, newAccount)
	if newAccount then
		for key,val in pairs(vexpower_default_colorpresets) do
			if vexpower_default_data["colorpresets"][key] == nil then
				vexpower_default_data["colorpresets"][key] = vexpower_CopyTable(val)
			end
		end
	end
	if newChar then
		local class = vexpower_getClass()
		if vexpower_default_data["classpresets"][class][1] or newAccount then
			local preset = vexpower_default_data["classpresets"][class][2]
			if vexpower_default_data["colorpresets"][preset] ~= nil then
				vexpower_parameters["frame"]["combo"]["bg"]["color"] = vexpower_CopyTable(vexpower_default_data["colorpresets"][preset])
			else
				print("|CFFFF7D0AVex Power|r ERROR: Could not load default color set. Default color set '"..preset.."' doesn't exist.")
			end
		end
	end
end

function vexpower_loadData_getOldData()
	local PowerShowWithMana = nil
	local CPsShowWithMana = nil
	local CPsShowWithoutEnergy = nil
	
	local infightshow = nil
	local infightshowCP = nil
	local vehiclehide = nil
	local stealthshow = nil
	local stealthshowCP = nil
	
	local stealthshow = nil
	local stealthshowCP = nil
	
	local markers = nil
	local markers_a = nil
	local markers_b = nil
	local textfields = nil
	local colorsets = nil
	
	
	if vexpower_parameters ~= nil then
		if vexpower_parameters["frame"]["energy"]["showwithmana"] ~= nil then
			PowerShowWithMana = vexpower_parameters["frame"]["energy"]["showwithmana"]
		end
		if vexpower_parameters["frame"]["combo"]["showwithmana"] ~= nil then
			CPsShowWithMana = vexpower_parameters["frame"]["combo"]["showwithmana"]
		end
		if vexpower_parameters["frame"]["combo"]["showWithoutEnergy"] ~= nil then
			CPsShowWithoutEnergy = vexpower_parameters["frame"]["combo"]["showWithoutEnergy"]
		end
		if vexpower_parameters["frame"]["infightshow"] ~= nil then
			infightshow = vexpower_parameters["frame"]["infightshow"]
		end
		if vexpower_parameters["frame"]["infightshowCP"] ~= nil then
			infightshowCP = vexpower_parameters["frame"]["infightshowCP"]
		end
		if vexpower_parameters["frame"]["vehiclehide"] ~= nil then
			vehiclehide = vexpower_parameters["frame"]["vehiclehide"]
		end
		if vexpower_parameters["frame"]["stealthshow"] ~= nil then
			stealthshow = vexpower_parameters["frame"]["stealthshow"]
		end
		if vexpower_parameters["frame"]["stealthshowCP"] ~= nil then
			stealthshowCP = vexpower_parameters["frame"]["stealthshowCP"]
		end
		if vexpower_parameters["frame"]["stealthshowCP"] ~= nil then
			stealthshowCP = vexpower_parameters["frame"]["stealthshowCP"]
		end
		if vexpower_parameters["frame"]["energy"]["markers"]["points"] ~= nil then
			markers = vexpower_CopyTable(vexpower_parameters["frame"]["energy"]["markers"]["points"])
		end
		if vexpower_parameters["frame"]["energy"]["markers"]["points_spec_a"] ~= nil then
			markers_a = vexpower_CopyTable(vexpower_parameters["frame"]["energy"]["markers"]["points_spec_a"])
		end
		if vexpower_parameters["frame"]["energy"]["markers"]["points_spec_b"] ~= nil then
			markers_b = vexpower_CopyTable(vexpower_parameters["frame"]["energy"]["markers"]["points_spec_b"])
		end
		if vexpower_parameters["frame"]["energy"]["text"] ~= nil then
			textfields = vexpower_CopyTable(vexpower_parameters["frame"]["energy"]["text"])
		end
		if vexpower_default_data["colorpresets"] ~= nil then
			colorsets = vexpower_CopyTable(vexpower_default_data["colorpresets"])
		end
	end
	
	return PowerShowWithMana, CPsShowWithMana, CPsShowWithoutEnergy, infightshow, infightshowCP, vehiclehide, stealthshow, stealthshowCP, markers, markers_a, markers_b, textfields, colorsets
end