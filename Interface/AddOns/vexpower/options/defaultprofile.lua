function vexpower.panel_defaultprofile()
	return {
		type = "group",
		args = {			
			grpadd = {
				name = "Default Profile",
				order=10, type ="group", dialogInline = true,
				args = {
					frame_space3 = {name = "Loads a specific profile instead of addon defaults for new chars.\n", type = "description", order=1},
					activate = {
						name = "Activate",
						order=10, type = "toggle", width="full",
						set = function(self,key) vexpower_default_data["activate"]=key vexpower_initialize(true) end,
						get = function() return vexpower_default_data["activate"] end,
						},
					profile = {
						name = "Profile",
						order=20, type = "select", style = "dropdown", width="double",
						values = vexpower_optionTab_Profiles_getList(),
						set = function(self,key) vexpower_default_data["profile"] = key vexpower_initialize(true) end,
						get = function() return vexpower_default_data["profile"] end,
						},
					},
				},
			space = {name = " ", type = "description", order=15},
			grpcolorpresets = {
				name = "Color Sets",
				order=20, type ="group", dialogInline = true,
				args = {
					info = {name = "Loads a Color Set for new chars overwriting addon defaults and the 'default profile' colors\n", type = "description", order=1},
						
					PALADINactivate = {
						name = "|CFF"..vexpower_ClassColorHex("PALADIN").."Paladin|r",
						order=20, type = "toggle",
						set = function(self,key) vexpower_default_data["classpresets"]["PALADIN"][1]=key vexpower_initialize(true) end,
						get = function() return vexpower_default_data["classpresets"]["PALADIN"][1] end,
						},
					PALADINprofile = {
						name = "Color Set",
						order=21, type = "select", style = "dropdown", width="double",
						values = vexpower_optionTab_ColorSets_getList(),
						set = function(self,key) vexpower_default_data["classpresets"]["PALADIN"][2] = key vexpower_initialize(true) end,
						get = function() return vexpower_default_data["classpresets"]["PALADIN"][2] end,
						},
						
					DRUIDactivate = {
						name = "|CFF"..vexpower_ClassColorHex("DRUID").."Druid|r",
						order=30, type = "toggle",
						set = function(self,key) vexpower_default_data["classpresets"]["DRUID"][1]=key vexpower_initialize(true) end,
						get = function() return vexpower_default_data["classpresets"]["DRUID"][1] end,
						},
					DRUIDprofile = {
						name = "Color Set",
						order=31, type = "select", style = "dropdown", width="double",
						values = vexpower_optionTab_ColorSets_getList(),
						set = function(self,key) vexpower_default_data["classpresets"]["DRUID"][2] = key vexpower_initialize(true) end,
						get = function() return vexpower_default_data["classpresets"]["DRUID"][2] end,
						},
						
					ROGUEactivate = {
						name = "|CFF"..vexpower_ClassColorHex("ROGUE").."Rogue|r",
						order=40, type = "toggle",
						set = function(self,key) vexpower_default_data["classpresets"]["ROGUE"][1]=key vexpower_initialize(true) end,
						get = function() return vexpower_default_data["classpresets"]["ROGUE"][1] end,
						},
					ROGUEprofile = {
						name = "Color Set",
						order=41, type = "select", style = "dropdown", width="double",
						values = vexpower_optionTab_ColorSets_getList(),
						set = function(self,key) vexpower_default_data["classpresets"]["ROGUE"][2] = key vexpower_initialize(true) end,
						get = function() return vexpower_default_data["classpresets"]["ROGUE"][2] end,
						},
						
					MONKactivate = {
						name = "|CFF"..vexpower_ClassColorHex("MONK").."Monk|r",
						order=50, type = "toggle",
						set = function(self,key) vexpower_default_data["classpresets"]["MONK"][1]=key vexpower_initialize(true) end,
						get = function() return vexpower_default_data["classpresets"]["MONK"][1] end,
						},
					MONKprofile = {
						name = "Color Set",
						order=51, type = "select", style = "dropdown", width="double",
						values = vexpower_optionTab_ColorSets_getList(),
						set = function(self,key) vexpower_default_data["classpresets"]["MONK"][2] = key vexpower_initialize(true) end,
						get = function() return vexpower_default_data["classpresets"]["MONK"][2] end,
						},
						
					HUNTERactivate = {
						name = "|CFF"..vexpower_ClassColorHex("HUNTER").."Hunter|r",
						order=60, type = "toggle",
						set = function(self,key) vexpower_default_data["classpresets"]["HUNTER"][1]=key vexpower_initialize(true) end,
						get = function() return vexpower_default_data["classpresets"]["HUNTER"][1] end,
						},
					HUNTERprofile = {
						name = "Color Set",
						order=61, type = "select", style = "dropdown", width="double",
						values = vexpower_optionTab_ColorSets_getList(),
						set = function(self,key) vexpower_default_data["classpresets"]["HUNTER"][2] = key vexpower_initialize(true) end,
						get = function() return vexpower_default_data["classpresets"]["HUNTER"][2] end,
						},
						
					DEATHKNIGHTactivate = {
						name = "|CFF"..vexpower_ClassColorHex("DEATHKNIGHT").."DeathKnight|r",
						order=70, type = "toggle", disabled=true,
						set = function(self,key)  end,
						get = function() return false end,
						},
					DEATHKNIGHTainfo = {name = "DeathKnight ComboPoints has been outsorced to 'Vex Runes'", type = "description", width="double", order=72},
						
					WARRIORactivate = {
						name = "|CFF"..vexpower_ClassColorHex("WARRIOR").."Warrior|r",
						order=80, type = "toggle",
						set = function(self,key) vexpower_default_data["classpresets"]["WARRIOR"][1]=key vexpower_initialize(true) end,
						get = function() return vexpower_default_data["classpresets"]["WARRIOR"][1] end,
						},
					WARRIORprofile = {
						name = "Color Set",
						order=81, type = "select", style = "dropdown", width="double",
						values = vexpower_optionTab_ColorSets_getList(),
						set = function(self,key) vexpower_default_data["classpresets"]["WARRIOR"][2] = key vexpower_initialize(true) end,
						get = function() return vexpower_default_data["classpresets"]["WARRIOR"][2] end,
						},
						
					SHAMANactivate = {
						name = "|CFF"..vexpower_ClassColorHex("SHAMAN").."Shaman|r",
						order=90, type = "toggle",
						set = function(self,key) vexpower_default_data["classpresets"]["SHAMAN"][1]=key vexpower_initialize(true) end,
						get = function() return vexpower_default_data["classpresets"]["SHAMAN"][1] end,
						},
					SHAMANprofile = {
						name = "Color Set",
						order=91, type = "select", style = "dropdown", width="double",
						values = vexpower_optionTab_ColorSets_getList(),
						set = function(self,key) vexpower_default_data["classpresets"]["SHAMAN"][2] = key vexpower_initialize(true) end,
						get = function() return vexpower_default_data["classpresets"]["SHAMAN"][2] end,
						},
						
					PRIESTactivate = {
						name = "|CFF"..vexpower_ClassColorHex("PRIEST").."Priest|r",
						order=100, type = "toggle",
						set = function(self,key) vexpower_default_data["classpresets"]["PRIEST"][1]=key vexpower_initialize(true) end,
						get = function() return vexpower_default_data["classpresets"]["PRIEST"][1] end,
						},
					PRIESTprofile = {
						name = "Color Set",
						order=101, type = "select", style = "dropdown", width="double",
						values = vexpower_optionTab_ColorSets_getList(),
						set = function(self,key) vexpower_default_data["classpresets"]["PRIEST"][2] = key vexpower_initialize(true) end,
						get = function() return vexpower_default_data["classpresets"]["PRIEST"][2] end,
						},
						
					WARLOCKactivate = {
						name = "|CFF"..vexpower_ClassColorHex("WARLOCK").."Warlock|r",
						order=110, type = "toggle",
						set = function(self,key) vexpower_default_data["classpresets"]["WARLOCK"][1]=key vexpower_initialize(true) end,
						get = function() return vexpower_default_data["classpresets"]["WARLOCK"][1] end,
						},
					WARLOCKprofile = {
						name = "Color Set",
						order=111, type = "select", style = "dropdown", width="double",
						values = vexpower_optionTab_ColorSets_getList(),
						set = function(self,key) vexpower_default_data["classpresets"]["WARLOCK"][2] = key vexpower_initialize(true) end,
						get = function() return vexpower_default_data["classpresets"]["WARLOCK"][2] end,
						},
						
					MAGEactivate = {
						name = "|CFF"..vexpower_ClassColorHex("MAGE").."Mage|r",
						order=120, type = "toggle",
						set = function(self,key) vexpower_default_data["classpresets"]["MAGE"][1]=key vexpower_initialize(true) end,
						get = function() return vexpower_default_data["classpresets"]["MAGE"][1] end,
						},
					MAGEprofile = {
						name = "Color Set",
						order=121, type = "select", style = "dropdown", width="double",
						values = vexpower_optionTab_ColorSets_getList(),
						set = function(self,key) vexpower_default_data["classpresets"]["MAGE"][2] = key vexpower_initialize(true) end,
						get = function() return vexpower_default_data["classpresets"]["MAGE"][2] end,
						},
					},
				},
			}
		}
end