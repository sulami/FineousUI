function vexpower.panel_show()
	return {
		type = "group",
		order= 5,
		args = {
			grptestmode = {
				name = "Testmode",
				order=1, type ="group", dialogInline = true,
				args = {
					testmode = {
						name = "activate",
						order=1, type = "toggle", width="double",
						set = function(info,val) vexpower.testmode=val vexpower_Testmode_Auto_handler() end,
						get = function() return vexpower.testmode end,
						},
					info = {name ="- ComboPoint gain and loss are simulated\n- Textfields get a colored background and are moveable\n- Powerbar and ComboPointBar become movable\n'/vexp testmode' can be used to toggle the testmode", type = "description", order=2},
					},
				},
			spacetestmode = {name ="\n", type = "description", order=2},
			
			grpallow = {
				name = "General Settings",
				order=10, type ="group", dialogInline = true,
				args = {
					activateenergy = {
						name = "Enable Powerbar",
						order=3, type = "toggle", width="full",
						disabled = not(vexpower_parameters["frame"]["show"]),
						set = function(self,key) vexpower_parameters["frame"]["energy"]["show"]=key vexpower_initialize(true) end,
						get = function() return vexpower_parameters["frame"]["energy"]["show"] end,
						},
					activatecps = {
						name = "Enable Combopoints",
						order=4, type = "toggle", width="full",
						disabled = not(vexpower_parameters["frame"]["show"]),
						set = function(self,key) vexpower_parameters["frame"]["combo"]["show"]=key vexpower_initialize(true) end,
						get = function() return vexpower_parameters["frame"]["combo"]["show"] end,
						},
					},
				},
			space1 = {name =" ", type = "description", order=11},
				
			grpblizz = {
				name = "Blizzard's Frames",
				order=20, type ="group", dialogInline = true,
				args = {
					disableAltPower = {
						name = "Disable Blizzard's Chi Bar",
						order=1, type = "toggle", width="full",
						disabled = not(vexpower_parameters["frame"]["show"]),
						set = function(self,key)
							vexpower_parameters["blizzhide"]["chi"]=key
							if key then
								vexpower_initialize(true)
							else
								ReloadUI()
							end
							end,
						get = function() return vexpower_parameters["blizzhide"]["chi"] end,
						confirm = vexpower_parameters["blizzhide"]["chi"],
						confirmText = "Re-enabling Blizzard's frames needs a UI reload in order to work. Do you want to continue?"
						},
					disableHolyPower = {
						name = "Disable Blizzard's Holy Power Bar",
						order=1, type = "toggle", width="full",
						disabled = not(vexpower_parameters["frame"]["show"]),
						set = function(self,key)
							vexpower_parameters["blizzhide"]["holypower"]=key
							if key then
								vexpower_initialize(true)
							else
								ReloadUI()
							end
							end,
						get = function() return vexpower_parameters["blizzhide"]["holypower"] end,
						confirm = vexpower_parameters["blizzhide"]["holypower"],
						confirmText = "Re-enabling Blizzard's frames needs a UI reload in order to work. Do you want to continue?"
						},
					disableCPs = {
						name = "Disable Blizzard's ComboPoint Bar",
						order=2, type = "toggle", width="full",
						disabled = not(vexpower_parameters["frame"]["show"]),
						set = function(self,key)
							vexpower_parameters["blizzhide"]["cps"]=key
							if key then
								vexpower_initialize(true)
							else
								ReloadUI()
							end
							end,
						get = function() return vexpower_parameters["blizzhide"]["cps"] end,
						confirm = vexpower_parameters["blizzhide"]["cps"],
						confirmText = "Re-enabling Blizzard's frames needs a UI reload in order to work. Do you want to continue?"
						},
					disableLockShards = {
						name = "Disable Blizzard's Soul Shard Bar",
						order=3, type = "toggle", width="full",
						disabled = not(vexpower_parameters["frame"]["show"]),
						set = function(self,key)
							vexpower_parameters["blizzhide"]["lockShards"]=key
							if key then
								vexpower_initialize(true)
							else
								ReloadUI()
							end
							end,
						get = function() return vexpower_parameters["blizzhide"]["lockShards"] end,
						confirm = vexpower_parameters["blizzhide"]["lockShards"],
						confirmText = "Re-enabling Blizzard's frames needs a UI reload in order to work. Do you want to continue?"
						},
					},
				},
			space2 = {name =" ", type = "description", order=21},
			
			grpooc = {
				name = "'Out of Combat' Settings",
				order=30, type ="group", dialogInline = true,
				args = {
					infightonly = {
						name = "When 'Out of Combat': Hide the Powerbar",
						order=1, type = "toggle", width="full",
						disabled = not(vexpower_parameters["frame"]["show"]),
						set = function(self,key) vexpower_parameters["frame"]["energy"]["infightshow"]=key vexpower_initialize(true) end,
						get = function() return vexpower_parameters["frame"]["energy"]["infightshow"] end,
						},
					stealth = {
						name = "Still show stealthed",
						order=2, type = "toggle",
						disabled = not(vexpower_parameters["frame"]["energy"]["infightshow"]) or not(vexpower_parameters["frame"]["show"]),
						desc = "Shows the energy bar when stealthed even when the 'out of combat'-setting is enabled and you are out of combat",
						set = function(self,key) vexpower_parameters["frame"]["energy"]["stealthshow"]=key vexpower_initialize(true) end,
						get = function() return vexpower_parameters["frame"]["energy"]["stealthshow"] end,
						},
					targetSet = {
						name = "Still show when targeting a unit",
						order=3, type = "toggle", width="double",
						disabled = not(vexpower_parameters["frame"]["energy"]["infightshow"]) or not(vexpower_parameters["frame"]["show"]),
						desc = "Shows the energy bar when targeting a unit even when the 'out of combat'-setting is enabled and you are out of combat",
						set = function(self,key) vexpower_parameters["frame"]["energy"]["targetSetshow"]=key vexpower_initialize(true) end,
						get = function() return vexpower_parameters["frame"]["energy"]["targetSetshow"] end,
						},
					space1 = {name =" ", type = "description", order=4},
					infightonlyCP = {
						name = "When 'Out of Combat': Hide the ComboPoints",
						order=10, type = "toggle", width="full",
						disabled = not(vexpower_parameters["frame"]["show"]),
						set = function(self,key) vexpower_parameters["frame"]["combo"]["infightshow"]=key vexpower_initialize(true) end,
						get = function() return vexpower_parameters["frame"]["combo"]["infightshow"] end,
						},
					stealthCP = {
						name = "Still show stealthed",
						order=11, type = "toggle",
						disabled = not(vexpower_parameters["frame"]["combo"]["infightshow"]) or not(vexpower_parameters["frame"]["show"]),
						desc = "Shows the combopoints when stealthed even when the 'out of combat'-setting is enabled and you are out of combat",
						set = function(self,key) vexpower_parameters["frame"]["combo"]["stealthshow"]=key vexpower_initialize(true) end,
						get = function() return vexpower_parameters["frame"]["combo"]["stealthshow"] end,
						},
					targetSetCP = {
						name = "Still show when targeting a unit",
						order=12, type = "toggle", width="double",
						disabled = not(vexpower_parameters["frame"]["combo"]["infightshow"]) or not(vexpower_parameters["frame"]["show"]),
						desc = "Shows the combopoints when targeting a unit even when the 'out of combat'-setting is enabled and you are out of combat",
						set = function(self,key) vexpower_parameters["frame"]["combo"]["targetSetshow"]=key vexpower_initialize(true) end,
						get = function() return vexpower_parameters["frame"]["combo"]["targetSetshow"] end,
						},
					frame_subspace2 = {name =" ", type = "description", order=20},
					infightdelay = {
						name = "'Out of Combat' delay timer (seconds)",
						order=21, type = "range", width="double",
						desc = "Sets the time the recoloring (optionpanel 'powerbar') and the fade out effects are delayed when leaving combat",
						step = 1, min = 0, max = 30,
						set = function(info,val) vexpower_parameters["frame"]["infightdelay"]=val vexpower_initialize(true) end,
						get = function() return vexpower_parameters["frame"]["infightdelay"] end
						},
					},
				},
			space3 = {name =" ", type = "description", order=31},
			
			grppowertypes = {
				name = "Powertype settings",
				order=40, type ="group", dialogInline = true,
				args = {
					powerbar = {
						name = "Show PowerBar when powertype is",
						order=1, type ="group", dialogInline = true,
						args = {
							marker_new_powertype_rage = {
								name = "|CFF"..vexpower_PowerTypeColorHex("RAGE").."Rage|r",
								order=1, type = "toggle", width="half",
								set = function(self,key) vexpower_parameters["frame"]["energy"]["showWithPowerType"]["RAGE"] = key vexpower_initialize(true) end,
								get = function() return vexpower_parameters["frame"]["energy"]["showWithPowerType"]["RAGE"] end,
								},
							marker_new_powertype_mana = {
								name = "|CFF"..vexpower_PowerTypeColorHex("MANA").."Mana|r",
								order=2, type = "toggle", width="half",
								set = function(self,key) vexpower_parameters["frame"]["energy"]["showWithPowerType"]["MANA"] = key vexpower_initialize(true) end,
								get = function() return vexpower_parameters["frame"]["energy"]["showWithPowerType"]["MANA"] end,
								},
							marker_new_powertype_focus = {
								name = "|CFF"..vexpower_PowerTypeColorHex("FOCUS").."Focus|r",
								order=3, type = "toggle", width="half",
								set = function(self,key) vexpower_parameters["frame"]["energy"]["showWithPowerType"]["FOCUS"] = key vexpower_initialize(true) end,
								get = function() return vexpower_parameters["frame"]["energy"]["showWithPowerType"]["FOCUS"] end,
								},
							marker_new_powertype_energy = {
								name = "|CFF"..vexpower_PowerTypeColorHex("ENERGY").."Energy|r",
								order=4, type = "toggle", width="half",
								set = function(self,key) vexpower_parameters["frame"]["energy"]["showWithPowerType"]["ENERGY"] = key vexpower_initialize(true) end,
								get = function() return vexpower_parameters["frame"]["energy"]["showWithPowerType"]["ENERGY"] end,
								},
							marker_new_powertype_rp = {
								name = "|CFF"..vexpower_PowerTypeColorHex("RUNIC_POWER").."Runic Power|r",
								order=5, type = "toggle",
								set = function(self,key) vexpower_parameters["frame"]["energy"]["showWithPowerType"]["RUNIC_POWER"] = key vexpower_initialize(true) end,
								get = function() return vexpower_parameters["frame"]["energy"]["showWithPowerType"]["RUNIC_POWER"] end,
								},
							},
						},
					space = {name ="\n", type = "description", order=2},
					combopoints = {
						name = "Show ComboPointBar when powertype is",
						order=3, type ="group", dialogInline = true,
						args = {
							marker_new_powertype_rage = {
								name = "|CFF"..vexpower_PowerTypeColorHex("RAGE").."Rage|r",
								order=1, type = "toggle", width="half",
								set = function(self,key) vexpower_parameters["frame"]["combo"]["showWithPowerType"]["RAGE"] = key vexpower_initialize(true) end,
								get = function() return vexpower_parameters["frame"]["combo"]["showWithPowerType"]["RAGE"] end,
								},
							marker_new_powertype_mana = {
								name = "|CFF"..vexpower_PowerTypeColorHex("MANA").."Mana|r",
								order=2, type = "toggle", width="half",
								set = function(self,key) vexpower_parameters["frame"]["combo"]["showWithPowerType"]["MANA"] = key vexpower_initialize(true) end,
								get = function() return vexpower_parameters["frame"]["combo"]["showWithPowerType"]["MANA"] end,
								},
							marker_new_powertype_focus = {
								name = "|CFF"..vexpower_PowerTypeColorHex("FOCUS").."Focus|r",
								order=3, type = "toggle", width="half",
								set = function(self,key) vexpower_parameters["frame"]["combo"]["showWithPowerType"]["FOCUS"] = key vexpower_initialize(true) end,
								get = function() return vexpower_parameters["frame"]["combo"]["showWithPowerType"]["FOCUS"] end,
								},
							marker_new_powertype_energy = {
								name = "|CFF"..vexpower_PowerTypeColorHex("ENERGY").."Energy|r",
								order=4, type = "toggle", width="half",
								set = function(self,key) vexpower_parameters["frame"]["combo"]["showWithPowerType"]["ENERGY"] = key vexpower_initialize(true) end,
								get = function() return vexpower_parameters["frame"]["combo"]["showWithPowerType"]["ENERGY"] end,
								},
							marker_new_powertype_rp = {
								name = "|CFF"..vexpower_PowerTypeColorHex("RUNIC_POWER").."Runic Power|r",
								order=5, type = "toggle",
								set = function(self,key) vexpower_parameters["frame"]["combo"]["showWithPowerType"]["RUNIC_POWER"] = key vexpower_initialize(true) end,
								get = function() return vexpower_parameters["frame"]["combo"]["showWithPowerType"]["RUNIC_POWER"] end,
								},
							},
						},
					},
				},
			space4 = {name =" ", type = "description", order=41},
			
			grpvehicle = {
				name = "Vehicle settings",
				order=50, type ="group", dialogInline = true,
				args = {
					vehiclehidePower = {
						name = "When in a vehicle: Show the Powerbar",
						order=1, type = "toggle", width="double",
						disabled = not(vexpower_parameters["frame"]["show"]),
						set = function(self,key) vexpower_parameters["frame"]["energy"]["vehiclehide"]=not(key) vexpower_initialize(true) end,
						get = function() return not(vexpower_parameters["frame"]["energy"]["vehiclehide"]) end,
						},
					vehicleEnergy= {
						name = "Show vehicle-power",
						order=2, type = "toggle",
						disabled = not(vexpower_parameters["frame"]["show"]) or vexpower_parameters["frame"]["energy"]["vehiclehide"],
						set = function(self,key) vexpower_parameters["frame"]["energy"]["vehicleEnergy"]=key vexpower_initialize(true) end,
						get = function() return vexpower_parameters["frame"]["energy"]["vehicleEnergy"] end,
						},
					vehiclehideCPs = {
						name = "When in a vehicle: Show the ComboPoints",
						order=10, type = "toggle", width="double",
						disabled = not(vexpower_parameters["frame"]["show"]),
						set = function(self,key) vexpower_parameters["frame"]["combo"]["vehiclehide"]=not(key) vexpower_initialize(true) end,
						get = function() return not(vexpower_parameters["frame"]["combo"]["vehiclehide"]) end,
						},
					vehicleCPs= {
						name = "Show vehicle-CPs",
						order=11, type = "toggle",
						disabled = not(vexpower_parameters["frame"]["show"]) or vexpower_parameters["frame"]["combo"]["vehiclehide"],
						set = function(self,key) vexpower_parameters["frame"]["combo"]["vehicleCps"]=key vexpower_initialize(true) end,
						get = function() return vexpower_parameters["frame"]["combo"]["vehicleCps"] end,
						},
					info = {name = "Showing vehicle-CPs is experimentel, activating it may cause errors in vehicles", type = "description", order=20},
					},
				},
			space5 = {name =" ", type = "description", order=51},
			
			grpeffect = {
				name = "'FadeOut'-Effect",
				order=60, type ="group", dialogInline = true,
				args = {
					info = {name = "When a frame shall become hidden it fades out, instead of instantly disappearing.\n", type = "description", order=1},
					fadeout= {
						name = "Activate",
						order=10, type = "toggle", width="full",
						disabled = not(vexpower_parameters["frame"]["show"]),
						set = function(self,key) vexpower_parameters["frame"]["fadeout"]=key vexpower_initialize(true) end,
						get = function() return vexpower_parameters["frame"]["fadeout"] end,
						},
					space = {name = " ", type = "description", order=20},
					fadeoutTime = {
						name = "Duration (seconds)",
						order=30, type = "range", width="double",
						desc = "Sets the time the fade out effects last",
						step = 0.1, min = 0.1, max = 5,
						set = function(info,val) vexpower_parameters["fadeOutTime"]=val vexpower_initialize(true) end,
						get = function() return vexpower_parameters["fadeOutTime"] end
						},
					},
				},
			}
		}
end