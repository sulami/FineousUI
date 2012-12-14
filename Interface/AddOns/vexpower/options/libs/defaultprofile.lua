vexpower_optionTab_DefProfile_openTab = {
	["profile"] = false,
	["colorsets"] = false,
	}

function vexpower_optionFrame_DefProfile_ToggleTab(tab)
	if vexpower_optionTab_DefProfile_openTab[tab] ~= nil then
		vexpower_optionTab_DefProfile_closeAllTabs()
		vexpower_optionTab_DefProfile_openTab[tab] = true
	end
end
	
function vexpower_optionTab_DefProfile_closeAllTabs()
	for key in pairs(vexpower_optionTab_DefProfile_openTab) do
		vexpower_optionTab_DefProfile_openTab[key] = false
	end
end