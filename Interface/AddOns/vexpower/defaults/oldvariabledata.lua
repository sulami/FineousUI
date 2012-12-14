function vexpower_checkOldVariables6()
	if vexpower_parameters["variableversion"] < 2 then
		vexpower_parameters["frame"]["energy"]["position"]["x"] = vexpower_parameters["frame"]["energy"]["position"]["x"] + vexpower_parameters["frame"]["energy"]["size"]["width"]/2
		vexpower_parameters["frame"]["energy"]["position"]["y"] = vexpower_parameters["frame"]["energy"]["position"]["y"] - vexpower_parameters["frame"]["energy"]["size"]["height"]/2
		vexpower_parameters["variableversion"] = 2
	end
	
	if vexpower_parameters["variableversion"] < 3 then
		if vexpower_parameters["frame"]["energy"]["text"]["left"] ~= nil then
			vexpower_parameters["frame"]["energy"]["text"]["left"]["text"] = string.gsub(vexpower_parameters["frame"]["energy"]["text"]["left"]["text"], "{", "%[")
			vexpower_parameters["frame"]["energy"]["text"]["left"]["text"] = string.gsub(vexpower_parameters["frame"]["energy"]["text"]["left"]["text"], "}", "%]")
		end
		if vexpower_parameters["frame"]["energy"]["text"]["right"] ~= nil then
			vexpower_parameters["frame"]["energy"]["text"]["right"]["text"] = string.gsub(vexpower_parameters["frame"]["energy"]["text"]["right"]["text"], "{", "%[")
			vexpower_parameters["frame"]["energy"]["text"]["right"]["text"] = string.gsub(vexpower_parameters["frame"]["energy"]["text"]["right"]["text"], "}", "%]")
		end
		vexpower_parameters["variableversion"] = 3
	end
		
	if vexpower_parameters["variableversion"] < 4 then
		if vexpower_parameters["frame"]["energy"]["text"]["left"] ~= nil then
			vexpower_parameters["frame"]["energy"]["text"]["left"]["text"] = string.gsub(vexpower_parameters["frame"]["energy"]["text"]["left"]["text"], "%[CurrentEnergy%]", "%[PowerCurrent%]")
			vexpower_parameters["frame"]["energy"]["text"]["left"]["text"] = string.gsub(vexpower_parameters["frame"]["energy"]["text"]["left"]["text"], "%[CurrentManaSmart%]", "%[PowerCurrentSmart%]")
			vexpower_parameters["frame"]["energy"]["text"]["left"]["text"] = string.gsub(vexpower_parameters["frame"]["energy"]["text"]["left"]["text"], "%[CurrentManaShort%]", "%[PowerCurrentShort%]")
			vexpower_parameters["frame"]["energy"]["text"]["left"]["text"] = string.gsub(vexpower_parameters["frame"]["energy"]["text"]["left"]["text"], "%[MaxEnergy%]", "%[PowerMax%]")
			vexpower_parameters["frame"]["energy"]["text"]["left"]["text"] = string.gsub(vexpower_parameters["frame"]["energy"]["text"]["left"]["text"], "%[MaxManaSmart%]", "%[PowerMaxSmart%]")
			vexpower_parameters["frame"]["energy"]["text"]["left"]["text"] = string.gsub(vexpower_parameters["frame"]["energy"]["text"]["left"]["text"], "%[MaxManaShort%]", "%[PowerMaxShort%]")
			vexpower_parameters["frame"]["energy"]["text"]["left"]["text"] = string.gsub(vexpower_parameters["frame"]["energy"]["text"]["left"]["text"], "%[MissingEnergy%]", "%[PowerMissing%]")
			vexpower_parameters["frame"]["energy"]["text"]["left"]["text"] = string.gsub(vexpower_parameters["frame"]["energy"]["text"]["left"]["text"], "%[MissingManaSmart%]", "%[PowerMissingSmart%]")
			vexpower_parameters["frame"]["energy"]["text"]["left"]["text"] = string.gsub(vexpower_parameters["frame"]["energy"]["text"]["left"]["text"], "%[MissingManaShort%]", "%[PowerMissingShort%]")
			vexpower_parameters["frame"]["energy"]["text"]["left"]["text"] = string.gsub(vexpower_parameters["frame"]["energy"]["text"]["left"]["text"], "%[PercEnergy%]", "%[PowerPerc%]")
			vexpower_parameters["frame"]["energy"]["text"]["left"]["text"] = string.gsub(vexpower_parameters["frame"]["energy"]["text"]["left"]["text"], "%[PercEnergySmart%]", "%[PowerPercSmart%]")
			vexpower_parameters["frame"]["energy"]["text"]["left"]["text"] = string.gsub(vexpower_parameters["frame"]["energy"]["text"]["left"]["text"], "%[CurrentCPs%]", "%[CPsCurrent%]")
			vexpower_parameters["frame"]["energy"]["text"]["left"]["text"] = string.gsub(vexpower_parameters["frame"]["energy"]["text"]["left"]["text"], "%[MaxCPs%]", "%[CPsMax%]")
			vexpower_parameters["frame"]["energy"]["text"]["left"]["text"] = string.gsub(vexpower_parameters["frame"]["energy"]["text"]["left"]["text"], "%[MissingCPs%]", "%[CPsMissing%]")
		end
		if vexpower_parameters["frame"]["energy"]["text"]["right"] ~= nil then
			vexpower_parameters["frame"]["energy"]["text"]["right"]["text"] = string.gsub(vexpower_parameters["frame"]["energy"]["text"]["right"]["text"], "%[CurrentEnergy%]", "%[PowerCurrent%]")
			vexpower_parameters["frame"]["energy"]["text"]["right"]["text"] = string.gsub(vexpower_parameters["frame"]["energy"]["text"]["right"]["text"], "%[CurrentManaSmart%]", "%[PowerCurrentSmart%]")
			vexpower_parameters["frame"]["energy"]["text"]["right"]["text"] = string.gsub(vexpower_parameters["frame"]["energy"]["text"]["right"]["text"], "%[CurrentManaShort%]", "%[PowerCurrentShort%]")
			vexpower_parameters["frame"]["energy"]["text"]["right"]["text"] = string.gsub(vexpower_parameters["frame"]["energy"]["text"]["right"]["text"], "%[MaxEnergy%]", "%[PowerMax%]")
			vexpower_parameters["frame"]["energy"]["text"]["right"]["text"] = string.gsub(vexpower_parameters["frame"]["energy"]["text"]["right"]["text"], "%[MaxManaSmart%]", "%[PowerMaxSmart%]")
			vexpower_parameters["frame"]["energy"]["text"]["right"]["text"] = string.gsub(vexpower_parameters["frame"]["energy"]["text"]["right"]["text"], "%[MaxManaShort%]", "%[PowerMaxShort%]")
			vexpower_parameters["frame"]["energy"]["text"]["right"]["text"] = string.gsub(vexpower_parameters["frame"]["energy"]["text"]["right"]["text"], "%[MissingEnergy%]", "%[PowerMissing%]")
			vexpower_parameters["frame"]["energy"]["text"]["right"]["text"] = string.gsub(vexpower_parameters["frame"]["energy"]["text"]["right"]["text"], "%[MissingManaSmart%]", "%[PowerMissingSmart%]")
			vexpower_parameters["frame"]["energy"]["text"]["right"]["text"] = string.gsub(vexpower_parameters["frame"]["energy"]["text"]["right"]["text"], "%[MissingManaShort%]", "%[PowerMissingShort%]")
			vexpower_parameters["frame"]["energy"]["text"]["right"]["text"] = string.gsub(vexpower_parameters["frame"]["energy"]["text"]["right"]["text"], "%[PercEnergy%]", "%[PowerPerc%]")
			vexpower_parameters["frame"]["energy"]["text"]["right"]["text"] = string.gsub(vexpower_parameters["frame"]["energy"]["text"]["right"]["text"], "%[PercEnergySmart%]", "%[PowerPercSmart%]")
			vexpower_parameters["frame"]["energy"]["text"]["right"]["text"] = string.gsub(vexpower_parameters["frame"]["energy"]["text"]["right"]["text"], "%[CurrentCPs%]", "%[CPsCurrent%]")
			vexpower_parameters["frame"]["energy"]["text"]["right"]["text"] = string.gsub(vexpower_parameters["frame"]["energy"]["text"]["right"]["text"], "%[MaxCPs%]", "%[CPsMax%]")
			vexpower_parameters["frame"]["energy"]["text"]["right"]["text"] = string.gsub(vexpower_parameters["frame"]["energy"]["text"]["right"]["text"], "%[MissingCPs%]", "%[CPsMissing%]")
		end
		
		vexpower_parameters["variableversion"] = 4
	end
		
	if vexpower_parameters["variableversion"] < 5 then
		vexpower_parameters["frame"]["combo"]["showwithmana"] = vexpower_parameters["frame"]["energy"]["showwithmana"]
		vexpower_parameters["variableversion"] = 5
	end
	
	if vexpower_parameters["variableversion"] < 6 then
		for key in pairs(vexpower_parameters["frame"]["energy"]["markers"]["points"]) do
			vexpower_parameters["frame"]["energy"]["markers"]["points"][key] = {
				["FOCUS"] = true,
				["MANA"] = true,
				["RUNIC_POWER"] = true,
				["ENERGY"] = true,
				["RAGE"] = true,
				}
		end
		for key in pairs(vexpower_parameters["frame"]["energy"]["markers"]["points_spec_a"]) do
			vexpower_parameters["frame"]["energy"]["markers"]["points_spec_a"][key] = {
				["FOCUS"] = true,
				["MANA"] = true,
				["RUNIC_POWER"] = true,
				["ENERGY"] = true,
				["RAGE"] = true,
				}
		end
		for key in pairs(vexpower_parameters["frame"]["energy"]["markers"]["points_spec_b"]) do
			vexpower_parameters["frame"]["energy"]["markers"]["points_spec_b"][key] = {
				["FOCUS"] = true,
				["MANA"] = true,
				["RUNIC_POWER"] = true,
				["ENERGY"] = true,
				["RAGE"] = true,
				}
		end
		vexpower_parameters["variableversion"] = 6
	end
end

function vexpower_checkOldVariables7(PowerShowWithMana, CPsShowWithMana, CPsShowWithoutEnergy)
	if vexpower_parameters["variableversion"] < 7 then
		if PowerShowWithMana ~= nil then
			vexpower_parameters["frame"]["energy"]["showWithPowerType"]["MANA"] = PowerShowWithMana
		end
		if CPsShowWithMana ~= nil then
			vexpower_parameters["frame"]["combo"]["showWithPowerType"]["MANA"] = CPsShowWithMana
		end
		if CPsShowWithoutEnergy ~= nil then
			vexpower_parameters["frame"]["combo"]["showWithPowerType"]["RAGE"] = CPsShowWithoutEnergy
			vexpower_parameters["frame"]["combo"]["showWithPowerType"]["MANA"] = CPsShowWithoutEnergy
			vexpower_parameters["frame"]["combo"]["showWithPowerType"]["FOCUS"] = CPsShowWithoutEnergy
			vexpower_parameters["frame"]["combo"]["showWithPowerType"]["RUNIC_POWER"] = CPsShowWithoutEnergy
		end
		vexpower_parameters["variableversion"] = 7
	end
end

function vexpower_checkOldVariables8(infightshow, infightshowCP, vehiclehide, stealthshow, stealthshowCP)
	if vexpower_parameters["variableversion"] < 8 then
		if vehiclehide ~= nil then
			vexpower_parameters["frame"]["energy"]["vehiclehide"] = vehiclehide
		end
		if vehiclehide ~= nil then
			vexpower_parameters["frame"]["combo"]["vehiclehide"] = vehiclehide
		end
		if infightshow ~= nil then
			vexpower_parameters["frame"]["energy"]["infightshow"] = infightshow
		end
		if infightshowCP ~= nil then
			vexpower_parameters["frame"]["combo"]["infightshow"] = infightshowCP
		end
		if stealthshow ~= nil then
			vexpower_parameters["frame"]["energy"]["stealthshow"] = stealthshow
		end
		if stealthshowCP ~= nil then
			vexpower_parameters["frame"]["combo"]["stealthshow"] = stealthshowCP
		end
		vexpower_parameters["variableversion"] = 8
	end
end

function vexpower_checkOldVariables10(textfields)
	if vexpower_parameters["variableversion"] < 10 then
		if textfields["left"]~=nil then
			textfields["left"]["anchor"] = "TOPLEFT"
			textfields["left"]["anchor2"] = "TOPLEFT"
			textfields["right"]["anchor"] = "TOPRIGHT"
			textfields["right"]["anchor2"] = "TOPRIGHT"
			
			textfields["1"] = vexpower_CopyTable(vexpower_parameters["frame"]["energy"]["text"]["left"])
			textfields["left"] = nil
			textfields["2"] = vexpower_CopyTable(vexpower_parameters["frame"]["energy"]["text"]["right"])
			textfields["right"] = nil
		end
		vexpower_parameters["variableversion"] = 10
	end
	return textfields
end

function vexpower_checkOldVariables11()
	if vexpower_parameters["variableversion"] < 11 then
		for key,val in pairs(vexpower_default_colorpresets) do
			if vexpower_default_data["colorpresets"][key] == nil then
				vexpower_default_data["colorpresets"][key] = vexpower_CopyTable(val)
			end
		end
		vexpower_parameters["variableversion"] = 11
	end
end

function vexpower_checkOldVariables12()
	if vexpower_parameters["variableversion"] < 12 then
		for key in pairs(vexpower_parameters["frame"]["energy"]["text"]) do
			vexpower_parameters["frame"]["energy"]["text"][key]["text"] = string.gsub(vexpower_parameters["frame"]["energy"]["text"][key]["text"], "%[BuffDurationTotal%]", "%[TimeTotal%]")
			vexpower_parameters["frame"]["energy"]["text"][key]["text"] = string.gsub(vexpower_parameters["frame"]["energy"]["text"][key]["text"], "%[BuffDurationLeft%]", "%[TimeLeft%]")
			vexpower_parameters["frame"]["energy"]["text"][key]["text"] = string.gsub(vexpower_parameters["frame"]["energy"]["text"][key]["text"], "%[BuffDurationLeftShort%]", "%[TimeLeftShort%]")
		end
		vexpower_parameters["variableversion"] = 12
	end
end

function vexpower_checkOldVariables13()
	if vexpower_parameters["variableversion"] < 13 then
			vexpower_parameters["frame"]["combo"]["clipToPower"]["y"] = vexpower_parameters["frame"]["combo"]["measure"]["y"]
			vexpower_parameters["frame"]["combo"]["measure"]["y"] = 0
		vexpower_parameters["variableversion"] = 13
	end
end