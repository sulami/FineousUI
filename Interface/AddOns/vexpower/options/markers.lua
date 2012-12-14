function vexpower.panel_markers()		
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
			grpoptiontabs = {
				name = "Toggle Option Tabs",
				order=5, type ="group", dialogInline = true,
				args = {
					Add = {
						name = "Create",
						order=1, type = "execute", width="half",
						func = function(info,val) vexpower_optionTab_Markers_toggleTab("add") vexpower_initialize(true) end,
						},
					Update = {
						name = "Update/Delete",
						order=2, type = "execute",
						func = function(info,val) vexpower_optionTab_Markers_toggleTab("delete") vexpower_initialize(true) end,
						},
					Appearance = {
						name = "Color & Size",
						order=3, type = "execute",
						func = function(info,val) vexpower_optionTab_Markers_toggleTab("appearance") vexpower_initialize(true) end,
						},
					Information = {
						name = "HELP",
						order=4, type = "execute", width="half",
						func = function(info,val) vexpower_optionTab_Markers_toggleTab("information") vexpower_initialize(true) end,
						},
					--space = {name =" ", type = "description", order=3, width="half"},
					},
				},
			spaceoptiontabs = {name =" ", type = "description", order=6},
			
			grpex = {
				name = "Information",
				order=10, type = "group", dialogInline = true, hidden = not(vexpower_optionTab_Markers_openTab["information"]),
				args = {
					infopic={name = "", type="description", order=1, image="Interface\\AddOns\\vexpower\\images\\options_markers.tga",
						imageWidth=512, imageHeight=64},	
					info1={name = "Examples for markers are in the red circles\n", type="description", order=2,},	
					info2={name = "Markers are marks at absolute or at relative positions on your energybar.", type="description", order=3},	
					info3={name = "'50' will be placed on the energybar that represents exact 50 points of your power (absolute)", type="description", order=4},	
					info4={name = "'50%' will be placed on the energybar that represents 50% of your power (relative)", type="description", order=5},	
					info5={name = "You can create markers that are only shown with specific powertypes and specific specs.", type="description", order=6},
					info6={name = "By adjusting the powertype settings of a marker druids can use markers for specific forms. By setting a marker that is only shown with energy, the marker will only be shown when they are in their cat-form.", type="description", order=7},
					info7={name = "By adjusting the spec settings of a marker a rogue can place a marker for each of their primary attack spells", type="description", order=8},
					},
				},
			
			grpadd = {
				name = "Add/Overwrite marker",
				order=20, type ="group", dialogInline = true, hidden = not(vexpower_optionTab_Markers_openTab["add"]),
				args = {
					marker_new = {
						name = "Location",
						desc = "Enter a location where to put the new marker",
						order=1, type = "input", multiline = false,
						validate = function (info, val)
							if vexpower_optionTab_Markers_checkMarker(val) then return true
							else print("ERROR - "..val.." is not a valid position") return false end
							end,
						set = function(info,val) vexpower_optionTab_Markers_new_location=val end,
						get = function() return vexpower_optionTab_Markers_new_location end,
						},
					marker_new_spec = {
						name = "Visible for",
						order=2, type = "select", style = "dropdown",
						values = {[""]="Both Specs", ["a"]="Primary Spec", ["b"]="Secondary Spec"},
						set = function(self,key) vexpower_optionTab_Markers_new_spec = key end,
						get = function() return vexpower_optionTab_Markers_new_spec end,
						},
					powertypes = {
						name = "Visible with the following powertypes",
						order=3, type ="group", dialogInline = true,
						args = {
							marker_new_powertype_rage = {
								name = "|CFF"..vexpower_PowerTypeColorHex("RAGE").."(R)age|r",
								order=1, type = "toggle", width="half",
								set = function(self,key) vexpower_optionTab_Markers_new_powertypes["RAGE"] = key vexpower_initialize(true) end,
								get = function() return vexpower_optionTab_Markers_new_powertypes["RAGE"] end,
								},
							marker_new_powertype_mana = {
								name = "|CFF"..vexpower_PowerTypeColorHex("MANA").."(M)ana|r",
								order=2, type = "toggle", width="half",
								set = function(self,key) vexpower_optionTab_Markers_new_powertypes["MANA"] = key vexpower_initialize(true) end,
								get = function() return vexpower_optionTab_Markers_new_powertypes["MANA"] end,
								},
							marker_new_powertype_focus = {
								name = "|CFF"..vexpower_PowerTypeColorHex("FOCUS").."(F)ocus|r",
								order=3, type = "toggle", width="half",
								set = function(self,key) vexpower_optionTab_Markers_new_powertypes["FOCUS"] = key vexpower_initialize(true) end,
								get = function() return vexpower_optionTab_Markers_new_powertypes["FOCUS"] end,
								},
							marker_new_powertype_energy = {
								name = "|CFF"..vexpower_PowerTypeColorHex("ENERGY").."(E)nergy|r",
								order=4, type = "toggle", width="half",
								set = function(self,key) vexpower_optionTab_Markers_new_powertypes["ENERGY"] = key vexpower_initialize(true) end,
								get = function() return vexpower_optionTab_Markers_new_powertypes["ENERGY"] end,
								},
							marker_new_powertype_rp = {
								name = "|CFF"..vexpower_PowerTypeColorHex("RUNIC_POWER").."(R)unic (P)ower|r",
								order=5, type = "toggle",
								set = function(self,key) vexpower_optionTab_Markers_new_powertypes["RUNIC_POWER"] = key vexpower_initialize(true) end,
								get = function() return vexpower_optionTab_Markers_new_powertypes["RUNIC_POWER"] end,
								},
							},
						},
					marker_new_add = {
						name = "add",
						order=4, type = "execute",
						func = function(info,val) vexpower_optionTab_Markers_addMarker() vexpower_initialize(true) end,
						confirm = vexpower_optionTab_Markers_existsMarker(),
						confirmText = "A Marker allready exists at that location and for that spec. Do you want to overwrite this marker?"
						},
					marker_new_info = {name = vexpower_optionTab_Markers_statusMsg_created, type = "description", order=20},
					},
				},
			
			grpdelete = {
				name = "Update / Delete marker",
				order=30, type ="group", dialogInline = true, hidden = not(vexpower_optionTab_Markers_openTab["delete"]),
				args = {
					marker_delete = {
						name = "Select from both specs",
						order=1, type = "select", style = "dropdown",
						values = vexpower_optionTab_Markers_getList("both"),
						set = function(self,key) vexpower_optionTab_Markers_loadToEdit(key, "") vexpower_initialize(true) end,
						get = function() return "" end,
						},
					marker_delete_a = {
						name = "Select from primary Spec",
						order=2, type = "select", style = "dropdown",
						values = vexpower_optionTab_Markers_getList("spec a"),
						set = function(self,key) vexpower_optionTab_Markers_loadToEdit(key, "a") vexpower_initialize(true) end,
						get = function() return "" end,
						},
					marker_delete_b = {
						name = "Select from secondary Spec",
						order=3, type = "select", style = "dropdown",
						values = vexpower_optionTab_Markers_getList("spec b"),
						set = function(self,key) vexpower_optionTab_Markers_loadToEdit(key, "b") vexpower_initialize(true) end,
						get = function() return "" end,
						},
					grpedit = {
						name = "Selected Marker",
						order=20, type ="group", dialogInline = true,
						args = {
							marker_edit = {
								name = "Location",
								order=20, type = "input", multiline = false, disabled=true,
								set = function(info,val) end,
								get = function() return vexpower_optionTab_Markers_edit_location end,
								},
							marker_new_spec = {
								name = "Visible for",
								order=21, type = "select", style = "dropdown", disabled = vexpower_optionTab_Markers_edit_location == "",
								values = {[""]="Both Specs", ["a"]="Primary Spec", ["b"]="Secondary Spec"},
								set = function(self,key) vexpower_optionTab_Markers_edit_spec = key end,
								get = function() return vexpower_optionTab_Markers_edit_spec end,
								},
							powertypes = {
								name = "Visible with the following powertypes",
								order=30, type ="group", dialogInline = true, disabled = vexpower_optionTab_Markers_edit_location == "",
								args = {
									marker_new_powertype_rage = {
										name = "|CFF"..vexpower_PowerTypeColorHex("RAGE").."(R)age|r",
										order=1, type = "toggle", width="half",
										set = function(self,key) vexpower_optionTab_Markers_edit_powertypes["RAGE"] = key vexpower_initialize(true) end,
										get = function() return vexpower_optionTab_Markers_edit_powertypes["RAGE"] end,
										},
									marker_new_powertype_mana = {
										name = "|CFF"..vexpower_PowerTypeColorHex("MANA").."(M)ana|r",
										order=2, type = "toggle", width="half",
										set = function(self,key) vexpower_optionTab_Markers_edit_powertypes["MANA"] = key vexpower_initialize(true) end,
										get = function() return vexpower_optionTab_Markers_edit_powertypes["MANA"] end,
										},
									marker_new_powertype_focus = {
										name = "|CFF"..vexpower_PowerTypeColorHex("FOCUS").."(F)ocus|r",
										order=3, type = "toggle", width="half",
										set = function(self,key) vexpower_optionTab_Markers_edit_powertypes["FOCUS"] = key vexpower_initialize(true) end,
										get = function() return vexpower_optionTab_Markers_edit_powertypes["FOCUS"] end,
										},
									marker_new_powertype_energy = {
										name = "|CFF"..vexpower_PowerTypeColorHex("ENERGY").."(E)nergy|r",
										order=4, type = "toggle", width="half",
										set = function(self,key) vexpower_optionTab_Markers_edit_powertypes["ENERGY"] = key vexpower_initialize(true) end,
										get = function() return vexpower_optionTab_Markers_edit_powertypes["ENERGY"] end,
										},
									marker_new_powertype_rp = {
										name = "|CFF"..vexpower_PowerTypeColorHex("RUNIC_POWER").."(R)unic (P)ower|r",
										order=5, type = "toggle",
										set = function(self,key) vexpower_optionTab_Markers_edit_powertypes["RUNIC_POWER"] = key vexpower_initialize(true) end,
										get = function() return vexpower_optionTab_Markers_edit_powertypes["RUNIC_POWER"] end,
										},
									},
								},
							update = {
								name = "update", width="half",
								order=40, type = "execute", disabled = vexpower_optionTab_Markers_edit_location == "",
								func = function(info,val) vexpower_optionTab_Markers_update() vexpower_initialize(true) end,
								},
							delete = {
								name = "delete", width="half",
								order=41, type = "execute", disabled = vexpower_optionTab_Markers_edit_location == "",
								func = function(info,val) vexpower_optionTab_Markers_delete() vexpower_initialize(true) end,
								confirm = true,
								confirmText = "Are you sure you want to delete this marker?"
								},
							marker_deleted_info= {name = vexpower_optionTab_Markers_statusMsg_deleted, type = "description", order=100},
							},
						},
					},
				},
			
			grpapp = {
				name = "Color & Size",
				order=40, type = "group", dialogInline = true, hidden = not(vexpower_optionTab_Markers_openTab["appearance"]),
				args = {
					width = {
						name = "Size",
						order=1, type = "range",
						desc = "Sets the width of the marker",
						step = 1, min = 1, max = 10,
						set = function(info,val) vexpower_parameters["frame"]["energy"]["markers"]["width"]=val vexpower_initialize(true) end,
						get = function() return vexpower_parameters["frame"]["energy"]["markers"]["width"] end,
						},
					borderwidth = {
						name = "Border Size",
						order=2, type = "range",
						desc = "Sets the width of the border",
						step = 1, min = 1, max = 10,
						set = function(info,val) vexpower_parameters["frame"]["energy"]["markers"]["border"]["size"]=val vexpower_initialize(true) end,
						get = function() return vexpower_parameters["frame"]["energy"]["markers"]["border"]["size"] end,
						},
					space1 = {name =" ", type = "description", order=3},
					
					bgcolor = {
						name = "Background Color",
						order=10, type = "color", hasAlpha=false,
						desc = "Set the marker's background color",
						disabled = vexpower_parameters["frame"]["energy"]["markers"]["color_likebg"],
						set = function(info,r,g,b,a)
							vexpower_parameters["frame"]["energy"]["markers"]["color"]["r"]=r
							vexpower_parameters["frame"]["energy"]["markers"]["color"]["g"]=g
							vexpower_parameters["frame"]["energy"]["markers"]["color"]["b"]=b
							vexpower_initialize(true) end,
						get = function() return vexpower_parameters["frame"]["energy"]["markers"]["color"]["r"],
							vexpower_parameters["frame"]["energy"]["markers"]["color"]["g"],
							vexpower_parameters["frame"]["energy"]["markers"]["color"]["b"] end,
						},
					bgcolor_likebar = {
						name = "Use powerbar's color",
						order=11, type = "toggle",
						set = function(self,key) vexpower_parameters["frame"]["energy"]["markers"]["color_likebg"]=key vexpower_initialize(true) end,
						get = function() return vexpower_parameters["frame"]["energy"]["markers"]["color_likebg"] end,
						},
					bgopacity = {
						name = "Opacity %",
						order=12, type = "range",
						desc = "Sets the opacity",
						step = 5, min = 0, max = 100,
						set = function(info,val) vexpower_parameters["frame"]["energy"]["markers"]["color"]["a"]=val/100 vexpower_initialize(true) end,
						get = function() return vexpower_parameters["frame"]["energy"]["markers"]["color"]["a"]*100 end
						},	
					space2 = {name =" ", type = "description", order=13},
					
					borderborder = {
						name = "Border Color",
						order=20, type = "color", hasAlpha=false,
						desc = "Set the marker's border color",
						disabled = vexpower_parameters["frame"]["energy"]["markers"]["border"]["color_likebg"],
						set = function(info,r,g,b,a)
							vexpower_parameters["frame"]["energy"]["markers"]["border"]["color"]["r"]=r
							vexpower_parameters["frame"]["energy"]["markers"]["border"]["color"]["g"]=g
							vexpower_parameters["frame"]["energy"]["markers"]["border"]["color"]["b"]=b
							vexpower_initialize(true) end,
						get = function() return vexpower_parameters["frame"]["energy"]["markers"]["border"]["color"]["r"],
							vexpower_parameters["frame"]["energy"]["markers"]["border"]["color"]["g"],
							vexpower_parameters["frame"]["energy"]["markers"]["border"]["color"]["b"] end,
						},
					bordercolor_likebar = {
						name = "Use powerbar's color",
						order=21, type = "toggle",
						set = function(self,key) vexpower_parameters["frame"]["energy"]["markers"]["border"]["color_likebg"]=key vexpower_initialize(true) end,
						get = function() return vexpower_parameters["frame"]["energy"]["markers"]["border"]["color_likebg"] end,
						},
					borderopacity = {
						name = "Opacity %",
						order=22, type = "range",
						desc = "Sets the opacity",
						step = 5, min = 0, max = 100,
						set = function(info,val) vexpower_parameters["frame"]["energy"]["markers"]["border"]["color"]["a"]=val/100 vexpower_initialize(true) end,
						get = function() return vexpower_parameters["frame"]["energy"]["markers"]["border"]["color"]["a"]*100 end
						},
					},
				},
			}
		}
end
