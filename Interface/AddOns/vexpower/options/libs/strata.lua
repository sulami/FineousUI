vexpower_optionTab_Strata_values = {
	[1] = "BACKGROUND (lowest)",
	[2] = "LOW",
	[3] = "MEDIUM (Default)",
	[4] = "HIGH",
	[5] = "DIALOG",
	[6] = "FULLSCREEN",
	[7] = "FULLSCREEN_DIALOG",
	[8] = "TOOLTIP (highest)",
	}
	
function vexpower_optionTab_Strata_convertValue(val)
	local values = {
		[1] = "BACKGROUND",
		[2] = "LOW",
		[3] = "MEDIUM",
		[4] = "HIGH",
		[5] = "DIALOG",
		[6] = "FULLSCREEN",
		[7] = "FULLSCREEN_DIALOG",
		[8] = "TOOLTIP",
		}
		
	if values[val] == nil then
		return "MEDIUM"
	else
		return values[val]
	end
end