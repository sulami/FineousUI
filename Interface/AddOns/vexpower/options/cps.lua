function vexpower.panel_cps()
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
					position = {
						name = "Position & Size",
						order=1, type = "execute",
						func = function(info,val) vexpower_optionTab_CPs_toggleTab("layout") vexpower_initialize(true) end,
						},
					powerpool = {
						name = "Colors",
						order=2, type = "execute", width="half",
						func = function(info,val) vexpower_optionTab_CPs_toggleTab("background") vexpower_initialize(true) end,
						},
					background = {
						name = "Used",
						order=4, type = "execute", width="half",
						func = function(info,val) vexpower_optionTab_CPs_toggleTab("fadeout") vexpower_initialize(true) end,
						},
					usedenergy = {
						name = "Recolor",
						order=5, type = "execute", width="half",
						func = function(info,val) vexpower_optionTab_CPs_toggleTab("change") vexpower_initialize(true) end,
						},
					change = {
						name = "Sound",
						order=6, type = "execute", width="half",
						func = function(info,val) vexpower_optionTab_CPs_toggleTab("sound") vexpower_initialize(true) end,
						},
					},
				},
			spaceoptiontabs = {name =" ", type = "description", order=6},
			
			grpPosition = {
				name = "Position",
				order=10, type ="group", dialogInline = true, hidden = not(vexpower_optionTab_CPs_openTab["layout"]),
				args = {
					activate = {
						name = "Position the ComboPointBar relative to the PowerBar",
						order=1, type = "toggle", width="full",
						set = function(self,key) vexpower_parameters["frame"]["combo"]["clipToPower"]["toggle"]=key vexpower_initialize(true) end,
						get = function() return vexpower_parameters["frame"]["combo"]["clipToPower"]["toggle"] end,
						},
					info = {name = "The ComboPointbar contains all ComboPoints. This feature binds the two bars together. So whenever either one of them is moved, the other is moved also. Deactivating this feature lets you choose an absolute position for the ComboPointBar.", type ="description", order=2},
					space1 = {name = " ", type ="description", order=3, hidden=vexpower_parameters["frame"]["combo"]["clipToPower"]["toggle"]},
					frameposx = {
						name = "X Position",
						order=6, type = "range",
						desc = "Sets the x position of the frame",
						step = 1, min = -2000, max = 2000,
						set = function(info,val) vexpower_parameters["frame"]["combo"]["clipToPower"]["x"]=val vexpower_initialize(true) end,
						get = function() return vexpower_parameters["frame"]["combo"]["clipToPower"]["x"] end
						},
					frameposy = {
						name = "Y Position",
						order=7, type = "range",
						desc = "Sets the y position of the frame",
						step = 1, min = -2000, max = 2000,
						set = function(info,val) vexpower_parameters["frame"]["combo"]["clipToPower"]["y"]=val vexpower_initialize(true) end,
						get = function() return vexpower_parameters["frame"]["combo"]["clipToPower"]["y"] end
						},
					space2 = {name =" ", type = "description", order=8},
					frameanchorFrame = {
						name = "Frame Anchor",
						order=9, type = "select", style = "dropdown",
						desc = "Sets the achor of the frame",
						values = {
							["CENTER"]="Center",
							["BOTTOM"]="Bottom",
							["TOP"]="Top",
							["LEFT"]="Left",
							["RIGHT"]="Right",
							["BOTTOMLEFT"]="Bottomleft",
							["BOTTOMRIGHT"]="Bottomright",
							["TOPLEFT"]="Topleft",
							["TOPRIGHT"]="Topright"},
						set = function(self,key) vexpower_parameters["frame"]["combo"]["clipToPower"]["anchorFrame"]=key vexpower_initialize(true) end,
						get = function() return vexpower_parameters["frame"]["combo"]["clipToPower"]["anchorFrame"] end,
						},
					frameanchorScreen = {
						name = "Screen Anchor",
						order=10, type = "select", style = "dropdown",
						desc = "Sets the achor of the screen",
						values = {
							["CENTER"]="Center",
							["BOTTOM"]="Bottom",
							["TOP"]="Top",
							["LEFT"]="Left",
							["RIGHT"]="Right",
							["BOTTOMLEFT"]="Bottomleft",
							["BOTTOMRIGHT"]="Bottomright",
							["TOPLEFT"]="Topleft",
							["TOPRIGHT"]="Topright"},
						set = function(self,key) vexpower_parameters["frame"]["combo"]["clipToPower"]["anchor"]=key vexpower_initialize(true) end,
						get = function() return vexpower_parameters["frame"]["combo"]["clipToPower"]["anchor"] end,
						},
					},
				},
			grpModeSelection = {
				name = "Mode Selection",
				order=11, type ="group", dialogInline = true, hidden = not(vexpower_optionTab_CPs_openTab["layout"]),
				args = {
					activate = {
						name = "Activate Intelligent-CP-Mode",
						order=1, type = "toggle", width="full",
						set = function(self,key) vexpower_parameters["frame"]["combo"]["intMode"]=key vexpower_initialize(true) end,
						get = function() return vexpower_parameters["frame"]["combo"]["intMode"] end,
						},
					info = {name = "The Auto-CP-Mode only needs little input to automatically calculate the position and the width of every single ComboPoint. Deactivating this feature lets you set all ComboPoints by yourself which needs plenty of input.\n", type ="description", order=2},
					},
				},
			grpAutoMode = {
				name = "Intelligent-CP-Mode",
				order=12, type ="group", dialogInline = true, hidden = not(vexpower_optionTab_CPs_openTab["layout"]) or not(vexpower_parameters["frame"]["combo"]["intMode"]),
				args = {
					infopic={name = "", type="description", order=3, image="Interface\\AddOns\\vexpower\\images\\options_cps.tga",
						imageWidth=512, imageHeight=128},
					space1 = {name = "", type ="description", order=4},
					framex = {
						name = "X-Distance",
						order=10, type = "range",
						desc = "Sets the distance of the energybar to the combopoints",
						step = 1, min = -400, max = 400,
						set = function(info,val) vexpower_parameters["frame"]["combo"]["measure"]["offset"]=val vexpower_initialize(true) end,
						get = function() return vexpower_parameters["frame"]["combo"]["measure"]["offset"] end
						},
					frameheight = {
						name = "Height",
						order=16, type = "range",
						desc = "Height of the combopoints",
						step = 1, min = 1, max = 400,
						set = function(info,val) vexpower_parameters["frame"]["combo"]["measure"]["height"]=val vexpower_initialize(true) end,
						get = function() return vexpower_parameters["frame"]["combo"]["measure"]["height"] end
						},
					framegap = {
						name = "Gap",
						order=17, type = "range",
						desc = "Distance between the individual combopoints",
						step = 1, min = 1, max = 400,
						set = function(info,val) vexpower_parameters["frame"]["combo"]["measure"]["gap"]=val vexpower_initialize(true) end,
						get = function() return vexpower_parameters["frame"]["combo"]["measure"]["gap"] end
						},
					space3 = {name = "", type ="description", order=20},
					},
				},
			grpManualMode = {
				name = "Manual-Mode",
				order=13, type ="group", dialogInline = true, hidden = not(vexpower_optionTab_CPs_openTab["layout"]) or vexpower_parameters["frame"]["combo"]["intMode"],
				args = {
					info = {name = "You can set up a 'general'-setting for the ComboPoints. This setting contains the size and position of 6 ComboPoints and will be used as long as no other setting will overwrite it. Other Settings can be activated when you have another amount of maximum ComboPoints.\n", type ="description", order=1},
					
					profile = {
						name = "Config for:",
						order=10, type = "select", style = "dropdown", width="double",
						values = vexpower_optionTab_CPs_getList(),
						set = function(self,val) vexpower_optionTab_CPs_configCPsetting = val vexpower_initialize(true) end,
						get = function() return vexpower_optionTab_CPs_configCPsetting end,
						},
						
					config = {
						name = " ",
						order=20, type ="group", dialogInline = true,
						args = {
							use = {
								name = "Use these settings instead of the 'general'-setting when you have "..vexpower_optionTab_CPs_configCPsetting.." ComboPoints",
								order=1, type = "toggle", width="full", hidden = vexpower_optionTab_CPs_configCPsetting=="6",
								set = function(info,val) vexpower_optionTab_CPs_setSize("change",val) vexpower_initialize(true) end,
								get = function() return vexpower_optionTab_CPs_getSize("change") end,
								},
							space1 = {name =" ", type = "description", order=2, hidden = vexpower_optionTab_CPs_configCPsetting=="6"},
							
							framegap = {
								name = "Width",
								order=5, type = "range",
								step = 1, min = 1, max = 400,
								set = function(info,val) vexpower_optionTab_CPs_setSize("width", val) vexpower_initialize(true) end,
								get = function() return vexpower_optionTab_CPs_getSize("width") end
								},
							frameheight = {
								name = "Height",
								order=6, type = "range",
								step = 1, min = 1, max = 400,
								set = function(info,val) vexpower_optionTab_CPs_setSize("height", val) vexpower_initialize(true) end,
								get = function() return vexpower_optionTab_CPs_getSize("height") end
								},
							space2 = {name ="\n", type = "description", order=7},
							
							
							grp1 = {
								name = "|CFF00FF001st|r ComboPoint",
								order=100, type ="group", dialogInline = true, hidden = vexpower_optionTab_CPs_getHiddenCP(1),
								args = {
									frameposx = {
										name = "X Position",
										order=1, type = "range",
										desc = "Sets the x position of the frame",
										step = 1, min = -2000, max = 2000,
										set = function(info,val) vexpower_optionTab_CPs_setPos("1", "x", val) vexpower_initialize(true) end,
										get = function() return vexpower_optionTab_CPs_getPos("1", "x") end
										},
									frameposy = {
										name = "Y Position",
										order=2, type = "range",
										desc = "Sets the y position of the frame",
										step = 1, min = -2000, max = 2000,
										set = function(info,val) vexpower_optionTab_CPs_setPos("1", "y", val) vexpower_initialize(true) end,
										get = function() return vexpower_optionTab_CPs_getPos("1", "y") end
										},
									space1 = {name =" ", type = "description", order=13},
									frameanchorFrame = {
										name = "Frame Anchor",
										order=14, type = "select", style = "dropdown",
										desc = "Sets the achor of the frame",
										values = {
											["CENTER"]="Center",
											["BOTTOM"]="Bottom",
											["TOP"]="Top",
											["LEFT"]="Left",
											["RIGHT"]="Right",
											["BOTTOMLEFT"]="Bottomleft",
											["BOTTOMRIGHT"]="Bottomright",
											["TOPLEFT"]="Topleft",
											["TOPRIGHT"]="Topright"},
										set = function(info,val) vexpower_optionTab_CPs_setPos("1", "anchor", val) vexpower_initialize(true) end,
										get = function() return vexpower_optionTab_CPs_getPos("1", "anchor") end
										},
									frameanchorScreen = {
										name = "Screen Anchor",
										order=15, type = "select", style = "dropdown",
										desc = "Sets the achor of the screen",
										values = {
											["CENTER"]="Center",
											["BOTTOM"]="Bottom",
											["TOP"]="Top",
											["LEFT"]="Left",
											["RIGHT"]="Right",
											["BOTTOMLEFT"]="Bottomleft",
											["BOTTOMRIGHT"]="Bottomright",
											["TOPLEFT"]="Topleft",
											["TOPRIGHT"]="Topright"},
										set = function(info,val) vexpower_optionTab_CPs_setPos("1", "anchorFrame", val) vexpower_initialize(true) end,
										get = function() return vexpower_optionTab_CPs_getPos("1", "anchorFrame") end
										},
									},
								},
							space_1 = {name =" ", type = "description", order=101},
							
							grp2 = {
								name = "|CFF00FF002nd|r ComboPoint",
								order=200, type ="group", dialogInline = true, hidden = vexpower_optionTab_CPs_getHiddenCP(2),
								args = {
									frameposx = {
										name = "X Position",
										order=1, type = "range",
										desc = "Sets the x position of the frame",
										step = 1, min = -2000, max = 2000,
										set = function(info,val) vexpower_optionTab_CPs_setPos("2", "x", val) vexpower_initialize(true) end,
										get = function() return vexpower_optionTab_CPs_getPos("2", "x") end
										},
									frameposy = {
										name = "Y Position",
										order=2, type = "range",
										desc = "Sets the y position of the frame",
										step = 1, min = -2000, max = 2000,
										set = function(info,val) vexpower_optionTab_CPs_setPos("2", "y", val) vexpower_initialize(true) end,
										get = function() return vexpower_optionTab_CPs_getPos("2", "y") end
										},
									space1 = {name =" ", type = "description", order=13},
									frameanchorFrame = {
										name = "Frame Anchor",
										order=14, type = "select", style = "dropdown",
										desc = "Sets the achor of the frame",
										values = {
											["CENTER"]="Center",
											["BOTTOM"]="Bottom",
											["TOP"]="Top",
											["LEFT"]="Left",
											["RIGHT"]="Right",
											["BOTTOMLEFT"]="Bottomleft",
											["BOTTOMRIGHT"]="Bottomright",
											["TOPLEFT"]="Topleft",
											["TOPRIGHT"]="Topright"},
										set = function(info,val) vexpower_optionTab_CPs_setPos("2", "anchor", val) vexpower_initialize(true) end,
										get = function() return vexpower_optionTab_CPs_getPos("2", "anchor") end
										},
									frameanchorScreen = {
										name = "Screen Anchor",
										order=15, type = "select", style = "dropdown",
										desc = "Sets the achor of the screen",
										values = {
											["CENTER"]="Center",
											["BOTTOM"]="Bottom",
											["TOP"]="Top",
											["LEFT"]="Left",
											["RIGHT"]="Right",
											["BOTTOMLEFT"]="Bottomleft",
											["BOTTOMRIGHT"]="Bottomright",
											["TOPLEFT"]="Topleft",
											["TOPRIGHT"]="Topright"},
										set = function(info,val) vexpower_optionTab_CPs_setPos("2", "anchorFrame", val) vexpower_initialize(true) end,
										get = function() return vexpower_optionTab_CPs_getPos("2", "anchorFrame") end
										},
									},
								},
							space_2 = {name =" ", type = "description", order=201},
							grp3 = {
								name = "|CFF00FF003rd|r ComboPoint",
								order=300, type ="group", dialogInline = true, hidden = vexpower_optionTab_CPs_getHiddenCP(3),
								args = {
									frameposx = {
										name = "X Position",
										order=1, type = "range",
										desc = "Sets the x position of the frame",
										step = 1, min = -2000, max = 2000,
										set = function(info,val) vexpower_optionTab_CPs_setPos("3", "x", val) vexpower_initialize(true) end,
										get = function() return vexpower_optionTab_CPs_getPos("3", "x") end
										},
									frameposy = {
										name = "Y Position",
										order=2, type = "range",
										desc = "Sets the y position of the frame",
										step = 1, min = -2000, max = 2000,
										set = function(info,val) vexpower_optionTab_CPs_setPos("3", "y", val) vexpower_initialize(true) end,
										get = function() return vexpower_optionTab_CPs_getPos("3", "y") end
										},
									space1 = {name =" ", type = "description", order=13},
									frameanchorFrame = {
										name = "Frame Anchor",
										order=14, type = "select", style = "dropdown",
										desc = "Sets the achor of the frame",
										values = {
											["CENTER"]="Center",
											["BOTTOM"]="Bottom",
											["TOP"]="Top",
											["LEFT"]="Left",
											["RIGHT"]="Right",
											["BOTTOMLEFT"]="Bottomleft",
											["BOTTOMRIGHT"]="Bottomright",
											["TOPLEFT"]="Topleft",
											["TOPRIGHT"]="Topright"},
										set = function(info,val) vexpower_optionTab_CPs_setPos("3", "anchor", val) vexpower_initialize(true) end,
										get = function() return vexpower_optionTab_CPs_getPos("3", "anchor") end
										},
									frameanchorScreen = {
										name = "Screen Anchor",
										order=15, type = "select", style = "dropdown",
										desc = "Sets the achor of the screen",
										values = {
											["CENTER"]="Center",
											["BOTTOM"]="Bottom",
											["TOP"]="Top",
											["LEFT"]="Left",
											["RIGHT"]="Right",
											["BOTTOMLEFT"]="Bottomleft",
											["BOTTOMRIGHT"]="Bottomright",
											["TOPLEFT"]="Topleft",
											["TOPRIGHT"]="Topright"},
										set = function(info,val) vexpower_optionTab_CPs_setPos("3", "anchorFrame", val) vexpower_initialize(true) end,
										get = function() return vexpower_optionTab_CPs_getPos("3", "anchorFrame") end
										},
									},
								},
							space_3 = {name =" ", type = "description", order=301},
							grp4 = {
								name = "|CFF00FF004th|r ComboPoint",
								order=400, type ="group", dialogInline = true, hidden = vexpower_optionTab_CPs_getHiddenCP(4),
								args = {
									frameposx = {
										name = "X Position",
										order=1, type = "range",
										desc = "Sets the x position of the frame",
										step = 1, min = -2000, max = 2000,
										set = function(info,val) vexpower_optionTab_CPs_setPos("4", "x", val) vexpower_initialize(true) end,
										get = function() return vexpower_optionTab_CPs_getPos("4", "x") end
										},
									frameposy = {
										name = "Y Position",
										order=2, type = "range",
										desc = "Sets the y position of the frame",
										step = 1, min = -2000, max = 2000,
										set = function(info,val) vexpower_optionTab_CPs_setPos("4", "y", val) vexpower_initialize(true) end,
										get = function() return vexpower_optionTab_CPs_getPos("4", "y") end
										},
									space1 = {name =" ", type = "description", order=13},
									frameanchorFrame = {
										name = "Frame Anchor",
										order=14, type = "select", style = "dropdown",
										desc = "Sets the achor of the frame",
										values = {
											["CENTER"]="Center",
											["BOTTOM"]="Bottom",
											["TOP"]="Top",
											["LEFT"]="Left",
											["RIGHT"]="Right",
											["BOTTOMLEFT"]="Bottomleft",
											["BOTTOMRIGHT"]="Bottomright",
											["TOPLEFT"]="Topleft",
											["TOPRIGHT"]="Topright"},
										set = function(info,val) vexpower_optionTab_CPs_setPos("4", "anchor", val) vexpower_initialize(true) end,
										get = function() return vexpower_optionTab_CPs_getPos("4", "anchor") end
										},
									frameanchorScreen = {
										name = "Screen Anchor",
										order=15, type = "select", style = "dropdown",
										desc = "Sets the achor of the screen",
										values = {
											["CENTER"]="Center",
											["BOTTOM"]="Bottom",
											["TOP"]="Top",
											["LEFT"]="Left",
											["RIGHT"]="Right",
											["BOTTOMLEFT"]="Bottomleft",
											["BOTTOMRIGHT"]="Bottomright",
											["TOPLEFT"]="Topleft",
											["TOPRIGHT"]="Topright"},
										set = function(info,val) vexpower_optionTab_CPs_setPos("4", "anchorFrame", val) vexpower_initialize(true) end,
										get = function() return vexpower_optionTab_CPs_getPos("4", "anchorFrame") end
										},
									},
								},
							space_4 = {name =" ", type = "description", order=401},
							grp5 = {
								name = "|CFF00FF005th|r ComboPoint",
								order=500, type ="group", dialogInline = true, hidden = vexpower_optionTab_CPs_getHiddenCP(5),
								args = {
									frameposx = {
										name = "X Position",
										order=1, type = "range",
										desc = "Sets the x position of the frame",
										step = 1, min = -2000, max = 2000,
										set = function(info,val) vexpower_optionTab_CPs_setPos("5", "x", val) vexpower_initialize(true) end,
										get = function() return vexpower_optionTab_CPs_getPos("5", "x") end
										},
									frameposy = {
										name = "Y Position",
										order=2, type = "range",
										desc = "Sets the y position of the frame",
										step = 1, min = -2000, max = 2000,
										set = function(info,val) vexpower_optionTab_CPs_setPos("5", "y", val) vexpower_initialize(true) end,
										get = function() return vexpower_optionTab_CPs_getPos("5", "y") end
										},
									space1 = {name =" ", type = "description", order=13},
									frameanchorFrame = {
										name = "Frame Anchor",
										order=14, type = "select", style = "dropdown",
										desc = "Sets the achor of the frame",
										values = {
											["CENTER"]="Center",
											["BOTTOM"]="Bottom",
											["TOP"]="Top",
											["LEFT"]="Left",
											["RIGHT"]="Right",
											["BOTTOMLEFT"]="Bottomleft",
											["BOTTOMRIGHT"]="Bottomright",
											["TOPLEFT"]="Topleft",
											["TOPRIGHT"]="Topright"},
										set = function(info,val) vexpower_optionTab_CPs_setPos("5", "anchor", val) vexpower_initialize(true) end,
										get = function() return vexpower_optionTab_CPs_getPos("5", "anchor") end
										},
									frameanchorScreen = {
										name = "Screen Anchor",
										order=15, type = "select", style = "dropdown",
										desc = "Sets the achor of the screen",
										values = {
											["CENTER"]="Center",
											["BOTTOM"]="Bottom",
											["TOP"]="Top",
											["LEFT"]="Left",
											["RIGHT"]="Right",
											["BOTTOMLEFT"]="Bottomleft",
											["BOTTOMRIGHT"]="Bottomright",
											["TOPLEFT"]="Topleft",
											["TOPRIGHT"]="Topright"},
										set = function(info,val) vexpower_optionTab_CPs_setPos("5", "anchorFrame", val) vexpower_initialize(true) end,
										get = function() return vexpower_optionTab_CPs_getPos("5", "anchorFrame") end
										},
									},
								},
							space_5 = {name =" ", type = "description", order=501},
							grp6 = {
								name = "|CFF00FF006th|r ComboPoint",
								order=600, type ="group", dialogInline = true, hidden = vexpower_optionTab_CPs_getHiddenCP(6),
								args = {
									frameposx = {
										name = "X Position",
										order=1, type = "range",
										desc = "Sets the x position of the frame",
										step = 1, min = -2000, max = 2000,
										set = function(info,val) vexpower_optionTab_CPs_setPos("6", "x", val) vexpower_initialize(true) end,
										get = function() return vexpower_optionTab_CPs_getPos("6", "x") end
										},
									frameposy = {
										name = "Y Position",
										order=2, type = "range",
										desc = "Sets the y position of the frame",
										step = 1, min = -2000, max = 2000,
										set = function(info,val) vexpower_optionTab_CPs_setPos("6", "y", val) vexpower_initialize(true) end,
										get = function() return vexpower_optionTab_CPs_getPos("6", "y") end
										},
									space1 = {name =" ", type = "description", order=13},
									frameanchorFrame = {
										name = "Frame Anchor",
										order=14, type = "select", style = "dropdown",
										desc = "Sets the achor of the frame",
										values = {
											["CENTER"]="Center",
											["BOTTOM"]="Bottom",
											["TOP"]="Top",
											["LEFT"]="Left",
											["RIGHT"]="Right",
											["BOTTOMLEFT"]="Bottomleft",
											["BOTTOMRIGHT"]="Bottomright",
											["TOPLEFT"]="Topleft",
											["TOPRIGHT"]="Topright"},
										set = function(info,val) vexpower_optionTab_CPs_setPos("6", "anchor", val) vexpower_initialize(true) end,
										get = function() return vexpower_optionTab_CPs_getPos("6", "anchor") end
										},
									frameanchorScreen = {
										name = "Screen Anchor",
										order=15, type = "select", style = "dropdown",
										desc = "Sets the achor of the screen",
										values = {
											["CENTER"]="Center",
											["BOTTOM"]="Bottom",
											["TOP"]="Top",
											["LEFT"]="Left",
											["RIGHT"]="Right",
											["BOTTOMLEFT"]="Bottomleft",
											["BOTTOMRIGHT"]="Bottomright",
											["TOPLEFT"]="Topleft",
											["TOPRIGHT"]="Topright"},
										set = function(info,val) vexpower_optionTab_CPs_setPos("6", "anchorFrame", val) vexpower_initialize(true) end,
										get = function() return vexpower_optionTab_CPs_getPos("6", "anchorFrame") end
										},
									},
								},
							},
						},
					},
				},
				
				
				
				
				
			grpcolors = {
				name = "Colors",
				order=30, type ="group", dialogInline = true, hidden = not(vexpower_optionTab_CPs_openTab["background"]),
				args = {
					grpcolors = {
						name = "ComboPoints",
						order=1, type ="group", dialogInline = true,
						args = {
							info = {name ="You can also load color sets for the ComboPoints, the 'Used'-effect and the 'Color ComboPoints on X'-effect in the option panel 'Global Color Sets'\n", type = "description", order=1},
							framecolors1 = {
								name = "Color of the 1st 'ComboPoint'", width="double",
								order=110, type = "color", hasAlpha=false,
								set = function(info,r,g,b)
									vexpower_parameters["frame"]["combo"]["bg"]["color"]["1"]["r"]=r
									vexpower_parameters["frame"]["combo"]["bg"]["color"]["1"]["g"]=g
									vexpower_parameters["frame"]["combo"]["bg"]["color"]["1"]["b"]=b
									vexpower_initialize(true) end,
								get = function() return
									vexpower_parameters["frame"]["combo"]["bg"]["color"]["1"]["r"],
									vexpower_parameters["frame"]["combo"]["bg"]["color"]["1"]["g"],
									vexpower_parameters["frame"]["combo"]["bg"]["color"]["1"]["b"] end,
								},
							opacity1 = {
								name = "Opacity %",
								order=111, type = "range",
								desc = "Sets the opacity",
								step = 5, min = 0, max = 100,
								set = function(info,val) vexpower_parameters["frame"]["combo"]["bg"]["color"]["1"]["a"]=val/100 vexpower_initialize(true) end,
								get = function() return vexpower_parameters["frame"]["combo"]["bg"]["color"]["1"]["a"]*100 end
								},
							framecolors2 = {
								name = "Color of the 2nd 'ComboPoint'", width="double",
								order=120, type = "color", hasAlpha=false,
								set = function(info,r,g,b)
									vexpower_parameters["frame"]["combo"]["bg"]["color"]["2"]["r"]=r
									vexpower_parameters["frame"]["combo"]["bg"]["color"]["2"]["g"]=g
									vexpower_parameters["frame"]["combo"]["bg"]["color"]["2"]["b"]=b
									vexpower_initialize(true) end,
								get = function() return
									vexpower_parameters["frame"]["combo"]["bg"]["color"]["2"]["r"],
									vexpower_parameters["frame"]["combo"]["bg"]["color"]["2"]["g"],
									vexpower_parameters["frame"]["combo"]["bg"]["color"]["2"]["b"] end,
								},
							opacity2 = {
								name = "Opacity %",
								order=121, type = "range",
								desc = "Sets the opacity",
								step = 5, min = 0, max = 100,
								set = function(info,val) vexpower_parameters["frame"]["combo"]["bg"]["color"]["2"]["a"]=val/100 vexpower_initialize(true) end,
								get = function() return vexpower_parameters["frame"]["combo"]["bg"]["color"]["2"]["a"]*100 end
								},
							framecolors3 = {
								name = "Color of the 3rd 'ComboPoint'", width="double",
								order=130, type = "color", hasAlpha=false,
								set = function(info,r,g,b)
									vexpower_parameters["frame"]["combo"]["bg"]["color"]["3"]["r"]=r
									vexpower_parameters["frame"]["combo"]["bg"]["color"]["3"]["g"]=g
									vexpower_parameters["frame"]["combo"]["bg"]["color"]["3"]["b"]=b
									vexpower_initialize(true) end,
								get = function() return
									vexpower_parameters["frame"]["combo"]["bg"]["color"]["3"]["r"],
									vexpower_parameters["frame"]["combo"]["bg"]["color"]["3"]["g"],
									vexpower_parameters["frame"]["combo"]["bg"]["color"]["3"]["b"] end,
								},
							opacity3 = {
								name = "Opacity %",
								order=131, type = "range",
								desc = "Sets the opacity",
								step = 5, min = 0, max = 100,
								set = function(info,val) vexpower_parameters["frame"]["combo"]["bg"]["color"]["3"]["a"]=val/100 vexpower_initialize(true) end,
								get = function() return vexpower_parameters["frame"]["combo"]["bg"]["color"]["3"]["a"]*100 end
								},
							framecolors4 = {
								name = "Color of the 4th 'ComboPoint'", width="double",
								order=140, type = "color", hasAlpha=false,
								set = function(info,r,g,b)
									vexpower_parameters["frame"]["combo"]["bg"]["color"]["4"]["r"]=r
									vexpower_parameters["frame"]["combo"]["bg"]["color"]["4"]["g"]=g
									vexpower_parameters["frame"]["combo"]["bg"]["color"]["4"]["b"]=b
									vexpower_initialize(true) end,
								get = function() return
									vexpower_parameters["frame"]["combo"]["bg"]["color"]["4"]["r"],
									vexpower_parameters["frame"]["combo"]["bg"]["color"]["4"]["g"],
									vexpower_parameters["frame"]["combo"]["bg"]["color"]["4"]["b"] end,
								},
							opacity4 = {
								name = "Opacity %",
								order=141, type = "range",
								desc = "Sets the opacity",
								step = 5, min = 0, max = 100,
								set = function(info,val) vexpower_parameters["frame"]["combo"]["bg"]["color"]["4"]["a"]=val/100 vexpower_initialize(true) end,
								get = function() return vexpower_parameters["frame"]["combo"]["bg"]["color"]["4"]["a"]*100 end
								},
							framecolors5 = {
								name = "Color of the 5th 'ComboPoint'", width="double",
								order=150, type = "color", hasAlpha=false,
								set = function(info,r,g,b)
									vexpower_parameters["frame"]["combo"]["bg"]["color"]["5"]["r"]=r
									vexpower_parameters["frame"]["combo"]["bg"]["color"]["5"]["g"]=g
									vexpower_parameters["frame"]["combo"]["bg"]["color"]["5"]["b"]=b
									vexpower_initialize(true) end,
								get = function() return
									vexpower_parameters["frame"]["combo"]["bg"]["color"]["5"]["r"],
									vexpower_parameters["frame"]["combo"]["bg"]["color"]["5"]["g"],
									vexpower_parameters["frame"]["combo"]["bg"]["color"]["5"]["b"] end,
								},
							opacity5 = {
								name = "Opacity %",
								order=151, type = "range",
								desc = "Sets the opacity",
								step = 5, min = 0, max = 100,
								set = function(info,val) vexpower_parameters["frame"]["combo"]["bg"]["color"]["5"]["a"]=val/100 vexpower_initialize(true) end,
								get = function() return vexpower_parameters["frame"]["combo"]["bg"]["color"]["5"]["a"]*100 end
								},
							framecolors6 = {
								name = "Color of the 6th 'ComboPoint'", width="double",
								order=160, type = "color", hasAlpha=false,
								set = function(info,r,g,b)
									vexpower_parameters["frame"]["combo"]["bg"]["color"]["6"]["r"]=r
									vexpower_parameters["frame"]["combo"]["bg"]["color"]["6"]["g"]=g
									vexpower_parameters["frame"]["combo"]["bg"]["color"]["6"]["b"]=b
									vexpower_initialize(true) end,
								get = function() return
									vexpower_parameters["frame"]["combo"]["bg"]["color"]["6"]["r"],
									vexpower_parameters["frame"]["combo"]["bg"]["color"]["6"]["g"],
									vexpower_parameters["frame"]["combo"]["bg"]["color"]["6"]["b"] end,
								},
							opacity6 = {
								name = "Opacity %",
								order=161, type = "range",
								desc = "Sets the opacity",
								step = 5, min = 0, max = 100,
								set = function(info,val) vexpower_parameters["frame"]["combo"]["bg"]["color"]["6"]["a"]=val/100 vexpower_initialize(true) end,
								get = function() return vexpower_parameters["frame"]["combo"]["bg"]["color"]["6"]["a"]*100 end
								},
							},
						},
					space = {name =" ", type = "description", order=2},	
					grpborder = {
						name = "Border",
						order=3, type ="group", dialogInline = true,
						args = {
							framebordercolor = {
								name = "Border color",
								order=1, type = "color", hasAlpha=false, width="double",
								set = function(info,r,g,b)
									vexpower_parameters["frame"]["combo"]["border"]["color"]["r"]=r
									vexpower_parameters["frame"]["combo"]["border"]["color"]["g"]=g
									vexpower_parameters["frame"]["combo"]["border"]["color"]["b"]=b
									vexpower_initialize(true) end,
								get = function() return vexpower_parameters["frame"]["combo"]["border"]["color"]["r"],
									vexpower_parameters["frame"]["combo"]["border"]["color"]["g"],
									vexpower_parameters["frame"]["combo"]["border"]["color"]["b"] end,
								},
							opacityborder = {
								name = "Border opacity %",
								order=2, type = "range",
								desc = "Sets the opacity",
								step = 5, min = 0, max = 100,
								set = function(info,val) vexpower_parameters["frame"]["combo"]["border"]["color"]["a"]=val/100 vexpower_initialize(true) end,
								get = function() return vexpower_parameters["frame"]["combo"]["border"]["color"]["a"]*100 end
								},
							framebordersize = {
								name = "Border size",
								order=3, type = "range",
								desc = "Sets the size of the border",
								step = 1, min = 1, max = 10,
								set = function(info,val) vexpower_parameters["frame"]["combo"]["border"]["size"]=val vexpower_initialize(true) end,
								get = function() return vexpower_parameters["frame"]["combo"]["border"]["size"] end
								},
							},
						},
					},
				},
				
			grpfadeout = {
				name = "'Used'-Effect",
				order=40, type ="group", dialogInline = true, hidden = not(vexpower_optionTab_CPs_openTab["fadeout"]),
				args = {
					info = {name = "ComboPoints that has just been spent will be recolored and then fade out.\n", type = "description", order=1},
					cpusedfadeout = {
						name = "Activate",
						order=200, type = "toggle", width="double",
						set = function(self,key) vexpower_parameters["frame"]["combo"]["fadeout"]=key vexpower_initialize(true) end,
						get = function() return vexpower_parameters["frame"]["combo"]["fadeout"] end,
						},
					framecolorsused = {
						name = "New Color", width="double",
						order=201, type = "color", hasAlpha=false,
						disabled = not(vexpower_parameters["frame"]["combo"]["fadeout"]),
						set = function(info,r,g,b)
							vexpower_parameters["frame"]["combo"]["bg"]["color"]["used"]["r"]=r
							vexpower_parameters["frame"]["combo"]["bg"]["color"]["used"]["g"]=g
							vexpower_parameters["frame"]["combo"]["bg"]["color"]["used"]["b"]=b
							vexpower_initialize(true) end,
						get = function() return
							vexpower_parameters["frame"]["combo"]["bg"]["color"]["used"]["r"],
							vexpower_parameters["frame"]["combo"]["bg"]["color"]["used"]["g"],
							vexpower_parameters["frame"]["combo"]["bg"]["color"]["used"]["b"] end,
						},
					opacityused = {
						name = "Opacity %",
						order=202, type = "range",
						desc = "Sets the opacity",
						step = 5, min = 0, max = 100,
						disabled = not(vexpower_parameters["frame"]["combo"]["fadeout"]),
						set = function(info,val) vexpower_parameters["frame"]["combo"]["bg"]["color"]["used"]["a"]=val/100 vexpower_initialize(true) end,
						get = function() return vexpower_parameters["frame"]["combo"]["bg"]["color"]["used"]["a"]*100 end
						},
					},
				},
				
			grpchangeCPsOnX = {
				name = "Recolor",
				order=50, type ="group", dialogInline = true, hidden = not(vexpower_optionTab_CPs_openTab["change"]),
				args = {
					changeOnXinfo = {name = "When a specific amount of ComboPoints is reached they get recolored.\n", type="description", order=1},
					activatechange = {
						name = "Activate",
						order=10, type = "toggle", width="double",
						set = function(self,key) vexpower_parameters["frame"]["combo"]["bg"]["allowchange"]=key vexpower_initialize(true) end,
						get = function() return vexpower_parameters["frame"]["combo"]["bg"]["allowchange"] end,
						},
					space = {name = " ", type="description", order=11},
					maxCps = {
						name = "Recolor when ComboPoints are full",
						order=20, type = "toggle", width="double",
						disabled = not(vexpower_parameters["frame"]["combo"]["bg"]["allowchange"]),
						set = function(self,key) vexpower_parameters["frame"]["combo"]["bg"]["cpchangeOnMax"] = key vexpower_initialize(true) end,
						get = function() return vexpower_parameters["frame"]["combo"]["bg"]["cpchangeOnMax"] end,
						},
					changex = {
						name = "Threshold",
						order=21, type = "range",
						step = 1, min = 1, max = 15,
						disabled = not(vexpower_parameters["frame"]["combo"]["bg"]["allowchange"]) or vexpower_parameters["frame"]["combo"]["bg"]["cpchangeOnMax"],
						set = function(info,val) vexpower_parameters["frame"]["combo"]["bg"]["cpchange"]=val vexpower_initialize(true) end,
						get = function() return tonumber(vexpower_parameters["frame"]["combo"]["bg"]["cpchange"]) end
						},
					space2 = {name = " ", type="description", order=30},
					activatechangeall = {
						name = "Only recolor the ComboPoints needed to reach the threshold, instead of all",
						order=31, type = "toggle", width="full",
						disabled = not(vexpower_parameters["frame"]["combo"]["bg"]["allowchange"]) or vexpower_parameters["frame"]["combo"]["bg"]["cpchangeOnMax"],
						set = function(self,key) vexpower_parameters["frame"]["combo"]["bg"]["cpchangeonly"]=key vexpower_initialize(true) end,
						get = function() return vexpower_parameters["frame"]["combo"]["bg"]["cpchangeonly"] end,
						},
					framecolorschange = {
						name = "new color", width="double",
						order=40, type = "color", hasAlpha=false,
						disabled = not(vexpower_parameters["frame"]["combo"]["bg"]["allowchange"]),
						set = function(info,r,g,b)
							vexpower_parameters["frame"]["combo"]["bg"]["color"]["change"]["r"]=r
							vexpower_parameters["frame"]["combo"]["bg"]["color"]["change"]["g"]=g
							vexpower_parameters["frame"]["combo"]["bg"]["color"]["change"]["b"]=b
							vexpower_initialize(true) end,
						get = function() return
							vexpower_parameters["frame"]["combo"]["bg"]["color"]["change"]["r"],
							vexpower_parameters["frame"]["combo"]["bg"]["color"]["change"]["g"],
							vexpower_parameters["frame"]["combo"]["bg"]["color"]["change"]["b"] end,
						},
					opacitychange = {
						name = "Opacity %",
						order=41, type = "range",
						desc = "Sets the opacity",
						step = 5, min = 0, max = 100,
						disabled = not(vexpower_parameters["frame"]["combo"]["bg"]["allowchange"]),
						set = function(info,val) vexpower_parameters["frame"]["combo"]["bg"]["color"]["change"]["a"]=val/100 vexpower_initialize(true) end,
						get = function() return vexpower_parameters["frame"]["combo"]["bg"]["color"]["change"]["a"]*100 end
						},
					},
				},
				
			grpSoundOnY = {
				name = "Sound Threshold",
				order=60, type ="group", dialogInline = true, hidden = not(vexpower_optionTab_CPs_openTab["sound"]),
				args = {
					changeOnXinfo = {name = "Play a sound when a specific amount of ComboPoints is reached.\n", type="description", order=1},
					activate = {
						name = "Activate",
						order=10, type = "toggle", width="full",
						set = function(self,key) vexpower_parameters["sound"]["activate"]=key vexpower_initialize(true) end,
						get = function() return vexpower_parameters["sound"]["activate"] end,
						},
					space = {name = " ", type="description", order=11},
					changey = {
						name = "Threshold",
						order=20, type = "range",
						step = 1, min = 1, max = 15,
						disabled = not(vexpower_parameters["sound"]["activate"]),
						set = function(info,val) vexpower_parameters["sound"]["x"] = val end,
						get = function() return vexpower_parameters["sound"]["x"] end
						},
					space2 = {name =" ", type = "description", order=21},
					file = {
						name = "Sound",
						order=30, type = "select",
						dialogControl = "LSM30_Sound",
						values = vexpower.LSM:HashTable("sound"),
						disabled = not(vexpower_parameters["sound"]["activate"]),
						set = function(self,key) vexpower_parameters["sound"]["file"] = key end,
						get = function() return vexpower_parameters["sound"]["file"] end,
						},
					channel = {
						name = "Channel",
						order=31, type = "select", style = "dropdown",
						values = {["Master"]="Master", ["SFX"]="SFX", ["Ambience"]="Ambience", ["Music"]="Music"},
						disabled = not(vexpower_parameters["sound"]["activate"]),
						set = function(self,key) vexpower_parameters["sound"]["channel"] = key  end,
						get = function() return vexpower_parameters["sound"]["channel"] end,
						},
					},
				},
			}
		}
end





