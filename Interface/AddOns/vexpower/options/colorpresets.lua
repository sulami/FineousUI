function vexpower.panel_colorpresets()	
	return {
		type = "group",
		args = {
			grpinfo = {
				name = "Information",
				order=1, type ="group", dialogInline = true,
				args = {
					info = {name = "Color Sets contain colors for the ComboPointBar. They can be loaded manually in this optionpanel or for new chars automatically depending on their class. To allow the addon to automatically load a Color Set for a specific class go to the option panel 'Global Defaults'", type = "description", order=1},
					},
				},
			space1 = {name = " ", type = "description", order=2, fontSize="medium"},
			grpload = {
				name = "Color Sets",
				order=3, type ="group", dialogInline = true,
				args = {
					profile = {
						name = "Select a saved Color Set to edit",
						order=1, type = "select", style = "dropdown", width="double",
						values = vexpower_optionTab_ColorSets_getList(true),
						set = function(self,key) vexpower_optionTab_ColorSets_edit_name = key vexpower_optionTab_ColorSets_save_name = key vexpower_optionTab_ColorSets_save_name_prev = key vexpower_optionTab_ColorSets_gatherData() vexpower_initialize(true) end,
						get = function() return vexpower_optionTab_ColorSets_edit_name end,
						},
					new = {
						name = "Create new set",
						order=2, type = "execute",
						func = function(info,val) vexpower_optionTab_ColorSets_createNew() vexpower_initialize(true) end,
						},
					info = {name ="Warning: Changes made to a Color Set will not be automatically saved!", type = "description", order=3},
					framecolors1 = {
						name = "Color of the 1st 'ComboPoint'", width="double",
						order=110, type = "color", hasAlpha=false,
						set = function(info,r,g,b) 
							vexpower_optionTab_ColorSets_colorSet["1"]["r"] = r
							vexpower_optionTab_ColorSets_colorSet["1"]["g"] = g
							vexpower_optionTab_ColorSets_colorSet["1"]["b"] = b end,
						get = function() return
							vexpower_optionTab_ColorSets_colorSet["1"]["r"],
							vexpower_optionTab_ColorSets_colorSet["1"]["g"],
							vexpower_optionTab_ColorSets_colorSet["1"]["b"] end,
						},
					opacity1 = {
						name = "Opacity %",
						order=111, type = "range",
						desc = "Sets the opacity",
						step = 5, min = 0, max = 100,
						set = function(info,val) vexpower_optionTab_ColorSets_colorSet["1"]["a"] = val/100 end,
						get = function() return vexpower_optionTab_ColorSets_colorSet["1"]["a"]*100 end
						},
					framecolors2 = {
						name = "Color of the 2nd 'ComboPoint'", width="double",
						order=120, type = "color", hasAlpha=false,
						set = function(info,r,g,b) 
							vexpower_optionTab_ColorSets_colorSet["2"]["r"] = r
							vexpower_optionTab_ColorSets_colorSet["2"]["g"] = g
							vexpower_optionTab_ColorSets_colorSet["2"]["b"] = b end,
						get = function() return
							vexpower_optionTab_ColorSets_colorSet["2"]["r"],
							vexpower_optionTab_ColorSets_colorSet["2"]["g"],
							vexpower_optionTab_ColorSets_colorSet["2"]["b"] end,
						},
					opacity2 = {
						name = "Opacity %",
						order=121, type = "range",
						desc = "Sets the opacity",
						step = 5, min = 0, max = 100,
						set = function(info,val) vexpower_optionTab_ColorSets_colorSet["2"]["a"] = val/100 end,
						get = function() return vexpower_optionTab_ColorSets_colorSet["2"]["a"]*100 end
						},
					framecolors3 = {
						name = "Color of the 3rd 'ComboPoint'", width="double",
						order=130, type = "color", hasAlpha=false,
						set = function(info,r,g,b) 
							vexpower_optionTab_ColorSets_colorSet["3"]["r"] = r
							vexpower_optionTab_ColorSets_colorSet["3"]["g"] = g
							vexpower_optionTab_ColorSets_colorSet["3"]["b"] = b end,
						get = function() return
							vexpower_optionTab_ColorSets_colorSet["3"]["r"],
							vexpower_optionTab_ColorSets_colorSet["3"]["g"],
							vexpower_optionTab_ColorSets_colorSet["3"]["b"] end,
						},
					opacity3 = {
						name = "Opacity %",
						order=131, type = "range",
						desc = "Sets the opacity",
						step = 5, min = 0, max = 100,
						set = function(info,val) vexpower_optionTab_ColorSets_colorSet["3"]["a"] = val/100 end,
						get = function() return vexpower_optionTab_ColorSets_colorSet["3"]["a"]*100 end
						},
					framecolors4 = {
						name = "Color of the 4th 'ComboPoint'", width="double",
						order=140, type = "color", hasAlpha=false,
						set = function(info,r,g,b) 
							vexpower_optionTab_ColorSets_colorSet["4"]["r"] = r
							vexpower_optionTab_ColorSets_colorSet["4"]["g"] = g
							vexpower_optionTab_ColorSets_colorSet["4"]["b"] = b end,
						get = function() return
							vexpower_optionTab_ColorSets_colorSet["4"]["r"],
							vexpower_optionTab_ColorSets_colorSet["4"]["g"],
							vexpower_optionTab_ColorSets_colorSet["4"]["b"] end,
						},
					opacity4 = {
						name = "Opacity %",
						order=141, type = "range",
						desc = "Sets the opacity",
						step = 5, min = 0, max = 100,
						set = function(info,val) vexpower_optionTab_ColorSets_colorSet["4"]["a"] = val/100 end,
						get = function() return vexpower_optionTab_ColorSets_colorSet["4"]["a"]*100 end
						},
					framecolors5 = {
						name = "Color of the 5th 'ComboPoint'", width="double",
						order=150, type = "color", hasAlpha=false,
						set = function(info,r,g,b) 
							vexpower_optionTab_ColorSets_colorSet["5"]["r"] = r
							vexpower_optionTab_ColorSets_colorSet["5"]["g"] = g
							vexpower_optionTab_ColorSets_colorSet["5"]["b"] = b end,
						get = function() return
							vexpower_optionTab_ColorSets_colorSet["5"]["r"],
							vexpower_optionTab_ColorSets_colorSet["5"]["g"],
							vexpower_optionTab_ColorSets_colorSet["5"]["b"] end,
						},
					opacity5 = {
						name = "Opacity %",
						order=151, type = "range",
						desc = "Sets the opacity",
						step = 5, min = 0, max = 100,
						set = function(info,val) vexpower_optionTab_ColorSets_colorSet["5"]["a"] = val/100 end,
						get = function() return vexpower_optionTab_ColorSets_colorSet["5"]["a"]*100 end
						},
					framecolors6 = {
						name = "Color of the 6th 'ComboPoint'", width="double",
						order=160, type = "color", hasAlpha=false,
						set = function(info,r,g,b) 
							vexpower_optionTab_ColorSets_colorSet["6"]["r"] = r
							vexpower_optionTab_ColorSets_colorSet["6"]["g"] = g
							vexpower_optionTab_ColorSets_colorSet["6"]["b"] = b end,
						get = function() return
							vexpower_optionTab_ColorSets_colorSet["6"]["r"],
							vexpower_optionTab_ColorSets_colorSet["6"]["g"],
							vexpower_optionTab_ColorSets_colorSet["6"]["b"] end,
						},
					opacity6 = {
						name = "Opacity %",
						order=161, type = "range",
						desc = "Sets the opacity",
						step = 5, min = 0, max = 100,
						set = function(info,val) vexpower_optionTab_ColorSets_colorSet["6"]["a"] = val/100 end,
						get = function() return vexpower_optionTab_ColorSets_colorSet["6"]["a"]*100 end
						},
					framecolorsChange = {
						name = "Color of the 'FadeOut'-effect", width="double",
						order=170, type = "color", hasAlpha=false,
						set = function(info,r,g,b) 
							vexpower_optionTab_ColorSets_colorSet["used"]["r"] = r
							vexpower_optionTab_ColorSets_colorSet["used"]["g"] = g
							vexpower_optionTab_ColorSets_colorSet["used"]["b"] = b end,
						get = function() return
							vexpower_optionTab_ColorSets_colorSet["used"]["r"],
							vexpower_optionTab_ColorSets_colorSet["used"]["g"],
							vexpower_optionTab_ColorSets_colorSet["used"]["b"] end,
						},
					opacityChange = {
						name = "Opacity %",
						order=171, type = "range",
						desc = "Sets the opacity",
						step = 5, min = 0, max = 100,
						set = function(info,val) vexpower_optionTab_ColorSets_colorSet["used"]["a"] = val/100 end,
						get = function() return vexpower_optionTab_ColorSets_colorSet["used"]["a"]*100 end
						},
					framecolorsX = {
						name = "Color of the 'Recolor'-effect", width="double",
						order=180, type = "color", hasAlpha=false,
						set = function(info,r,g,b) 
							vexpower_optionTab_ColorSets_colorSet["change"]["r"] = r
							vexpower_optionTab_ColorSets_colorSet["change"]["g"] = g
							vexpower_optionTab_ColorSets_colorSet["change"]["b"] = b end,
						get = function() return
							vexpower_optionTab_ColorSets_colorSet["change"]["r"],
							vexpower_optionTab_ColorSets_colorSet["change"]["g"],
							vexpower_optionTab_ColorSets_colorSet["change"]["b"] end,
						},
					opacityX = {
						name = "Opacity %",
						order=181, type = "range",
						desc = "Sets the opacity",
						step = 5, min = 0, max = 100,
						set = function(info,val) vexpower_optionTab_ColorSets_colorSet["change"]["a"] = val/100 end,
						get = function() return vexpower_optionTab_ColorSets_colorSet["change"]["a"]*100 end
						},
					space1 = {name = " ", type = "description", order=200, fontSize="medium"},
					name = {
						name = "Name",
						order=200, type = "input", multiline = false,
						validate = function (info, val)
							if vexpower_optionTab_Profiles_checkName(val) then return true
							else return "ERROR - "..val.." is not a valid name" end
							end,
						set = function(info,val) vexpower_optionTab_ColorSets_save_name = val vexpower_initialize(true) end,
						get = function() return vexpower_optionTab_ColorSets_save_name end,
						},
					save = {
						name = "save",
						order=203, type = "execute",
						func = function(info,val) vexpower_optionTab_ColorSets_save() vexpower_initialize(true) end,
						confirm = vexpower_optionTab_ColorSets_existsColorSet(),
						confirmText = "A color set allready exists with that name. Do you want to overwrite this color set?"
						},
					space2 = {name = " ", type = "description", order=300, fontSize="medium"},
					load = {
						name = "load",
						order=301, type = "execute",
						func = function(info,val) vexpower_optionTab_ColorSets_load() vexpower_initialize(true) end,
						},
					update = {
						name = "update",
						order=302, type = "execute",
						func = function(info,val) vexpower_optionTab_ColorSets_save(true) vexpower_initialize(true) end,
						},
					delete = {
						name = "delete",
						order=303, type = "execute",
						func = function(info,val) vexpower_optionTab_ColorSets_delete() vexpower_initialize(true) end,
						confirm = true,
						confirmText = "Are you sure you want to delete this color set?"
						},
					status = {name = vexpower_optionTab_ColorSets_statusMsg, type = "description", order=500, fontSize="medium"},
					},
				},
			}
		}
end