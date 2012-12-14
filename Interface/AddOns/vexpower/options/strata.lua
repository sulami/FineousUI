function vexpower.panel_strata()
	local markers_text = " "
	if vexpower_parameters["frame"]["strata"]["markers"] < vexpower_parameters["frame"]["strata"]["powerbar"] then
		markers_text = "|CFFC41F3BWarning:|r The PowerBar is above the markers. Therefore the markers won't be shown !"
	end
	
	local textfields_text = " "
	if vexpower_parameters["frame"]["strata"]["text"] < vexpower_parameters["frame"]["strata"]["powerbar"] or vexpower_parameters["frame"]["strata"]["text"] < vexpower_parameters["frame"]["strata"]["cps"] then
		textfields_text = "|CFFC41F3BWarning:|r The PowerBar or/and the ComboPointBar are above the textfields. Therefore the textfields might not be shown !"
	end
	
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
			
			grpstrata = {
				name = "FrameStrata",
				order=10, type ="group", dialogInline = true,
				args = {
					info = {name ="FrameStrata defines in which layer a frame is shown. By changing these values you can set a frame to be in front of other frames, similar to a priority system. Frames with a high value (e.g. 'DIALOG') will always be in front of other frames with a lower frameStata value (e.g. 'MEDIUM')\n", type = "description", order=2},
					
					powerbar = {
						name = "PowerBar",
						order=10, type = "select", style = "dropdown",
						values = vexpower_optionTab_Strata_values, width="double",
						set = function(self,val) vexpower_parameters["frame"]["strata"]["powerbar"] = val vexpower_initialize(true) end,
						get = function() return vexpower_parameters["frame"]["strata"]["powerbar"] end,
						},
					space1 = {name =" ", type = "description", order=11},
					cps = {
						name = "ComboPointBar",
						order=20, type = "select", style = "dropdown",
						values = vexpower_optionTab_Strata_values, width="double",
						set = function(self,val) vexpower_parameters["frame"]["strata"]["cps"] = val vexpower_initialize(true) end,
						get = function() return vexpower_parameters["frame"]["strata"]["cps"] end,
						},
					space2 = {name =" ", type = "description", order=21},
					markers = {
						name = "Markers",
						order=30, type = "select", style = "dropdown",
						values = vexpower_optionTab_Strata_values, width="double",
						set = function(self,val) vexpower_parameters["frame"]["strata"]["markers"] = val vexpower_initialize(true) end,
						get = function() return vexpower_parameters["frame"]["strata"]["markers"] end,
						},
					space3 = {name = markers_text, type = "description", order=31},
					text = {
						name = "Textfields",
						order=40, type = "select", style = "dropdown",
						values = vexpower_optionTab_Strata_values, width="double",
						set = function(self,val) vexpower_parameters["frame"]["strata"]["text"] = val vexpower_initialize(true) end,
						get = function() return vexpower_parameters["frame"]["strata"]["text"] end,
						},
					space4 = {name = textfields_text, type = "description", order=41},
					},
				},
			}
		}
end