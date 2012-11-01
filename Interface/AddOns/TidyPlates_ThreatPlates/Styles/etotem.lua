﻿local Media = LibStub("LibSharedMedia-3.0")
local config = {}
local path = "Interface\\Addons\\TidyPlates_ThreatPlates\\Artwork\\"
local f = CreateFrame("Frame")
local function CreateStyle(self,event,...)
	local arg1 = ...
	if arg1 == "TidyPlates_ThreatPlates" then
	local db = TidyPlatesThreat.db.profile.settings
config.hitbox = {
	width = 128,
	height = 24,
}
config.frame = {
	emptyTexture =					path.."Empty",
	width = 124,
	height = 30,
	x = 0,
	y = 0,
	anchor = "CENTER",
}
config.threatborder = {
	texture =						path.."Empty",
	elitetexture =					path.."Empty",
	width = 256,
	height = 64,
	x = 0,
	y = 0,
	anchor = "CENTER",
}
config.healthborder = {
	texture = 						path.."Empty",
	glowtexture = 					path.."Empty",
	elitetexture = 					path.."Empty",
	width = 256,
	height = 64,
	x = 0,
	y = 0,
	anchor = "CENTER",
}
config.castborder = {
	texture = 						path.."Empty",
	width = 256,
	height = 64,
	x = 0,
	y = -15,
	anchor = "CENTER",
}

config.castnostop = {
	texture =						path.."Empty",
	width = 256,
	height = 64,
	x = 0,
	y = -15,
	anchor = "CENTER",
}
--[[Bar Textures]]--
config.healthbar = {
	texture = 						path.."Empty",
	width = 120,
	height = 10,
	x = 0,
	y = 0,
	anchor = "CENTER",
	orientation = "HORIZONTAL",
}
config.castbar = {
	texture =						path.."Empty",
	width = 120,
	height = 10,
	x = 0,
	y = -15,
	anchor = "CENTER",
	orientation = "HORIZONTAL",
}
--[[TEXT]]--

config.name = {
	typeface =						Media:Fetch('font', db.name.typeface),
	size = db.name.size,
	width = db.name.width,
	height = db.name.height,
	x = db.name.x,
	y = db.name.y,
	align = db.name.align,
	anchor = "CENTER",
	vertical = db.name.vertical,
	shadow = db.name.shadow,
	flags = db.name.flags,
	show = false,
}
config.level = {
	typeface =						Media:Fetch('font', db.level.typeface),
	size = db.level.size,
	width = db.level.width,
	height = db.level.height,
	x = db.level.x,
	y = db.level.y,
	align = db.level.align,
	anchor = "CENTER",
	vertical = db.level.vertical,
	shadow = db.level.shadow,
	flags = db.level.flags,
	show = false,
}
config.customtext = {
	typeface =						Media:Fetch('font', db.customtext.typeface),
	size = db.customtext.size,
	width = db.customtext.width,
	height = db.customtext.height,
	x = db.customtext.x,
	y = db.customtext.y,
	align = db.customtext.align,
	anchor = "CENTER",
	vertical = db.customtext.vertical,
	shadow = db.customtext.shadow,
	flags = db.customtext.flags,
	show = false,
}
config.spelltext = {
	typeface =						Media:Fetch('font', db.spelltext.typeface),
	size = db.spelltext.size,
	width = db.spelltext.width,
	height = db.spelltext.height,
	x = db.spelltext.x,
	y = db.spelltext.y,
	align = db.spelltext.align,
	anchor = "CENTER",
	vertical = db.spelltext.vertical,
	shadow = db.spelltext.shadow,
	flags = db.spelltext.flags,
	show = false,
}
--[[ICONS]]--
config.skullicon = {
	width = (db.skullicon.scale),
	height = (db.skullicon.scale),
	x = (db.skullicon.x),
	y = (db.skullicon.y),
	anchor = (db.skullicon.anchor),
	show = false,
}
config.customart = {
	width = (db.customart.scale),
	height = (db.customart.scale),
	x = (db.customart.x),
	y = (db.customart.y),
	anchor = (db.customart.anchor),
	show = false,
}
config.spellicon = {
	width = (db.spellicon.scale),
	height = (db.spellicon.scale),
	x = (db.spellicon.x),
	y = (db.spellicon.y),
	anchor = (db.spellicon.anchor),
	show = false,
}
config.raidicon = {
	width = (db.raidicon.scale),
	height = (db.raidicon.scale),
	x = (db.raidicon.x),
	y = (db.raidicon.y),
	anchor = (db.raidicon.anchor),
	show = false,
}
--[[OPTIONS]]--
local threat = db.totem.threatcolor
config.threatcolor = {
	LOW = { 
		r = threat.LOW.r, 
		g = threat.LOW.g, 
		b = threat.LOW.b, 
		a = threat.LOW.a 
	},
	MEDIUM = { 
		r = threat.MEDIUM.r, 
		g = threat.MEDIUM.g, 
		b = threat.MEDIUM.b, 
		a = threat.MEDIUM.a
	},
	HIGH = { 
		r = threat.HIGH.r,
		g = threat.HIGH.g, 
		b = threat.HIGH.b, 
		a = threat.HIGH.a
	},
}
TidyPlatesThemeList["Threat Plates"]["etotem"] = {}
TidyPlatesThemeList["Threat Plates"]["etotem"] = config
	end
end
f:SetScript("OnEvent", function(self,event,...) 
	CreateStyle(self,event,...)
end)
f:RegisterEvent("ADDON_LOADED")