
GridDB = {
	["namespaces"] = {
		["GridFrame"] = {
			["profiles"] = {
				["heal"] = {
					["statusmap"] = {
						["corner2"] = {
							["role"] = true,
						},
						["corner4"] = {
							["buff_Machtwort:Schild"] = true,
							["buff_Erneuerung"] = true,
							["alert_aggro"] = false,
						},
						["corner1"] = {
							["alert_heals"] = false,
						},
						["border"] = {
							["alert_lowMana"] = false,
						},
						["manabar"] = {
						},
						["text"] = {
							["alert_heals"] = false,
						},
						["icon"] = {
							["debuff_curse"] = false,
							["debuff_poison"] = false,
							["alert_range"] = true,
						},
						["corner3"] = {
							["debuff_curse"] = false,
							["debuff_poison"] = false,
							["debuff_disease"] = false,
							["debuff_GeschwächteSeele"] = true,
							["debuff_magic"] = false,
						},
					},
				},
				["Default"] = {
					["textlength"] = 7,
					["frameHeight"] = 23,
					["font"] = "Arial Narrow",
					["orientation"] = "HORIZONTAL",
					["frameWidth"] = 68,
					["statusmap"] = {
						["corner2"] = {
							["role"] = false,
						},
						["healingBar"] = {
							["alert_aggro"] = true,
							["alert_heals"] = false,
						},
						["manabar"] = {
							["unit_mana"] = true,
						},
						["text"] = {
							["ready_check"] = true,
							["unit_healthDeficit"] = false,
							["alert_heals"] = false,
						},
						["border"] = {
							["alert_lowHealth"] = false,
							["alert_lowMana"] = false,
						},
						["corner4"] = {
							["alert_aggro"] = false,
						},
						["corner3"] = {
							["debuff_curse"] = false,
							["debuff_poison"] = false,
							["debuff_disease"] = false,
							["role"] = true,
							["debuff_magic"] = false,
						},
						["corner1"] = {
							["alert_heals"] = false,
						},
						["icon"] = {
							["debuff_curse"] = false,
							["debuff_poison"] = false,
							["debuff_disease"] = false,
							["alert_aggro"] = false,
							["debuff_magic"] = false,
						},
					},
				},
				["dk"] = {
					["font"] = "Arial Narrow",
					["frameHeight"] = 23,
					["orientation"] = "HORIZONTAL",
					["statusmap"] = {
						["corner2"] = {
							["role"] = false,
						},
						["healingBar"] = {
							["alert_aggro"] = true,
							["alert_heals"] = false,
						},
						["manabar"] = {
							["unit_mana"] = true,
						},
						["text"] = {
							["ready_check"] = true,
							["alert_heals"] = false,
							["unit_healthDeficit"] = false,
						},
						["border"] = {
							["alert_lowHealth"] = false,
							["alert_lowMana"] = false,
						},
						["corner4"] = {
							["alert_aggro"] = false,
						},
						["corner1"] = {
							["alert_heals"] = false,
						},
						["corner3"] = {
							["debuff_curse"] = false,
							["debuff_poison"] = false,
							["debuff_disease"] = false,
							["role"] = true,
							["debuff_magic"] = false,
						},
						["icon"] = {
							["debuff_curse"] = false,
							["debuff_poison"] = false,
							["debuff_disease"] = false,
							["alert_aggro"] = false,
							["debuff_magic"] = false,
						},
					},
					["frameWidth"] = 68,
					["textlength"] = 7,
				},
			},
		},
		["GridStatusVehicle"] = {
		},
		["GridRoster"] = {
			["profiles"] = {
				["Default"] = {
					["party_state"] = "bg",
				},
				["dk"] = {
					["party_state"] = "raid_10",
				},
			},
		},
		["GridStatusName"] = {
		},
		["GridMBStatus"] = {
		},
		["GridStatusTarget"] = {
		},
		["GridMBFrame"] = {
			["profiles"] = {
				["heal"] = {
					["side"] = "Bottom",
				},
				["Default"] = {
					["side"] = "Bottom",
					["size"] = 0.2,
				},
				["dk"] = {
					["side"] = "Bottom",
					["size"] = 0.2,
				},
			},
		},
		["GridStatusResurrect"] = {
		},
		["GridStatusRange"] = {
		},
		["GridStatusAuras"] = {
			["profiles"] = {
				["heal"] = {
					["buff_Erdschild"] = {
						["icon"] = "Interface\\Icons\\Spell_Nature_SkinofEarth",
					},
					["buff_Verjüngung"] = {
						["icon"] = "Interface\\Icons\\Spell_Nature_Rejuvenation",
					},
					["buff_Nachwachsen"] = {
						["icon"] = "Interface\\Icons\\Spell_Nature_ResistNature",
					},
					["buff_Machtwort:Schild"] = {
						["icon"] = "Interface\\Icons\\Spell_Holy_PowerWordShield",
					},
					["buff_Erneuerung"] = {
						["icon"] = "Interface\\Icons\\Spell_Holy_Renew",
					},
					["buff_Barmherzigkeit"] = {
						["icon"] = "Interface\\Icons\\Spell_Holy_HopeAndGrace",
					},
				},
				["Default"] = {
					["buff_Verjüngung"] = {
						["icon"] = "Interface\\Icons\\Spell_Nature_Rejuvenation",
					},
					["buff_Erdschild"] = {
						["icon"] = "Interface\\Icons\\Spell_Nature_SkinofEarth",
					},
					["buff_Nachwachsen"] = {
						["icon"] = "Interface\\Icons\\Spell_Nature_ResistNature",
					},
					["buff_BlühendesLeben"] = {
						["icon"] = "Interface\\Icons\\INV_Misc_Herb_Felblossom",
					},
					["buff_Barmherzigkeit"] = {
						["icon"] = "Interface\\Icons\\Spell_Holy_HopeAndGrace",
					},
					["buff_FlammedesGlaubens"] = {
						["icon"] = "Interface\\Icons\\Ability_Paladin_BeaconofLight",
					},
					["buff_Machtwort:Schild"] = {
						["icon"] = "Interface\\Icons\\Spell_Holy_PowerWordShield",
					},
					["buff_Erneuerung"] = {
						["icon"] = "Interface\\Icons\\Spell_Holy_Renew",
					},
					["buff_Springflut"] = {
						["icon"] = "Interface\\Icons\\spell_nature_riptide",
					},
				},
				["dk"] = {
					["buff_FlammedesGlaubens"] = {
						["icon"] = "Interface\\Icons\\Ability_Paladin_BeaconofLight",
					},
					["buff_Verjüngung"] = {
						["icon"] = "Interface\\Icons\\Spell_Nature_Rejuvenation",
					},
					["buff_Erdschild"] = {
						["icon"] = "Interface\\Icons\\Spell_Nature_SkinofEarth",
					},
					["buff_Springflut"] = {
						["icon"] = "Interface\\Icons\\spell_nature_riptide",
					},
					["buff_Barmherzigkeit"] = {
						["icon"] = "Interface\\Icons\\Spell_Holy_HopeAndGrace",
					},
					["buff_Machtwort:Schild"] = {
						["icon"] = "Interface\\Icons\\Spell_Holy_PowerWordShield",
					},
					["buff_Nachwachsen"] = {
						["icon"] = "Interface\\Icons\\Spell_Nature_ResistNature",
					},
					["buff_Erneuerung"] = {
						["icon"] = "Interface\\Icons\\Spell_Holy_Renew",
					},
					["buff_BlühendesLeben"] = {
						["icon"] = "Interface\\Icons\\INV_Misc_Herb_Felblossom",
					},
				},
			},
		},
		["GridStatus"] = {
			["profiles"] = {
				["heal"] = {
					["colors"] = {
						["HUNTER"] = {
							["b"] = 0.45,
							["g"] = 0.83,
							["r"] = 0.67,
						},
						["WARRIOR"] = {
							["b"] = 0.43,
							["g"] = 0.61,
							["r"] = 0.78,
						},
						["PALADIN"] = {
							["b"] = 0.73,
							["g"] = 0.55,
							["r"] = 0.96,
						},
						["MAGE"] = {
							["b"] = 0.94,
							["g"] = 0.8,
							["r"] = 0.41,
						},
						["PRIEST"] = {
							["b"] = 1,
							["g"] = 1,
							["r"] = 1,
						},
						["WARLOCK"] = {
							["b"] = 0.79,
							["g"] = 0.51,
							["r"] = 0.58,
						},
						["DEATHKNIGHT"] = {
							["b"] = 0.23,
							["g"] = 0.12,
							["r"] = 0.77,
						},
						["DRUID"] = {
							["b"] = 0.04,
							["g"] = 0.49,
							["r"] = 1,
						},
						["ROGUE"] = {
							["b"] = 0.41,
							["g"] = 0.96,
							["r"] = 1,
						},
						["SHAMAN"] = {
							["b"] = 0.87,
							["g"] = 0.44,
							["r"] = 0,
						},
					},
				},
				["Default"] = {
					["colors"] = {
						["PALADIN"] = {
							["r"] = 0.96,
							["g"] = 0.55,
							["b"] = 0.73,
						},
						["MAGE"] = {
							["r"] = 0.41,
							["g"] = 0.8,
							["b"] = 0.94,
						},
						["DRUID"] = {
							["r"] = 1,
							["g"] = 0.49,
							["b"] = 0.04,
						},
						["MONK"] = {
							["b"] = 0.59,
							["g"] = 1,
							["r"] = 0,
						},
						["DEATHKNIGHT"] = {
							["r"] = 0.77,
							["g"] = 0.12,
							["b"] = 0.23,
						},
						["ROGUE"] = {
							["r"] = 1,
							["g"] = 0.96,
							["b"] = 0.41,
						},
						["SHAMAN"] = {
							["r"] = 0,
							["g"] = 0.44,
							["b"] = 0.87,
						},
						["PRIEST"] = {
							["r"] = 1,
							["g"] = 1,
							["b"] = 1,
						},
						["WARLOCK"] = {
							["r"] = 0.58,
							["g"] = 0.51,
							["b"] = 0.79,
						},
						["HUNTER"] = {
							["r"] = 0.67,
							["g"] = 0.83,
							["b"] = 0.45,
						},
						["WARRIOR"] = {
							["r"] = 0.78,
							["g"] = 0.61,
							["b"] = 0.43,
						},
					},
				},
				["dk"] = {
					["colors"] = {
						["HUNTER"] = {
							["b"] = 0.45,
							["g"] = 0.83,
							["r"] = 0.67,
						},
						["WARRIOR"] = {
							["b"] = 0.43,
							["g"] = 0.61,
							["r"] = 0.78,
						},
						["ROGUE"] = {
							["b"] = 0.41,
							["g"] = 0.96,
							["r"] = 1,
						},
						["MAGE"] = {
							["b"] = 0.94,
							["g"] = 0.8,
							["r"] = 0.41,
						},
						["PRIEST"] = {
							["b"] = 1,
							["g"] = 1,
							["r"] = 1,
						},
						["WARLOCK"] = {
							["b"] = 0.79,
							["g"] = 0.51,
							["r"] = 0.58,
						},
						["SHAMAN"] = {
							["b"] = 0.87,
							["g"] = 0.44,
							["r"] = 0,
						},
						["PALADIN"] = {
							["b"] = 0.73,
							["g"] = 0.55,
							["r"] = 0.96,
						},
						["DRUID"] = {
							["b"] = 0.04,
							["g"] = 0.49,
							["r"] = 1,
						},
						["MONK"] = {
							["r"] = 0,
							["g"] = 1,
							["b"] = 0.59,
						},
						["DEATHKNIGHT"] = {
							["b"] = 0.23,
							["g"] = 0.12,
							["r"] = 0.77,
						},
					},
				},
			},
		},
		["GridStatusAggro"] = {
		},
		["GridStatusHeals"] = {
		},
		["GridStatusReadyCheck"] = {
			["profiles"] = {
				["Default"] = {
					["ready_check"] = {
						["priority"] = 97,
					},
				},
				["dk"] = {
					["ready_check"] = {
						["priority"] = 97,
					},
				},
			},
		},
		["GridStatusVoiceComm"] = {
		},
		["GridStatusHealth"] = {
			["profiles"] = {
				["Default"] = {
					["unit_healthDeficit"] = {
						["useClassColors"] = false,
						["enable"] = false,
					},
					["alert_lowHealth"] = {
						["enable"] = false,
					},
					["unit_health"] = {
						["color"] = {
							["r"] = 0.9607843137254902,
							["g"] = 0.9529411764705882,
							["b"] = 0.9019607843137255,
						},
						["useClassColors"] = false,
					},
				},
				["dk"] = {
					["alert_lowHealth"] = {
						["enable"] = false,
					},
					["unit_healthDeficit"] = {
						["enable"] = false,
					},
				},
			},
		},
		["GridLayout"] = {
			["profiles"] = {
				["heal"] = {
					["anchorRel"] = "BOTTOMLEFT",
					["BorderB"] = 0.5019607843137255,
					["BackgroundR"] = 0.1019607843137255,
					["ScaleSize"] = 1.9,
					["FrameLock"] = true,
					["BorderA"] = 0,
					["BorderR"] = 0.5019607843137255,
					["PosX"] = 545,
					["anchor"] = "BOTTOMLEFT",
					["BackgroundG"] = 0.1019607843137255,
					["groupAnchor"] = "BOTTOMLEFT",
					["PosY"] = 198,
					["layout"] = " 5er",
					["BackgroundA"] = 0,
					["BorderG"] = 0.5019607843137255,
					["horizontal"] = true,
					["BackgroundB"] = 0.1019607843137255,
				},
				["Default"] = {
					["anchorRel"] = "BOTTOMLEFT",
					["BorderB"] = 0.5019607843137255,
					["layouts"] = {
						["arena"] = " 5er mit Begleitern",
					},
					["BackgroundR"] = 0.1568627450980392,
					["FrameLock"] = true,
					["BorderA"] = 0,
					["BorderR"] = 0.5019607843137255,
					["PosX"] = 33,
					["anchor"] = "BOTTOMLEFT",
					["BackgroundG"] = 0.1568627450980392,
					["groupAnchor"] = "BOTTOMLEFT",
					["PosY"] = 250,
					["layout"] = "40er",
					["BackgroundA"] = 0,
					["BorderG"] = 0.5019607843137255,
					["horizontal"] = true,
					["BackgroundB"] = 0.1568627450980392,
				},
				["dk"] = {
					["anchorRel"] = "BOTTOMRIGHT",
					["BorderB"] = 0.5019607843137255,
					["layouts"] = {
						["party"] = "25er",
						["solo"] = "25er",
						["raid_10"] = "25er",
					},
					["BackgroundR"] = 0.1568627450980392,
					["FrameLock"] = true,
					["BorderA"] = 0,
					["BorderR"] = 0.5019607843137255,
					["PosX"] = -963,
					["anchor"] = "BOTTOMRIGHT",
					["BackgroundG"] = 0.1568627450980392,
					["groupAnchor"] = "BOTTOMRIGHT",
					["PosY"] = 300,
					["layout"] = "25er",
					["BackgroundA"] = 0,
					["BorderG"] = 0.5019607843137255,
					["horizontal"] = true,
					["BackgroundB"] = 0.1568627450980392,
				},
			},
		},
		["GridStatusMana"] = {
		},
		["LibDualSpec-1.0"] = {
		},
		["GridStatusRole"] = {
		},
	},
	["profileKeys"] = {
		["Scripe - Area 52"] = "Default",
		["Sulami - Laughing Skull"] = "Default",
		["Saizew - Area 52"] = "Default",
		["Enuresia - Area 52"] = "Default",
		["Sulami - Area 52"] = "heal",
		["Smashbot - Area 52"] = "Default",
		["Thanata - Area 52"] = "dk",
		["Sarutori - Alleria"] = "Default",
		["Darakka - Area 52"] = "Default",
		["Linon - Area 52"] = "Default",
		["Balneator - Laughing Skull"] = "Default",
		["Suilami - Blackrock"] = "Default",
	},
	["profiles"] = {
		["heal"] = {
			["minimap"] = {
			},
		},
		["Default"] = {
			["minimap"] = {
				["minimapPos"] = 248.1986740239904,
			},
		},
		["dk"] = {
			["minimap"] = {
			},
		},
	},
}
