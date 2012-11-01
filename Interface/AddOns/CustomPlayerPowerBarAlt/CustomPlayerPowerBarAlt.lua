CustomPlayerPowerBarAlt = LibStub("AceAddon-3.0"):NewAddon("CustomPlayerPowerBarAlt", "AceEvent-3.0", "AceConsole-3.0", "AceTimer-3.0")
local addon = CustomPlayerPowerBarAlt
--[===[@debug@
-- ### debug
cppba = addon
--@end-debug@]===]

local L = LibStub("AceLocale-3.0"):GetLocale("CustomPlayerPowerBarAlt")
local LSM3 = LibStub("LibSharedMedia-3.0")

local flashPlaying = false
local db
local defaults = {
	profile = {
		general = {
			border_texture = "None",
			border_size = 10,
			border_padding = 5,
			texture = "Smooth",
			width = 200,
			height = 30,
			font = "Friz Quadrata TT",
			fontsize = 14,
			fontoutline = false,
			posx = nil,
			posy = nil,
			scale = 1,
			strata = "HIGH",
			hidetext = false,
			showpercentage = true,
			locked = false,
			textposition = 50,
			maxflash = true,
			percflash = true,
			percflashvalue = 50,
		},
		colours = {
			filled = { r = 0, g = 0.4, b = 1, a = 1 },
			background = { r = 0.5, g = 0.5, b = 0.5, a = 0.5 },
			powertext = { r = 1, g = 1, b = 1, a = 1 },
			border = { r = 1, g = 1, b = 1, a = 1 },
		},
	}
}

local function GetOptions( _, _, addonName)
	if addonName == "CustomPlayerPowerBarAlt-General" then
		local options = {
			type = "group",
			name = GetAddOnMetadata("CustomPlayerPowerBarAlt", "Title"),
			get = function(info) return db.general[info[#info]] end,
			set = function(info, value)
				db.general[info[#info]] = value
				addon:UpdatePowerBar()
			end,
			args = {
				cpdesc = {
					type = "description",
					order = 0,
					name = L["Customizable PlayerPowerBarAlt Display"],
				},
				frame = {
					name = L["Frame"],
					type = "header",
					order = 50,
				},
				toggle = {
					name = L["Show/Hide"],
					desc = L["Show/Hide for configuration purposes"],
					type = "execute",
					func = function()
						if addon.frame:IsShown() then
							addon.frame:Hide()
						else
							addon:UpdatePowerData(_, "player", "ALTERNATE")
							addon.frame:Show()
						end
					end,
					order = 75,
				},
				locked = {
					name = L["Lock"],
					desc = L["Toggle the locking."],
					type = "toggle",
					order = 100,
				},
				strata = {
					name = L["Frame Strata"],
					desc = L["Set the frame strata."],
					type = "select",
					order = 150,
					values = {
						HIGH = "High",
						MEDIUM = "Medium",
						LOW = "Low",
						BACKGROUND = "Background",
					},
					style = "dropdown",
				},
				border = {
					name = L["Border"],
					type = "header",
					order = 200,
				},
				border_size = {
					name = L["Border size"],
					desc = L["Set the border size."],
					type = "range",
					order = 250,
					min = 1,
					max = 30,
					set = function(info, value)
						db.general.border_size = value
						addon.frame:SetBackdrop({
							bgFile = LSM3:Fetch("statusbar", db.general.texture),
							edgeFile = LSM3:Fetch("border", db.general.border_texture),
							edgeSize = value,
							insets = { left = db.general.border_padding, right = db.general.border_padding, top = db.general.border_padding, bottom = db.general.border_padding, },
						})
						addon:SetWidth(db.general.width)
						addon:SetHeight(db.general.height)
						addon:UpdatePowerBar()
					end,
				},
				border_padding = {
					name = L["Border padding"],
					desc = L["How far should the background be from the border."],
					type = "range",
					order = 275,
					min = -10,
					max = 10,
					set = function(info, value)
						db.general.border_padding = value
						addon.frame:SetBackdrop({
							bgFile = LSM3:Fetch("statusbar", db.general.texture),
							edgeFile = LSM3:Fetch("border", db.general.border_texture),
							edgeSize = db.general.border_size,
							insets = { left = value, right = value, top = value, bottom = value, },
						})
						addon:SetWidth(db.general.width)
						addon:SetHeight(db.general.height)
						addon:UpdatePowerBar()
					end,
				},
				border_texture = {
					name = L["Border"],
					desc = L["Set the border style."],
					type = "select",
					order = 300,
					dialogControl = 'LSM30_Border',
					values = AceGUIWidgetLSMlists.border,
					style = "dropdown",
					set = function(info, value)
						db.general.border_texture = value
						addon.frame:SetBackdrop({
							bgFile = LSM3:Fetch("statusbar", db.general.texture),
							edgeFile = LSM3:Fetch("border", value),
							edgeSize = db.general.border_size,
							insets = { left = db.general.border_padding, right = db.general.border_padding, top = db.general.border_padding, bottom = db.general.border_padding, },
						})
						addon:UpdatePowerBar()
					end,
				},
				bar = {
					name = L["Bar"],
					type = "header",
					order = 450,
				},
				scale = {
					name = L["Scale"],
					desc = L["Set the bar scale."],
					type = "range",
					order = 600,
					min = 0.5,
					max = 2,
					set = function(info, value)
						addon:SavePosition()
						addon.frame:SetScale(value)
						db.general.scale = value
						addon:RestorePosition()
					end,
				},
				width = {
					name = L["Width"],
					desc = L["Set the bar width."],
					type = "range",
					order = 700,
					min = 50,
					max = 500,
					step = 1,
					bigStep = 20,
					set = function(info, value)
						db.general.width = value
						addon:SetWidth(value)
					end,
				},
				height = {
					name = L["Height"],
					desc = L["Set the bar height."],
					type = "range",
					order = 800,
					min = 10,
					max = 100,
					step = 1,
					bigStep = 5,
					set = function(info, value)
						db.general.height = value
						addon:SetHeight(value)
					end
				},
				texture = {
					name = L["Texture"],
					desc = L["Set the bar texture."],
					type = "select",
					order = 825,
					dialogControl = 'LSM30_Statusbar',
					values = AceGUIWidgetLSMlists.statusbar,
					style = "dropdown",
					set = function(info, value)
						db.general.texture = value
						addon:SetTexture(value)
						addon:UpdatePowerBar()
					end,
				},
				flash = {
					name = L["Flash"],
					type = "header",
					order = 900,
				},
				maxflash = {
					name = L["Flash on Max"],
					desc = L["Flash when you reach maximum power."],
					type = "toggle",
					order = 1000,
				},
				percflash = {
					name = L["Flash on percantage"],
					desc = L["Flash when you reach the give power percentage."],
					type = "toggle",
					order = 1100,
				},
				percflashvalue = {
					name = L["Flash on percantage"],
					desc = L["Flash when you reach the give power percentage."],
					type = "range",
					order = 1200,
					min = 1,
					max = 100,
					step = 1,
					disabled = function() return not addon.db.profile.general.percflash end,
				},
				text = {
					name = L["Text"],
					type = "header",
					order = 1850,
				},
				font = {
					type = "select",
					name = L["Font"],
					order = 1900,
					dialogControl = 'LSM30_Font',
					values = AceGUIWidgetLSMlists.font,
					set = function(info, value)
						db.general.font = value
						addon:SetFontOptions()
					end
				},
				hidetext = {
					name = L["Hide Text"],
					desc = L["Hide the text on the power bar."],
					type = "toggle",
					order = 2000,
				},
				fontoutline = {
					name = L["Font Outline"],
					desc = L["Toggles the font outline."],
					type = "toggle",
					order = 2200,
					set = function(info, value)
						db.general.fontoutline = value
						addon:SetFontOptions()
					end,
				},
				showpercentage = {
					name = L["Show Percentage"],
					type = "toggle",
					order = 2300,
				},
				fontsize = {
					name = L["Font Size"],
					desc = L["Change the size of the text."],
					type = "range",
					order = 2400,
					min = 5,
					max = 30,
					step = 1,
					set = function(info, value)
						db.general.fontsize = value
						addon:SetFontOptions()
					end,
				},
				textposition = {
					name = L["Text Position"],
					desc = L["Select the position of the text on bar."],
					type = "range",
					order = 2600,
					min = 0,
					max = 100,
					step = 1,
					bigStep = 5,
					set = function(info, value)
						db.general.textposition = value
						addon:SetTextPosition(value)
					end,
				},
			},
		}
		return options
	end
	if addonName == "CustomPlayerPowerBarAlt-Colours" then
		local options = {
			type = "group",
			name = L["Colours"],
			get = function(info)
				return db.colours[info[#info]].r, db.colours[info[#info]].g, db.colours[info[#info]].b, db.colours[info[#info]].a or 1
			end,
			set = function(info, r, g, b, a)
				db.colours[info[#info]].r, db.colours[info[#info]].g, db.colours[info[#info]].b, db.colours[info[#info]].a = r, g, b, a
				addon:UpdatePowerBar()
			end,
			args = {
				coloursdesc = {
					type = "description",
					order = 0,
					name = L["Set the colours for various bar elements."],
				},
				filled = {
					name = L["Filled"],
					desc = L["Set the colour of the filled bar."],
					type = "color",
					order = 200,
					hasAlpha = true,
				},
				background = {
					name = L["Background"],
					desc = L["Set the background colour of the bar."],
					type = "color",
					order = 400,
					hasAlpha = true,
				},
				powertext = {
					name = L["Power Text"],
					desc = L["Set the colour of the power text."],
					type = "color",
					order = 600,
					hasAlpha = false,
				},
				border = {
					name = L["Border"],
					desc = L["Set the colour of the border."],
					type = "color",
					order = 800,
					hasAlpha = true,
				},
			},
		}
		return options
	end
end

-- Set the font for the bar text
function addon:SetFontOptions()
	local _, _, flags = GameFontNormal:GetFont()
	if db.general.fontoutline then
		flags = "OUTLINE"
	end
	self.frame.bartext:SetFont(LSM3:Fetch(LSM3.MediaType.FONT, db.general.font), db.general.fontsize, flags)
end

-- Position of text along the Bar
function addon:SetTextPosition(percent)
	local width = db.general.width
	local posx = math.floor(((width / 100) * percent) - (width / 2))
	self.frame.bartext:ClearAllPoints()
	self.frame.bartext:SetPoint("CENTER", self.frame, "CENTER", posx or 0, 0)
end

-- Set bar textures
function addon:SetTexture(texture)
	local texturePath = LSM3:Fetch("statusbar", texture)
	self.frame.background:SetStatusBarTexture(texturePath)
	self.frame.powerbar:SetStatusBarTexture(texturePath)
	self.frame.background:SetStatusBarColor(db.colours.background.r, db.colours.background.g, db.colours.background.b, db.colours.background.a)

	self.frame.background:GetStatusBarTexture():SetHorizTile(false)
	self.frame.powerbar:GetStatusBarTexture():SetHorizTile(false)
end

local function FlashBarStop()
	flashPlaying = false
	addon.frame.powerbar:SetAlpha(addon.db.profile.colours.filled.a)
end

function addon:FlashBarStart()
	-- Check if frame is shown
	if not addon.frame:IsShown() then return end
	flashPlaying = true
	local function SetAlpha(v)
		if flashPlaying and addon.frame:IsShown() then
			addon.frame.powerbar:SetAlpha(v)
			addon:ScheduleTimer(SetAlpha, 0.25, math.abs(v-1))
		end
	end
	addon:ScheduleTimer(SetAlpha, 0.25, 0)
	addon:ScheduleTimer(FlashBarStop, 2)
end

-- Set bar widths
function addon:SetWidth(width)
	self.frame:SetWidth(width)
	self.frame.button:SetWidth(width - 4)
	self.frame.background:SetWidth(width - 4)
	self.frame.powerbar:SetWidth(width - db.general.border_size/2 ) -- this looks good for most borders I guess
	self:UpdatePowerBar()
end

function addon:SetHeight(height)
	self.frame:SetHeight(height)
	self.frame.background:SetHeight(height - 8)
	self.frame.powerbar:SetHeight(height - db.general.border_size/2) -- this looks good for most borders I guess
end

function addon:OnInitialize()
	self.db = LibStub("AceDB-3.0"):New("CustomPlayerPowerBarAltDB", defaults, true)
	db = self.db.profile
	-- Register options
	local addonName = GetAddOnMetadata("CustomPlayerPowerBarAlt", "Title")
	local ACRegistry = LibStub("AceConfigRegistry-3.0")
	local ACDialog = LibStub("AceConfigDialog-3.0")
	ACRegistry:RegisterOptionsTable("CustomPlayerPowerBarAlt-General", GetOptions)
	ACRegistry:RegisterOptionsTable("CustomPlayerPowerBarAlt-Colours", GetOptions)
	ACDialog:AddToBlizOptions("CustomPlayerPowerBarAlt-General", addonName)
	ACDialog:AddToBlizOptions("CustomPlayerPowerBarAlt-Colours", L["Colours"], addonName)

	-- Register a chat command to open options
	self:RegisterChatCommand("cppba", function() InterfaceOptionsFrame_OpenToCategory(addonName) end)
end

function addon:OnEnable()
	if self.CreatePowerBar then
		self:CreatePowerBar()
	end

	self:RegisterEvent("UNIT_POWER", "UpdatePowerData")
	self:RegisterEvent("UNIT_POWER_BAR_SHOW", "HideOrShow")
	self:RegisterEvent("UNIT_POWER_BAR_HIDE", "HideOrShow")
	self:RegisterEvent("PLAYER_ENTERING_WORLD", "HideOrShow")

	LSM3.RegisterCallback(self, "LibSharedMedia_SetGlobal", function(callback, mtype, override)
		if mtype == "statusbar" and override ~= nil then
			self:SetTexture(override)
		end
	end)
end

function addon:OnDisable()
	self.frame:Hide()
	LSM3.UnregisterAllCallbacks(self)
end

-- Get the Power bar text
local function GetPowerText()
	local text = "%d - %d%%"
	local p, m = addon.cP or 0, addon.mP or 0

	if db.general.showpercentage then
		if m == 0 then
			text = text:format(p, 0)
		else
			text = text:format(p, (p/m)*100)
		end
	else
		text = ("%d"):format(p)
	end

	if p <= 0 then
		if InCombatLockdown() then
			text = ""
		else
			text = "CPPBA"
		end
	end

	return text
end

-- powerbar creation
function addon:CreatePowerBar()
	if self.frame then return end

	-- Main Frame
	self.frame = CreateFrame("Frame", "CustomPlayerPowerBarAltFrame", UIParent)
	self.frame:SetFrameStrata(db.general.strata)
	self.frame:SetMovable(true)
	self.frame:Hide()

	if db.general.scale then
		self.frame:SetScale(db.general.scale)
	end

	self.frame:ClearAllPoints()
	if not db.general.posx then
		self.frame:SetPoint("CENTER", UIParent, "CENTER", 0, 0)
	else
		self.frame:SetPoint("TOPLEFT", UIParent, "BOTTOMLEFT", db.general.posx, db.general.posy)
	end
	self.frame:SetWidth(db.general.width)
	self.frame:SetHeight(db.general.height)

	self.frame:SetBackdrop({
		bgFile = LSM3:Fetch("statusbar", db.general.texture),
		edgeFile = LSM3:Fetch("border", db.general.border_texture),
		edgeSize = db.general.border_size,
		insets = { left = db.general.border_padding, right = db.general.border_padding, top = db.general.border_padding, bottom = db.general.border_padding, },
	})

	-- Button
	self.frame.button = CreateFrame("Button", "CustomPlayerPowerBarAltButton", self.frame)
	self.frame.button:SetAllPoints(self.frame)
	self.frame.button:RegisterForClicks("LeftButtonUp", "RightButtonUp")
	self.frame.button:RegisterForDrag("LeftButton")
	self.frame.button:SetScript("OnClick", function(clickself, button, down)
		-- Announce current power
		if IsShiftKeyDown() and button == "LeftButton" then
			if addon.cP > 0 and PlayerPowerBarAlt.powerName and UnitInRaid("player") then
				local text = L["My %s is at: %s"]
				text = text:format(PlayerPowerBarAlt.powerName, self.frame.bartext:GetText())
				SendChatMessage(text,"RAID", nil, nil)
			end
		end
		-- Display options on Shift-RightClick
		if IsShiftKeyDown() and button == "RightButton" then
			InterfaceOptionsFrame_OpenToCategory(GetAddOnMetadata("CustomPlayerPowerBarAlt", "Title"))
		end
	end)
	self.frame.button:SetScript("OnDragStart", function()
		if not db.general.locked then
			self.frame:StartMoving()
		end
	end)
	self.frame.button:SetScript("OnDragStop", function()
		self.frame:StopMovingOrSizing()
		self:SavePosition()
	end)

	-- Background
	self.frame.background = CreateFrame("StatusBar", "CustomPlayerPowerBarAltBackground", self.frame)
	self.frame.background:SetPoint("CENTER", self.frame, "CENTER", 0, 0)
	self.frame.background:SetWidth(self.frame:GetWidth() - 4)
	self.frame.background:SetHeight(self.frame:GetHeight() - 8)

	-- Power Bar
	self.frame.powerbar = CreateFrame("StatusBar", "CustomPlayerPowerBarAltpowerbar", self.frame)
	self.frame.powerbar:SetPoint("CENTER", self.frame, "CENTER", 0, 0 )
	self.frame.powerbar:SetWidth(self.frame:GetWidth() - db.general.border_size/2) -- this looks good for most borders I guess
	self.frame.powerbar:SetHeight(self.frame:GetHeight() - db.general.border_size/2) -- this looks good for most borders I guess

	-- Power Bar Text
	self.frame.bartext = self.frame.button:CreateFontString("CustomPlayerPowerBarAltText", "OVERLAY")
	self:SetFontOptions()
	self.frame.bartext:SetShadowOffset(1, -1)
	self:SetTextPosition(db.general.textposition)
	self.frame.bartext:SetTextColor(1, 1, 1, 1)

	-- Set frame levels.
	self.frame:SetFrameLevel(0)
	self.frame.background:SetFrameLevel(self.frame:GetFrameLevel() + 1)
	self.frame.powerbar:SetFrameLevel(self.frame:GetFrameLevel() + 2)
	self.frame.button:SetFrameLevel(self.frame:GetFrameLevel() + 3)

	self:SetTexture(db.general.texture)
	self:RestorePosition()

	CustomPlayerPowerBarAlt.CreatePowerBar = nil
end

function addon:HideOrShow()
	if UnitAlternatePowerInfo("player") then
		PlayerPowerBarAlt:Hide()
		addon:UpdatePowerData(_ , "player", "ALTERNATE")
		addon.frame:Show()
	else
		addon.frame:Hide()
	end
end

function addon:UpdatePowerData(event, unit, powerType)
	if unit ~= "player" and powerType ~= "ALTERNATE" then return end

	self.cP = UnitPower("player", ALTERNATE_POWER_INDEX)
	self.mP = UnitPowerMax("player", ALTERNATE_POWER_INDEX)

	local perc = nil
	if self.mP == 0 then
		perc = math.inf
	else
		perc = math.floor((self.cP/self.mP)*100)
	end

	if self.cP == self.mP and db.general.maxflash then
		self.FlashBarStart()
	elseif db.general.percflash then
		if self.pP then
			if perc >= db.general.percflashvalue and self.pP < db.general.percflashvalue then
				self.FlashBarStart()
			end
		else
			if perc >= db.general.percflashvalue then
				self.FlashBarStart()
			end
		end
	end

	self.pP = perc
	self:UpdatePowerBar()
end

function addon:UpdatePowerBar()
	if not self.frame.powerbar:IsVisible() then
		self.frame.powerbar:Show()
	end

	local filled, background = db.colours.filled, db.colours.background
	self.frame.powerbar:SetStatusBarColor(filled.r, filled.g, filled.b, filled.a)

	if db.general.border_texture == "None" then
		self.frame.background:Show()
		self.frame.background:SetStatusBarColor(background.r, background.g, background.b, background.a)
		self.frame:SetBackdropColor(background.r, background.g, background.b, 0)
	else
		self.frame.background:Hide()
		self.frame:SetBackdropColor(background.r, background.g, background.b, background.a)
	end

	self.frame.powerbar:SetMinMaxValues(math.min(0, self.cP or 0), self.mP or 0)
	self.frame.powerbar:SetValue(self.cP or 0)

	-- Set the colour of the bar text
	local textcol = db.colours.powertext
	self.frame.bartext:SetTextColor(textcol.r, textcol.g, textcol.b, textcol.a)

	-- Set the colour of the border
	local bordercol = db.colours.border
	self.frame:SetBackdropBorderColor(bordercol.r, bordercol.g, bordercol.b, bordercol.a)

	if not db.general.hidetext then
		self.frame.bartext:SetText(GetPowerText())
	else
		self.frame.bartext:SetText("")
	end
end

-- Bar positioning.
function addon:SavePosition()
	local x, y = self.frame:GetLeft(), self.frame:GetTop()
	local s = self.frame:GetEffectiveScale()

	x, y = x*s, y*s

	db.general.posx = x
	db.general.posy = y
end

function addon:RestorePosition()
	local x = db.general.posx
	local y = db.general.posy
	if not x or not y then return end

	local s = self.frame:GetEffectiveScale()

	x, y = x/s, y/s

	self.frame:ClearAllPoints()
	self.frame:SetPoint("TOPLEFT", UIParent, "BOTTOMLEFT", x, y)
end
