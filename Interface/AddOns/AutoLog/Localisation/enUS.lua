local AceLocale = LibStub:GetLibrary("AceLocale-3.0")
local L = AceLocale:NewLocale("AutoLog", "enUS", true)
if not L then return end

-- Chat commands
L["autolog"] = true
L["al"] = true

-- Configuration strings
L["Enable auto logging"] = true
L["If unchecked, AutoLog will never enable Combat Logging"] = true
L["Ignore LFR Raids"] = true
L["Log 5 player heroic instances"] = true
L["10 Players Raids"] = true
L["10 Players raid instances where you want to log combat"] = true
L["25 Players Raids"] = true
L["25 Players raid instances where you want to log combat"] = true
L["10 Players Heroic Raids"] = true
L["10 Players heroic raid instances where you want to log combat"] = true
L["25 Players Heroic Raids"] = true
L["25 Players heroic raid instances where you want to log combat"] = true
L["LFR Raids"] = true
L["Raid finder instances where you want to log combat"] = true
L["The Dragon Wastes"] = true
L["Only log guild runs"] = true
L["Start/Stop logging"] = true
L["Logging state"] = true
L["Checked if combat logging is currently on"] = true
L["Hide Wrath of the Lich King raids"] = true
L["Hide Cataclysm raids"] = true
L["Hide Mists of Pandaria raids"] = true
L["Show combat log status on screen"] = true

-- Load/Disable strings
L[" loaded."] = true
L["AutoLog Disabled"] = true

-- others
L["Combat logging turned on"] = true
L["Combat logging turned off"] = true
