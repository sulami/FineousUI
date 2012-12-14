function vexpower.panel_profiles()
	return {
		type = "group",
		args = {
			grpadd = {
				name = "Save Current Settings",
				order=3, type ="group", dialogInline = true,
				args = {
					profile_new = {
						name = "Name",
						desc = "Enter a name for the new profile",
						order=1, type = "input", multiline = false, width = "double",
						validate = function (info, val)
							if vexpower_optionTab_Profiles_checkName(val) then return true
							else return "ERROR - "..val.." is not a valid name" end
							end,
						set = function(info,val) vexpower_optionTab_Profiles_currentProfile = val end,
						get = function() return vexpower_optionTab_Profiles_currentProfile end,
						},
					profile_new_add = {
						name = "save", width="half",
						order=2, type = "execute",
						func = function(info,val) vexpower_optionTab_Profiles_add() vexpower_initialize(true) end,
						confirm = vexpower_optionTab_Profiles_existsProfile(),
						confirmText = "A profile allready exists with that name. Do you want to overwrite this profile?"
						},
					status = {name = vexpower_optionTab_Profiles_statusMsg_add, type = "description", order=3},
					grpadddelete_allowed = {name ="\n\nWarning: Changes made to an existing profile after saving it will not be automatically saved! You have to update the profile to save the changes!", type = "description", order=5,},
					},
				},
			frame_space2 = {name =" ", type = "description", order=4},
			grpdelete = {
				name = "Load, update and delete",
				order=5, type ="group", dialogInline = true,
				args = {
					profile = {
						name = "Existing profiles",
						order=1, type = "select", style = "dropdown", width="double",
						desc = "Delete an existing profile",
						values = vexpower_optionTab_Profiles_getList(true),
						set = function(self,key) vexpower_optionTab_Profiles_currentProfile = key end,
						get = function() return vexpower_optionTab_Profiles_currentProfile end,
						},
					status = {name = vexpower_optionTab_Profiles_statusMsg, type = "description", order=2},
					load = {
						name = "load",
						order=10, type = "execute",
						func = function(info,val) vexpower_optionTab_Profiles_load() vexpower_initialize(true) end,
						},
					update = {
						name = "update",
						desc = "Update will overwrite the profile with the current adjustments",
						order=11, type = "execute",
						func = function(info,val) vexpower_optionTab_Profiles_update() vexpower_initialize(true) end,
						},
					delete = {
						name = "delete",
						order=12, type = "execute",
						func = function(info,val) vexpower_optionTab_Profiles_delete() vexpower_initialize(true) end,
						confirm = true,
						confirmText = "Are you sure you want to delete this profile?"
						},
					},
				},
			}
		}
end
