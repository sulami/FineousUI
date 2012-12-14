function vexpower.panel_text()
	if vexpower_optionTab_Text_currentTextfield == "" then
		vexpower_optionTab_Text_currentTextfield = vexpower_optionTab_Text_getFirst()
	end
	local tagvalues = {
		["PowerCurrent"] = "|CFFFF7D0APowerCurrent|r",
		["PowerCurrentShort"] = "|CFFFF7D0APowerCurrentShort|r",
		["PowerCurrentSmart"] = "|CFFFF7D0APowerCurrentSmart|r",
		
		["PowerMax"] = "|CFFFF7D0APowerMax|r",
		["PowerMaxShort"] = "|CFFFF7D0APowerMaxShort|r",
		["PowerMaxSmart"] = "|CFFFF7D0APowerMaxSmart|r",
		
		["PowerMissing"] = "|CFFFF7D0APowerMissing|r",
		["PowerMissingShort"] = "|CFFFF7D0APowerMissingShort|r",
		["PowerMissingSmart"] = "|CFFFF7D0APowerMissingSmart|r",
		
		["PowerPerc"] = "|CFFFF7D0APowerPerc|r",
		["PowerPercSmart"] = "|CFFFF7D0APowerPercSmart|r",
		
		["TimeTotal"] = "|CFFFF7D0ATimeTotal|r",
		["TimeLeft"] = "|CFFFF7D0ATimeLeft|r",
		["TimeLeftShort"] = "|CFFFF7D0ATimeLeftShort|r",
		
		["CPsCurrent"] = "|CFFFF7D0ACPsCurrent|r",
		["CPsMax"] = "|CFFFF7D0ACPsMax|r",
		["CPsMissing"] = "|CFFFF7D0ACPsMissing|r",
		
		["PowerAltCurrent"] = "|CFFFFCC00PowerAltCurrent|r",
		["PowerAltMax"] = "|CFFFFCC00PowerAltMax|r",
		}

	return {
		type = "group",
		order= 3,
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
			
			edit = {
				name = "Textfield",
				order=5, type ="group", dialogInline = true,
				args = {
					profile = {
						name = "Textfields",
						order=1, type = "select", style = "dropdown", width="half",
						values = vexpower_optionTab_Text_getList(),
						set = function(self,val) vexpower_optionTab_Text_currentTextfield = val vexpower_initialize(true) end,
						get = function() return vexpower_optionTab_Text_currentTextfield end,
						},
					new = {
						name = "create new",
						order=2, type = "execute", width="normal",
						func = function(info,val) vexpower_optionTab_Text_createNew() vexpower_initialize(true) end,
						},
					clone = {
						name = "create clone",
						order=3, type = "execute", width="normal",
						func = function(info,val) vexpower_optionTab_Text_clone() vexpower_initialize(true) end,
						},
					delete = {
						name = "delete",
						order=4, type = "execute", width="half",
						func = function(info,val) vexpower_optionTab_Text_delete() vexpower_initialize(true) end,
						confirm = true,
						confirmText = "Are you sure you want to delete the textfield?"
						},
					status = {name = vexpower_optionTab_Text_statusMsg.."\n", type = "description", order=5},
					
					grpoptiontabs = {
						name = "Toggle Option Tabs",
						order=6, type ="group", dialogInline = true,
						args = {
							button_position = {
								name = "Position & Size",
								order=1, type = "execute", width="normal",
								func = function(info,val) vexpower_optionTab_Text_toggleTab("position") vexpower_initialize(true) end,
								},
							button_content = {
								name = "Content",
								order=2, type = "execute", width="half",
								func = function(info,val) vexpower_optionTab_Text_toggleTab("content") vexpower_initialize(true) end,
								},
							button_Format = {
								name = "Format",
								order=3, type = "execute", width="half",
								func = function(info,val) vexpower_optionTab_Text_toggleTab("format") vexpower_initialize(true) end,
								},
							button_shadow = {
								name = "Shadow",
								order=5, type = "execute", width="half",
								func = function(info,val) vexpower_optionTab_Text_toggleTab("shadow") vexpower_initialize(true) end,
								},
							spaceoptiontabs = {name =" ", type = "description", order=7},
										
							content = {
								name = "Content",
								order=10, type ="group", dialogInline = true, hidden = not(vexpower_optionTab_Text_openTab["content"]),
								args = {
									framelefttextcontent = {
										name = "Text",
										desc = "Text that is shown left", width="full",
										order=1, type = "input", multiline = false,
										disabled = vexpower_optionTab_Text_getDisabled(),
										set = function(info,val) vexpower_optionTab_Text_setData_direct("text", val) vexpower_initialize(true) end,
										get = function() return vexpower_optionTab_Text_getData_direct("text") end
										},
									frameleftinserttag = {
										name = "Insert Tag",
										order=2, type = "select", style = "dropdown",
										values = tagvalues,
										disabled = vexpower_optionTab_Text_getDisabled(),
										set = function(self,val) vexpower_optionTab_Text_insertTag("left", val) vexpower_initialize(true) end,
										get = function() return "" end,
										},
									help = {
										name = "tag info",
										order=3, type = "execute",
										func = function(info,val) vexpower_TagWindows_toggle() end,
										},
									space = {name = " ", type="description", width="full", order=10},
									partof = {
										name = "Bar Relation",
										order=11, type = "select", style = "dropdown",
										values = {["POWERBAR"]="PowerBar",
													["CPSBAR"]="ComboPointBar"},
										disabled = vexpower_optionTab_Text_getDisabled(),
										set = function(self,val) vexpower_optionTab_Text_setData_direct("cptext", val) vexpower_initialize(true) end,
										get = function() return vexpower_optionTab_Text_getData_direct("cptext") end,
										},
									info = {name = "The bar relation is important for the show and hide effects. When a bar becomes hidden all textfields related to that bar become hidden, too.", type="description", width="full", order=12},
									},
								},
										
							Format = {
								name = "Format",
								order=20, type ="group", dialogInline = true, hidden = not(vexpower_optionTab_Text_openTab["format"]),
								args = {
									font = {
										name = "Font",
										order=100, type = "select",
										dialogControl = "LSM30_Font",
										disabled = vexpower_optionTab_Text_getDisabled(),
										values = vexpower.LSM:HashTable("font"),
										set = function(self,val) vexpower_optionTab_Text_setData_direct("font", val) vexpower_initialize(true) end,
										get = function() return vexpower_optionTab_Text_getData_direct("font") end,
										},
									size = {
										name = "Size",
										order=101, type = "range",
										step = 1, min = 6, max = 20,
										disabled = vexpower_optionTab_Text_getDisabled(),
										set = function(info,val) vexpower_optionTab_Text_setData_direct("size", val) vexpower_initialize(true) vexpower_Testmode_Text_handler() end,
										get = function() return vexpower_optionTab_Text_getData_direct("size") end,
										},
									color = {
										name = "color",
										order=102, type = "color", hasAlpha=true,
										desc = "Sets the text color",
										disabled = vexpower_optionTab_Text_getDisabled(),
										set = function(info,r,g,b,a)
											vexpower_optionTab_Text_setData_color("r", r)
											vexpower_optionTab_Text_setData_color("g", g)
											vexpower_optionTab_Text_setData_color("b", b)
											vexpower_optionTab_Text_setData_color("a", a)
											vexpower_initialize(true) end,
										get = function() return
											vexpower_optionTab_Text_getData_color("r"),
											vexpower_optionTab_Text_getData_color("g"),
											vexpower_optionTab_Text_getData_color("b"),
											vexpower_optionTab_Text_getData_color("a") end,
										},
									align = {
										name = "Text align",
										order=103, type = "select", style = "dropdown",
										desc = "Sets the text align",
										disabled = vexpower_optionTab_Text_getDisabled(),
										values = {["LEFT"]="Left", ["CENTER"]="Center", ["RIGHT"]="Right"},
										set = function(self,val) vexpower_optionTab_Text_setData_direct("align", val) vexpower_initialize(true) end,
										get = function() return vexpower_optionTab_Text_getData_direct("align") end,
										},
									effect = {
										name = "effect",
										order=104, type = "select", style = "dropdown",
										values = {["MONOCHROME"]="Monochrome",
													["OUTLINE"]="Outline",
													[""]="None",
													["THICKOUTLINE"]="Thickoutline"},
										disabled = vexpower_optionTab_Text_getDisabled(),
										set = function(self,val) vexpower_optionTab_Text_setData_direct("effect", val) vexpower_initialize(true) end,
										get = function() return vexpower_optionTab_Text_getData_direct("effect") end,
										},
									},
								},
										
							poistion = {
								name = "Position & Size",
								order=30, type ="group", dialogInline = true, hidden = not(vexpower_optionTab_Text_openTab["position"]),
								args = {
									x = {
										name = "X Position",
										order=1, type = "range",
										step = 1, min = -300, max = 300,
										disabled = vexpower_optionTab_Text_getDisabled(),
										set = function(info,val) vexpower_optionTab_Text_setData_direct("x", val) vexpower_initialize(true) vexpower_Testmode_Text_handler() end,
										get = function() return vexpower_optionTab_Text_getData_direct("x") end
										},
									y = {
										name = "Y Position",
										order=2, type = "range",
										step = 1, min = -300, max = 300,
										disabled = vexpower_optionTab_Text_getDisabled(),
										set = function(info,val) vexpower_optionTab_Text_setData_direct("y", val) vexpower_initialize(true) vexpower_Testmode_Text_handler() end,
										get = function() return vexpower_optionTab_Text_getData_direct("y") end
										},
									space1 = {name = " ", type="description", order=10},
									anchor = {
										name = "Anchor Textfield",
										order=11, type = "select", style = "dropdown",
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
										disabled = vexpower_optionTab_Text_getDisabled(),
										set = function(self,val) vexpower_optionTab_Text_setData_direct("anchor", val) vexpower_initialize(true) vexpower_Testmode_Text_handler() end,
										get = function() return vexpower_optionTab_Text_getData_direct("anchor") end,
										},
									anchor2 = {
										name = "Anchor Powerbar",
										order=12, type = "select", style = "dropdown",
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
										disabled = vexpower_optionTab_Text_getDisabled(),
										set = function(self,val) vexpower_optionTab_Text_setData_direct("anchor2", val) vexpower_initialize(true) vexpower_Testmode_Text_handler() end,
										get = function() return vexpower_optionTab_Text_getData_direct("anchor2") end,
										},
									space2 = {name = " ", type="description", order=13},
									width = {
										name = "Width",
										order=14, type = "range",
										step = 1, min = 1, max = 400,
										disabled = vexpower_optionTab_Text_getDisabled(),
										set = function(info,val) vexpower_optionTab_Text_setData_direct("width", val) vexpower_initialize(true) vexpower_Testmode_Text_handler() end,
										get = function() return vexpower_optionTab_Text_getData_direct("width") end
										},
									},
								},
										
							shadow = {
								name = "Shadow-Effect",
								order=40, type ="group", dialogInline = true, hidden = not(vexpower_optionTab_Text_openTab["shadow"]),
								args = {
									allow = {
										name = "Activate shadow effect",
										order=1, type = "toggle", width="full",
										desc = "",
										disabled = vexpower_optionTab_Text_getDisabled(),
										set = function(self,val) vexpower_optionTab_Text_setData_shadow(false, "allow", val) vexpower_initialize(true) end,
										get = function() return vexpower_optionTab_Text_getData_shadow(false, "allow") end,
										},
									color = {
										name = "color",
										disabled = not(vexpower_optionTab_Text_getData_shadow(false, "allow")) or vexpower_optionTab_Text_getDisabled(),
										order=2, type = "color", hasAlpha=true, width="double",
										set = function(info,r,g,b,a)
											vexpower_optionTab_Text_setData_shadow("color", "r", r)
											vexpower_optionTab_Text_setData_shadow("color", "g", g)
											vexpower_optionTab_Text_setData_shadow("color", "b", b)
											vexpower_optionTab_Text_setData_shadow("color", "a", a)
											vexpower_initialize(true) end,
										get = function() return
											vexpower_optionTab_Text_getData_shadow("color", "r"),
											vexpower_optionTab_Text_getData_shadow("color", "g"),
											vexpower_optionTab_Text_getData_shadow("color", "b"),
											vexpower_optionTab_Text_getData_shadow("color", "a") end,
										},
									opacity = {
										name = "Opacity %",
										order=3, type = "range",
										step = 5, min = 0, max = 100,
										disabled = not(vexpower_optionTab_Text_getData_shadow(false, "allow")) or vexpower_optionTab_Text_getDisabled(),
										set = function(info,val) vexpower_optionTab_Text_setData_shadow("color", "a", val/100) vexpower_initialize(true) end,
										get = function() return vexpower_optionTab_Text_getData_shadow("color", "a") end
										},
									x = {
										name = "X Position",
										order=4, type = "range",
										step = 1, min = -50, max = 50,
										disabled = not(vexpower_optionTab_Text_getData_shadow(false, "allow")) or vexpower_optionTab_Text_getDisabled(),
										set = function(info,val) vexpower_optionTab_Text_setData_shadow("offset", "x", val) vexpower_initialize(true) end,
										get = function() return vexpower_optionTab_Text_getData_shadow("offset", "x") end
										},
									y = {
										name = "Y Position",
										order=5, type = "range",
										step = 1, min = -50, max = 50,
										disabled = not(vexpower_optionTab_Text_getData_shadow(false, "allow")) or vexpower_optionTab_Text_getDisabled(),
										set = function(info,val) vexpower_optionTab_Text_setData_shadow("offset", "y", val) vexpower_initialize(true) end,
										get = function() return vexpower_optionTab_Text_getData_shadow("offset", "y") end
										},
									},
								},
							},
						},
					}
				}
			}
		}
end