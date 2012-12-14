
function vexpower_Markers_handler()
	--Clear Markers
	for i=1,#vexpower.markers do
		if vexpower.markers[i] ~= nil then
			vexpower.markers[i]:Hide()
		end
		vexpower.markers[i]=nil
	end
	vexpower.markers = {}
	
	--Set new markers
	local markers = vexpower_parameters["frame"]["energy"]["markers"]["points"]
	for key,val in pairs(markers) do
		if val[vexpower.energytype] then
			vexpower_Markers_insert(vexpower_Power_getPowerWidth(key))
		end
	end
	
	--Set new spec markers
	if vexpower.spec == 1 then 	markers = vexpower_parameters["frame"]["energy"]["markers"]["points_spec_a"]
	else						markers = vexpower_parameters["frame"]["energy"]["markers"]["points_spec_b"] end
	if markers ~=nil then
		for key,val in pairs(markers) do
			if val[vexpower.energytype] then
				vexpower_Markers_insert(vexpower_Power_getPowerWidth(key))
			end
		end
	end
end

function vexpower_Markers_insert(pos)
	if pos < vexpower.maxwidth and vexpower.maxenergy ~= 0 then
		local temp = CreateFrame("Frame", nil, vexpower_energyMarkers)
		temp:SetBackdrop({
			bgFile="Interface\\Buttons\\WHITE8X8", tile=false,
			edgeFile="Interface\\Buttons\\WHITE8X8",
			edgeSize=vexpower_parameters["frame"]["energy"]["markers"]["border"]["size"]})
							
		if vexpower_parameters["frame"]["energy"]["markers"]["color_likebg"] then
			if vexpower_parameters["frame"]["energy"]["typecolored"] and PowerBarColor[vexpower.energytype] ~= nil then
				temp:SetBackdropColor(
					PowerBarColor[vexpower.energytype].r,
					PowerBarColor[vexpower.energytype].g,
					PowerBarColor[vexpower.energytype].b,
					vexpower_parameters["frame"]["energy"]["markers"]["color"]["a"])
			elseif vexpower_parameters["frame"]["energy"]["classcolored"] and PowerBarColor[vexpower.class] ~= nil then
				temp:SetBackdropColor(
					RAID_CLASS_COLORS[vexpower.class].r,
					RAID_CLASS_COLORS[vexpower.class].g,
					RAID_CLASS_COLORS[vexpower.class].b,
					vexpower_parameters["frame"]["energy"]["markers"]["color"]["a"])
			else
				temp:SetBackdropColor(
					vexpower_parameters["frame"]["energy"]["color"]["r"],
					vexpower_parameters["frame"]["energy"]["color"]["g"],
					vexpower_parameters["frame"]["energy"]["color"]["b"],
					vexpower_parameters["frame"]["energy"]["markers"]["color"]["a"])
			end
		else
			temp:SetBackdropColor(
				vexpower_parameters["frame"]["energy"]["markers"]["color"]["r"],
				vexpower_parameters["frame"]["energy"]["markers"]["color"]["g"],
				vexpower_parameters["frame"]["energy"]["markers"]["color"]["b"],
				vexpower_parameters["frame"]["energy"]["markers"]["color"]["a"])
		end
		
		
		if vexpower_parameters["frame"]["energy"]["markers"]["border"]["color_likebg"] then
			if vexpower_parameters["frame"]["energy"]["typecolored"] then
				temp:SetBackdropBorderColor(	PowerBarColor[vexpower.energytype].r,
										PowerBarColor[vexpower.energytype].g,
										PowerBarColor[vexpower.energytype].b,
										vexpower_parameters["frame"]["energy"]["color"]["a"])
			else
				temp:SetBackdropBorderColor(	vexpower_parameters["frame"]["energy"]["color"]["r"],
										vexpower_parameters["frame"]["energy"]["color"]["g"],
										vexpower_parameters["frame"]["energy"]["color"]["b"],
										vexpower_parameters["frame"]["energy"]["color"]["a"])
			end
		else
			temp:SetBackdropBorderColor(vexpower_parameters["frame"]["energy"]["markers"]["border"]["color"]["r"],
											vexpower_parameters["frame"]["energy"]["markers"]["border"]["color"]["g"],
											vexpower_parameters["frame"]["energy"]["markers"]["border"]["color"]["b"],
											vexpower_parameters["frame"]["energy"]["markers"]["border"]["color"]["a"])
		end
		
		temp:SetFrameStrata(vexpower_optionTab_Strata_convertValue(vexpower_parameters["frame"]["strata"]["markers"]))
		temp:SetWidth(vexpower_parameters["frame"]["energy"]["markers"]["width"])
		temp:SetHeight(vexpower_parameters["frame"]["energy"]["size"]["height"]-(vexpower_parameters["frame"]["energy"]["border"]["size"]*2)-4)
		
		temp:SetPoint("TOPLEFT", vexpower_energybarbg, "TOPLEFT", pos, -vexpower_parameters["frame"]["energy"]["border"]["size"]-2)
		temp:Show()
		table.insert(vexpower.markers,#vexpower.markers+1, temp)
	end
end