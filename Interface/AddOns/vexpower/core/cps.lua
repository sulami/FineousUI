function vexpower_CPs_change(change)
	vexpower_CPs_setCurrent(change)
	if vexpower.currentcps > vexpower.currentcps_prev then
		--CPs built
		for i=1, vexpower.currentcps do
			vexpower_CPs_setBgColors(i, true)
			if vexpower.cpsbars_anigrps[i]:IsPlaying() then
				vexpower.cpsbars_anigrps[i]:Stop()
			end
			vexpower.cpsbars[i]:Show()
		end
	else
		--CPs used
		for i=1, vexpower.maxcps do
			vexpower_CPs_setBgColors(i, true)
		end
		
		local cpsLost = vexpower.currentcps_prev-vexpower.currentcps
		
		for i=1, cpsLost do
			local bar = vexpower.currentcps_prev+1-i
			vexpower_CPs_setBgColors(bar, false)
			if vexpower_parameters["frame"]["combo"]["fadeout"] then
				vexpower.cpsbars_anigrps[bar]:Play()
			else
				vexpower.cpsbars[bar]:Hide()
			end
		end
	end
	vexpower_CPs_sound()
end

function vexpower_CPs_get(current)
	local returnvalue = 0
	if vexpower.vehicleCP and vexpower_parameters["frame"]["combo"]["vehicleCps"] then
		if current then
			returnvalue = GetComboPoints("vehicle")
		else
			returnvalue = 5
		end
	elseif vexpower.class == "DRUID" then
		if current then
			returnvalue = GetComboPoints("player")
		else
			returnvalue = 5
		end
	elseif vexpower.class == "ROGUE" then
		if vexpower_parameters["classSpec"]["rogue"]["anticipation"] then
			if current then
				returnvalue = GetComboPoints("player")
			else
				returnvalue = 5
			end
		else
			if current then
				returnvalue = GetComboPoints("player")
			else
				returnvalue = 5
			end
		end
	elseif vexpower.class == "PALADIN" then
		if current then
			returnvalue = UnitPower("player", 9)
		else
			returnvalue = UnitPowerMax("player", 9)
		end
	elseif vexpower.class == "MONK" then
		if current then
			returnvalue = UnitPower("player", 12) 
		else
			returnvalue = UnitPowerMax("player", 12)
		end
	elseif vexpower.class == "PRIEST" then
		if vexpower.specType == 258 then		-- Shadow
			if current then
				returnvalue = UnitPower("player", 13) 
			else
				returnvalue = UnitPowerMax("player", 13) 
			end
		elseif vexpower.specType == 256 then 	-- Discipline
			if current then
				returnvalue = vexpower_CPs_getCurrentStack_Buff()
			else
				returnvalue = 5
			end
		end
	elseif vexpower.class == "WARLOCK" then
		if vexpower.specType == 265 then		-- Affliction
			if current then
				returnvalue = UnitPower("player", 7)
			else
				returnvalue = UnitPowerMax("player", 7)
			end
		elseif vexpower.specType == 266 then	-- Demonology
			if current then
				returnvalue = 0
			else
				returnvalue = 1
			end
		elseif vexpower.specType == 267 then	-- Destruction
			if current then
				returnvalue = 0
			else
				returnvalue = UnitPowerMax("player", 14)
			end
		end
	elseif vexpower.class == "WARRIOR" then
		if vexpower.specType == 71 then			-- Arms
			if current then
				returnvalue = vexpower_CPs_getCurrentStack_Buff()
			else
				returnvalue = 5
			end
		elseif vexpower.specType == 72 then		-- Fury
			if current then
				returnvalue = vexpower_CPs_getCurrentStack_Buff()
			else
				returnvalue = 2
			end
		end
	elseif vexpower.class == "SHAMAN" then
		if vexpower.specType == 263 then 		-- Enhancer
			if current then
				returnvalue = vexpower_CPs_getCurrentStack_Buff()
			else
				returnvalue = 5
			end
		end
	elseif vexpower.class == "HUNTER" then
		if vexpower.specType == 254 then 		-- Marksman
			if current then
				returnvalue = vexpower_CPs_getCurrentStack_Buff()
			else
				returnvalue = 3
			end
		elseif vexpower.specType == 253 then 	-- Beast Master
			if current then
				returnvalue = vexpower_CPs_getCurrentStack_Buff()
			else
				returnvalue = 5
			end
		end
	elseif vexpower.class == "MAGE" then
		if vexpower.specType == 62 then 		-- Arcane
			if current then
				returnvalue = vexpower_CPs_getCurrentStack_Debuff()
			else
				returnvalue = 6
			end
		end
	end
	
	return returnvalue
end

function vexpower_CPs_getCurrent(change)
	local new = 0

	if change ~= nil then
		new = vexpower.currentcps+change
	else
		new = vexpower_CPs_get(true)
	end

	return new
end

function vexpower_CPs_setCurrent(change)
	local new = vexpower_CPs_getCurrent(change)
	
	if change ~= nil then new = vexpower.currentcps+change end
	
	if new ~= vexpower.currentcps then
		vexpower.currentcps_prev = vexpower.currentcps
		vexpower.currentcps = new
	end
end

function vexpower_CPs_getSpecAura()
	local returnvalue = 0
	if vexpower.class == "SHAMAN" and vexpower.specType == 263 then 		-- Enhancer
		returnvalue = 53817
	elseif vexpower.class == "HUNTER" and vexpower.specType == 254 then		-- Marksman
		returnvalue = 82925
	elseif vexpower.class == "HUNTER" and vexpower.specType == 253 then		-- Beast Master
		returnvalue = 19615
	elseif vexpower.class == "WARRIOR" and vexpower.specType == 71 then		-- Arms
		returnvalue = 125831
	elseif vexpower.class == "WARRIOR" and vexpower.specType == 72 then		-- Fury
		returnvalue = 131116
	elseif vexpower.class == "PRIEST" and vexpower.specType == 256 then		-- Discipline
		returnvalue = 81661
	elseif vexpower.class == "MAGE" and vexpower.specType == 62 then		-- Arcane
		returnvalue = 36032
	end
	
	return returnvalue
end

function vexpower_CPs_getCurrentStack_Debuff()
	local count = 0
	local continue = true
	local i = 1
	local auraid = vexpower_CPs_getSpecAura()
	
	if auraid ~= 0 then
		while continue do
			if UnitDebuff("player", i, nil, "PLAYER") == nil then
				continue = false
			elseif select(11, UnitDebuff("player", i)) == auraid then
				count = select(4, UnitDebuff("player", i))
				continue = false
			end
			i = i + 1
		end
	end	
	return count
end

function vexpower_CPs_getCurrentStack_Buff()
	local count = 0
	local continue = true
	local i = 1
	local auraid = vexpower_CPs_getSpecAura()
	
	if auraid ~= 0 then
		while continue do
			if UnitBuff("player", i, nil, "PLAYER") == nil then
				continue = false
			elseif select(11, UnitBuff("player", i)) == auraid then
				count = select(4, UnitBuff("player", i))
				continue = false
			end
			i = i + 1
		end
	end
	
	-- Marksman Override for "Fire!"
	if vexpower.class == "HUNTER" and vexpower.specType == 254 then
		i = 1
		continue = true
		while continue do
			if UnitBuff("player", i, nil, "PLAYER") == nil then
				continue = false
			elseif select(11, UnitBuff("player", i)) == 82926 then
				count = vexpower.maxcps
				continue = false
			end
			i = i + 1
		end
	end
	
	return count
end

function vexpower_CPs_getMax()
	return vexpower_CPs_get(false)
end

function vexpower_CPs_setMax()
	vexpower.maxcps = vexpower_CPs_getMax()
end

function vexpower_CPs_calcDownCP(cp)
	while cp>6 do
		cp = cp -6
	end
	return cp
end

function vexpower_CPs_setBgColors(cp, standard)
	if vexpower.cpsbars[cp] ~=nil then
		local color = tostring(vexpower_CPs_calcDownCP(cp))
		if vexpower_parameters["frame"]["combo"]["bg"]["allowchange"] then
			if not(vexpower_parameters["frame"]["combo"]["bg"]["cpchangeOnMax"]) and vexpower.currentcps >= tonumber(vexpower_parameters["frame"]["combo"]["bg"]["cpchange"]) then
				if (vexpower_parameters["frame"]["combo"]["bg"]["cpchangeonly"] and cp <= tonumber(vexpower_parameters["frame"]["combo"]["bg"]["cpchange"])) then
					color = "change"
				elseif not(vexpower_parameters["frame"]["combo"]["bg"]["cpchangeonly"]) then
					color = "change"
				end
			elseif vexpower_parameters["frame"]["combo"]["bg"]["cpchangeOnMax"] and vexpower.currentcps==vexpower.maxcps then
				color = "change"
			end
		end
		if not(standard) then
			color = "used"
		end
		vexpower.cpsbars[cp]:SetBackdropColor(
			vexpower_parameters["frame"]["combo"]["bg"]["color"][color]["r"],
			vexpower_parameters["frame"]["combo"]["bg"]["color"][color]["g"],
			vexpower_parameters["frame"]["combo"]["bg"]["color"][color]["b"],
			vexpower_parameters["frame"]["combo"]["bg"]["color"][color]["a"])
	end
end

function vexpower_CPs_setBars()
	if not(vexpower.testmode) then
		if vexpower.cpsbars ~= nil then
			for i=1, #vexpower.cpsbars do
				if vexpower.cpsbars[i] ~= nil then vexpower.cpsbars[i]:Hide() end
			end
		end
	end
	
	--Setup CPs
	for i=1, vexpower.maxcps do
		
		if not(vexpower.testmode) then
			vexpower.cpsbars[i] = CreateFrame("Frame", nil, vexpower_cpsbar)
		end
		vexpower.cpsbars[i]:SetBackdrop({
			bgFile="Interface\\Buttons\\WHITE8X8",
			edgeFile="Interface\\Buttons\\WHITE8X8", tile=false,
			edgeSize=vexpower_parameters["frame"]["combo"]["border"]["size"]})
		vexpower_CPs_setBgColors(i, true)
		vexpower.cpsbars[i]:SetBackdropBorderColor(
			vexpower_parameters["frame"]["combo"]["border"]["color"]["r"],
			vexpower_parameters["frame"]["combo"]["border"]["color"]["g"],
			vexpower_parameters["frame"]["combo"]["border"]["color"]["b"],
			vexpower_parameters["frame"]["combo"]["border"]["color"]["a"])
		
		if not(vexpower.testmode) then
			if vexpower.currentcps > 0 then
				vexpower.cpsbars[i]:Show()
			else
				vexpower.cpsbars[i]:Hide()
			end
		end
		
		if vexpower_parameters["frame"]["combo"]["intMode"] then
			local width = 0
			if vexpower.maxcps ~= 0 then
				width = (vexpower_parameters["frame"]["energy"]["size"]["width"] - (vexpower.maxcps-1)*vexpower_parameters["frame"]["combo"]["measure"]["gap"] - vexpower_parameters["frame"]["combo"]["measure"]["offset"]*2)/vexpower.maxcps
			else
				vexpower.cpsbars[i]:Hide()
			end
			
			local start = vexpower_parameters["frame"]["combo"]["measure"]["offset"]+(width*(i-1))+(vexpower_parameters["frame"]["combo"]["measure"]["gap"]*(i-1))
			vexpower.cpsbars[i]:SetHeight(vexpower_parameters["frame"]["combo"]["measure"]["height"])
			vexpower.cpsbars[i]:SetWidth(width)
			vexpower.cpsbars[i]:ClearAllPoints()
			vexpower.cpsbars[i]:SetFrameStrata(vexpower_optionTab_Strata_convertValue(vexpower_parameters["frame"]["strata"]["cps"]))
			vexpower.cpsbars[i]:SetPoint("TOPLEFT", vexpower_cpsbar, "TOPLEFT", start, 0)
		else
			local usage = vexpower_CPs_getAltPos()
			if vexpower_parameters["frame"]["combo"]["posSize"][usage] ~= nil then
				vexpower.cpsbars[i]:SetHeight(vexpower_parameters["frame"]["combo"]["posSize"][usage]["height"])
				vexpower.cpsbars[i]:SetWidth(vexpower_parameters["frame"]["combo"]["posSize"][usage]["width"])
				vexpower.cpsbars[i]:SetFrameStrata(vexpower_optionTab_Strata_convertValue(vexpower_parameters["frame"]["strata"]["cps"]))
				vexpower.cpsbars[i]:ClearAllPoints()
				vexpower.cpsbars[i]:SetPoint(
					vexpower_parameters["frame"]["combo"]["posSize"][usage][tostring(i)]["anchor"],
					vexpower_cpsbar,
					vexpower_parameters["frame"]["combo"]["posSize"][usage][tostring(i)]["anchorFrame"],
					vexpower_parameters["frame"]["combo"]["posSize"][usage][tostring(i)]["x"],
					vexpower_parameters["frame"]["combo"]["posSize"][usage][tostring(i)]["y"])
			else
				vexpower.cpsbars[i]:Hide()
			end
		end
		
		vexpower.cpsbars_anigrps[i] = vexpower.cpsbars[i]:CreateAnimationGroup("vexpower.cpsbars_anigrps["..i.."]")
		vexpower.cpsbars_anigrps[i]:SetLooping("NONE")
		vexpower.cpsbars_anigrps[i]:SetScript("OnPlay", function () vexpower.cpsbars[i]:Show() end)
		vexpower.cpsbars_anigrps[i]:SetScript("OnFinished", function () vexpower.cpsbars[i]:Hide() end)
		vexpower.cpsbars_anis[i] = vexpower.cpsbars_anigrps[i]:CreateAnimation("Alpha")
		vexpower.cpsbars_anis[i]:SetDuration(0.3)
		vexpower.cpsbars_anis[i]:SetOrder(1)
		vexpower.cpsbars_anis[i]:SetChange(-1)
		
	end
end

function vexpower_CPs_getAltPos()
	if vexpower.maxcps == 6 then
		return "6"
	else
		if vexpower_parameters["frame"]["combo"]["posSize"][tostring(vexpower.maxcps)] ~= nil then
			if vexpower_parameters["frame"]["combo"]["posSize"][tostring(vexpower.maxcps)]["change"] then
				return tostring(vexpower.maxcps)
			else
				return "6"
			end
		end
	end
end

function vexpower_CPs_setMovable(movable)
	if movable ~= nil then
		if vexpower_parameters["frame"]["combo"]["clipToPower"]["toggle"] then
			vexpower_MainFrame:SetMovable(movable)
		else
			vexpower_cpsbar:SetMovable(movable)
		end
		vexpower_cpsbar:EnableMouse(movable)
	end
end

function vexpower_CPs_savePosition()	
	vexpower_parameters["frame"]["combo"]["clipToPower"]["anchor"] = select(1, vexpower_cpsbar:GetPoint())
	vexpower_parameters["frame"]["combo"]["clipToPower"]["anchorFrame"] = select(3, vexpower_cpsbar:GetPoint())
	vexpower_parameters["frame"]["combo"]["clipToPower"]["x"] = select(4, vexpower_cpsbar:GetPoint())
	vexpower_parameters["frame"]["combo"]["clipToPower"]["y"] = select(5, vexpower_cpsbar:GetPoint())
end

function vexpower_CPs_toggleBGcolor()
	if vexpower.testmode then
		vexpower_cpsbar:SetBackdropColor(1,1,1,0.3)
	else
		vexpower_cpsbar:SetBackdropColor(0,0,0,0)
	end
end

function vexpower_CPs_setMainBar()
	vexpower_cpsbar:ClearAllPoints()
	vexpower_cpsbar:SetWidth(vexpower_parameters["frame"]["energy"]["size"]["width"])
	vexpower_cpsbar:SetHeight(vexpower_parameters["frame"]["energy"]["size"]["height"])
	vexpower_cpsbar:SetBackdrop({
		bgFile="Interface\\Buttons\\WHITE8X8", edgeFile=vexpower.LSM:Fetch("border", vexpower_parameters["frame"]["energy"]["border"]["texture"]), tile=false,
		edgeSize=vexpower_parameters["frame"]["energy"]["border"]["size"]})
		
	if not(vexpower.testmode) then
		vexpower_cpsbar:SetBackdropColor(0,0,0,0)
	else
		vexpower_cpsbar:SetBackdropColor(1,1,1,0.3)
	end
	
	vexpower_cpsbar:SetBackdropBorderColor(0,0,0,0)
	
	if vexpower_parameters["frame"]["combo"]["clipToPower"]["toggle"] then
		vexpower_cpsbar:SetPoint(
			vexpower_parameters["frame"]["combo"]["clipToPower"]["anchor"],
			vexpower_MainFrame,
			vexpower_parameters["frame"]["combo"]["clipToPower"]["anchorFrame"],
			vexpower_parameters["frame"]["combo"]["clipToPower"]["x"],
			vexpower_parameters["frame"]["combo"]["clipToPower"]["y"])
	else
		vexpower_cpsbar:SetPoint(
			vexpower_parameters["frame"]["combo"]["clipToPower"]["anchor"],
			UIparent,
			vexpower_parameters["frame"]["combo"]["clipToPower"]["anchorFrame"],
			vexpower_parameters["frame"]["combo"]["clipToPower"]["x"],
			vexpower_parameters["frame"]["combo"]["clipToPower"]["y"])
	end
	
	vexpower_cpsbar:RegisterForDrag("LeftButton")
	vexpower_cpsbar:SetScript("OnDragStart", function ()
		if vexpower_parameters["frame"]["combo"]["clipToPower"]["toggle"] then
			vexpower_MainFrame:StartMoving()
		else
			vexpower_cpsbar:StartMoving()
		end end)
	vexpower_cpsbar:SetScript("OnDragStop", function ()
		if vexpower_parameters["frame"]["combo"]["clipToPower"]["toggle"] then
			vexpower_MainFrame:StopMovingOrSizing()
			vexpower_MainFrame_savePosition()
		else
			vexpower_cpsbar:StopMovingOrSizing()
			vexpower_CPs_savePosition()
		end end)
	vexpower_cpsbar:SetMovable(vexpower.testmode)
	vexpower_cpsbar:EnableMouse(vexpower.testmode)
end

function vexpower_CPs_show()
	for i=1, #vexpower.cpsbars do
		if vexpower.cpsbars[i] ~=nil then
			if i <= vexpower.currentcps then
				vexpower.cpsbars[i]:Show()
			else
				vexpower.cpsbars[i]:Hide()
			end
		end
	end
end

function vexpower_CPs_sound()
	local x = vexpower_parameters["sound"]["x"]
	if vexpower.currentcps_prev < x and vexpower.currentcps >= x and vexpower_parameters["sound"]["activate"] then
		PlaySoundFile(vexpower.LSM:Fetch("sound", vexpower_parameters["sound"]["file"]), vexpower_parameters["sound"]["channel"])
	end
end