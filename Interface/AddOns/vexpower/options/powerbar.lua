function vexpower.panel_powerbar()	
	poweremptyInfoText = "|CFFC41F3BPower empty|r: When the current power is below "
	if vexpower_parameters["frame"]["energy"]["altcolors"]["emptyInc"] then
		poweremptyInfoText = poweremptyInfoText.."|CFFCC9900or equal|r "
	else
		poweremptyInfoText = poweremptyInfoText.."|CFFCC9900but not equal|r "
	end
	poweremptyInfoText = poweremptyInfoText.."to '|CFFCC9900"..vexpower_optionTab_PowerBar_getPower("empty").."|r'\n"
	
	powerfullInfoText = "|CFF00FF00Power full|r: When the current power is above "
	if vexpower_parameters["frame"]["energy"]["altcolors"]["fullInc"] then
		powerfullInfoText = powerfullInfoText.."|CFFCC9900or equal|r "
	else
		powerfullInfoText = powerfullInfoText.."|CFFCC9900but not equal|r "
	end
	powerfullInfoText = powerfullInfoText.."to '|CFFCC9900"..vexpower_optionTab_PowerBar_getPower("full").."|r'"
	

	return {
		type = "group",
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
						order=1, type = "execute", width="normal",
						func = function(info,val) vexpower_optionTab_PowerBar_toggleTab("position") vexpower_initialize(true) end,
						},
					powerpool = {
						name = "Colors",
						order=3, type = "execute", width="half",
						func = function(info,val) vexpower_optionTab_PowerBar_toggleTab("powerpool") vexpower_initialize(true) end,
						},
					usedenergy = {
						name = "Used",
						order=5, type = "execute", width="half",
						func = function(info,val) vexpower_optionTab_PowerBar_toggleTab("usedenergy") vexpower_initialize(true) end,
						},
					change = {
						name = "Recolor",
						order=6, type = "execute", width="half",
						func = function(info,val) vexpower_optionTab_PowerBar_toggleTab("change") vexpower_initialize(true) end,
						},
					},
				},
			spaceoptiontabs = {name =" ", type = "description", order=6},
			
			grppos = {
				name = "Position & Size",
				order=10, type ="group", dialogInline = true, hidden = not(vexpower_optionTab_PowerBar_openTab["position"]),
				args = {
					info = {name = "You can make the frame movable with the testmode", type = "description", order=5},
					frameposx = {
						name = "X Position",
						order=6, type = "range",
						desc = "Sets the x position of the frame",
						step = 1, min = -2000, max = 2000,
						set = function(info,val) vexpower_parameters["frame"]["energy"]["position"]["x"]=val vexpower_initialize(true) end,
						get = function() return vexpower_parameters["frame"]["energy"]["position"]["x"] end
						},
					frameposy = {
						name = "Y Position",
						order=7, type = "range",
						desc = "Sets the y position of the frame",
						step = 1, min = -2000, max = 2000,
						set = function(info,val) vexpower_parameters["frame"]["energy"]["position"]["y"]=val vexpower_initialize(true) end,
						get = function() return vexpower_parameters["frame"]["energy"]["position"]["y"] end
						},
					space1 = {name =" ", type = "description", order=8},
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
						set = function(self,key) vexpower_parameters["frame"]["energy"]["position"]["anchorFrame"]=key vexpower_initialize(true) end,
						get = function() return vexpower_parameters["frame"]["energy"]["position"]["anchorFrame"] end,
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
						set = function(self,key) vexpower_parameters["frame"]["energy"]["position"]["anchor"]=key vexpower_initialize(true) end,
						get = function() return vexpower_parameters["frame"]["energy"]["position"]["anchor"] end,
						},
					space12 = {name =" ", type = "description", order=20},
					framewidth = {
						name = "Width",
						order=21, type = "range",
						desc = "Sets the width of the frame",
						step = 1, min = 0, max = 2000,
						set = function(info,val) vexpower_parameters["frame"]["energy"]["size"]["width"]=val vexpower_initialize(true) end,
						get = function() return vexpower_parameters["frame"]["energy"]["size"]["width"] end
						},
					frameheight = {
						name = "Height",
						order=22, type = "range",
						desc = "Sets the height of the frame",
						step = 1, min = 0, max = 2000,
						set = function(info,val) vexpower_parameters["frame"]["energy"]["size"]["height"]=val vexpower_initialize(true) end,
						get = function() return vexpower_parameters["frame"]["energy"]["size"]["height"] end
						},
					},
				},
			
			grppowerpool = {
				name = "Colors",
				order=31, type ="group", dialogInline = true, hidden = not(vexpower_optionTab_PowerBar_openTab["powerpool"]),
				args = {
					grppos = {
						name = "PowerBar",
						order=1, type ="group", dialogInline = true,
						args = {
							frameenergycolor = {
								name = "Color",
								order=1, type = "color", hasAlpha=false,
								desc = "background color used when not using blizzard's preset colors",
								disabled = vexpower_parameters["frame"]["energy"]["typecolored"] or vexpower_parameters["frame"]["energy"]["classcolored"],
								set = function(info,r,g,b,a)
									vexpower_parameters["frame"]["energy"]["color"]["r"]=r
									vexpower_parameters["frame"]["energy"]["color"]["g"]=g
									vexpower_parameters["frame"]["energy"]["color"]["b"]=b
									vexpower_initialize(true) end,
								get = function() return vexpower_parameters["frame"]["energy"]["color"]["r"],
									vexpower_parameters["frame"]["energy"]["color"]["g"],
									vexpower_parameters["frame"]["energy"]["color"]["b"] end,
								},
							frametypecolored = {
								name = "Use powertype color",
								order=2, type = "toggle",
								set = function(self,key) vexpower_optionTab_PowerBar_setColoring("type", key) vexpower_initialize(true) end,
								get = function() return vexpower_parameters["frame"]["energy"]["typecolored"] end,
								},
							frameclasscolored = {
								name = "Use classcolor",
								order=3, type = "toggle",
								set = function(self,key) vexpower_optionTab_PowerBar_setColoring("class", key) vexpower_initialize(true) end,
								get = function() return vexpower_parameters["frame"]["energy"]["classcolored"] end,
								},
							opacityframe = {
								name = "Opacity %",
								order=4, type = "range",
								desc = "Sets the opacity",
								step = 5, min = 0, max = 100,
								set = function(info,val) vexpower_parameters["frame"]["energy"]["color"]["a"]=val/100 vexpower_initialize(true) end,
								get = function() return vexpower_parameters["frame"]["energy"]["color"]["a"]*100 end
								},
							space = {name =" ", type = "description", order=5},
						
							framebackdrop = {
								name = "Texture Pack 1",
								order=10, type = "select",
								dialogControl = "LSM30_Background",
								desc = "Sets the frame's background-texture",
								values = vexpower.LSM:HashTable("background"),
								set = function(self,key)
									vexpower_parameters["frame"]["energy"]["bg"]=key
									vexpower_parameters["frame"]["energy"]["bg2"]=""
									vexpower_parameters["frame"]["energy"]["textureToUse"]=1
									vexpower_initialize(true)
									end,
								get = function() return vexpower_parameters["frame"]["energy"]["bg"] end,
								},
							framebackdrop2 = {
								name = "Texture Pack 2",
								order=11, type = "select",
								dialogControl = "LSM30_Statusbar",
								desc = "Sets the frame's background-texture",
								values = vexpower.LSM:HashTable("statusbar"),
								set = function(self,key)
									vexpower_parameters["frame"]["energy"]["bg2"]=key
									vexpower_parameters["frame"]["energy"]["bg"]=""
									vexpower_parameters["frame"]["energy"]["textureToUse"]=2
									vexpower_initialize(true)
									end,
								get = function() return vexpower_parameters["frame"]["energy"]["bg2"] end,
								},
							},
						},
					space = {name =" ", type = "description", order=2},
					grpbackground = {
						name = "Background",
						order=3, type ="group", dialogInline = true,
						args = {
							framebackdropbg = {
								name = "Background Texture",
								order=1, type = "select",
								dialogControl = "LSM30_Background",
								values = vexpower.LSM:HashTable("background"),
								set = function(self,key) vexpower_parameters["frame"]["energy"]["bg_texture"]=key vexpower_initialize(true) end,
								get = function() return vexpower_parameters["frame"]["energy"]["bg_texture"] end,
								},
							frameenergybgcolor = {
								name = "Background Color",
								order=2, type = "color", hasAlpha=false,
								set = function(info,r,g,b,a)
									vexpower_parameters["frame"]["energy"]["bgcolor"]["r"]=r
									vexpower_parameters["frame"]["energy"]["bgcolor"]["g"]=g
									vexpower_parameters["frame"]["energy"]["bgcolor"]["b"]=b
									vexpower_initialize(true) end,
								get = function() return vexpower_parameters["frame"]["energy"]["bgcolor"]["r"],
									vexpower_parameters["frame"]["energy"]["bgcolor"]["g"],
									vexpower_parameters["frame"]["energy"]["bgcolor"]["b"] end,
								},
							opacitybg = {
								name = "Background Opacity %",
								order=3, type = "range",
								desc = "Sets the opacity",
								step = 5, min = 0, max = 100,
								set = function(info,val) vexpower_parameters["frame"]["energy"]["bgcolor"]["a"]=val/100 vexpower_initialize(true) end,
								get = function() return vexpower_parameters["frame"]["energy"]["bgcolor"]["a"]*100 end
								},
							framebgspace = {name ="\n", type = "description", order=4},
							framebackdrop = {
								name = "Border Texture",
								order=5, type = "select",
								dialogControl = "LSM30_Border",
								values = vexpower.LSM:HashTable("border"),
								set = function(self,key) vexpower_parameters["frame"]["energy"]["border"]["texture"]=key vexpower_initialize(true) end,
								get = function() return vexpower_parameters["frame"]["energy"]["border"]["texture"] end,
								},
							frameenergybordercolor = {
								name = "Border Color",
								order=6, type = "color", hasAlpha=false,
								set = function(info,r,g,b,a)
									vexpower_parameters["frame"]["energy"]["border"]["color"]["r"]=r
									vexpower_parameters["frame"]["energy"]["border"]["color"]["g"]=g
									vexpower_parameters["frame"]["energy"]["border"]["color"]["b"]=b
									vexpower_initialize(true) end,
								get = function() return vexpower_parameters["frame"]["energy"]["border"]["color"]["r"],
									vexpower_parameters["frame"]["energy"]["border"]["color"]["g"],
									vexpower_parameters["frame"]["energy"]["border"]["color"]["b"] end,
								},
							opacityborder = {
								name = "Border Opacity %",
								order=7, type = "range",
								desc = "Sets the opacity",
								step = 5, min = 0, max = 100,
								set = function(info,val) vexpower_parameters["frame"]["energy"]["border"]["color"]["a"]=val/100 vexpower_initialize(true) end,
								get = function() return vexpower_parameters["frame"]["energy"]["border"]["color"]["a"]*100 end
								},
							frameenergybordersize = {
								name = "Border Size",
								order=8, type = "range",
								step = 1, min = 1, max = 15,
								set = function(info,val) vexpower_parameters["frame"]["energy"]["border"]["size"]=val vexpower_initialize(true) end,
								get = function() return vexpower_parameters["frame"]["energy"]["border"]["size"] end
								},
							},
						},
					},
				},
				
			grpusedeffect = {
				name = "'Used'-Effect",
				order=51, type ="group", dialogInline = true, hidden = not(vexpower_optionTab_PowerBar_openTab["usedenergy"]),
				args = {
					info = {name = "Power that has just been spent will be recolored and then fades out.\n", type = "description", order=1},
					frameenergyused = {
						name = "Activate",
						order=10, type = "toggle", width="full",
						desc = "",
						set = function(self,key) vexpower_parameters["frame"]["energy"]["fadeout"]=key vexpower_initialize(true) end,
						get = function() return vexpower_parameters["frame"]["energy"]["fadeout"] end,
						},
					frameenergyusedcolor = {
						name = "Color for 'used'-energy", width="double",
						order=11, type = "color", hasAlpha=false,
						desc = "Color of the energy that has just been used",
						disabled = not(vexpower_parameters["frame"]["energy"]["fadeout"]),
						set = function(info,r,g,b,a)
							vexpower_parameters["frame"]["energy"]["usedcolor"]["r"]=r
							vexpower_parameters["frame"]["energy"]["usedcolor"]["g"]=g
							vexpower_parameters["frame"]["energy"]["usedcolor"]["b"]=b
							vexpower_initialize(true) end,
						get = function() return vexpower_parameters["frame"]["energy"]["usedcolor"]["r"],
							vexpower_parameters["frame"]["energy"]["usedcolor"]["g"],
							vexpower_parameters["frame"]["energy"]["usedcolor"]["b"] end,
						},
					opacityused = {
						name = "Opacity %",
						order=12, type = "range",
						desc = "Sets the opacity",
						step = 5, min = 0, max = 100,
						disabled = not(vexpower_parameters["frame"]["energy"]["fadeout"]),
						set = function(info,val) vexpower_parameters["frame"]["energy"]["usedcolor"]["a"]=val/100 vexpower_initialize(true) end,
						get = function() return vexpower_parameters["frame"]["energy"]["usedcolor"]["a"]*100 end
						},
					},
				},
									
			grpchangecolor = {
				name = "Recolor",
				order=61, type ="group", dialogInline = true, hidden = not(vexpower_optionTab_PowerBar_openTab["change"]),
				args = {
					info = {name = "Setup up to 6 situations which recolor the powerbar\n", type = "description", order=1},
					infightdelay = {
						name = "'Out of Combat' delay timer (seconds)",
						order=2, type = "range", width="double",
						desc = "Sets the time the recoloring and the fade out effects (optionpanel 'show') are delayed when leaving combat",
						step = 1, min = 0, max = 30,
						set = function(info,val) vexpower_parameters["frame"]["infightdelay"]=val vexpower_initialize(true) end,
						get = function() return vexpower_parameters["frame"]["infightdelay"] end
						},
					space1 = {name =" ", type = "description", order=3},
					grpValues = {
						name = "Values",
						order=10, type ="group", dialogInline = true,
						args = {
							info = {name = "You can set 'power empty' and 'power full' at relative positions (e.g. '95%','60%',...) or you can set them at absolute positions (e.g. '1200','23500',...)\n", type = "description", order=1},
							powerempty = {
								name = "Set value for '|CFFC41F3Bpower empty|r'",
								order=10, type = "input", multiline = false, width="normal",
								set = function(info,val) vexpower_optionTab_PowerBar_setPower("empty", val) vexpower_initialize(true) end,
								get = function() return vexpower_optionTab_PowerBar_getPower("empty") end
								},
							poweremptyOperator = {
								name = "Include equality",
								order=11, type = "toggle", width="double",
								set = function(self,key) vexpower_parameters["frame"]["energy"]["altcolors"]["emptyInc"]=key vexpower_initialize(true) end,
								get = function() return vexpower_parameters["frame"]["energy"]["altcolors"]["emptyInc"] end,
								},
							poweremptyInfo = {name = poweremptyInfoText, type = "description", order=12},
							powerfull = {
								name = "Set value for '|CFF00FF00power full|r'",
								order=20, type = "input", multiline = false, width="normal",
								set = function(info,val) vexpower_optionTab_PowerBar_setPower("full", val) vexpower_initialize(true) end,
								get = function() return vexpower_optionTab_PowerBar_getPower("full") end
								},
							powerfullOperator = {
								name = "Include equality",
								order=21, type = "toggle", width="double",
								set = function(self,key) vexpower_parameters["frame"]["energy"]["altcolors"]["fullInc"]=key vexpower_initialize(true) end,
								get = function() return vexpower_parameters["frame"]["energy"]["altcolors"]["fullInc"] end,
								},
							powerfullInfo = {name = powerfullInfoText, type = "description", order=22},
							warning = {name = vexpower_optionTab_PowerBar_EmptyFullStatus, type = "description", order=25},
							},
						},
					space2 = {name =" ", type = "description", order=31},
					grpic = {
						name = "'In combat'",
						order=40, type ="group", dialogInline = true,
						args = {
							grpchangecolor1 = {
								name = "|CFFC41F3Bpower empty|r",
								order=11, type ="group", dialogInline = true,
								args = {
									use = {
										name = "Change color",
										order=1, type = "toggle", width="full",
										desc = "",
										set = function(self,key) vexpower_parameters["frame"]["energy"]["altcolors"]["use"][1]=key vexpower_initialize(true) end,
										get = function() return vexpower_parameters["frame"]["energy"]["altcolors"]["use"][1] end,
										},
									frameenergycolor = {
										name = "New color",
										order=2, type = "color", hasAlpha=false,
										desc = "background color used when not using blizzard's preset colors",
										hidden = not(vexpower_parameters["frame"]["energy"]["altcolors"]["use"][1]),
										disabled = vexpower_parameters["frame"]["energy"]["altcolors"]["typecolored"][1] or vexpower_parameters["frame"]["energy"]["altcolors"]["classcolored"][1] or not(vexpower_parameters["frame"]["energy"]["altcolors"]["use"][1]),
										set = function(info,r,g,b,a)
											vexpower_parameters["frame"]["energy"]["altcolors"]["1"]["r"]=r
											vexpower_parameters["frame"]["energy"]["altcolors"]["1"]["g"]=g
											vexpower_parameters["frame"]["energy"]["altcolors"]["1"]["b"]=b
											vexpower_initialize(true) end,
										get = function() return vexpower_parameters["frame"]["energy"]["altcolors"]["1"]["r"],
											vexpower_parameters["frame"]["energy"]["altcolors"]["1"]["g"],
											vexpower_parameters["frame"]["energy"]["altcolors"]["1"]["b"] end,
										},
									frametypecolored = {
										name = "Use powertype color",
										order=3, type = "toggle",
										hidden = not(vexpower_parameters["frame"]["energy"]["altcolors"]["use"][1]),
										disabled = not(vexpower_parameters["frame"]["energy"]["altcolors"]["use"][1]),
										set = function(self,key) vexpower_optionTab_PowerBar_setRecoloring(1, "type", key) vexpower_initialize(true) end,
										get = function() return vexpower_parameters["frame"]["energy"]["altcolors"]["typecolored"][1] end,
										},
									frameclasscolored = {
										name = "Use classcolor",
										order=4, type = "toggle",
										hidden = not(vexpower_parameters["frame"]["energy"]["altcolors"]["use"][1]),
										disabled = not(vexpower_parameters["frame"]["energy"]["altcolors"]["use"][1]),
										set = function(self,key) vexpower_optionTab_PowerBar_setRecoloring(1, "class", key) vexpower_initialize(true) end,
										get = function() return vexpower_parameters["frame"]["energy"]["altcolors"]["classcolored"][1] end,
										},
									opacityframe = {
										name = "Opacity %",
										order=5, type = "range",
										desc = "Sets the opacity",
										step = 5, min = 0, max = 100,
										hidden = not(vexpower_parameters["frame"]["energy"]["altcolors"]["use"][1]),
										disabled = not(vexpower_parameters["frame"]["energy"]["altcolors"]["use"][1]),
										set = function(info,val) vexpower_parameters["frame"]["energy"]["altcolors"]["1"]["a"]=val/100 vexpower_initialize(true) end,
										get = function() return vexpower_parameters["frame"]["energy"]["altcolors"]["1"]["a"]*100 end
										},
									},
								},
							grpchangecolor2 = {
								name = "|CFFCC9900power not full and not empty|r",
								order=12, type ="group", dialogInline = true,
								args = {
									use = {
										name = "Change color",
										order=1, type = "toggle", width="full",
										desc = "",
										set = function(self,key) vexpower_parameters["frame"]["energy"]["altcolors"]["use"][2]=key vexpower_initialize(true) end,
										get = function() return vexpower_parameters["frame"]["energy"]["altcolors"]["use"][2] end,
										},
									frameenergycolor = {
										name = "New color",
										order=2, type = "color", hasAlpha=false,
										desc = "background color used when not using blizzard's preset colors",
										hidden = not(vexpower_parameters["frame"]["energy"]["altcolors"]["use"][2]),
										disabled = vexpower_parameters["frame"]["energy"]["altcolors"]["typecolored"][2] or vexpower_parameters["frame"]["energy"]["altcolors"]["classcolored"][2] or not(vexpower_parameters["frame"]["energy"]["altcolors"]["use"][2]),
										set = function(info,r,g,b,a)
											vexpower_parameters["frame"]["energy"]["altcolors"]["2"]["r"]=r
											vexpower_parameters["frame"]["energy"]["altcolors"]["2"]["g"]=g
											vexpower_parameters["frame"]["energy"]["altcolors"]["2"]["b"]=b
											vexpower_initialize(true) end,
										get = function() return vexpower_parameters["frame"]["energy"]["altcolors"]["2"]["r"],
											vexpower_parameters["frame"]["energy"]["altcolors"]["2"]["g"],
											vexpower_parameters["frame"]["energy"]["altcolors"]["2"]["b"] end,
										},
									frametypecolored = {
										name = "Use powertype color",
										order=3, type = "toggle",
										hidden = not(vexpower_parameters["frame"]["energy"]["altcolors"]["use"][2]),
										disabled = not(vexpower_parameters["frame"]["energy"]["altcolors"]["use"][2]),
										set = function(self,key) vexpower_optionTab_PowerBar_setRecoloring(2, "type", key) vexpower_initialize(true) end,
										get = function() return vexpower_parameters["frame"]["energy"]["altcolors"]["typecolored"][2] end,
										},
									frameclasscolored = {
										name = "Use classcolor",
										order=4, type = "toggle",
										hidden = not(vexpower_parameters["frame"]["energy"]["altcolors"]["use"][2]),
										disabled = not(vexpower_parameters["frame"]["energy"]["altcolors"]["use"][2]),
										set = function(self,key) vexpower_optionTab_PowerBar_setRecoloring(2, "class", key) vexpower_initialize(true) end,
										get = function() return vexpower_parameters["frame"]["energy"]["altcolors"]["classcolored"][2] end,
										},
									opacityframe = {
										name = "Opacity %",
										order=5, type = "range",
										desc = "Sets the opacity",
										step = 5, min = 0, max = 100,
										hidden = not(vexpower_parameters["frame"]["energy"]["altcolors"]["use"][2]),
										disabled = not(vexpower_parameters["frame"]["energy"]["altcolors"]["use"][2]),
										set = function(info,val) vexpower_parameters["frame"]["energy"]["altcolors"]["2"]["a"]=val/100 vexpower_initialize(true) end,
										get = function() return vexpower_parameters["frame"]["energy"]["altcolors"]["2"]["a"]*100 end
										},
									},
								},
							grpchangecolor3 = {
								name = "|CFF00FF00power full|r",
								order=13, type ="group", dialogInline = true,
								args = {
									use = {
										name = "Change color",
										order=1, type = "toggle", width="full",
										desc = "",
										set = function(self,key) vexpower_parameters["frame"]["energy"]["altcolors"]["use"][3]=key vexpower_initialize(true) end,
										get = function() return vexpower_parameters["frame"]["energy"]["altcolors"]["use"][3] end,
										},
									frameenergycolor = {
										name = "New color",
										order=2, type = "color", hasAlpha=false,
										desc = "background color used when not using blizzard's preset colors",
										hidden = not(vexpower_parameters["frame"]["energy"]["altcolors"]["use"][3]),
										disabled = vexpower_parameters["frame"]["energy"]["altcolors"]["typecolored"][3] or vexpower_parameters["frame"]["energy"]["altcolors"]["classcolored"][3] or not(vexpower_parameters["frame"]["energy"]["altcolors"]["use"][3]),
										set = function(info,r,g,b,a)
											vexpower_parameters["frame"]["energy"]["altcolors"]["3"]["r"]=r
											vexpower_parameters["frame"]["energy"]["altcolors"]["3"]["g"]=g
											vexpower_parameters["frame"]["energy"]["altcolors"]["3"]["b"]=b
											vexpower_initialize(true) end,
										get = function() return vexpower_parameters["frame"]["energy"]["altcolors"]["3"]["r"],
											vexpower_parameters["frame"]["energy"]["altcolors"]["3"]["g"],
											vexpower_parameters["frame"]["energy"]["altcolors"]["3"]["b"] end,
										},
									frametypecolored = {
										name = "Use powertype color",
										order=3, type = "toggle",
										hidden = not(vexpower_parameters["frame"]["energy"]["altcolors"]["use"][3]),
										disabled = not(vexpower_parameters["frame"]["energy"]["altcolors"]["use"][3]),
										set = function(self,key) vexpower_optionTab_PowerBar_setRecoloring(3, "type", key) vexpower_initialize(true) end,
										get = function() return vexpower_parameters["frame"]["energy"]["altcolors"]["typecolored"][3] end,
										},
									frameclasscolored = {
										name = "Use classcolor",
										order=4, type = "toggle",
										hidden = not(vexpower_parameters["frame"]["energy"]["altcolors"]["use"][3]),
										disabled = not(vexpower_parameters["frame"]["energy"]["altcolors"]["use"][3]),
										set = function(self,key) vexpower_optionTab_PowerBar_setRecoloring(3, "class", key) vexpower_initialize(true) end,
										get = function() return vexpower_parameters["frame"]["energy"]["altcolors"]["classcolored"][3] end,
										},
									opacityframe = {
										name = "Opacity %",
										order=5, type = "range",
										desc = "Sets the opacity",
										step = 5, min = 0, max = 100,
										hidden = not(vexpower_parameters["frame"]["energy"]["altcolors"]["use"][3]),
										disabled = not(vexpower_parameters["frame"]["energy"]["altcolors"]["use"][3]),
										set = function(info,val) vexpower_parameters["frame"]["energy"]["altcolors"]["3"]["a"]=val/100 vexpower_initialize(true) end,
										get = function() return vexpower_parameters["frame"]["energy"]["altcolors"]["3"]["a"]*100 end
										},
									},
								},
							},
						},
					grpooc = {
						name = "'Out of combat'",
						order=50, type ="group", dialogInline = true,
						args = {
							grpchangecolor4 = {
								name = "|CFFC41F3Bpower empty|r",
								order=14, type ="group", dialogInline = true,
								args = {
									use = {
										name = "Change color",
										order=1, type = "toggle", width="full",
										desc = "",
										set = function(self,key) vexpower_parameters["frame"]["energy"]["altcolors"]["use"][4]=key vexpower_initialize(true) end,
										get = function() return vexpower_parameters["frame"]["energy"]["altcolors"]["use"][4] end,
										},
									frameenergycolor = {
										name = "New color",
										order=2, type = "color", hasAlpha=false,
										desc = "background color used when not using blizzard's preset colors",
										hidden = not(vexpower_parameters["frame"]["energy"]["altcolors"]["use"][4]),
										disabled = vexpower_parameters["frame"]["energy"]["altcolors"]["typecolored"][4] or vexpower_parameters["frame"]["energy"]["altcolors"]["classcolored"][4] or not(vexpower_parameters["frame"]["energy"]["altcolors"]["use"][4]),
										set = function(info,r,g,b,a)
											vexpower_parameters["frame"]["energy"]["altcolors"]["4"]["r"]=r
											vexpower_parameters["frame"]["energy"]["altcolors"]["4"]["g"]=g
											vexpower_parameters["frame"]["energy"]["altcolors"]["4"]["b"]=b
											vexpower_initialize(true) end,
										get = function() return vexpower_parameters["frame"]["energy"]["altcolors"]["4"]["r"],
											vexpower_parameters["frame"]["energy"]["altcolors"]["4"]["g"],
											vexpower_parameters["frame"]["energy"]["altcolors"]["4"]["b"] end,
										},
									frametypecolored = {
										name = "Use powertype color",
										order=3, type = "toggle",
										hidden = not(vexpower_parameters["frame"]["energy"]["altcolors"]["use"][4]),
										disabled = not(vexpower_parameters["frame"]["energy"]["altcolors"]["use"][4]),
										set = function(self,key) vexpower_optionTab_PowerBar_setRecoloring(4, "type", key) vexpower_initialize(true) end,
										get = function() return vexpower_parameters["frame"]["energy"]["altcolors"]["typecolored"][4] end,
										},
									frameclasscolored = {
										name = "Use classcolor",
										order=4, type = "toggle",
										hidden = not(vexpower_parameters["frame"]["energy"]["altcolors"]["use"][4]),
										disabled = not(vexpower_parameters["frame"]["energy"]["altcolors"]["use"][4]),
										set = function(self,key) vexpower_optionTab_PowerBar_setRecoloring(4, "class", key) vexpower_initialize(true) end,
										get = function() return vexpower_parameters["frame"]["energy"]["altcolors"]["classcolored"][4] end,
										},
									opacityframe = {
										name = "Opacity %",
										order=5, type = "range",
										desc = "Sets the opacity",
										step = 5, min = 0, max = 100,
										hidden = not(vexpower_parameters["frame"]["energy"]["altcolors"]["use"][4]),
										disabled = not(vexpower_parameters["frame"]["energy"]["altcolors"]["use"][4]),
										set = function(info,val) vexpower_parameters["frame"]["energy"]["altcolors"]["4"]["a"]=val/100 vexpower_initialize(true) end,
										get = function() return vexpower_parameters["frame"]["energy"]["altcolors"]["4"]["a"]*100 end
										},
									},
								},
							grpchangecolor5 = {
								name = "|CFFCC9900power not full and not empty|r",
								order=15, type ="group", dialogInline = true,
								args = {
									use = {
										name = "Change color",
										order=1, type = "toggle", width="full",
										desc = "",
										set = function(self,key) vexpower_parameters["frame"]["energy"]["altcolors"]["use"][5]=key vexpower_initialize(true) end,
										get = function() return vexpower_parameters["frame"]["energy"]["altcolors"]["use"][5] end,
										},
									frameenergycolor = {
										name = "New color",
										order=2, type = "color", hasAlpha=false,
										desc = "background color used when not using blizzard's preset colors",
										hidden = not(vexpower_parameters["frame"]["energy"]["altcolors"]["use"][5]),
										disabled = vexpower_parameters["frame"]["energy"]["altcolors"]["typecolored"][5] or vexpower_parameters["frame"]["energy"]["altcolors"]["classcolored"][5] or not(vexpower_parameters["frame"]["energy"]["altcolors"]["use"][5]),
										set = function(info,r,g,b,a)
											vexpower_parameters["frame"]["energy"]["altcolors"]["5"]["r"]=r
											vexpower_parameters["frame"]["energy"]["altcolors"]["5"]["g"]=g
											vexpower_parameters["frame"]["energy"]["altcolors"]["5"]["b"]=b
											vexpower_initialize(true) end,
										get = function() return vexpower_parameters["frame"]["energy"]["altcolors"]["5"]["r"],
											vexpower_parameters["frame"]["energy"]["altcolors"]["5"]["g"],
											vexpower_parameters["frame"]["energy"]["altcolors"]["5"]["b"] end,
										},
									frametypecolored = {
										name = "Use powertype color",
										order=3, type = "toggle",
										hidden = not(vexpower_parameters["frame"]["energy"]["altcolors"]["use"][5]),
										disabled = not(vexpower_parameters["frame"]["energy"]["altcolors"]["use"][5]),
										set = function(self,key) vexpower_optionTab_PowerBar_setRecoloring(5, "type", key) vexpower_initialize(true) end,
										get = function() return vexpower_parameters["frame"]["energy"]["altcolors"]["typecolored"][5] end,
										},
									frameclasscolored = {
										name = "Use classcolor",
										order=4, type = "toggle",
										hidden = not(vexpower_parameters["frame"]["energy"]["altcolors"]["use"][5]),
										disabled = not(vexpower_parameters["frame"]["energy"]["altcolors"]["use"][5]),
										set = function(self,key) vexpower_optionTab_PowerBar_setRecoloring(5, "class", key) vexpower_initialize(true) end,
										get = function() return vexpower_parameters["frame"]["energy"]["altcolors"]["classcolored"][5] end,
										},
									opacityframe = {
										name = "Opacity %",
										order=5, type = "range",
										desc = "Sets the opacity",
										step = 5, min = 0, max = 100,
										hidden = not(vexpower_parameters["frame"]["energy"]["altcolors"]["use"][5]),
										disabled = not(vexpower_parameters["frame"]["energy"]["altcolors"]["use"][5]),
										set = function(info,val) vexpower_parameters["frame"]["energy"]["altcolors"]["5"]["a"]=val/100 vexpower_initialize(true) end,
										get = function() return vexpower_parameters["frame"]["energy"]["altcolors"]["5"]["a"]*100 end
										},
									},
								},
							grpchangecolor6 = {
								name = "|CFF00FF00power full|r",
								order=16, type ="group", dialogInline = true,
								args = {
									use = {
										name = "Change color",
										order=1, type = "toggle", width="full",
										desc = "",
										set = function(self,key) vexpower_parameters["frame"]["energy"]["altcolors"]["use"][6]=key vexpower_initialize(true) end,
										get = function() return vexpower_parameters["frame"]["energy"]["altcolors"]["use"][6] end,
										},
									frameenergycolor = {
										name = "New color",
										order=2, type = "color", hasAlpha=false,
										desc = "background color used when not using blizzard's preset colors",
										hidden = not(vexpower_parameters["frame"]["energy"]["altcolors"]["use"][6]),
										disabled = vexpower_parameters["frame"]["energy"]["altcolors"]["typecolored"][6] or vexpower_parameters["frame"]["energy"]["altcolors"]["classcolored"][6] or not(vexpower_parameters["frame"]["energy"]["altcolors"]["use"][6]),
										set = function(info,r,g,b,a)
											vexpower_parameters["frame"]["energy"]["altcolors"]["6"]["r"]=r
											vexpower_parameters["frame"]["energy"]["altcolors"]["6"]["g"]=g
											vexpower_parameters["frame"]["energy"]["altcolors"]["6"]["b"]=b
											vexpower_initialize(true) end,
										get = function() return vexpower_parameters["frame"]["energy"]["altcolors"]["6"]["r"],
											vexpower_parameters["frame"]["energy"]["altcolors"]["6"]["g"],
											vexpower_parameters["frame"]["energy"]["altcolors"]["6"]["b"] end,
										},
									frametypecolored = {
										name = "Use powertype color",
										order=3, type = "toggle",
										hidden = not(vexpower_parameters["frame"]["energy"]["altcolors"]["use"][6]),
										disabled = not(vexpower_parameters["frame"]["energy"]["altcolors"]["use"][6]),
										set = function(self,key) vexpower_optionTab_PowerBar_setRecoloring(6, "type", key) vexpower_initialize(true) end,
										get = function() return vexpower_parameters["frame"]["energy"]["altcolors"]["typecolored"][6] end,
										},
									frameclasscolored = {
										name = "Use classcolor",
										order=4, type = "toggle",
										hidden = not(vexpower_parameters["frame"]["energy"]["altcolors"]["use"][6]),
										disabled = not(vexpower_parameters["frame"]["energy"]["altcolors"]["use"][6]),
										set = function(self,key) vexpower_optionTab_PowerBar_setRecoloring(6, "class", key) vexpower_initialize(true) end,
										get = function() return vexpower_parameters["frame"]["energy"]["altcolors"]["classcolored"][6] end,
										},
									opacityframe = {
										name = "Opacity %",
										order=5, type = "range",
										desc = "Sets the opacity",
										step = 5, min = 0, max = 100,
										hidden = not(vexpower_parameters["frame"]["energy"]["altcolors"]["use"][6]),
										disabled = not(vexpower_parameters["frame"]["energy"]["altcolors"]["use"][6]),
										set = function(info,val) vexpower_parameters["frame"]["energy"]["altcolors"]["6"]["a"]=val/100 vexpower_initialize(true) end,
										get = function() return vexpower_parameters["frame"]["energy"]["altcolors"]["6"]["a"]*100 end
										},
									},
								},
							},
						},
					},
				},
			}
		}
end