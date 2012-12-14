
function vexpower_Power_change(energyTypeChanged, newenergy)
	if vexpower.showEnergy or vexpower.testmode then
		if energyTypeChanged then
			if vexpower_energybarDif_anigrp:IsPlaying() then
				vexpower_energybarDif_anigrp:Stop()
			end
			if vexpower_energybar_anigrp:IsPlaying() then
				vexpower_energybar_anigrp:Stop()
			end
			vexpower_energybar:SetWidth(vexpower.maxwidth)
			vexpower_Power_change()
		else
			if not(vexpower_energybar_anigrp:IsPlaying()) then
				if newenergy ~= nil then
					vexpower.currentenergy_prev = vexpower.currentenergy
					vexpower.currentenergy = vexpower.currentenergy + newenergy
				else
					vexpower_Power_setCurrent()
				end
				vexpower_Power_setMax()
				local maxenergy = vexpower.maxenergy
				if maxenergy == 0 then maxenergy = 1 end
				local barfactor_current = vexpower.currentenergy_prev/maxenergy
				local barfactor_new = vexpower.currentenergy/maxenergy
				local barfactor = 0
				
				if barfactor_current ~= 0 then 
					barfactor = barfactor_new/barfactor_current
				end
				
				local newWidth = vexpower_Power_getPowerWidth(vexpower.currentenergy)
								
				if barfactor < 1 and barfactor > 0 then
					local oldWidth = vexpower_Power_getPowerWidth(vexpower.currentenergy_prev)
					local difWidth = oldWidth - newWidth
					vexpower_energybar_ani:SetScale(barfactor, 1)
					if vexpower.energytype == "RAGE" or vexpower.energytype == "RUNIC_POWER" or vexpower.energytype == "FUEL" then
						vexpower_energybar_anigrp:SetScript("onFinished", function () vexpower_energybar:SetWidth(newWidth) end)
					end
					vexpower_energybar_anigrp:Play()
					
					if oldWidth<=vexpower.maxwidth then
						vexpower_energybarDif:SetWidth(difWidth)
						vexpower_energybarDif:ClearAllPoints()
						vexpower_energybarDif:SetPoint("TOPLEFT", vexpower_energybarbg, "TOPLEFT",
									vexpower_parameters["frame"]["energy"]["border"]["size"]+newWidth,
									-vexpower_parameters["frame"]["energy"]["border"]["size"])
						if vexpower_parameters["frame"]["energy"]["fadeout"] then
							vexpower_energybarDif_anigrp:Play()
						else
							vexpower_energybarDif:Hide()
						end
					else
						vexpower_energybarDif:Hide()
					end
				else 
					vexpower_energybar:SetWidth(newWidth)
				end
				vexpower_Power_setBarColor()
			end
		end
	end
end

function vexpower_Power_setCurrent()
	local new = vexpower_Power_getCurrent()
	if new ~= vexpower.currentenergy then
		vexpower.currentenergy_prev = vexpower.currentenergy
		vexpower.currentenergy = new
	end
end

function vexpower_Power_getCurrent()
	local unitID = ""
	if vexpower.vehiclePower and vexpower_parameters["frame"]["energy"]["vehicleEnergy"] then
		unitID = "vehicle"
	else
		unitID = "player"
	end
	return UnitPower(unitID)
end

function vexpower_Power_setMax()
	if vexpower_Power_getMax() ~= vexpower.maxenergy then
		vexpower.maxenergy_prev = vexpower.maxenergy
		vexpower.maxenergy = vexpower_Power_getMax()
		vexpower_Markers_handler()
	end
end

function vexpower_Power_getMax()
	local unitID = ""
	if vexpower.vehiclePower and vexpower_parameters["frame"]["energy"]["vehicleEnergy"] then
		unitID = "vehicle"
	else
		unitID = "player"
	end
	return UnitPowerMax(unitID)
end

function vexpower_Power_getPowerWidth(energy)
	local width = 0
	if vexpower.maxenergy~=0 then
		if not(string.find(energy, "%%")) then
			width = (energy / vexpower.maxenergy) * vexpower.maxwidth
		else
			local energypercentage = string.gsub(energy, "%%", "")
			energypercentage = energypercentage/100
			width = energypercentage * vexpower.maxwidth
		end
	end
	if width == 0 then width = 1 end
	return width
end

function vexpower_Power_setMaxWidth()
	local newwidth = vexpower_parameters["frame"]["energy"]["size"]["width"]-(vexpower_parameters["frame"]["energy"]["border"]["size"]*2)
	if vexpower.maxwidth ~= newwidth then
		vexpower.maxwidth = newwidth
		vexpower_Markers_handler()
	end
end

function vexpower_Power_setPowerType(force)
	vexpower.energytype_prev = vexpower.energytype
	if vexpower.inVehicle and vexpower_parameters["frame"]["energy"]["vehicleEnergy"] then
		vexpower.energytype = "FUEL"
		vexpower_Power_setBarColor()
	else
		vexpower.energytype = select(2, UnitPowerType("player"))
		if vexpower_parameters["frame"]["energy"]["showWithPowerType"][vexpower.energytype] then
			vexpower_Power_setBarColor()
		end
	end
end

function vexpower_Power_setBarColor()
	local coloring = {}
	coloring = vexpower_Power_getBarColor()
		
	if coloring[1] == "standard" then
		if coloring[2] and PowerBarColor[vexpower.energytype] ~= nil then
			vexpower_energybar:SetBackdropColor(	PowerBarColor[vexpower.energytype].r,
													PowerBarColor[vexpower.energytype].g,
													PowerBarColor[vexpower.energytype].b,
													vexpower_parameters["frame"]["energy"]["color"]["a"])
		elseif coloring[3] and RAID_CLASS_COLORS[vexpower.class] ~= nil then
			vexpower_energybar:SetBackdropColor(	RAID_CLASS_COLORS[vexpower.class].r,
													RAID_CLASS_COLORS[vexpower.class].g,
													RAID_CLASS_COLORS[vexpower.class].b,
													vexpower_parameters["frame"]["energy"]["color"]["a"])
		else
			vexpower_energybar:SetBackdropColor(	vexpower_parameters["frame"]["energy"]["color"]["r"],
													vexpower_parameters["frame"]["energy"]["color"]["g"],
													vexpower_parameters["frame"]["energy"]["color"]["b"],
													vexpower_parameters["frame"]["energy"]["color"]["a"])
		end
	else
		if coloring[2] and PowerBarColor[vexpower.energytype] ~= nil then
			vexpower_energybar:SetBackdropColor(	PowerBarColor[vexpower.energytype].r,
													PowerBarColor[vexpower.energytype].g,
													PowerBarColor[vexpower.energytype].b,
													vexpower_parameters["frame"]["energy"]["altcolors"][coloring[1]]["a"])
		elseif coloring[3] and RAID_CLASS_COLORS[vexpower.class] ~= nil then
			vexpower_energybar:SetBackdropColor(	RAID_CLASS_COLORS[vexpower.class].r,
													RAID_CLASS_COLORS[vexpower.class].g,
													RAID_CLASS_COLORS[vexpower.class].b,
													vexpower_parameters["frame"]["energy"]["altcolors"][coloring[1]]["a"])
		else
			vexpower_energybar:SetBackdropColor(	vexpower_parameters["frame"]["energy"]["altcolors"][coloring[1]]["r"],
													vexpower_parameters["frame"]["energy"]["altcolors"][coloring[1]]["g"],
													vexpower_parameters["frame"]["energy"]["altcolors"][coloring[1]]["b"],
													vexpower_parameters["frame"]["energy"]["altcolors"][coloring[1]]["a"])
		end
	end
end

function vexpower_Power_checkPowerForColor(situation)
	local amount = tonumber(vexpower_parameters["frame"]["energy"]["altcolors"][situation])
	
	local compare = 0.5
	if amount <= 1 then
		if vexpower.maxenergy ~= 0 then
			compare = vexpower.currentenergy / vexpower.maxenergy
		end
	else
		compare = vexpower.currentenergy
	end
	
	if compare > amount and situation == "full" then
		return true
	elseif compare < amount and situation == "empty" then
		return true
	elseif compare == amount then
		if vexpower_parameters["frame"]["energy"]["altcolors"][situation.."Inc"] then
			return true
		else
			return false
		end
	else
		return false
	end
end

function vexpower_Power_getBarColor()
	local situation = 0
	
	local returnvalue = {}
	returnvalue[1] = "standard"
	returnvalue[2] = vexpower_parameters["frame"]["energy"]["typecolored"]
	returnvalue[3] = vexpower_parameters["frame"]["energy"]["classcolored"]

	
	if vexpower.infight then	
		if vexpower_Power_checkPowerForColor("empty") then
			situation = 1
		elseif vexpower_Power_checkPowerForColor("full") then
			situation = 3
		else
			situation = 2
		end
	else
		if vexpower_Power_checkPowerForColor("empty") then
			situation = 4
		elseif vexpower_Power_checkPowerForColor("full") then
			situation = 6
		else
			situation = 5
		end
	end
	
	if vexpower_parameters["frame"]["energy"]["altcolors"]["use"][situation] then
		returnvalue[1] = tostring(situation)
		returnvalue[2] = vexpower_parameters["frame"]["energy"]["altcolors"]["typecolored"][situation]
		returnvalue[3] = vexpower_parameters["frame"]["energy"]["altcolors"]["classcolored"][situation]
	end
	
	return returnvalue
end

function vexpower_Power_setBarBG()
	vexpower_energybarbg:SetBackdrop({
		bgFile=vexpower.LSM:Fetch("background", vexpower_parameters["frame"]["energy"]["bg_texture"]),
		edgeFile=vexpower.LSM:Fetch("border", vexpower_parameters["frame"]["energy"]["border"]["texture"]), tile=false,
		edgeSize=vexpower_parameters["frame"]["energy"]["border"]["size"]})
	vexpower_energybarbg:SetBackdropColor(
		vexpower_parameters["frame"]["energy"]["bgcolor"]["r"],
		vexpower_parameters["frame"]["energy"]["bgcolor"]["g"],
		vexpower_parameters["frame"]["energy"]["bgcolor"]["b"],
		vexpower_parameters["frame"]["energy"]["bgcolor"]["a"])
	vexpower_energybarbg:SetBackdropBorderColor(
		vexpower_parameters["frame"]["energy"]["border"]["color"]["r"],
		vexpower_parameters["frame"]["energy"]["border"]["color"]["g"],
		vexpower_parameters["frame"]["energy"]["border"]["color"]["b"],
		vexpower_parameters["frame"]["energy"]["border"]["color"]["a"])
	vexpower_energybarbg:SetWidth(vexpower_parameters["frame"]["energy"]["size"]["width"])
	vexpower_energybarbg:SetHeight(vexpower_parameters["frame"]["energy"]["size"]["height"])
	vexpower_energybarbg:ClearAllPoints()
	vexpower_energybarbg:SetPoint("CENTER", vexpower_MainFrame, "CENTER", 0, 0)
	vexpower_energybarbg:SetFrameStrata(vexpower_optionTab_Strata_convertValue(vexpower_parameters["frame"]["strata"]["powerbar"]))
	vexpower_energybarbg:RegisterForDrag("LeftButton")
	vexpower_energybarbg:SetScript("OnDragStart", function () vexpower_MainFrame:StartMoving() end)
	vexpower_energybarbg:SetScript("OnDragStop", function () vexpower_MainFrame:StopMovingOrSizing() vexpower_MainFrame_savePosition() end)
	vexpower_energybarbg:SetMovable(vexpower.testmode)
	vexpower_energybarbg:EnableMouse(vexpower.testmode)
end

function vexpower_Power_setBar()
	if vexpower_parameters["frame"]["energy"]["textureToUse"] == 1 then
		vexpower_energybar:SetBackdrop({bgFile=vexpower.LSM:Fetch("background", vexpower_parameters["frame"]["energy"]["bg"]), tile=false,
								edgeFile="Interface\\Buttons\\WHITE8X8", edgeSize=1})
	else
		vexpower_energybar:SetBackdrop({bgFile=vexpower.LSM:Fetch("statusbar", vexpower_parameters["frame"]["energy"]["bg2"]), tile=false,
								edgeFile="Interface\\Buttons\\WHITE8X8", edgeSize=1})
	end
	vexpower_Power_setBarColor()
	vexpower_energybar:SetBackdropBorderColor(1,1,1,0)
	
	if not(vexpower.testmode) then
		if vexpower.class == "WARRIOR" or vexpower.class == "DEATHKNIGHT" then
			vexpower_energybar:SetWidth(1)
		else vexpower_energybar:SetWidth(vexpower.maxwidth) end
			vexpower_energybar:Show()
	end
	vexpower_energybar:SetHeight(vexpower_parameters["frame"]["energy"]["size"]["height"]-(vexpower_parameters["frame"]["energy"]["border"]["size"]*2))
	vexpower_energybar:ClearAllPoints()
	vexpower_energybar:SetPoint("TOPLEFT", vexpower_energybarbg, "TOPLEFT",
						vexpower_parameters["frame"]["energy"]["border"]["size"],
						-vexpower_parameters["frame"]["energy"]["border"]["size"])
	vexpower_energybar_anigrp = vexpower_energybar:CreateAnimationGroup("vexpower_energybar_anigrp")
	vexpower_energybar_anigrp:SetLooping("NONE")
	vexpower_energybar_ani = vexpower_energybar_anigrp:CreateAnimation("Scale")
	vexpower_energybar_ani:SetSmoothing("OUT")
	vexpower_energybar_ani:SetDuration(0.2)
	vexpower_energybar_ani:SetOrder(1)
	vexpower_energybar_ani:SetOrigin("TOPLEFT",0,0)
end

function vexpower_Power_setBarDif()
	vexpower_energybarDif:SetBackdrop({bgFile="Interface\\Buttons\\WHITE8X8", tile=false, edgeSize=0})	
	vexpower_energybarDif:SetBackdropColor(	vexpower_parameters["frame"]["energy"]["usedcolor"]["r"],
											vexpower_parameters["frame"]["energy"]["usedcolor"]["g"],
											vexpower_parameters["frame"]["energy"]["usedcolor"]["b"],
											vexpower_parameters["frame"]["energy"]["usedcolor"]["a"])
	vexpower_energybarDif:SetBackdropBorderColor(1,1,1,0)
	if not(vexpower.testmode) then
		vexpower_energybarDif:SetWidth(0)
		vexpower_energybarDif:Hide()
	end
	vexpower_energybarDif:SetHeight(vexpower_parameters["frame"]["energy"]["size"]["height"]-(vexpower_parameters["frame"]["energy"]["border"]["size"]*2))
	vexpower_energybarDif:ClearAllPoints()
	vexpower_energybarDif:SetPoint("TOPLEFT", vexpower_energybarbg, "TOPLEFT",
						vexpower_parameters["frame"]["energy"]["border"]["size"],
						-vexpower_parameters["frame"]["energy"]["border"]["size"])
	vexpower_energybarDif_anigrp = vexpower_energybarDif:CreateAnimationGroup("vexpower_energybarDif_anigrp")
	vexpower_energybarDif_anigrp:SetLooping("NONE")
	vexpower_energybarDif_anigrp:SetScript("OnPlay", function () vexpower_energybarDif:Show() end)
	vexpower_energybarDif_anigrp:SetScript("OnFinished", function () vexpower_energybarDif:Hide() end)
	vexpower_energybarDif_anigrp:SetScript("OnStop", function () vexpower_energybarDif:Hide() end)
	vexpower_energybarDif_ani = vexpower_energybarDif_anigrp:CreateAnimation("Alpha")
	vexpower_energybarDif_ani:SetDuration(0.5)
	vexpower_energybarDif_ani:SetOrder(1)
	vexpower_energybarDif_ani:SetChange(-1)
end