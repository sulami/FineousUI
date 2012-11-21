local L = LibStub("AceLocale-3.0"):NewLocale("Big Wigs: Common", "zhCN")

if not L then return end

-- Prototype.lua common words
L.you = ">你< %s！"
L.underyou = ">你<脚下：%s！"
L.other = "%s：>%s<！"
L.onboss = "%s on BOSS!"
L.say = ">我< %s！"
L.stack = "%2$dx %3$s on %1$s"
L.cast = "<正在施放：%s>"
L.soon = "即将 >%s<！"

L.phase = "阶段%d"
L.normal = "普通模式"
L.heroic = "英雄模式"
L.hard = "困难模式"
L.general = "通用" -- General settings, i.e. things that apply to both normal and hard mode.

L.duration = ">%s< %s秒"
L.over = "%s 结束！"

L.add_spawned = "小怪刷新!"
L.next_add = "下一波小怪"

-- Localizers note:
-- The default mod:Berserk(600) uses spell ID 26662 to get the Berserk name
L.custom_start = ">%s<激活 - %s将在%d分后！"
L.custom_start_s = ">%s<激活 - %s将在%d秒后！"
L.custom_end = ">%s<将%s！"
L.custom_min = ">%s<%d分后！"
L.custom_sec = ">%s<%d秒后！"

L.tank = "只警报坦克。"
L.healer = "只警报治疗。"
L.tankhealer = "Tank & Healer alerts only. "

