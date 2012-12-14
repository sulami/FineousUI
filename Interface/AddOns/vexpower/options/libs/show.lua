vexpower_optionTab_Show_openTab = {
	["general"] = false,
	["blizz"] = false,
	["ooc"] = false,
	["powertypes"] = false,
	["vehicle"] = false,
	["fadeout"] = false,
	}

function vexpower_optionTab_Show_toggleTab(tab)
	if vexpower_optionTab_Show_openTab[tab] ~= nil then
		vexpower_optionTab_Show_closeAllTabs()
		vexpower_optionTab_Show_openTab[tab] = true
	end
end
	
function vexpower_optionTab_Show_closeAllTabs()
	for key in pairs(vexpower_optionTab_Show_openTab) do
		vexpower_optionTab_Show_openTab[key] = false
	end
end