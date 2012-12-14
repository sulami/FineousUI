function vexpower_ClassSpecifics_handler()
	vexpower_ClassSpecifics_nukeBars()
	if vexpower.class == "WARLOCK" and (vexpower.specType == 266 or vexpower.specType == 267) then
		for i=1, vexpower.maxcps do
			vexpower_ClassSpecifics_createBars(i)
		end
		vexpower.AltPower.created = true
	else
		vexpower.AltPower.created = false
	end
end

function vexpower_ClassSpecifics_Monk_chiTimer()
	if vexpower.class == "MONK" and vexpower.currentcps ~= 0 then
		if vexpower.monkChiTimer[1] ~= nil then
			if vexpower.monkChiTimer[1]:IsPlaying() then
				vexpower.monkChiTimer[1]:Stop()
			end
		end
		vexpower.monkChiTimer = vexpower_Timer(
			"vexpower.monkChiTimer",
			10,
			function ()
			vexpower.infightTime = GetTime()
			vexpower_ClassSpecifics_Monk_chiTimer()
			end)
	end
end

function vexpower_ClassSpecifics_createBars(number)
	vexpower.AltPower.currentenergy[number] = 100
	vexpower.AltPower.currentenergy_prev[number] = 100
	vexpower.AltPower.maxenergy[number] = 100
	vexpower.AltPower.maxenergy_prev[number] = 100
	vexpower.AltPower.maxwidth[number] = 0
	vexpower.AltPower.BarBG[number] = CreateFrame("Frame", nil, vexpower_cpsbar)
	vexpower.AltPower.Bar[number] = {}
	vexpower.AltPower.Bar[number][1] = CreateFrame("Frame", nil, vexpower.AltPower.BarBG[number])
	vexpower.AltPower.BarDif[number] = {}
	vexpower.AltPower.BarDif[number][1] = CreateFrame("Frame", nil, vexpower.AltPower.BarBG[number])
end


function vexpower_ClassSpecifics_setBars()
	for i=1, vexpower.maxcps do
		if vexpower.AltPower.Bar[i] ~= nil then
			vexpower_AltPower_setBarBG(i)
			vexpower_AltPower_setBar(i)
			vexpower_AltPower_setBarDif(i)
			vexpower_AltPower_setMaxWidth(i)
		end
	end
end

function vexpower_ClassSpecifics_nukeBars()
	local bardifs = #vexpower.AltPower.BarDif
	if bardifs > 0 then
		for i=1,bardifs do
			if vexpower.AltPower.BarDif[1][1] ~= nil then
				vexpower.AltPower.BarDif[1][1]:Hide()
				table.remove(vexpower.AltPower.BarDif, 1)
			end
		end
	end
	
	local bars = #vexpower.AltPower.Bar
	if bars > 0 then
		for i=1,bars do
			if vexpower.AltPower.Bar[1] ~= nil then
				vexpower.AltPower.Bar[1][1]:Hide()
				table.remove(vexpower.AltPower.Bar, 1)
			end
		end
	end

	local barbgs = #vexpower.AltPower.BarBG
	if barbgs > 0 then
		for i=1,barbgs do
			if vexpower.AltPower.BarBG[1] ~= nil then
				vexpower.AltPower.BarBG[1]:Hide()
				table.remove(vexpower.AltPower.BarBG, 1)
			end
		end
	end
end