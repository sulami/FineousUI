
function vexpower_Show_check(frame)
	local returnvalue = true
	
	--check for enabled addon and enabled frame
	if vexpower_parameters["frame"]["show"] and vexpower_parameters["frame"][frame]["show"] then
		--check for infight		
		if vexpower_parameters["frame"][frame]["infightshow"] and not(vexpower.infight) then
			returnvalue = false
		end
		
		--check for stealth (overwrites infight result!)
		if vexpower_parameters["frame"][frame]["stealthshow"] and vexpower.stealth then
			returnvalue = true
		end
		--check for targetSet (overwrites infight result!)
		if vexpower_parameters["frame"][frame]["targetSetshow"] and vexpower.targetSet then
			returnvalue = true
		end
			
		--check for vehicle
		if vexpower.inVehicle and vexpower_parameters["frame"][frame]["vehiclehide"] then
			returnvalue = false
		end
		
		--check for show not with powertype
		if vexpower_parameters["frame"][frame]["showWithPowerType"][vexpower.energytype] ~= nil then
			if not(vexpower_parameters["frame"][frame]["showWithPowerType"][vexpower.energytype]) then
				returnvalue = false
			end
		end
	else
		returnvalue = false
	end
	
	return returnvalue
end

function vexpower_Show_handler()
	local show_energy = vexpower_Show_check("energy")
	local show_cps = vexpower_Show_check("combo")
	
	--react to 'show'
	if show_energy then
		vexpower_energybarbg:Show()
		UIFrameFadeOut(vexpower_energybarbg, 0, 1, 1)
	elseif not(show_energy) and vexpower.showEnergy then
		if vexpower_parameters["frame"]["fadeout"] then	
			UIFrameFadeOut(vexpower_energybarbg, vexpower_parameters["fadeOutTime"], 1, 0)
		else
			vexpower_energybarbg:Hide()
		end
	elseif not(show_energy) then
		vexpower_energybarbg:Hide()
	end
	
	if show_cps then
		vexpower_cpsbar:Show()
		vexpower_CPs_show()
		UIFrameFadeOut(vexpower_cpsbar, 0, 1, 1)
	elseif not(show_cps) and vexpower.showCPs then
		if vexpower_parameters["frame"]["fadeout"] then	
			UIFrameFadeOut(vexpower_cpsbar, vexpower_parameters["fadeOutTime"], 1, 0)
		else
			vexpower_cpsbar:Hide()
		end
	elseif not(show_cps) then
		vexpower_cpsbar:Hide()
	end
	
	vexpower.showCPs = show_cps
	vexpower.showEnergy = show_energy
end