
MSBTProfiles_SavedVars = {
	["profiles"] = {
		["Default"] = {
			["powerThrottleDuration"] = 0,
			["hideNames"] = true,
			["exclusiveSkillsDisabled"] = true,
			["hideFullOverheals"] = true,
			["mergeSwingsDisabled"] = true,
			["scrollAreas"] = {
				["Incoming"] = {
					["direction"] = "Up",
					["behavior"] = "MSBT_NORMAL",
					["skillIconsDisabled"] = true,
					["stickyBehavior"] = "Normal",
					["stickyDirection"] = "Up",
					["critFontAlpha"] = 50,
					["offsetX"] = -198,
					["critFontSize"] = 20,
					["normalFontAlpha"] = 50,
					["offsetY"] = -148,
					["animationStyle"] = "Straight",
					["normalFontSize"] = 16,
				},
				["Notification"] = {
					["direction"] = "Up",
					["critOutlineIndex"] = 2,
					["critFontSize"] = 30,
					["offsetX"] = -168,
					["critFontAlpha"] = 80,
					["normalFontAlpha"] = 80,
					["offsetY"] = 14,
					["animationStyle"] = "Static",
					["normalFontSize"] = 30,
				},
				["Static"] = {
					["disabled"] = true,
				},
				["Outgoing"] = {
					["direction"] = "Up",
					["behavior"] = "MSBT_NORMAL",
					["critFontAlpha"] = 50,
					["stickyDirection"] = "Up",
					["stickyBehavior"] = "Normal",
					["offsetX"] = 158,
					["critFontSize"] = 20,
					["normalFontAlpha"] = 50,
					["offsetY"] = -148,
					["animationStyle"] = "Straight",
					["normalFontSize"] = 16,
				},
			},
			["shortenNumbers"] = true,
			["hideMergeTrailer"] = true,
			["triggers"] = {
				["Custom1"] = {
					["message"] = "20%",
					["soundFile"] = "Finish Him",
					["alwaysSticky"] = true,
					["exceptions"] = "activeTalents;;eq;;2",
					["mainEvents"] = "UNIT_HEALTH{threshold;;lt;;20;;unitID;;eq;;target}",
					["fontSize"] = 26,
				},
				["Custom2"] = {
					["message"] = "25%",
					["soundFile"] = "Finish Him",
					["alwaysSticky"] = true,
					["exceptions"] = "activeTalents;;eq;;1",
					["mainEvents"] = "UNIT_HEALTH{unitID;;eq;;target;;threshold;;lt;;25}",
					["fontSize"] = 26,
				},
			},
			["abilitySubstitutions"] = {
				["Corruption"] = "Cor",
			},
			["dotThrottleDuration"] = 0,
			["creationVersion"] = "5.6.113",
			["critFontName"] = "Friz Quadrata TT",
			["abbreviateAbilities"] = true,
			["groupNumbers"] = true,
			["events"] = {
				["PET_INCOMING_HOT_CRIT"] = {
					["disabled"] = true,
				},
				["PET_INCOMING_SPELL_DAMAGE"] = {
					["disabled"] = true,
				},
				["NOTIFICATION_BUFF_FADE"] = {
					["disabled"] = true,
					["scrollArea"] = "Incoming",
				},
				["INCOMING_HOT"] = {
					["disabled"] = true,
				},
				["PET_OUTGOING_SPELL_DAMAGE"] = {
					["disabled"] = true,
				},
				["NOTIFICATION_BUFF"] = {
					["disabled"] = true,
					["scrollArea"] = "Incoming",
				},
				["PET_INCOMING_IMMUNE"] = {
					["disabled"] = true,
				},
				["PET_OUTGOING_SPELL_DEFLECT"] = {
					["disabled"] = true,
				},
				["PET_INCOMING_PARRY"] = {
					["disabled"] = true,
				},
				["PET_INCOMING_SPELL_MISS"] = {
					["disabled"] = true,
				},
				["INCOMING_HEAL"] = {
					["disabled"] = true,
				},
				["PET_OUTGOING_SPELL_ABSORB"] = {
					["disabled"] = true,
				},
				["PET_INCOMING_DEFLECT"] = {
					["disabled"] = true,
				},
				["PET_OUTGOING_HOT_CRIT"] = {
					["disabled"] = true,
				},
				["PET_OUTGOING_DAMAGE"] = {
					["disabled"] = true,
				},
				["PET_INCOMING_SPELL_DODGE"] = {
					["disabled"] = true,
				},
				["PET_OUTGOING_BLOCK"] = {
					["disabled"] = true,
				},
				["NOTIFICATION_HONOR_GAIN"] = {
					["disabled"] = true,
					["scrollArea"] = "Incoming",
				},
				["PET_OUTGOING_HEAL"] = {
					["disabled"] = true,
				},
				["NOTIFICATION_ITEM_BUFF_FADE"] = {
					["disabled"] = true,
					["scrollArea"] = "Incoming",
				},
				["PET_INCOMING_HEAL"] = {
					["disabled"] = true,
				},
				["PET_OUTGOING_HEAL_CRIT"] = {
					["disabled"] = true,
				},
				["PET_INCOMING_HEAL_CRIT"] = {
					["disabled"] = true,
				},
				["PET_OUTGOING_SPELL_RESIST"] = {
					["disabled"] = true,
				},
				["NOTIFICATION_POWER_LOSS"] = {
					["disabled"] = true,
					["scrollArea"] = "Incoming",
				},
				["PET_OUTGOING_SPELL_IMMUNE"] = {
					["disabled"] = true,
				},
				["PET_INCOMING_SPELL_IMMUNE"] = {
					["disabled"] = true,
				},
				["NOTIFICATION_EXPERIENCE_GAIN"] = {
					["scrollArea"] = "Incoming",
				},
				["PET_INCOMING_SPELL_BLOCK"] = {
					["disabled"] = true,
				},
				["NOTIFICATION_MONSTER_EMOTE"] = {
					["disabled"] = true,
					["scrollArea"] = "Incoming",
				},
				["NOTIFICATION_COMBAT_LEAVE"] = {
					["alwaysSticky"] = true,
				},
				["NOTIFICATION_ENEMY_BUFF"] = {
					["disabled"] = true,
					["scrollArea"] = "Incoming",
				},
				["PET_INCOMING_BLOCK"] = {
					["disabled"] = true,
				},
				["NOTIFICATION_CP_GAIN"] = {
					["alwaysSticky"] = true,
				},
				["NOTIFICATION_REP_GAIN"] = {
					["disabled"] = true,
					["scrollArea"] = "Incoming",
				},
				["PET_INCOMING_SPELL_DAMAGE_SHIELD"] = {
					["disabled"] = true,
				},
				["PET_OUTGOING_DEFLECT"] = {
					["disabled"] = true,
				},
				["PET_OUTGOING_SPELL_BLOCK"] = {
					["disabled"] = true,
				},
				["PET_OUTGOING_SPELL_MISS"] = {
					["disabled"] = true,
				},
				["PET_OUTGOING_HOT"] = {
					["disabled"] = true,
				},
				["PET_INCOMING_DODGE"] = {
					["disabled"] = true,
				},
				["PET_OUTGOING_SPELL_DODGE"] = {
					["disabled"] = true,
				},
				["PET_OUTGOING_SPELL_DAMAGE_SHIELD_CRIT"] = {
					["disabled"] = true,
				},
				["PET_OUTGOING_DAMAGE_CRIT"] = {
					["disabled"] = true,
				},
				["PET_OUTGOING_SPELL_DAMAGE_CRIT"] = {
					["disabled"] = true,
				},
				["PET_INCOMING_MISS"] = {
					["disabled"] = true,
				},
				["PET_OUTGOING_DODGE"] = {
					["disabled"] = true,
				},
				["NOTIFICATION_DEBUFF"] = {
					["disabled"] = true,
					["scrollArea"] = "Incoming",
				},
				["PET_OUTGOING_SPELL_DOT_CRIT"] = {
					["disabled"] = true,
				},
				["PET_INCOMING_SPELL_ABSORB"] = {
					["disabled"] = true,
				},
				["INCOMING_HOT_CRIT"] = {
					["disabled"] = true,
				},
				["PET_INCOMING_DAMAGE"] = {
					["disabled"] = true,
				},
				["PET_INCOMING_DAMAGE_CRIT"] = {
					["disabled"] = true,
				},
				["NOTIFICATION_NPC_KILLING_BLOW"] = {
					["scrollArea"] = "Incoming",
				},
				["NOTIFICATION_COMBAT_ENTER"] = {
					["alwaysSticky"] = true,
				},
				["PET_INCOMING_SPELL_DAMAGE_SHIELD_CRIT"] = {
					["disabled"] = true,
				},
				["PET_INCOMING_ABSORB"] = {
					["disabled"] = true,
				},
				["PET_OUTGOING_EVADE"] = {
					["disabled"] = true,
				},
				["PET_OUTGOING_SPELL_DOT"] = {
					["disabled"] = true,
				},
				["NOTIFICATION_REP_LOSS"] = {
					["disabled"] = true,
					["scrollArea"] = "Incoming",
				},
				["PET_INCOMING_SPELL_DEFLECT"] = {
					["disabled"] = true,
				},
				["NOTIFICATION_SKILL_GAIN"] = {
					["disabled"] = true,
					["scrollArea"] = "Incoming",
				},
				["PET_OUTGOING_SPELL_DAMAGE_SHIELD"] = {
					["disabled"] = true,
				},
				["INCOMING_HEAL_CRIT"] = {
					["disabled"] = true,
				},
				["PET_INCOMING_SPELL_PARRY"] = {
					["disabled"] = true,
				},
				["NOTIFICATION_POWER_GAIN"] = {
					["disabled"] = true,
					["scrollArea"] = "Incoming",
				},
				["PET_OUTGOING_PARRY"] = {
					["disabled"] = true,
				},
				["NOTIFICATION_PET_COOLDOWN"] = {
					["disabled"] = true,
				},
				["NOTIFICATION_DEBUFF_STACK"] = {
					["disabled"] = true,
					["scrollArea"] = "Incoming",
				},
				["PET_INCOMING_SPELL_DOT_CRIT"] = {
					["disabled"] = true,
				},
				["PET_INCOMING_SPELL_RESIST"] = {
					["disabled"] = true,
				},
				["NOTIFICATION_HOLY_POWER_FULL"] = {
					["disabled"] = true,
					["scrollArea"] = "Incoming",
				},
				["PET_OUTGOING_DISPEL"] = {
					["disabled"] = true,
				},
				["NOTIFICATION_DEBUFF_FADE"] = {
					["disabled"] = true,
					["scrollArea"] = "Incoming",
				},
				["NOTIFICATION_HOLY_POWER_CHANGE"] = {
					["disabled"] = true,
					["scrollArea"] = "Incoming",
				},
				["PET_OUTGOING_IMMUNE"] = {
					["disabled"] = true,
				},
				["PET_INCOMING_SPELL_DAMAGE_CRIT"] = {
					["disabled"] = true,
				},
				["NOTIFICATION_BUFF_STACK"] = {
					["disabled"] = true,
					["scrollArea"] = "Incoming",
				},
				["NOTIFICATION_EXTRA_ATTACK"] = {
					["scrollArea"] = "Incoming",
				},
				["PET_OUTGOING_MISS"] = {
					["disabled"] = true,
				},
				["PET_OUTGOING_SPELL_PARRY"] = {
					["disabled"] = true,
				},
				["PET_INCOMING_HOT"] = {
					["disabled"] = true,
				},
				["PET_OUTGOING_ABSORB"] = {
					["disabled"] = true,
				},
				["PET_INCOMING_SPELL_DOT"] = {
					["disabled"] = true,
				},
				["PET_OUTGOING_SPELL_EVADE"] = {
					["disabled"] = true,
				},
				["NOTIFICATION_ITEM_BUFF"] = {
					["disabled"] = true,
					["scrollArea"] = "Incoming",
				},
			},
			["hotThrottleDuration"] = 0,
			["normalFontName"] = "Friz Quadrata TT",
			["skillIconsDisabled"] = true,
			["normalFontSize"] = 20,
		},
		["tankdk"] = {
			["critFontName"] = "Friz Quadrata TT",
			["hideNames"] = true,
			["exclusiveSkillsDisabled"] = true,
			["skillIconsDisabled"] = true,
			["creationVersion"] = "5.6.113",
			["soundsDisabled"] = true,
			["mergeSwingsDisabled"] = true,
			["scrollAreas"] = {
				["Outgoing"] = {
					["disabled"] = true,
				},
				["Static"] = {
					["disabled"] = true,
				},
				["Notification"] = {
					["disabled"] = true,
				},
				["Incoming"] = {
					["direction"] = "Up",
					["behavior"] = "MSBT_NORMAL",
					["skillIconsDisabled"] = true,
					["offsetX"] = -20,
					["stickyBehavior"] = "Normal",
					["textAlignIndex"] = 2,
					["offsetY"] = -155,
					["animationStyle"] = "Straight",
					["stickyTextAlignIndex"] = 2,
				},
			},
			["normalFontName"] = "Friz Quadrata TT",
			["hideSkills"] = true,
			["events"] = {
				["PET_INCOMING_HOT_CRIT"] = {
					["disabled"] = true,
				},
				["PET_INCOMING_SPELL_DAMAGE"] = {
					["disabled"] = true,
				},
				["NOTIFICATION_MONEY"] = {
					["disabled"] = true,
				},
				["PET_OUTGOING_SPELL_DAMAGE"] = {
					["disabled"] = true,
				},
				["NOTIFICATION_BUFF"] = {
					["disabled"] = true,
					["scrollArea"] = "Incoming",
				},
				["PET_INCOMING_IMMUNE"] = {
					["disabled"] = true,
				},
				["PET_OUTGOING_SPELL_DEFLECT"] = {
					["disabled"] = true,
				},
				["PET_INCOMING_PARRY"] = {
					["disabled"] = true,
				},
				["OUTGOING_SPELL_IMMUNE"] = {
					["disabled"] = true,
				},
				["PET_OUTGOING_SPELL_DOT_CRIT"] = {
					["disabled"] = true,
				},
				["OUTGOING_HEAL_CRIT"] = {
					["disabled"] = true,
				},
				["OUTGOING_SPELL_DAMAGE_SHIELD_CRIT"] = {
					["disabled"] = true,
				},
				["OUTGOING_HEAL"] = {
					["disabled"] = true,
				},
				["PET_OUTGOING_SPELL_ABSORB"] = {
					["disabled"] = true,
				},
				["PET_INCOMING_DEFLECT"] = {
					["disabled"] = true,
				},
				["NOTIFICATION_ITEM_BUFF"] = {
					["disabled"] = true,
					["scrollArea"] = "Incoming",
				},
				["PET_OUTGOING_EVADE"] = {
					["disabled"] = true,
				},
				["PET_OUTGOING_HOT_CRIT"] = {
					["disabled"] = true,
				},
				["PET_OUTGOING_DAMAGE"] = {
					["disabled"] = true,
				},
				["PET_INCOMING_SPELL_MISS"] = {
					["disabled"] = true,
				},
				["PET_OUTGOING_ABSORB"] = {
					["disabled"] = true,
				},
				["PET_INCOMING_SPELL_DODGE"] = {
					["disabled"] = true,
				},
				["PET_INCOMING_SPELL_DAMAGE_SHIELD_CRIT"] = {
					["disabled"] = true,
				},
				["PET_OUTGOING_BLOCK"] = {
					["disabled"] = true,
				},
				["NOTIFICATION_HONOR_GAIN"] = {
					["disabled"] = true,
					["scrollArea"] = "Incoming",
				},
				["PET_OUTGOING_HEAL"] = {
					["disabled"] = true,
				},
				["NOTIFICATION_ITEM_BUFF_FADE"] = {
					["disabled"] = true,
					["scrollArea"] = "Incoming",
				},
				["PET_INCOMING_HEAL"] = {
					["disabled"] = true,
				},
				["PET_OUTGOING_HEAL_CRIT"] = {
					["disabled"] = true,
				},
				["NOTIFICATION_LOOT"] = {
					["disabled"] = true,
				},
				["PET_INCOMING_ABSORB"] = {
					["disabled"] = true,
				},
				["PET_OUTGOING_SPELL_RESIST"] = {
					["disabled"] = true,
				},
				["PET_OUTGOING_SPELL_PARRY"] = {
					["disabled"] = true,
				},
				["OUTGOING_DODGE"] = {
					["disabled"] = true,
				},
				["NOTIFICATION_POWER_LOSS"] = {
					["disabled"] = true,
					["scrollArea"] = "Incoming",
				},
				["OUTGOING_SPELL_PARRY"] = {
					["disabled"] = true,
				},
				["PET_OUTGOING_SPELL_IMMUNE"] = {
					["disabled"] = true,
				},
				["PET_INCOMING_SPELL_IMMUNE"] = {
					["disabled"] = true,
				},
				["NOTIFICATION_EXPERIENCE_GAIN"] = {
					["scrollArea"] = "Incoming",
				},
				["PET_INCOMING_SPELL_BLOCK"] = {
					["disabled"] = true,
				},
				["NOTIFICATION_MONSTER_EMOTE"] = {
					["disabled"] = true,
					["scrollArea"] = "Incoming",
				},
				["NOTIFICATION_COMBAT_LEAVE"] = {
					["scrollArea"] = "Incoming",
				},
				["NOTIFICATION_EXTRA_ATTACK"] = {
					["scrollArea"] = "Incoming",
				},
				["PET_INCOMING_SPELL_PARRY"] = {
					["disabled"] = true,
				},
				["NOTIFICATION_ENEMY_BUFF"] = {
					["disabled"] = true,
					["scrollArea"] = "Incoming",
				},
				["OUTGOING_PARRY"] = {
					["disabled"] = true,
				},
				["OUTGOING_SPELL_DAMAGE_SHIELD"] = {
					["disabled"] = true,
				},
				["PET_INCOMING_SPELL_DOT"] = {
					["disabled"] = true,
				},
				["PET_INCOMING_BLOCK"] = {
					["disabled"] = true,
				},
				["NOTIFICATION_CP_GAIN"] = {
					["disabled"] = true,
					["scrollArea"] = "Incoming",
				},
				["NOTIFICATION_HOLY_POWER_CHANGE"] = {
					["disabled"] = true,
					["scrollArea"] = "Incoming",
				},
				["PET_OUTGOING_MISS"] = {
					["disabled"] = true,
				},
				["PET_INCOMING_HEAL_CRIT"] = {
					["disabled"] = true,
				},
				["NOTIFICATION_REP_GAIN"] = {
					["disabled"] = true,
					["scrollArea"] = "Incoming",
				},
				["OUTGOING_IMMUNE"] = {
					["disabled"] = true,
				},
				["OUTGOING_HOT_CRIT"] = {
					["disabled"] = true,
				},
				["OUTGOING_SPELL_DAMAGE_CRIT"] = {
					["disabled"] = true,
				},
				["NOTIFICATION_PET_COOLDOWN"] = {
					["disabled"] = true,
				},
				["PET_INCOMING_SPELL_DAMAGE_SHIELD"] = {
					["disabled"] = true,
				},
				["OUTGOING_SPELL_INTERRUPT"] = {
					["disabled"] = true,
				},
				["NOTIFICATION_SKILL_GAIN"] = {
					["disabled"] = true,
					["scrollArea"] = "Incoming",
				},
				["PET_OUTGOING_SPELL_DAMAGE_SHIELD"] = {
					["disabled"] = true,
				},
				["PET_OUTGOING_SPELL_MISS"] = {
					["disabled"] = true,
				},
				["PET_OUTGOING_SPELL_BLOCK"] = {
					["disabled"] = true,
				},
				["PET_OUTGOING_IMMUNE"] = {
					["disabled"] = true,
				},
				["OUTGOING_SPELL_DODGE"] = {
					["disabled"] = true,
				},
				["OUTGOING_SPELL_ABSORB"] = {
					["disabled"] = true,
				},
				["PET_OUTGOING_HOT"] = {
					["disabled"] = true,
				},
				["PET_INCOMING_DODGE"] = {
					["disabled"] = true,
				},
				["PET_OUTGOING_DAMAGE_CRIT"] = {
					["disabled"] = true,
				},
				["OUTGOING_DAMAGE"] = {
					["disabled"] = true,
				},
				["PET_OUTGOING_SPELL_DODGE"] = {
					["disabled"] = true,
				},
				["PET_OUTGOING_SPELL_DAMAGE_SHIELD_CRIT"] = {
					["disabled"] = true,
				},
				["OUTGOING_DAMAGE_CRIT"] = {
					["disabled"] = true,
				},
				["PET_OUTGOING_SPELL_DAMAGE_CRIT"] = {
					["disabled"] = true,
				},
				["PET_INCOMING_MISS"] = {
					["disabled"] = true,
				},
				["PET_OUTGOING_DODGE"] = {
					["disabled"] = true,
				},
				["PET_INCOMING_SPELL_RESIST"] = {
					["disabled"] = true,
				},
				["OUTGOING_SPELL_REFLECT"] = {
					["disabled"] = true,
				},
				["NOTIFICATION_DEBUFF_FADE"] = {
					["disabled"] = true,
					["scrollArea"] = "Incoming",
				},
				["PET_INCOMING_SPELL_ABSORB"] = {
					["disabled"] = true,
				},
				["OUTGOING_ABSORB"] = {
					["disabled"] = true,
				},
				["OUTGOING_SPELL_MISS"] = {
					["disabled"] = true,
				},
				["PET_INCOMING_DAMAGE"] = {
					["disabled"] = true,
				},
				["PET_OUTGOING_DISPEL"] = {
					["disabled"] = true,
				},
				["OUTGOING_DISPEL"] = {
					["disabled"] = true,
				},
				["NOTIFICATION_COMBAT_ENTER"] = {
					["scrollArea"] = "Incoming",
				},
				["NOTIFICATION_PC_KILLING_BLOW"] = {
					["scrollArea"] = "Incoming",
				},
				["OUTGOING_SPELL_BLOCK"] = {
					["disabled"] = true,
				},
				["NOTIFICATION_NPC_KILLING_BLOW"] = {
					["scrollArea"] = "Incoming",
				},
				["PET_OUTGOING_SPELL_DOT"] = {
					["disabled"] = true,
				},
				["NOTIFICATION_REP_LOSS"] = {
					["disabled"] = true,
					["scrollArea"] = "Incoming",
				},
				["OUTGOING_SPELL_DEFLECT"] = {
					["disabled"] = true,
				},
				["PET_INCOMING_SPELL_DOT_CRIT"] = {
					["disabled"] = true,
				},
				["NOTIFICATION_CP_FULL"] = {
					["disabled"] = true,
					["scrollArea"] = "Incoming",
				},
				["OUTGOING_SPELL_RESIST"] = {
					["disabled"] = true,
				},
				["OUTGOING_SPELL_DAMAGE"] = {
					["disabled"] = true,
				},
				["OUTGOING_MISS"] = {
					["disabled"] = true,
				},
				["OUTGOING_EVADE"] = {
					["disabled"] = true,
				},
				["OUTGOING_SPELL_EVADE"] = {
					["disabled"] = true,
				},
				["NOTIFICATION_DEBUFF_STACK"] = {
					["disabled"] = true,
					["scrollArea"] = "Incoming",
				},
				["PET_OUTGOING_DEFLECT"] = {
					["disabled"] = true,
				},
				["PET_OUTGOING_PARRY"] = {
					["disabled"] = true,
				},
				["NOTIFICATION_HOLY_POWER_FULL"] = {
					["disabled"] = true,
					["scrollArea"] = "Incoming",
				},
				["OUTGOING_HOT"] = {
					["disabled"] = true,
				},
				["OUTGOING_BLOCK"] = {
					["disabled"] = true,
				},
				["NOTIFICATION_POWER_GAIN"] = {
					["disabled"] = true,
					["scrollArea"] = "Incoming",
				},
				["NOTIFICATION_BUFF_FADE"] = {
					["disabled"] = true,
					["scrollArea"] = "Incoming",
				},
				["PET_INCOMING_SPELL_DAMAGE_CRIT"] = {
					["disabled"] = true,
				},
				["NOTIFICATION_BUFF_STACK"] = {
					["disabled"] = true,
					["scrollArea"] = "Incoming",
				},
				["PET_INCOMING_SPELL_DEFLECT"] = {
					["disabled"] = true,
				},
				["OUTGOING_DEFLECT"] = {
					["disabled"] = true,
				},
				["OUTGOING_SPELL_DOT_CRIT"] = {
					["disabled"] = true,
				},
				["PET_INCOMING_HOT"] = {
					["disabled"] = true,
				},
				["PET_INCOMING_DAMAGE_CRIT"] = {
					["disabled"] = true,
				},
				["OUTGOING_SPELL_DOT"] = {
					["disabled"] = true,
				},
				["PET_OUTGOING_SPELL_EVADE"] = {
					["disabled"] = true,
				},
				["NOTIFICATION_DEBUFF"] = {
					["disabled"] = true,
					["scrollArea"] = "Incoming",
				},
			},
		},
	},
}
MSBT_SavedMedia = {
	["fonts"] = {
	},
	["sounds"] = {
		["Finish Him"] = "Interface\\AddOns\\MikScrollingBattleText\\Sounds\\finishhim.mp3",
	},
}
