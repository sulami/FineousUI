local L = LibStub("AceLocale-3.0"):NewLocale("Big Wigs", "ruRU")
if not L then return end
-- Core.lua
L["%s has been defeated"] = "%s терпит поражение"

L.bosskill = "Смерть босса"
L.bosskill_desc = "Объявлять о смерти босса."
L.berserk = "Берсерк"
L.berserk_desc = "Предупреждать и отсчитывать время до берсерка."
L.stages = "Фазы"
L.stages_desc = "Включение различных функций, связанных с этапами/фазами босса: радар, полосы и прочее"

L.already_registered = "|cffff0000ВНИМАНИЕ:|r |cff00ff00%s|r (|cffffff00%s|r) уже загружен как модуль Big Wigs, но что-то пытается зарегистрировать его ещё раз. Обычно, это означает, что у вас две копии этого модуля в папке с модификациями (возможно, из-за ошибки программы для обновления модификаций). Мы рекомендуем вам удалить все папки Big Wigs и установить его с нуля."

-- Loader / Options.lua
L["You are running an official release of Big Wigs %s (revision %d)"] = "Вы используете официальную версию Big Wigs %s (ревизия %d)"
L["You are running an ALPHA RELEASE of Big Wigs %s (revision %d)"] = "Вы используете АЛЬФА-ВЕРСИЮ Big Wigs %s (ревизия %d)"
L["You are running a source checkout of Big Wigs %s directly from the repository."] = "Вы используете отладочный Big Wigs %s прямо из репозитория."
L["There is a new release of Big Wigs available (/bwv). You can visit curse.com, wowinterface.com, wowace.com or use the Curse Updater to get the new release."] = "Доступна новая версия Big Wigs (/bwv). Чтобы загрузить её, зайдите на сайт curse.com, wowinterface.com, wowace.com или воспользуйтесь Curse Updater."
L["Your alpha version of Big Wigs is out of date (/bwv)."] = "Ваша альфа-версия Big Wigs устарела (/bwv)."

L.tooltipHint = "|cffeda55fЩёлкните|r, чтобы сбросить все запущенные модули. |cffeda55fAlt+Левый клик|r - чтобы отключить их. |cffeda55fПравый клик|r открыть настройки."
L["Active boss modules:"] = "Активные модули боссов:"
L["All running modules have been reset."] = "Все запущенные модули сброшены."
L["All running modules have been disabled."] = "Все запущенные модули были отключены."

L["There are people in your group with older versions or without Big Wigs. You can get more details with /bwv."] = "В вашей группе есть игроки с устаревшими версиями или без Big Wigs. Для получения более подробной информации введите команду /bwv."
L["Up to date:"] = "Текущий:"
L["Out of date:"] = "Устаревший:"
L["No Big Wigs 3.x:"] = "Нет Big Wigs 3.x:"

L.coreAddonDisabled = "Big Wigs не будет работать правильно, пока аддон %s выключен. Вы можете включить его из панели управления модификациями в окне выбора персонажа."

-- Options.lua
L["Big Wigs Encounters"] = "Big Wigs Модули"
L["Customize ..."] = "Настройки ..."
L["Profiles"] = "Профили"
L.introduction = "Добро пожаловать в Big Wigs, где бродят боссы. Пожалуйста, пристегните ремни безопасности, запаситесь печеньками и наслаждайтесь поездкой. Он не будет есть ваших детей, зато поможет вам подготовиться к встречи с новыми боссами, словно обед из 7-ми блюд для вашего рейда.\n"
L["Configure ..."] = "Настройка ..."
L.configureDesc = "Закрывает окно настроек интерфейса и позволяет вам настроить отображение таких вещей как полосы и сообщения.\n\nЕсли вы хотите настроить больше вещей, разверните Big Wigs слева, и найдите секцию 'Настройка ..'."
L["Sound"] = "Звук"
L.soundDesc = "Сообщения могут сопровождаться звуком. Некоторым людям проще услышать звук и опознать к какому сообщению он относится, нежели читать сообщения.\n\n|cffff4411Даже когда отключено, по умолчанию звук объявления рейда будет сопровождать входящие объявления рейда от других игроков. Этот звук, отличаются от используемых звуков.|r"
L["Show Blizzard warnings"] = "Оповещения Blizzard"
L.blizzardDesc = "Blizzard иногда предоставляет свои сообщения для некоторых способностей. По нашему мнению, эти сообщенимя слишком подробные и длинные. Мы пытаемся предоставить короткие, более уместные сообшения, которые не вмешиваются в игровой процесс и не говорят, что конкретно вам делать.\n\n|cffff4411Когда отключено, сообщения Blizzard не будут показываться по центру экрана, но всё ещё будут отображаться в чате.|r"
L["Show addon warnings"] = "Показать сообщения аддона"
L.addonwarningDesc = "Big Wigs и другие подобные аддоны могут транслировать свои сообщение через канал предупреждения рейда. Эти сообщения будут отмечены тремя звездочками (***).\n\n|cffff4411Включение этой настройки не рекомендуется, может привести к излишнему спаму.|r"
L["Flash and shake"] = "Мигание и тряска"
L["Flash"] = "Мигание"
L["Shake"] = "Тряска"
L.fnsDesc = "Некоторые способности являются настолько важными, что требуют особого внимания. Когда вы попадаете под эффект таких способностей, Big Wigs производит мигание и тряску экрана.\n\n|cffff4411Если у вас включены полосы имен, функция тряски не будет работать в связи с ограничениями Blizzard, экран будет только мигать.|r"
L["Raid icons"] = "Метки рейда"
L.raidiconDesc = "Некоторые скрипты событий используют метки рейда, чтобы помечать игроков, которые оказывают особое влияние на вашу группу. Например, такой тип эффектов как 'бомба' и контроль разума.\n\n|cffff4411Применимо, если вы Лидер рейда или помощник!|r"
L["Whisper warnings"] = "Оповещения шепотом"
L.whisperDesc = "Отправлять игрокам уведомления шепотом об определённых способностях, которые их затрагивают.\n\n|cffff4411Применимо, если вы Лидер рейда или помощник!|r"
L["Broadcast"] = "Вывод сообщений"
L.broadcastDesc = "Выводить все сообщения Big Wigs в канал объявлений рейду.\n\n|cffff4411Применимо, если вы Лидер рейда или в группе 5-чел!|r"
L["Raid channel"] = "Канал рейда"
L["Use the raid channel instead of raid warning for broadcasting messages."] = "Для передачи сообщений использовать канал рейда, вместо объявлений рейду."
L["Minimap icon"] = "Иконка у миникарты"
L["Toggle show/hide of the minimap icon."] = "Показать/скрыть иконку у миникарты."
L["Configure"] = "Настройка"
L["Test"] = "Тест"
L["Reset positions"] = "Сброс позиции"
L["Colors"] = "Цвета"
L["Select encounter"] = "Выберите схватку"
L["List abilities in group chat"] = "Вывести способности в групповой чат"
L["Block boss movies"] = "Блокировать видео ролики"
L["After you've seen a boss movie once, Big Wigs will prevent it from playing again."] = "После того, как вы увидели ролик один раз, Big Wigs не позволит ему играть снова."
L["Prevented boss movie '%d' from playing."] = "Пропущен видео ролик '%d'."
L["Ignore my role"] = "Игнорировать мою роль"
L.ignoreroleDesc = "|cffff4411Не рекомендуется.|r Включив опцию, вы будете видеть все предупреждения, вне зависимости от вашей роли. Может привести к излишнему спаму."

L["BAR"] = "Полосы"
L["MESSAGE"] = "Сообщения"
L["ICON"] = "Иконка"
L["WHISPER"] = "Шепот"
L["SAY"] = "Сказать"
L["FLASHSHAKE"] = "Мигание и тряска"
L["PING"] = "Импульс"
L["EMPHASIZE"] = "Увеличение"
L["MESSAGE_desc"] = "Большинство способностей событий сопровождаются с одним или несколькими сообщениями, которые Big Wigs будет отображать на экране. Если вы отключите эту опцию, ни одно из сообщений, прилагаемый к этой опции, если таковые будут, не будет отображаться."
L["BAR_desc"] = "Полосы отображаются для некоторых способностей событий когда необходимо. Если эта способность сопровождается полоской, которую вы хотите скрыть, отключите эту опцию"
L["FLASHSHAKE_desc"] = "Некоторые способности могут быть более важными, чем другие. Если вы хотите, чтобы ваш экран мигал и трясся, при использовании таких способностей, отметьте эту опцию."
L["ICON_desc"] = "Big Wigs может отмечать пострадавших от способностей иконкой. Это способствует их легкому обнаружению."
L["WHISPER_desc"] = "Некоторые эффекты являются достаточно важными, Big Wigs будет отсылать предупреждение шепотом, пострадавшей персоне."
L["SAY_desc"] = "Сообщения над головой персонажей легко обнаружить. Big Wigs будут использоваться канал \"сказать\" для оповещения персонажей поблизости об эффекте на вас."
L["PING_desc"] = "Иногда местонахождение играет немалую роль, Big Wigs будет издавать импульс по миникарте, чтобы люди знали, где вы находитесь."
L["EMPHASIZE_desc"] = "Включив это, будет СУПЕР УВЕЛИЧЕНИЕ любого сообщение или полосы, связанных со способностью босса. Сообщение будет больше, полосы будут мигать и иметь различные цвета, при надвигающейся способности будут использоваться звуки для отсчета времени. В общем, вы сами всё увидите."
L["PROXIMITY"] = "Отображение близости"
L["PROXIMITY_desc"] = "Способности иногда требуют от вас рассредоточиться. Отображение близости будет специально показываться для таких спобностей, так что вы сможете понять с одного взгляда в безопасности вы или нет."
L["Advanced options"] = "Расширенные опции"
L["<< Back"] = "<< Назад"

L["About"] = "О Big Wigs"
L["Main Developers"] = "Основатели"
L["Developers"] = "Разработчики"
L["Maintainers"] = "Помощники"
L["License"] = "Лицензия"
L["Website"] = "Сайт"
L["Contact"] = "Связь"
L["See license.txt in the main Big Wigs folder."] = "Смотрите license.txt в основной папке Big Wigs."
L["irc.freenode.net in the #wowace channel"] = "irc.freenode.net на канале #wowace"
L["Thanks to the following for all their help in various fields of development"] = "Благодарим следующих лиц за их помощь в различных областях развития"