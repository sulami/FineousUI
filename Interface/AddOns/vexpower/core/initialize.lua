
function vexpower_initialize(refresh)
	vexpower_loadData()
	vexpower_setClass()
	if not(refresh) then
		vexpower_energybarbg = CreateFrame("Frame", "vexpower_energybarbg", vexpower_MainFrame)
		vexpower_energybar = CreateFrame("Frame", "vexpower_energybar", vexpower_energybarbg)
		vexpower_energybarDif = CreateFrame("Frame", "vexpower_energybarDif", vexpower_energybarbg)
		vexpower_energyTextbar = CreateFrame("Frame", "vexpower_energyTextbar", vexpower_energybarbg)
		vexpower_energyMarkers = CreateFrame("Frame", "vexpower_energyMarkers", vexpower_energybarbg)
		
		vexpower_cpsbar = CreateFrame("Frame", "vexpower_cpsbar", vexpower_MainFrame)
		vexpower_CPsTextbar = CreateFrame("Frame", "vexpower_energyTextbar", vexpower_cpsbar)
	end
	vexpower_Text_createFontStrings()
	
	vexpower_MainFrame_setFrame()
	vexpower_CPs_setMainBar()
	
	vexpower_setSpec()
	
	vexpower_Power_setMaxWidth()
	if not(vexpower.testmode) then
		vexpower_CPs_setMax()
		vexpower_CPs_setCurrent()
		vexpower_Power_setCurrent()
		vexpower_Power_setMax()
		vexpower_Power_setPowerType(true)
	else
		vexpower_Testmode_toggleCPBGs()
		vexpower_TestModeWindow_toggle()
	end
	
	vexpower_setBlizzFrames()
	
	vexpower_Power_setBarBG()
	vexpower_Power_setBar()
	vexpower_Power_setBarDif()
	
	vexpower_Text_setEnergyTextbar()
	vexpower_Text_setCPsTextbar()
	vexpower_Text_setFontStrings()
	vexpower_Text_change()
	
	vexpower_CPs_setBars()
	vexpower_ClassSpecifics_handler()
	vexpower_ClassSpecifics_setBars()
	
	vexpower_Show_handler()
	vexpower_Markers_handler()
	
	if not(vexpower.testmode) then
		vexpower_Power_change()
	end
	
	vexpower_MainFrame_setMovable(false)
	
	if not(refresh) then
		vexpower.options = {}
		vexpower.options.main = vexpower.AceConfigDialog:AddToBlizOptions("Vex Power", "Vex Power")
		vexpower.options.powerbar = vexpower.AceConfigDialog:AddToBlizOptions("Vex Power Powerbar", "Powerbar", "Vex Power")
		vexpower.options.cps = vexpower.AceConfigDialog:AddToBlizOptions("Vex Power ComboPoints", "ComboPoints", "Vex Power")
		vexpower.options.text = vexpower.AceConfigDialog:AddToBlizOptions("Vex Power Textfields", "Textfields", "Vex Power")
		vexpower.options.markers = vexpower.AceConfigDialog:AddToBlizOptions("Vex Power Markers", "Markers", "Vex Power")
		vexpower.options.show = vexpower.AceConfigDialog:AddToBlizOptions("Vex Power Show", "Show", "Vex Power")
		vexpower.options.profiles = vexpower.AceConfigDialog:AddToBlizOptions("Vex Power Profiles", "Profiles", "Vex Power")
		vexpower.options.colorpresets = vexpower.AceConfigDialog:AddToBlizOptions("Vex Power Global Color Sets", "Global Color Sets", "Vex Power")
		vexpower.options.defaultprofile = vexpower.AceConfigDialog:AddToBlizOptions("Vex Power Global Defaults", "Global Defaults", "Vex Power")
		vexpower.options.strata = vexpower.AceConfigDialog:AddToBlizOptions("Vex Power Strata", "FrameStrata", "Vex Power")
	end
	
	vexpower.AceConfig:RegisterOptionsTable("Vex Power", vexpower.panel_main(), {})
	vexpower.AceConfig:RegisterOptionsTable("Vex Power Powerbar", vexpower.panel_powerbar(), {})
	vexpower.AceConfig:RegisterOptionsTable("Vex Power ComboPoints", vexpower.panel_cps(), {})
	vexpower.AceConfig:RegisterOptionsTable("Vex Power Textfields", vexpower.panel_text(), {})
	vexpower.AceConfig:RegisterOptionsTable("Vex Power Markers", vexpower.panel_markers(), {})
	vexpower.AceConfig:RegisterOptionsTable("Vex Power Show", vexpower.panel_show(), {})
	vexpower.AceConfig:RegisterOptionsTable("Vex Power Profiles", vexpower.panel_profiles(), {})
	vexpower.AceConfig:RegisterOptionsTable("Vex Power Global Color Sets", vexpower.panel_colorpresets(), {})
	vexpower.AceConfig:RegisterOptionsTable("Vex Power Global Defaults", vexpower.panel_defaultprofile(), {})
	vexpower.AceConfig:RegisterOptionsTable("Vex Power Strata", vexpower.panel_strata(), {})
end