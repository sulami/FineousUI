
function vexpower_MainFrame_setMovable(movable)
	if movable == nil then
		movable = not(vexpower_MainFrame:IsMovable())
		if movable then
			print("|CFFFF7D0AVex Power|r - Frame is now movable")
		else
			print("|CFFFF7D0AVex Power|r - Frame is not movable anymore")
		end
	end
	vexpower_MainFrame:SetMovable(movable)
	vexpower_energybarbg:EnableMouse(movable)
end

function vexpower_MainFrame_savePosition()	
	vexpower_parameters["frame"]["energy"]["position"]["anchor"] = select(3, vexpower_MainFrame:GetPoint())
	vexpower_parameters["frame"]["energy"]["position"]["anchorFrame"] = select(1, vexpower_MainFrame:GetPoint())
	vexpower_parameters["frame"]["energy"]["position"]["x"] = select(4, vexpower_MainFrame:GetPoint())
	vexpower_parameters["frame"]["energy"]["position"]["y"] = select(5, vexpower_MainFrame:GetPoint())
end

function vexpower_MainFrame_setFrame()
	vexpower_MainFrame:SetWidth(1)
	vexpower_MainFrame:SetHeight(1)
	vexpower_MainFrame:ClearAllPoints()
	vexpower_MainFrame:SetPoint(vexpower_parameters["frame"]["energy"]["position"]["anchorFrame"],
									UIParent,
									vexpower_parameters["frame"]["energy"]["position"]["anchor"],
									vexpower_parameters["frame"]["energy"]["position"]["x"],
									vexpower_parameters["frame"]["energy"]["position"]["y"])
end