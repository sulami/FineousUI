local tex = [[Interface\AddOns\NugEnergy\Flat.tga]]
local width = 240
local height = 15
local font = [[Interface\AddOns\NugEnergy\Myriad Condensed Web.ttf]]
local fontSize = 10
local color = { 0.5, 0.5, 0.5 }
local color2 = { 0.5, 0.5, 0.5 } -- for dispatch and meta
local color3 = { 131/255, 0.2, 0.2 } --max color
local textcolor = {1,1,1}
local textoutline = false
local vertical = false
if vertical then
    fontSize = 15
    width = 80
    tex = [[Interface\AddOns\NugEnergy\vstatusbar.tga]]
end
local onlyText = false

NugEnergy = CreateFrame("StatusBar","NugEnergy",UIParent)

NugEnergy:SetScript("OnEvent", function(self, event, ...)
    -- print(event, unpack{...})
	return self[event](self, event, ...)
end)

NugEnergy:RegisterEvent("PLAYER_LOGIN")
NugEnergy:RegisterEvent("PLAYER_LOGOUT")
local UnitPower = UnitPower
local math_modf = math.modf

local PowerFilter
local ForcedToShow
local GetPower = UnitPower
local GetPowerMax = UnitPowerMax

local defaults = {
    point = "CENTER",
    x = 0, y = 0,
    marks = {},
    focus = true,
    rage = true,
    monk = true,
    demonic = false,
    runic = false,
}

local function SetupDefaults(t, defaults)
    for k,v in pairs(defaults) do
        if type(v) == "table" then
            if t[k] == nil then
                t[k] = CopyTable(v)
            else
                SetupDefaults(t[k], v)
            end
        else
            if t[k] == nil then t[k] = v end
        end
    end
end
local function RemoveDefaults(t, defaults)
    for k, v in pairs(defaults) do
        if type(t[k]) == 'table' and type(v) == 'table' then
            RemoveDefaults(t[k], v)
            if next(t[k]) == nil then
                t[k] = nil
            end
        elseif t[k] == v then
            t[k] = nil
        end
    end
    return t
end


function NugEnergy.PLAYER_LOGIN(self,event)
    NugEnergyDB = NugEnergyDB or {}
    SetupDefaults(NugEnergyDB, defaults)

    NugEnergy:Initialize()
    
    SLASH_NUGENERGY1= "/nugenergy"
    SLASH_NUGENERGY2= "/nen"
    SlashCmdList["NUGENERGY"] = self.SlashCmd
end

function NugEnergy.PLAYER_LOGOUT(self, event)
    RemoveDefaults( NugEnergyDB, defaults)
end


local GetPowerBy5 = function(unit)
    local p = UnitPower(unit)
    return p, math_modf(p/5)*5
end
function NugEnergy.Initialize(self)
    self:RegisterEvent("UNIT_POWER")
    self:RegisterEvent("UNIT_MAXPOWER")
    self:RegisterEvent("PLAYER_REGEN_ENABLED")
    self:RegisterEvent("PLAYER_REGEN_DISABLED")
    self.PLAYER_REGEN_ENABLED = self.UPDATE_STEALTH
    self.PLAYER_REGEN_DISABLED = self.UPDATE_STEALTH

    if not self.initialized then
        self:Create()
        self.initialized = true
    end

    local class = select(2,UnitClass("player"))
    if class == "ROGUE" then
        PowerFilter = "ENERGY"
        self:RegisterEvent("UPDATE_STEALTH")
        self:SetScript("OnUpdate",self.UpdateEnergy)
        GetPower = GetPowerBy5
        self:RegisterEvent("SPELLS_CHANGED")
        self.UNIT_HEALTH = function(self, event, unit)
            if unit ~= "target" then return end
            if UnitHealth(unit)/UnitHealthMax(unit) < 0.35 then
                self:SetStatusBarColor(unpack(color2))
                self.bg:SetVertexColor(color2[1]*.5,color2[2]*.5,color2[3]*.5)
            else
                self:SetStatusBarColor(unpack(color))
                self.bg:SetVertexColor(color[1]*.5,color[2]*.5,color[3]*.5)
            end
        end
        self.PLAYER_TARGET_CHANGED = function(self,event) self.UNIT_HEALTH(self,event,"target") end

        self.SPELLS_CHANGED = function(self)
            if IsPlayerSpell(111240) and not onlyText -- Dispatch
                then self:RegisterEvent("UNIT_HEALTH"); self:RegisterEvent("PLAYER_TARGET_CHANGED")
                else self:UnregisterEvent("UNIT_HEALTH"); self:UnregisterEvent("PLAYER_TARGET_CHANGED")
            end
        end
        self:SPELLS_CHANGED()
    elseif class == "DRUID" then
        self:RegisterEvent("UNIT_DISPLAYPOWER")
        self:RegisterEvent("UPDATE_STEALTH")
        self:SetScript("OnUpdate",self.UpdateEnergy)
        self.UNIT_DISPLAYPOWER = function(self)
            local newPowerType = select(2,UnitPowerType("player"))
            if newPowerType == "ENERGY" then
                PowerFilter = "ENERGY"
                GetPower = GetPowerBy5
                self:RegisterEvent("PLAYER_REGEN_DISABLED")
                self:SetScript("OnUpdate",self.UpdateEnergy)
            elseif newPowerType =="RAGE" and NugEnergyDB.rage then
                PowerFilter = "RAGE"
                GetPower = UnitPower
                self:RegisterEvent("PLAYER_REGEN_DISABLED")
                self:SetScript("OnUpdate", nil)
            else
                self:UnregisterEvent("PLAYER_REGEN_DISABLED")
                PowerFilter = nil
                self:SetScript("OnUpdate", nil)
                self:Hide()
            end
            self:UPDATE_STEALTH()
        end
        self:UNIT_DISPLAYPOWER()
    elseif class == "MONK" and NugEnergyDB.monk then
        self:RegisterEvent("UNIT_DISPLAYPOWER")
        self:SetScript("OnUpdate",self.UpdateEnergy)
        self.UNIT_DISPLAYPOWER = function(self)
            local newPowerType = select(2,UnitPowerType("player"))
            if newPowerType == "ENERGY" then
                PowerFilter = "ENERGY"
                GetPower = GetPowerBy5
                self:RegisterEvent("PLAYER_REGEN_DISABLED")
                self:SetScript("OnUpdate",self.UpdateEnergy)
            else
                self:UnregisterEvent("PLAYER_REGEN_DISABLED")
                PowerFilter = nil
                self:SetScript("OnUpdate", nil)
                self:Hide()
            end
            self:UPDATE_STEALTH()
        end
        self:UNIT_DISPLAYPOWER()
    elseif class == "WARLOCK" and NugEnergyDB.demonic then
        local metaStatus
        self.UNIT_AURA = function(self, event, unit)
            if unit ~= "player" then return end
            local current = ( UnitAura("player", GetSpellInfo(WARLOCK_METAMORPHOSIS), nil, "HELPFUL") ~= nil)
            if metaStatus == current  then return end
            metaStatus = current
            if current then
                ForcedToShow = true
                if not onlyText then
                self:SetStatusBarColor(unpack(color2))
                self.bg:SetVertexColor(color2[1]*.5,color2[2]*.5,color2[3]*.5)
                end
            else
                ForcedToShow = true
                if not onlyText then
                self:SetStatusBarColor(unpack(color))
                self.bg:SetVertexColor(color[1]*.5,color[2]*.5,color[3]*.5)
                end
            end
            self:UPDATE_STEALTH()
        end

        self:RegisterEvent("SPELLS_CHANGED")
        self.SPELLS_CHANGED = function(self)
            local spec = GetSpecialization()
            if not spec then return end
            self:UnregisterEvent("UNIT_AURA")
            -- self:RegisterEvent("UNIT_POWER")
            if spec == 2 then
                GetPower = function(unit) return UnitPower(unit, SPELL_POWER_DEMONIC_FURY) end
                GetPowerMax = function(unit) return UnitPowerMax(unit, SPELL_POWER_DEMONIC_FURY) end
                -- self:RealignMarks({200})
                PowerFilter = "DEMONIC_FURY"
                self:RegisterEvent("UNIT_AURA")
                -- self:RegisterEvent("PLAYER_REGEN_DISABLED")
            elseif spec == 3 then
                GetPower = function(unit)
                    local power = UnitPower(unit, SPELL_POWER_BURNING_EMBERS, true)
                    return power, floor(power / MAX_POWER_PER_EMBER)
                end
                GetPowerMax = function(unit) return UnitPowerMax(unit, SPELL_POWER_BURNING_EMBERS, true) end
                -- self:RealignMarks({1,2,3, GetPowerMax("player") == 40 and 4 or nil})
                PowerFilter = "BURNING_EMBERS"
                -- self:UnregisterEvent("UNIT_POWER")
                -- self:UnregisterEvent("PLAYER_REGEN_DISABLED")
                -- self:Hide()
            elseif spec == 1 then
                GetPower = function(unit) return UnitPower(unit, SPELL_POWER_SOUL_SHARDS) end
                GetPowerMax = function(unit) return UnitPowerMax(unit, SPELL_POWER_SOUL_SHARDS) end
                -- self:RealignMarks({1,2,3, GetPowerMax("player") == 4 and 4 or nil})
                PowerFilter = "SOUL_SHARDS"
            end
            self:UNIT_MAXPOWER()
        end
        self:SPELLS_CHANGED()
    elseif class == "DEATHKNIGHT" and NugEnergyDB.runic then
        PowerFilter = "RUNIC_POWER"
    elseif class == "WARRIOR" and NugEnergyDB.rage then
        PowerFilter = "RAGE"
        local execute = false
        GetPower = function(unit)
            local p = UnitPower(unit)
            local pmax = UnitPowerMax(unit)
            local shine = p >= pmax-30
            local capped = p >= pmax-10
            return p, nil, execute, shine, capped
        end
        self.UNIT_HEALTH = function(self, event, unit)
            if unit ~= "target" then return end
            execute = UnitHealth(unit)/UnitHealthMax(unit) < 0.2
        end
        self.PLAYER_TARGET_CHANGED = function(self,event) self.UNIT_HEALTH(self,event,"target") end
        self:RegisterEvent("UNIT_HEALTH"); self:RegisterEvent("PLAYER_TARGET_CHANGED")
    elseif class == "HUNTER" and NugEnergyDB.focus then

        PowerFilter = "FOCUS"
        self:SetScript("OnUpdate",self.UpdateEnergy)
        GetPower = function(unit)
            local p = UnitPower(unit)
            return p, math_modf(p/5)*5
        end
    else
        self:UnregisterAllEvents()
        self:SetScript("OnUpdate", nil)
        self:Hide()
        return false
    end
    
    self:UPDATE_STEALTH()
    self:UNIT_POWER(nil, "player", PowerFilter)
    return true
end




function NugEnergy.UNIT_POWER(self,event,unit,powertype)
    if powertype == PowerFilter then self:UpdateEnergy() end
end
function NugEnergy.UpdateEnergy(self)
    local p, p2, execute, shine, capped = GetPower("player")
    p2 = p2 or p
    self.text:SetText(p2)
    if not onlyText then
        if shine then
            -- self.glow:Show()
            if not self.glow:IsPlaying() then self.glow:Play() end
        else
            -- self.glow:Hide()
            self.glow:Stop()
        end
        if capped then
            self:SetStatusBarColor(unpack(color3))
            self.bg:SetVertexColor(color3[1]*.5,color3[2]*.5,color3[3]*.5)
            self.glowanim:SetDuration(0.15)
        elseif execute then
            self:SetStatusBarColor(unpack(color2))
            self.bg:SetVertexColor(color2[1]*.5,color2[2]*.5,color2[3]*.5)
            self.glowanim:SetDuration(0.3)
        else
            self:SetStatusBarColor(unpack(color))
            self.bg:SetVertexColor(color[1]*.5,color[2]*.5,color[3]*.5)
            self.glowanim:SetDuration(0.3)
        end
        self:SetValue(p)
        --if self.marks[p] then self:PlaySpell(self.marks[p]) end
        if self.marks[p] then self.marks[p].shine:Play() end
    end
end
function NugEnergy.UNIT_MAXPOWER(self)
    self:SetMinMaxValues(0,GetPowerMax("player"))
    if not self.marks then return end
    for _, mark in pairs(self.marks) do
        mark:Update()
    end
end
function NugEnergy.UPDATE_STEALTH(self)
    if (IsStealthed() or UnitAffectingCombat("player") or ForcedToShow) and PowerFilter then
        self:UNIT_MAXPOWER()
        self:UpdateEnergy()
        self:Show()
    else
        self:Hide()
    end
end

function NugEnergy.Create(self)
    local f = self
    if vertical then
        height, width = width, height
        f:SetOrientation("VERTICAL")
    end
    f:SetWidth(width)
    f:SetHeight(height)
    
    if not onlyText then
    local backdrop = {
        bgFile = "Interface\\Tooltips\\UI-Tooltip-Background", tile = true, tileSize = 0,
        insets = {left = -2, right = -2, top = -2, bottom = -2},
    }
    f:SetBackdrop(backdrop)
    f:SetBackdropColor(0,0,0,0.5)
    f:SetStatusBarTexture(tex)
    f:SetStatusBarColor(unpack(color))
    
    local bg = f:CreateTexture(nil,"BACKGROUND")
    bg:SetTexture(tex)
    bg:SetVertexColor(color[1]/2,color[3]/2,color[3]/2)
    bg:SetAllPoints(f)

    f.bg = bg
    f.marks = {}
    f:UNIT_MAXPOWER()
    -- NEW MARKS
    for p in pairs(NugEnergyDB.marks) do
        self:CreateMark(p)
    end

    -- local glow = f:CreateTexture(nil,"OVERLAY")
    -- glow:SetAllPoints(f)
    -- glow:SetTexture([[Interface\AddOns\NugEnergy\white.tga]])
    -- glow:SetAlpha(0)

    -- local ag = glow:CreateAnimationGroup()
    -- ag:SetLooping("BOUNCE")
    -- local a1 = ag:CreateAnimation("Alpha")
    -- a1:SetChange(0.1)
    -- a1:SetDuration(0.2)
    -- a1:SetOrder(1)
    
    local at = f:CreateTexture(nil,"BACKGROUND", nil, -1)
    at:SetTexture([[Interface\SpellActivationOverlay\IconAlert]])
    at:SetVertexColor(unpack(color))
    at:SetTexCoord(0.00781250,0.50781250,0.27734375,0.52734375)
    --at:SetTexture([[Interface\AchievementFrame\UI-Achievement-IconFrame]])
    --at:SetTexCoord(0,0.5625,0,0.5625)
    local hmul,vmul = 1.5, 1.8
    if vertical then hmul, vmul = vmul, hmul end
    at:SetWidth(width*hmul)
    at:SetHeight(height*vmul)
    at:SetPoint("CENTER",self,"CENTER",0,0)
    at:SetAlpha(0)
    
    local sag = at:CreateAnimationGroup()
    sag:SetLooping("BOUNCE")
    local sa1 = sag:CreateAnimation("Alpha")
    sa1:SetChange(1)
    sa1:SetDuration(0.3)
    sa1:SetOrder(1)
    -- local sa2 = sag:CreateAnimation("Alpha")
    -- sa2:SetChange(-1)
    -- sa2:SetDuration(0.5)
    -- sa2:SetSmoothing("OUT")
    -- sa2:SetOrder(2)
    -- 
    -- f.shine = sag

    self.glow = sag
    self.glowanim = sa1
    self.glowtex = glow

--~     -- MARKS
--~     local f2 = CreateFrame("Frame",nil,f)
--~     f2:SetWidth(height)--*.8
--~     f2:SetHeight(height)
--~     f2:SetBackdrop(backdrop)
--~     f2:SetBackdropColor(0,0,0,0.5)
--~     f2:SetAlpha(0)
--~     --f2:SetFrameStrata("BACKGROUND") --fall behind energy bar
--~     local icon = f2:CreateTexture(nil,"BACKGROUND")
--~     icon:SetTexCoord(.07, .93, .07, .93)
--~     icon:SetAllPoints(f2)
--~     
--~     --local sht = f2:CreateTexture(nil,"OVERLAY")
--~     --sht:SetTexture([[Interface\AddOns\NugEnergy\white.tga]])
--~     --sht:SetAlpha(0.3)
--~     --sht:SetAllPoints(f)

--~     f2:SetPoint("RIGHT",f,"LEFT",-2,0)
--~     
--~     local ag = f2:CreateAnimationGroup()    
--~     local a1 = ag:CreateAnimation("Alpha")
--~     a1:SetChange(1)
--~     a1:SetDuration(0.3)
--~     a1:SetOrder(1)
--~     
--~     local a2 = ag:CreateAnimation("Alpha")
--~     a2:SetChange(-1)
--~     a2:SetDuration(0.7)
--~     a2:SetOrder(2)
--~     
--~     f.icon = icon
--~     f.ag = ag
--~     
--~     f.PlaySpell = function(self,spellID)
--~         self.icon:SetTexture(select(3,GetSpellInfo(spellID)))
--~         self.ag:Play()
--~     end    
    
    end -- endif not onlyText
    
    local text = f:CreateFontString(nil, "OVERLAY")
    text:SetFont(font,fontSize, textoutline and "OUTLINE")
    if vertical then
        text:SetPoint("TOPLEFT", f, "TOPLEFT", 0, -10)
        text:SetPoint("BOTTOMRIGHT", f, "BOTTOMRIGHT", 0,0)
        text:SetJustifyH("CENTER")
        text:SetJustifyV("TOP")
    else
        text:SetPoint("TOPLEFT",f,"TOPLEFT",0,0)
        text:SetPoint("BOTTOMRIGHT",f,"BOTTOMRIGHT",-10,0)
        text:SetJustifyH("RIGHT")
    end
    text:SetTextColor(unpack(textcolor))
    f.text = text
    
    f:SetPoint(NugEnergyDB.point, UIParent, NugEnergyDB.point, NugEnergyDB.x, NugEnergyDB.y)
    
    f:EnableMouse(false)
    f:RegisterForDrag("LeftButton")
    f:SetMovable(true)
    f:SetScript("OnDragStart",function(self) self:StartMoving() end)
    f:SetScript("OnDragStop",function(self)
        self:StopMovingOrSizing();
        _,_, NugEnergyDB.point, NugEnergyDB.x, NugEnergyDB.y = self:GetPoint(1)
    end)
end

local ParseOpts = function(str)
    local fields = {}
    for opt,args in string.gmatch(str,"(%w*)%s*=%s*([%w%,%-%_%.%:%\\%']+)") do
        fields[opt:lower()] = tonumber(args) or args
    end
    return fields
end
function NugEnergy.SlashCmd(msg)
    k,v = string.match(msg, "([%w%+%-%=]+) ?(.*)")
    if not k or k == "help" then print([[Usage:
      |cff00ff00/nen lock|r
      |cff00ff00/nen unlock|r
      |cff00ff00/nen reset|r
      |cff00ff00/nen rage|r 
      |cff00ff00/nen focus|r
      |cff00ff00/nen monk|r
      |cff00ff00/nen runic|r
      |cff00ff00/nen demonic|r - DemonicFury/Shards/Embers
      |cff00ff00/nen markadd at=35|r
      |cff00ff00/nen markdel at=35|r
      |cff00ff00/nen marklist|r]]
    )end
    if k == "unlock" then
        NugEnergy:EnableMouse(true)
        ForcedToShow = true
        NugEnergy:UPDATE_STEALTH()
    end
    if k == "lock" then
        NugEnergy:EnableMouse(false)
        ForcedToShow = true
        NugEnergy:UPDATE_STEALTH()
    end
    if k == "markadd" then
        local p = ParseOpts(v)
        local at = p["at"]
        if at then
            NugEnergyDB.marks[at] = true
            NugEnergy:CreateMark(at)
        end
    end
    if k == "markdel" then
        local p = ParseOpts(v)
        local at = p["at"]
        if at then
            NugEnergyDB.marks[at] = nil
            NugEnergy.marks[at]:Hide()
            NugEnergy.marks[at] = nil
        end
    end
    if k == "marklist" then
        print("Current marks:")
        for p in pairs(NugEnergyDB.marks) do
            print(string.format("    @%d",p))
        end
    end
    if k == "reset" then
        NugEnergy:SetPoint("CENTER",UIParent,"CENTER",0,0)
    end
    if k == "rage" then
        NugEnergyDB.rage = not NugEnergyDB.rage
        NugEnergy:Initialize()
    end
    if k == "monk" then
        NugEnergyDB.monk = not NugEnergyDB.monk
        NugEnergy:Initialize()
    end
    if k == "focus" then
        NugEnergyDB.focus = not NugEnergyDB.focus
        NugEnergy:Initialize()
    end
    if k == "demonic" then
        NugEnergyDB.demonic = not NugEnergyDB.demonic
        NugEnergy:Initialize()
    end
    if k == "runic" then
        NugEnergyDB.runic = not NugEnergyDB.runic
        NugEnergy:Initialize()
    end
end

local UpdateMark = function(self)
    local bar = self:GetParent()
    local min,max = bar:GetMinMaxValues()
    local pos = self.position / max * bar:GetWidth()
    self:SetPoint("CENTER",bar,"LEFT",pos,0)
end
function NugEnergy.CreateMark(self, at)
        local m = CreateFrame("Frame",nil,self)
        m:SetWidth(2)
        m:SetHeight(self:GetHeight())
        m:SetFrameLevel(4)
        m:SetAlpha(0.6)
        
        local texture = m:CreateTexture(nil, "OVERLAY")
		texture:SetTexture("Interface\\AddOns\\NugEnergy\\mark")
        texture:SetVertexColor(1,1,1,0.3)
        texture:SetAllPoints(m)
        m.texture = texture
        
        local spark = m:CreateTexture(nil, "OVERLAY")
		spark:SetTexture("Interface\\CastingBar\\UI-CastingBar-Spark")
        spark:SetAlpha(0)
        spark:SetWidth(20)
        spark:SetHeight(m:GetHeight()*2.7)
        spark:SetPoint("CENTER",m)
		spark:SetBlendMode('ADD')
        m.spark = spark
        
        local ag = spark:CreateAnimationGroup()
        local a1 = ag:CreateAnimation("Alpha")
        a1:SetChange(1)
        a1:SetDuration(0.2)
        a1:SetOrder(1)
        local a2 = ag:CreateAnimation("Alpha")
        a2:SetChange(-1)
        a2:SetDuration(0.4)
        a2:SetOrder(2)
        
        m.shine = ag
        m.position = at
        m.Update = UpdateMark
        m:Update()
        m:Show()
    
        self.marks[at] = m

        return m
end


function NugEnergy:RealignMarks(t)
    local old_pos = {}
    for k,v in pairs(self.marks) do
        table.insert(old_pos, k)
    end
    local len = math.max(#t, #old_pos)
    for i=1,len do
        local v = old_pos[i]
        if not v then
            self:CreateMark(t[i])
        else
            local mark = self.marks[v]
            if not t[i] then
                mark:Hide()
            else
                local new = t[i]
                mark.position = new
                self.marks[v] = nil
                self.makrs[new] = mark
            end
        end
    end
end