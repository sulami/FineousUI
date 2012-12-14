function vexpower_Timer(name, duration, func)
	local aniGRP = vexpower_MainFrame:CreateAnimationGroup(name)
	aniGRP:SetLooping("NONE")
	local ani = aniGRP:CreateAnimation("Scale")
	ani:SetOrder(1)
	ani:SetDuration(0)
	ani:SetScale(1,1)
	ani:SetEndDelay(duration)
	aniGRP:SetScript("OnFinished", function (self) func(self) end)
	aniGRP:Play()
	return {aniGRP, ani}
end

function vexpower_vehicleHandler(player)
	if player then
		local val = UnitHasVehicleUI("player")
		-- if val then
			-- if UnitPowerMax("vehicle") ~= 0 and UnitPowerMax("vehicle") ~= nil then
				-- vexpower.vehiclePower = true
				-- vexpower.vehicleCP = true
			-- else
				-- vexpower.vehiclePower = false
				-- vexpower.vehicleCP = false
			-- end
		-- else
			-- vexpower.vehiclePower = false
			-- vexpower.vehicleCP = false
		-- end
		vexpower.vehiclePower = val
		vexpower.vehicleCP = val
		vexpower.inVehicle = val
	end
	
	if vexpower.loaded then
		vexpower_Show_handler()
		vexpower_Power_setPowerType()
		vexpower_Markers_handler()
	end
end

function vexpower_infightDelayTimer()		
	if vexpower.infightTimer[1] ~= nil then
		if vexpower.infightTimer[1]:IsPlaying() then
			vexpower.infightTimer[1]:Stop()
		end
	end
	if vexpower_parameters["frame"]["infightdelay"] > 0 then
		vexpower.infightTimer = vexpower_Timer(
			"vexpower.infightTimer",
			vexpower_parameters["frame"]["infightdelay"],
			function ()
			vexpower.infight = false
			vexpower_Show_handler()
			vexpower_Power_setBarColor()
			end)
	else
		vexpower.infight = false
		vexpower_Show_handler()
		vexpower_Power_setBarColor()
	end
end

function vexpower_setSpec()
	vexpower.spec = GetActiveSpecGroup(false, false)
	
	local specType = 0
	if GetSpecialization() ~= nil then
		if GetSpecializationInfo(GetSpecialization()) ~= nil then
			specType = select(1, GetSpecializationInfo(GetSpecialization()))
		end
	end
	vexpower.specType = specType
end

function vexpower_getClass()
	return select(2, UnitClass("player"))
end

function vexpower_setClass()
	vexpower.class = vexpower_getClass()
end

function vexpower_startInfightDelay()
	if vexpower.infightTimer_ani[1]:IsPlaying() then
		vexpower.infightTimer_ani[1]:Stop()
	end
	vexpower.infightTimer_ani[1]:Play()
end

function vexpower_PowerTypeColorHex(powertype)
	return vexpower_dec2hex(PowerBarColor[powertype]["r"],PowerBarColor[powertype]["g"],PowerBarColor[powertype]["b"])
end

function vexpower_ClassColorHex(class)
	return vexpower_dec2hex( RAID_CLASS_COLORS[class]["r"], RAID_CLASS_COLORS[class]["g"], RAID_CLASS_COLORS[class]["b"])
end

function vexpower_dec2hex(r,g,b)
	if r == nil then r = 0 end
	if g == nil then g = 0 end
	if b == nil then b = 0 end
    return string.format("%02x%02x%02x", r*250, g*250, b*250)
end

-- thx to Lombra from WoWAce for this function
function vexpower_CopyTable(settings)
	local copy = {}
	if settings ~= nil then
		for k, v in pairs(settings) do
			if type(v) == "table" then  copy[k] = vexpower_CopyTable(v)
			else						copy[k] = v end
		end
	end
	return copy
end

function vexpower_setBlizzFrames()		
	if vexpower_parameters["blizzhide"]["chi"] then
		MonkHarmonyBar.Show = function () end
		MonkHarmonyBar:SetScript("OnEvent", nil)
		MonkHarmonyBar:UnregisterAllEvents()
		MonkHarmonyBar:Hide()
	end	
	
	if vexpower_parameters["blizzhide"]["holypower"] then
		PaladinPowerBar.Show = function () end
		PaladinPowerBar:Hide()
		PaladinPowerBar:UnregisterAllEvents()
	end	
	
	if vexpower_parameters["blizzhide"]["lockShards"] then
		ShardBarFrame.Show = function () end
		ShardBarFrame:Hide()
		ShardBarFrame:UnregisterAllEvents()
	end
	
	if vexpower_parameters["blizzhide"]["cps"] then
		ComboFrame.Show = function () end
		ComboFrame:Hide()
		ComboFrame:UnregisterAllEvents()
	end
end