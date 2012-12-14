function vexpower_AltPower_change(number, newenergy)
	if vexpower.showCPs then
		if not(vexpower.AltPower.Bar[number][2]:IsPlaying()) then
			if newenergy ~= nil then
				vexpower.AltPower.currentenergy_prev[number] = vexpower.AltPower.currentenergy[number]
				vexpower.AltPower.currentenergy[number] = vexpower.AltPower.currentenergy[number] + newenergy
			else
				vexpower_AltPower_setCurrent(number)
			end
				
			vexpower_AltPower_setMax(number)
			
			local maxenergy = vexpower.AltPower.maxenergy[number]
			
			if maxenergy == 0 then maxenergy = 1 end
			
			local barfactor_current = vexpower.AltPower.currentenergy_prev[number]/maxenergy
			local barfactor_new = vexpower.AltPower.currentenergy[number]/maxenergy
			local barfactor = 0
			
			if barfactor_current ~= 0 then 
				barfactor = barfactor_new/barfactor_current
			end
			
			local newWidth = vexpower_AltPower_getPowerWidth(number, vexpower.AltPower.currentenergy[number])
			
			--if barfactor < 1 and barfactor > 0 then
			if barfactor < 1 then
				local oldWidth = vexpower_AltPower_getPowerWidth(number, vexpower.AltPower.currentenergy_prev[number])
				local difWidth = oldWidth - newWidth
				vexpower.AltPower.Bar[number][3]:SetScale(barfactor, 1)
				vexpower.AltPower.Bar[number][2]:SetScript("onFinished", function () vexpower.AltPower.Bar[number][1]:SetWidth(newWidth) end)
				vexpower.AltPower.Bar[number][2]:Play()
				
				if oldWidth<=vexpower.AltPower.maxwidth[number] then
					vexpower.AltPower.BarDif[number][1]:SetWidth(difWidth)
					vexpower.AltPower.BarDif[number][1]:ClearAllPoints()
						
					vexpower.AltPower.BarDif[number][1]:SetPoint("TOPLEFT", vexpower.AltPower.BarBG[number], "TOPLEFT",
						vexpower_parameters["frame"]["combo"]["border"]["size"]+newWidth,
						-vexpower_parameters["frame"]["combo"]["border"]["size"])
					if vexpower_parameters["frame"]["energy"]["fadeout"] then
						vexpower.AltPower.BarDif[number][2]:Play()
					else
						vexpower.AltPower.BarDif[number][1]:Hide()
					end
				else
					vexpower.AltPower.BarDif[number][1]:Hide()
				end
			else 
				vexpower.AltPower.Bar[number][1]:SetWidth(newWidth)
			end
		end
	end
end

function vexpower_AltPower_setMax(number)
	local new = 0
	if vexpower.class == "WARLOCK" and vexpower.specType == 266 then
		new = UnitPowerMax("player", 15)
	elseif vexpower.class == "WARLOCK" and vexpower.specType == 267 then
		new = 10
	end
	
	if new ~= vexpower.AltPower.maxenergy[number] then
		vexpower.AltPower.maxenergy_prev[number] = vexpower.AltPower.maxenergy[number]
		vexpower.AltPower.maxenergy[number] = new
	end
end

function vexpower_AltPower_getCurrent(number)
	local returnvalue = 0
	if vexpower.class == "WARLOCK" and vexpower.specType == 266 then
		returnvalue = UnitPower("player", 15)
	elseif vexpower.class == "WARLOCK" and vexpower.specType == 267 then
		returnvalue = UnitPower("player", 14, true)
		returnvalue = returnvalue - ((number-1)*10)
		if returnvalue < 0 then
			returnvalue = 0
		elseif returnvalue > 10 then
			returnvalue = 10
		end
	end
	return returnvalue
end

function vexpower_AltPower_setCurrent(number)	
	local new = vexpower_AltPower_getCurrent(number)
	if new ~= vexpower.AltPower.currentenergy[number] then
		vexpower.AltPower.currentenergy_prev[number] = vexpower.AltPower.currentenergy[number]
		vexpower.AltPower.currentenergy[number] = new
	end
end

function vexpower_AltPower_getPowerWidth(number, energy)
	local width = 0
	if vexpower.AltPower.maxenergy[number]~=0 then
		width = (energy / vexpower.AltPower.maxenergy[number]) * vexpower.AltPower.maxwidth[number]
	end
	if width == 0 then width = 1 end
	return width
end

function vexpower_AltPower_setMaxWidth(number)
	vexpower.AltPower.maxwidth[number] = (vexpower.AltPower.BarBG[number]:GetWidth()-vexpower_parameters["frame"]["energy"]["border"]["size"])
end




function vexpower_AltPower_setBarBG(number)
	vexpower.AltPower.BarBG[number]:SetBackdrop({
		bgFile=vexpower.LSM:Fetch("background", vexpower_parameters["frame"]["energy"]["bg_texture"]),
		edgeFile=vexpower.LSM:Fetch("border", vexpower_parameters["frame"]["energy"]["border"]["texture"]), tile=false,
		edgeSize=vexpower_parameters["frame"]["combo"]["border"]["size"]})
	vexpower.AltPower.BarBG[number]:SetBackdropColor(
		vexpower_parameters["frame"]["energy"]["bgcolor"]["r"],
		vexpower_parameters["frame"]["energy"]["bgcolor"]["g"],
		vexpower_parameters["frame"]["energy"]["bgcolor"]["b"],
		vexpower_parameters["frame"]["energy"]["bgcolor"]["a"])
	vexpower.AltPower.BarBG[number]:SetBackdropBorderColor(
		vexpower_parameters["frame"]["energy"]["border"]["color"]["r"],
		vexpower_parameters["frame"]["energy"]["border"]["color"]["g"],
		vexpower_parameters["frame"]["energy"]["border"]["color"]["b"],
		vexpower_parameters["frame"]["energy"]["border"]["color"]["a"])
	vexpower.AltPower.BarBG[number]:SetWidth(vexpower.cpsbars[number]:GetWidth())
	vexpower.AltPower.BarBG[number]:SetHeight(vexpower.cpsbars[number]:GetHeight())
	vexpower.AltPower.BarBG[number]:ClearAllPoints()
	vexpower.AltPower.BarBG[number]:SetPoint(vexpower.cpsbars[number]:GetPoint())
	vexpower.AltPower.BarBG[number]:SetFrameStrata(vexpower_energybar:GetFrameStrata())
	vexpower.AltPower.BarBG[number]:SetMovable(false)
	vexpower.AltPower.BarBG[number]:EnableMouse(false)
end

function vexpower_AltPower_setBar(number)
	vexpower.AltPower.Bar[number][1]:SetBackdrop({
		bgFile="Interface\\Buttons\\WHITE8X8", tile=false,
		edgeSize=vexpower_parameters["frame"]["combo"]["border"]["size"]})
	vexpower.AltPower.Bar[number][1]:SetBackdropColor(
		vexpower_parameters["frame"]["combo"]["bg"]["color"][tostring(number)]["r"],
		vexpower_parameters["frame"]["combo"]["bg"]["color"][tostring(number)]["g"],
		vexpower_parameters["frame"]["combo"]["bg"]["color"][tostring(number)]["b"],
		vexpower_parameters["frame"]["combo"]["bg"]["color"][tostring(number)]["a"])
	vexpower.AltPower.Bar[number][1]:SetBackdropBorderColor(1,1,1,0)
	vexpower.AltPower.Bar[number][1]:SetWidth(20)
	vexpower.AltPower.Bar[number][1]:SetHeight(vexpower.AltPower.BarBG[number]:GetHeight()-(vexpower_parameters["frame"]["combo"]["border"]["size"]*2))
	vexpower.AltPower.Bar[number][1]:ClearAllPoints()
	vexpower.AltPower.Bar[number][1]:SetPoint("TOPLEFT", vexpower.AltPower.BarBG[number], "TOPLEFT",
						vexpower_parameters["frame"]["combo"]["border"]["size"],
						-vexpower_parameters["frame"]["combo"]["border"]["size"])
						
	vexpower.AltPower.Bar[number][2] = vexpower.AltPower.Bar[number][1]:CreateAnimationGroup("vexpower.AltPower.Bar["..number.."][2]")
	vexpower.AltPower.Bar[number][2]:SetLooping("NONE")
	vexpower.AltPower.Bar[number][3] = vexpower.AltPower.Bar[number][2]:CreateAnimation("Scale")
	vexpower.AltPower.Bar[number][3]:SetSmoothing("OUT")
	vexpower.AltPower.Bar[number][3]:SetDuration(0.2)
	vexpower.AltPower.Bar[number][3]:SetOrder(1)
	vexpower.AltPower.Bar[number][3]:SetOrigin("TOPLEFT",0,0)
end

function vexpower_AltPower_setBarDif(number)
	vexpower.AltPower.BarDif[number][1]:SetBackdrop({
		bgFile="Interface\\Buttons\\WHITE8X8", tile=false,
		edgeSize=vexpower_parameters["frame"]["combo"]["border"]["size"]})	
	vexpower.AltPower.BarDif[number][1]:SetBackdropColor(
		vexpower_parameters["frame"]["energy"]["usedcolor"]["r"],
		vexpower_parameters["frame"]["energy"]["usedcolor"]["g"],
		vexpower_parameters["frame"]["energy"]["usedcolor"]["b"],
		vexpower_parameters["frame"]["energy"]["usedcolor"]["a"])
	vexpower.AltPower.BarDif[number][1]:SetBackdropBorderColor(1,1,1,0)
	vexpower.AltPower.BarDif[number][1]:SetWidth(20)
	vexpower.AltPower.BarDif[number][1]:SetHeight(vexpower.AltPower.BarBG[number]:GetHeight()-(vexpower_parameters["frame"]["combo"]["border"]["size"]*2))
	vexpower.AltPower.BarDif[number][1]:ClearAllPoints()
	vexpower.AltPower.BarDif[number][1]:SetPoint("TOPLEFT", vexpower.AltPower.BarBG[number], "TOPLEFT",
						vexpower_parameters["frame"]["combo"]["border"]["size"],
						-vexpower_parameters["frame"]["combo"]["border"]["size"])
	
	vexpower.AltPower.BarDif[number][2] = vexpower.AltPower.BarDif[number][1]:CreateAnimationGroup("vexpower.AltPower.BarDif["..number.."][2]")
	vexpower.AltPower.BarDif[number][2]:SetLooping("NONE")
	vexpower.AltPower.BarDif[number][2]:SetScript("OnPlay", function () vexpower.AltPower.BarDif[number][1]:Show() end)
	vexpower.AltPower.BarDif[number][2]:SetScript("OnFinished", function () vexpower.AltPower.BarDif[number][1]:Hide() end)
	vexpower.AltPower.BarDif[number][2]:SetScript("OnStop", function () vexpower.AltPower.BarDif[number][1]:Hide() end)
	vexpower.AltPower.BarDif[number][3] = vexpower.AltPower.BarDif[number][2]:CreateAnimation("Alpha")
	vexpower.AltPower.BarDif[number][3]:SetDuration(0.5)
	vexpower.AltPower.BarDif[number][3]:SetOrder(1)
	vexpower.AltPower.BarDif[number][3]:SetChange(-1)
end