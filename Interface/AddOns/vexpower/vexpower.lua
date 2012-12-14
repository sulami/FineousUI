vexpower = {}
vexpower.maxwidth = 0
vexpower.loaded = false

vexpower.class = ""
vexpower.classData = {}
vexpower.spec = 1
vexpower.specType = 0
vexpower.tagWindow = false
vexpower.stealth = false

vexpower.inVehicle = false
vexpower.vehiclePower = false
vexpower.vehicleCP = false

vexpower.testmode = false
vexpower.delayedStartTimer = {}

vexpower.infight = false
vexpower.infightUndelayed = false
vexpower.infightTime = 0
vexpower.infightTimer = {}
vexpower.monkChiTimer = {}
vexpower.targetSet = false

vexpower.energytype = "MANA"
vexpower.energytype_prev = "MANA"
vexpower.maxenergy = 100
vexpower.maxenergy_prev = 100
vexpower.currentenergy = 100
vexpower.currentenergy_prev = 100

vexpower.currentcps = 0
vexpower.currentcps_prev = 0
vexpower.maxcps = 5

vexpower.showCPs = true
vexpower.showEnergy = true

vexpower.markers = {nil}

vexpower.cpsbars = {}
vexpower.cpsbars_anigrps = {}
vexpower.cpsbars_anis = {}

vexpower.AltPower = {}
vexpower.AltPower.created = false
vexpower.AltPower.maxwidth = {}
vexpower.AltPower.currentenergy = {}
vexpower.AltPower.currentenergy_prev = {}
vexpower.AltPower.maxenergy = {}
vexpower.AltPower.maxenergy_prev = {}
vexpower.AltPower.Bar = {}
vexpower.AltPower.BarBG = {}
vexpower.AltPower.BarDif = {}

vexpower.AceConfigDialog = LibStub("AceConfigDialog-3.0", true)
vexpower.AceConfig = LibStub("AceConfig-3.0", true)
vexpower.AceConsole= LibStub("AceConsole-3.0", true)
vexpower.LSM = LibStub("LibSharedMedia-3.0", true)
vexpower.LSMWidgets = LibStub("AceGUI-3.0-SharedMediaWidgets", true)

function vexpower_onEvent(self, event, arg1, arg2, ...)
	if event == "PLAYER_LOGIN" then
		vexpower_initialize(false)
		vexpower.loaded = true
	elseif vexpower.loaded and event == "PLAYER_TARGET_CHANGED" then
		vexpower.targetSet = UnitName("target")~=nil
		vexpower_Show_handler()
		-- vexdebugs.print(vexpower.targetSet,'vexpower.targetSet')
		-- vexdebugs.print(event,"event")
		-- vexdebugs.print(arg1,"arg1")
		-- vexdebugs.print(arg2,"arg2")
		-- for i=1,20 do
			-- if select(i, ...) ~= nil then
				-- vexdebugs.print(select(i,...),"select("..i..",...)")
			-- end
		-- end
	elseif vexpower.loaded and event == "PLAYER_REGEN_DISABLED" then
		if vexpower.infightTimer[1] ~= nil then
			if vexpower.infightTimer[1]:IsPlaying() then
				vexpower.infightTimer[1]:Stop()
			end
		end
		
		vexpower.infight = true
		vexpower.infightUndelayed = true
		vexpower_Show_handler()
		vexpower_Power_setBarColor()
	elseif vexpower.loaded and event == "PLAYER_REGEN_ENABLED" then
		vexpower.infightUndelayed = false
		vexpower.infightTime = GetTime()
		
		vexpower_infightDelayTimer()
		vexpower_ClassSpecifics_Monk_chiTimer()
	elseif vexpower.loaded and event == "UPDATE_STEALTH" then
		vexpower.stealth=IsStealthed()
		vexpower_Show_handler()
	elseif vexpower.loaded and event == "UNIT_DISPLAYPOWER" then
		vexpower_Power_setPowerType()
		vexpower_Show_handler()
		vexpower_Power_change(true)
		vexpower_Text_change()
	elseif vexpower.loaded and (event == "ACTIVE_TALENT_GROUP_CHANGED" or event == "PLAYER_SPECIALIZATION_CHANGED") then	
		if vexpower.testmode then
			vexpower.testmode = false
			vexpower.delayedStartTimer = vexpower_Timer(
				"vexpower.delayedStartTimer", 0.5,
				function ()
					vexpower.testmode = true
					vexpower_Testmode_Auto_aniHandler()
					vexpower_Testmode_Auto_aniStarter()
				end)
		end
		
		vexpower_setSpec()
		vexpower_Markers_handler()
		vexpower_ClassSpecifics_handler()
	elseif event == "UNIT_ENTERED_VEHICLE" or event == "UNIT_EXITED_VEHICLE" then
		vexpower_vehicleHandler(arg1 == "player")
	end
end

function vexpower_onUpdate()
	if vexpower_parameters["frame"]["show"] and not(vexpower.testmode) then
		if vexpower_parameters["frame"]["energy"]["show"] then
			if vexpower_Power_getCurrent() ~= vexpower.currentenergy then
				vexpower_Power_change()
			end
		end
		
		if vexpower_parameters["frame"]["combo"]["show"] then
			if vexpower_CPs_getMax() ~= vexpower.maxcps then
				vexpower_initialize(true)
			end
			
			if vexpower_CPs_getCurrent() ~= vexpower.currentcps then
				vexpower_CPs_change()
			end
			
			if vexpower.AltPower.created then
				for i=1, vexpower.maxcps do
					if vexpower_AltPower_getCurrent(i) ~= vexpower.AltPower.currentenergy[i] then
						if vexpower.AltPower.Bar[1][2]~=nil then
							vexpower_AltPower_change(i)
						else
							vexpower_ClassSpecifics_handler()
							vexpower_ClassSpecifics_setBars()
						end
					end
				end
			end
		end
		vexpower_Text_change()
	elseif vexpower_parameters["frame"]["show"] then
		vexpower_Text_change()
	end
end