
vexpower_optionTab_Profiles_currentProfile = GetRealmName().." "..select(1, UnitName("player"))
vexpower_optionTab_Profiles_statusMsg = " "
vexpower_optionTab_Profiles_statusMsg_add = " "

function vexpower_optionTab_Profiles_existsProfile()
	if vexpower_profiles[vexpower_optionTab_Profiles_currentProfile] ~= nil then
		return true
	else
		return false
	end
end

function vexpower_optionTab_Profiles_add()
	local key = vexpower_optionTab_Profiles_currentProfile
	if vexpower_optionTab_Profiles_checkName(key) then
		local exists = false
		if vexpower_profiles[key] ~= nil then
			exists = true
		end
		vexpower_profiles[key] = vexpower_CopyTable(vexpower_parameters)
		
		if exists then
			vexpower_optionTab_Profiles_statusMsg_add = "|CFF00FF00Successfully updated profile '"..key.."'|r"
			vexpower_optionTab_Profiles_statusMsg = " "
		else
			vexpower_optionTab_Profiles_statusMsg_add = "|CFF00FF00Successfully saved profile '"..key.."'|r"
			vexpower_optionTab_Profiles_statusMsg = " "
		end
	else
		vexpower_optionTab_Profiles_statusMsg_add = "|CFFC41F3BCouldn't save profile '"..key.."'.|r Profile name is invalid."
		vexpower_optionTab_Profiles_statusMsg = " "
	end
end

function vexpower_optionTab_Profiles_update()
	local key = vexpower_optionTab_Profiles_currentProfile
	if vexpower_optionTab_Profiles_checkName(key) then
		vexpower_profiles[key] = vexpower_CopyTable(vexpower_parameters)
		vexpower_optionTab_Profiles_statusMsg = "|CFF00FF00Successfully updated profile '"..key.."'|r"
		vexpower_optionTab_Profiles_statusMsg_add = " "
	else
		vexpower_optionTab_Profiles_statusMsg = "|CFFC41F3B\n\nCouldn't update profile '"..key.."'.|r Profile name is invalid."
		vexpower_optionTab_Profiles_statusMsg_add = " "
	end
end

function vexpower_optionTab_Profiles_getList(default)
	local returnvalue = {}
	local timer = 0
	for key in pairs(vexpower_profiles) do
		if key ~= "profilelist" then
			if key == vexpower_default_data["profile"] and default then
				returnvalue[key]=key.." |CFF00FF00(Default Profile)|r"
			else
				returnvalue[key]=key
			end
			timer = timer + 1
		end
	end
	
	if timer == 0 then
		returnvalue[""] = "No profiles created"
	end
	
	return returnvalue
end

function vexpower_optionTab_Profiles_checkName(val)
	local returnvalue = false
	-- local val_edited = val
	-- local legal_symbols = {"%a", "%(", "%)", ":", "%.", ",", " ", "-"}
	-- for i,val in ipairs(legal_symbols) do
		-- val_edited = string.gsub(val_edited, val, "")
	-- end
	-- if val_edited == "" then
		-- returnvalue = true
	-- end
	if val == "" then
		returnvalue = false
	else
		returnvalue = true	-- XXX
	end
	return returnvalue
end

function vexpower_optionTab_Profiles_delete(key)
	local key = vexpower_optionTab_Profiles_currentProfile
	if vexpower_profiles[key] ~= nil then
		vexpower_profiles[key] = nil
		vexpower_optionTab_Profiles_currentProfile = GetRealmName().." "..select(1, UnitName("player"))
		vexpower_optionTab_Profiles_statusMsg = "|CFF00FF00Successfully deleted profile '"..key.."'|r"
		vexpower_optionTab_Profiles_statusMsg_add = " "
	else
		vexpower_optionTab_Profiles_statusMsg = "|CFFC41F3B\n\nCouldn't delete profile '"..key.."'.|r Profile doesn't exist."
		vexpower_optionTab_Profiles_statusMsg_add = " "
	end
end

function vexpower_optionTab_Profiles_load()
	local key = vexpower_optionTab_Profiles_currentProfile
	if vexpower_profiles[key] ~= nil then
		if vexpower_profiles[key] ~= nil then
			vexpower_parameters = nil
			vexpower_parameters = vexpower_CopyTable(vexpower_profiles[key])
			vexpower_optionTab_Profiles_statusMsg = "|CFF00FF00Successfully loaded profile '"..key.."'|r"
			vexpower_optionTab_Profiles_statusMsg_add = " "
		else
			vexpower_optionTab_Profiles_statusMsg = "|CFFC41F3B\n\nCouldn't load profile '"..key.."'.|r Profile doesn't exist."
			vexpower_optionTab_Profiles_statusMsg_add = " "
		end
	else
		vexpower_optionTab_Profiles_statusMsg = "|CFFC41F3B\n\nCouldn't load profile '"..key.."'.|r Profile doesn't exist."
		vexpower_optionTab_Profiles_statusMsg_add = " "
	end
end