local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("DailiesHMOP") then return end
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Pandaria (85 - 90)\\The Anglers Dailies",[[
description This guide will take you through The Anglers dailies
startlevel 90
step
'You must have fishing in order to accept dailies from this faction.
|confirm
step
goto Vale of Eternal Blossoms 60.9,23.8
.talk 64010
..accept 31370
|only if not completedq(31370)
step
goto Krasarang Wilds 67.9,45.2
.talk 59584
..turnin 31370
|only if not completedq(31370)
step
'There will only be three dailies available from the following questgivers. It is possible for one questgiver to give you two quests in the same day, but it is unlikely.
|confirm
step
goto 67.9,45.2
.talk 59584
..accept 30584 |daily |or
..accept 30586 |daily |or
.'_
.' If these quests are unavailable today, click here. |confirm
step
goto 67.5,44.6
.talk 60136
..accept 30678 |daily |or
..accept 30698 |daily |or
.'_
.' If this quest is unavailable today, click here. |confirm
step
goto 67.5,43.5
.talk 59586
..accept 30700 |daily |or
..accept 30588 |daily |or
.'_
.' If these quests are unavailable today, click here. |confirm
step
goto 68.3,43.5
.talk 60674
..accept 30754 |daily |or
..accept 30753 |daily |or
.'_
.' If these quests are unavailable today, click here. |confirm
step
goto 67.6,42.5
.talk 60135
..accept 30613 |daily |or
..accept 30658 |daily |or
.'_
.' If these quests are unavailable today, click here. |confirm
step
goto 68.4,42.1
.talk 60673
..accept 30585 |daily |or
..accept 30598 |daily |or
.'_
.' If these quests are unavailable today, click here. |confirm
step
goto 67.2,41.2
.talk 60675
..accept 30763 |daily |or
..accept 30701 |daily |or
.'_
.' If these quests are unavailable today, click here. |confirm
step
goto 68.4,43.1
.clicknpc Frenzied Reef Shark##60408 
.' Ride the shark. |invehicle |c
|only if havequest(30753)
step
'Use the abilities on your hotbar to kill the shark, make sure not to let your grip bar reach zero.
.kill Frenzied Reef Shark##60408 |q 30753/1
|only if havequest(30753)
step
goto 69.1,37.9
.click Jagged Abalone##261
.get 9 Jagged Abalone Meat##80277 |q 30586/1
|only if havequest(30586)
step
'Enter the underwater cave here. |goto 71.3,38.5 <5 |c
|only if havequest(30700)
step
goto 73.9,38.4
.from Snapclaw##60401
.get Snapclaw's Claw##80831 |q 30700/1
|only if havequest(30700)
step
'Leave the cave. |goto 71.3,38.5 <5 |c
|only if havequest(30700)
step
goto 65.6,30.5
'Use your fishing skill to fish up 7 Dojani Eel.
.get 7 Dojani Eel |q 30584/1
|only if havequest(30584)
step
goto 62.4,40.9
.kill 8 Riverblade Raider##59714+ |q 30588/1
|only if havequest(30588)
step
goto 55.1,45.7
.from Viseclaw Fry##61090+, Viseclaw Fisher##58880+
.get 16 Viseclaw Fisher Eye##80832+ |q 30701/1
|only if havequest(30701)
step
goto 59.8,38.8
.click Suncrawler
.get 7 Suncrawler##81116 |q 30754/1
|only if havequest(30754)
step
goto 59.3,46.3
'Use your Goblin Fishing Bomb to kill Sting Rays. |use Goblin Fishing Bomb##80599 |tip You can kill the Sting Rays by other means, using the bombs is much quicker though.
.from Sting Ray##60278+
.get 3 Stinger##80600+ |q 30678/1
|only if havequest(30678)
step
goto 36.8,43.3
'Use your fishing skill to fish up 5 Wolf Piranha.
.get 5 Wolf Piranha |q 30763/1
|only if havequest(30763)
step
goto 34.4,31.4
'Use your fishing skill in the Mysterious Whirlpool until Narjon the Gulper appears. |tip When Narjon spawns, make sure to equip your weapon quickly.
.from Narjon the Gulper##59689 |q 30585/1
.get Beloved Ring##80262 |q 30585/2
|only if havequest(30585)
step
goto 51.4,62.2
'Use your Anglers Fishing Spear near a Prickly Puffer |use Anglers Fishing Spear##80403 |tip The closer you are the easier it is to hit the fish.
.from Prickly Puffer##60037
.get 5 Prickly Puffer Spine##80529 |q 30658/1
|only if havequest(30658)
step
goto 67.5,44.8
.click Goblin Fishing Raft
.' Ride a Goblin Fishing Raft |havebuff Rafting
|only if havequest(30698)
step
goto 64.3,50.7
'Use you fishing skill in the Shipwreck Debris pools to fish up 15 Rusty Shipwreck Debris.
.get 15 Shipwreck Debris |q 30698/1
.' You can find more Debris at [64.3,50.6]
|only if havequest(30698)
step
goto 65.2,47.5
.click Pristine Crane Egg##1867
.get Pristine Crane Egg |q 30598/1
|only if havequest(30598)
step
goto 70.1,51.2
'Use your Anglers Fishing Spear near an Armored Carp |use Anglers Fishing Spear##80403 |tip The closer you are the easier it is to hit the fish.
.from Armored Carp##59936+
.get 5 Armored Carp##80437 |q 30613/1
|only if havequest(30613)
step
goto 68.2,42.7
'Use the Pristine Crane Egg in your bags |use Pristine Crane Egg##80303
.' Use your fishing skill in the Crane Yolk Pool and fish up a Silver Goby.
.get Silver Goby##80310 |q 30598/2
|only if havequest(30598)
step
goto 68.4,42.1
.talk 60673
..turnin 30585 |daily
..turnin 30598 |daily
step
goto 67.5,44.6
.talk 60136
..turnin 30678 |daily
..turnin 30698 |daily
step
goto 67.5,43.5
.talk 59586
..turnin 30700 |daily
..turnin 30588 |daily
step
goto 67.6,42.5
.talk 60135
..turnin 30613 |daily
..turnin 30658 |daily
step
goto 67.9,45.2
.talk 59584
..turnin 30584 |daily
..turnin 30586 |daily
step
goto 68.3,43.5
.talk 60674
..turnin 30754 |daily
..turnin 30753 |daily
step
goto 67.2,41.2
.talk 60675
..turnin 30763 |daily
..turnin 30701 |daily
step
'You have reached the end of this guide.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Pandaria (85 - 90)\\The August Celestials Dailies",[[
description This guide will take you through The August Celestials dailies
startlevel 90
step
#include "August_Celestials"
step
'Click here if you have not done dailies at The Cradle of Chi-Ji today. |confirm |next "crane"
'Click here if you have done dailies at The Cradle of Chi-Ji today |confirm |next "end"
step
label end
'This is the end of the current guide. Click here to go back to the beginning. |confirm |next "start"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Pandaria (85 - 90)\\The Order of the Cloud Serpent Dailies",[[
description This guide will take you through the Order of the Cloud Serpent dailies
startlevel 90
step
label	start
'Proceeding to Order of the Cloud Serpent Dailies |condition completedq(30142) |next "dailies" |only if completedq(30142)
'Moving to the Order of the Cloud Serpent prequests. |next |condition not completedq(30142) |only if not completedq(30142)
step
goto Vale of Eternal Blossoms 60.6,21.7
.talk 64533
..accept 31375
step
goto The Jade Forest 57.8,45.0
.talk 58228
..turnin 31375
step
goto 57.7,45.0
.talk 58564
..accept 30134
step
goto 65.3,31.7
.talk 58225
..turnin 30134
..accept 30135
..accept 30136
..accept 30137
step
goto 64.4,31.1
.' Use the Silken Rope in your bags on Windward Hatchlings |use Silken Rope##78947
.' Get 6 Hatchlings and bring them to [65.8,31.2]
.' Return 6 Windward Hatchlings to their nests. |q 30136/1
step
goto 68.1,31.2
.from Slitherscale Ripper##58212+, Slitherscale Eggdrinker##63532+
.' Kill 8 Slitherscale saurok. |q 30135/1
.click Serpent Egg
.get 6 Serpent Egg##78959 |q 30137/1
step
goto 65.3,31.7
.talk 58225
..turnin 30135
..turnin 30136
..turnin 30137
..accept 30138
..turnin 30138
step
goto 65.3,31.7
.talk 58225 |tip You will only accept one of the following quests.
..accept 30139 |or
..accept 30140 |or
..accept 30141 |or
step
goto 57.6,45.1
.talk 58228 |tip You will only turn in one of the following quests.
..turnin 30139
..turnin 30140
..turnin 30141
..accept 30142
step
.' Watch the scene and see your egg hatch.
.' Egg Hatched. |q 30142/1
step
goto 57.6,45.1
.talk 58228
..turnin 30142
step
label dailies
goto 57.5,45.3
'Talk to Your Hatchling |tip Your Hatchling is whichever color egg you chose in the prequests.
..accept 30151 |daily |or
..accept 31704 |daily |or
..accept 30156 |daily |or
..accept 30154 |daily |or
.'_
.' Click here if these quests are unavailable |confirm
|modelnpc Your Hatchling##58416
|modelnpc Your Hatchling##58213
|only if not completedq(30143)
step
goto 57.5,45.3
'Talk to Your Hatchling |tip Your Hatchling is whichever color egg you chose in the prequests.
..accept 30151 |daily |or
..accept 31716 |daily |or
..accept 30154 |daily |or
..accept 31710 |daily |or
.'_
.' Click here if these quests are unavailable |confirm
|modelnpc Your Hatchling##58416
|modelnpc Your Hatchling##58213
|only if completedq(30143)
step
goto 57.6,45.1
.talk 58228
..accept 30155 |daily |or 2
..accept 30158 |daily |or 2
..accept 31698 |daily |or 2
..accept 31706 |daily |or 2
..accept 31707 |daily |or 2
.'_
.' Click here if these quests are unavailable |confirm |only if not havequest(30155) and not havequest(30158) and not havequest(31698) and not havequest(31706)
.' Click here if there no more quests available today |confirm |only if havequest(30155) or havequest(30158) or havequest(31698) or havequest(31706)
step
goto 57.5,44.7
.talk 58413
..accept 30148 |daily |only if skill("First Aid")>=525
..accept 30149 |daily |only if skill("Cooking")>=525
..accept 30147 |daily |only if skill("Archaeology")>=525
..accept 30146 |daily |only if skill("Fishing")>=525
step
goto 57.6,44.9
.talk 58564
..accept 31194 |daily |or
..accept 31703 |daily |or
..accept 31701 |daily |or
..accept 31702 |daily |or
..accept 31711 |daily |or
..accept 31721 |daily |or
..accept 31717 |daily |or
..accept 31720 |daily |or
..accept 31718 |daily |or
.'_
.' Click here if these quests are unavailable |confirm
step
goto 58.3,45.0
.talk 58509
..accept 31699 |daily |or
..accept 31700 |daily |or
.'_
.' Click here if these quests are unavailable |confirm
step
goto 58.5,44.7
.talk 58510
..accept 30159 |daily
.'_
.' Click here if this quest is not available today |confirm
step
goto 57.5,44.0
.talk 58508
..accept 31709 |daily
.'_
.' Click here if this quest is not available today |confirm
step
goto 57.3,43.5
.talk 58511
..accept 31708 |daily
.'_
.' Click here if this quest is unavailable |confirm
|only if havequest(31711)
step
goto 58.6,43.7
.talk 58420
..accept 30152 |daily
.'_
.' Click here if this quest is unavailable |confirm
step
goto 58.6,43.7
.talk 58420
.' Tell her you are ready to start the Sky Race.
.' Ride your Dragon! |invehicle
|only if havequest(30152)
step
path	60.6,39.4	59.7,31.5	61.3,25.2
path	66.3,36.0	66.2,42.4	66.8,51.4
path	64.0,51.0	60.4,52.9	61.8,54.5
path	58.7,46.8	58.4,46.4	58.1,46.0
'Follow this path and collect the checked flags hanging off of the Checkpoint balloons. As you fly, gain speed by flying through cloud rings
.' Pass 10 Checkpoints. |q 30152/1
.' Pass underneath the Finish Line |q 30152/2
|only if havequest(30152)
step
goto 57.3,43.5
.talk 58511
.' Challenge him to a duel!
.' Defeat Qua-Ro Whitebrow |q 31721/1 
|only if havequest(31721)
step
goto 58.0,43.7
.talk 58506
.' Challenge him to a duel!
.' Defeat Ace Longpaw |q 31717/1
|only if havequest(31717)
step
goto 57.5,44.0
.talk 58508
.' Challnge him to a duel!
.' Defeat Big Bao |q 31718/1
|only if havequest(31718)
step
goto 58.5,44.7
.talk 58510
.' Challenge her to a duel!
.' Defeat Suchi the Sweet |q 31720/1
|only if havequest(31720)
step
goto 69.8,31.3
.kill Slitherscale Lizard-Lord##63536 |q 31194/1
|only if havequest(31194)
step
goto 68.1,31.2 |only if havequest(30155) or havequest(30158)
.from Slitherscale Ripper##58212+, Slitherscale Eggdrinker##63532+ |only if havequest(30155)
.' Kill 8 Slitherscale saurok |q 30155/1 |only if havequest(30155)
.click Slitherscale Weapons |only if havequest(30158)
.get 5 Slitherscale Harpoon##79025 |q 30158/1 |only if havequest(30158)
.click Serpent Egg |only if havequest(30159)
.get 8 Serpent Eggs |q 30159/1 |only if havequest(30159)
step
goto 64.6,33.3
.from Saltback Turtle##58218+, Saltback Yearling##58219+
.collect 15 Saltback Meat Scrap##79028 |n
.' Use the meat scraps to make a Saltback meat |use Saltback Meat Scrap##79028
.collect 3 Saltback Meat##79027 |n
.' Use the meat to feed your Hatchling |use Saltback Meat##79027 |q 30156/1
step
goto 57.2,45.2
.' Use the Bouncy Ball in your bags. |use Bouncy Ball##79043
.' Catch the Bouncy Ball whenever your Hatchling tosses it up, this will be every second throw.
.' Catch the Ball 8 times. |q 30151/1
|only if havequest(30151)
step
goto 55.1,46.5
.click Hatchling Poop##9572 |tip It is all around this area.
.get 5 Tiny Bags of Poop |q 31704/1
|only if havequest(31704)
step
goto 55.1,46.5
.click Hatchling Poop##9572 |tip It is all around this area.
.get 5 Big Bags of Poop |q 31716/1
|only if havequest(31716)
step
goto 57.5,45.4
'Talk to Your Hatchling |tip Your Hatchling is whichever color egg you chose in the prequests.
|modelnpc Your Hatchling##58416
|modelnpc Your Hatchling##58213
..turnin 31704
|only if havequest(31704)
step
goto 57.5,45.4
'Talk to Your Hatchling |tip Your Hatchling is whichever color egg you chose in the prequests.
|modelnpc Your Hatchling##58416
|modelnpc Your Hatchling##58213
..turnin 31716
|only if havequest(31716)
step
goto 62.7,27.4
.kill Shadowfae Madcap##65613 |q 31703/1
|only if havequest(31703)
step
goto 64.7,25.7
.kill Windward Huntress##63538 |q 31701/1
|only if havequest(31701)
step
goto 63.8,22.3
.kill Windward Saber## |q 31702/1
|only if havequest(31702)
step
goto 62.8,24.7
.from Windward Tiger##63537 |only if havequest(30154)
.get 5 Tiger Flank##85282 |q 30154/1 |only if havequest(30154)
.kill 7 Shadowfae Trickster |q 31699/1 |only if havequest(31699)
.from Windward Alpha+, Windward Tiger##63537+ |only if havequest(31698)
.' Kill 8 Windward Tigers. |q 31698/1 |only if havequest(31698)
.click Stolen Boots |only if havequest(31700)
.get 14 Stolen Boots##89054 |q 31700/1 |only if havequest(31700)
step
'Enter the cave here. |goto 58.0,31.7 <5 |c
|only if havequest(31708) or havequest(31710) or havequest(31706) or havequest(31711) or havequest(31709) or havequest(31707)
step
goto 62.7,25.7
.' Use the Sha Attunement Device next to this Disturbance |use Sha Attunement Device##88966
.' Measure the Northeastern Sha Disturbance |q 31709/2
|only if havequest(31709)
step
goto 37.0,31.9
.' Use the Sha Attunement Device next to this Disturbance |use Sha Attunement Device##88966
.' Measure the Northwestern Sha Disturbance |q 31709/1
|only if havequest(31709)
step
goto 35.7,40.2
.kill Seed of Doubt |q 31711/1
|only if havequest(31711)
step
 goto 61.0,74.1
.' Use the Sha Attunement Device next to this Disturbance |use Sha Attunement Device##88966
.' Measure the Southern Sha Disturbance |q 31709/3
|only if havequest(31709)
step
.' Kill Widowspawn |only if havequest(31710)
.get 100 Tiny Spider Eye's |q 31710/1 |only if havequest(31710)
.kill 7 Weeping Widow |q 31706/1 |only if havequest(31706)
.click Serpent's Scale |only if havequest(31708)
.get 25 Serpent's Scale##88895 |q 31708/1 |only if havequest(31708)
.from Widow's Web##65634+ |only if havequest(31707)
.' Free 5 Sri-La Villagers |q 31707/1 |only if havequest(31707)
step
'Leave the cave. |goto 58.0,31.7 <5 |c
|only if havequest(31708) or havequest(31710) or havequest(31706) or havequest(31711) or havequest(31709) or havequest(31707)
step
'Use your First Aid skill to create 8 Windwood Banadages of Heavy Windwool Bandages, or buy them off of the auction house.
.create 8 Windwool Bandage##102697,First Aid,8 total |n
.collect 8 Windwool Bandage##72985 |or
.' or
.create 8 Heavy Windwool Bandage##102699,First Aid,8 total |n
.collect 8 Heavy Windwool Bandage##72986 |or
|only if havequest(30148)
step
goto 63.9,31.1
.' Use your Windwool Bandages on Injured Hatchlings |use Windwool Bandage##72985
.' or
.' Use your Heavy Windwool Bandages on Injured Hatclings |use Heavy Windwool Bandage##72986
.' Bandage 8 Injured Hatchlings |q 30148/1
|modelnpc Injured Hatchling##58416
|only if havequest(30148)
step
goto 57.0,43.0
.' Equip your Fishing Pole |use Fishing Pole##6256
.' Use your Fishing skill to fish in the water here |cast Fishing##7620
.get 10 Sugar Minnow##79046 |q 30146/1
|only if havequest(30146)
step
'Use your Cooking skill to create 5 Fish Cakes, or buy them off of the auction house.
.create 5 Fish Cake##104297,Cooking,5 total |q 30149/1
|only if havequest(30149)
step
goto 57.6,44.9
.talk 58564 |tip You will only have a couple of these quests.
..turnin 31194
..turnin 31701
..turnin 31702
..turnin 30155
..turnin 30158
..turnin 31703
..turnin 30154
..turnin 31699
..turnin 31698
..turnin 31700
..turnin 31706
..turnin 31711
..turnin 31707
..turnin 30152
..turnin 31721
..turnin 31717
..turnin 31720 
..turnin 31718
..turnin 30159
..turnin 31709
step
goto 57.5,45.3
'Talk to Your Hatchling |tip Your Hatchling is whichever color egg you chose in the prequests.
|modelnpc Your Hatchling##58416
|modelnpc Your Hatchling##58213
..turnin 31710 |only if havequest(31710)
step
goto 57.5,45.3
'Talk to Your Hatchling |tip Your Hatchling is whichever color egg you chose in the prequests.
|modelnpc Your Hatchling##58416
|modelnpc Your Hatchling##58213
|only if not completedq(30143)
step
goto 57.5,45.3
'Talk to Your Hatchling |tip Your Hatchling is whichever color egg you chose in the prequests.
|modelnpc Your Hatchling##58416
|modelnpc Your Hatchling##58213
|only if completedq(30143)
step
'Open your world map, find dig sites in Pandaria, then go to them |tip They look like small shovel icons on your world map that spawn in random places.  Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
.' Use your Survey ability inside the dig site area |cast Survey##80451
.' A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts |tip Each dig site has 6 artifacts you can find.
.' Click the Archaeology Fragments that spawn on the ground
.get 6 Serpentrider Relic## |q 30147/1
|only if havequest(30147)
step
goto 57.5,44.7
.talk 58413
..turnin 30148 |only if skill("First Aid")>=525
..turnin 30149 |only if skill("Cooking")>=525
..turnin 30147 |daily |only if skill("Archaeology")>=525
..turnin 30146 |daily |only if skill("Fishing")>=525
step
goto 57.6,44.9
.talk 58564
..turnin 30151
step
goto 57.6,44.9
.talk 58564
..accept 31705 |daily
|only if completedq(30151)
step
goto 57.0,41.2
.' Use the Golden Honey in your bags |use Golden Honey##89113
.kill Orchard Needler |q 31705/1
|only if havequest(31705)
step
goto 57.6,44.9
.talk 58564
..turnin 31705
|next "exalted" |only if rep("Order of the Cloud Serpent")==Exalted
|next "revered" |only if rep("Order of the Cloud Serpent")==Revered
|next "end" |only if rep("Order of the Cloud Serpent")<=Revered
step
label revered
goto 57.6,44.9
.talk 58564
..accept 30143
step
goto 58.6,43.7
.talk 58420
.' Ask Instructor Windbalde how your serpent is doing.
.' Speak to Instructor Windblade |q 30143/1
step
goto 58.6,43.7
.talk 58420
..turnin 30143
..accept 30144
step
'The color of Cloud Serpent depends on your egg color choice when you unlocked the dailies for this faction.
.clicknpc Golden Cloud Serpent##58429
.clicknpc Azure Cloud Serpent##58441
.clicknpc Jade Cloud Serpent##58442
.' Ride your Cloud Serpent |invehicle |c 
|only if havequest(30144)
step
'Fly your Cloud Serpent through the rings made from clouds.
.' Fly through 6 Cloud Rings |q 30144/1
step
goto 58.6,43.7
.' Click the Leave Vehicle button |outvehicle |c
step
goto 58.6,43.7
.talk 58420
..turnin 30144
..accept 30145
step
'The color of Cloud Serpent depends on your egg color choice when you unlocked the dailies for this faction.
.clicknpc Golden Cloud Serpent##58429
.clicknpc Azure Cloud Serpent##58441
.clicknpc Jade Cloud Serpent##58442
.' Ride your Cloud Serpent |invehicle |c
|only if havequest(30145)
step
'Follow Instructor Windblade through the course, her mounts flies faster than yours so fly through some of the cloud rings to maintain speed with your guide. If you move too slowly or get too far away from the guide, the course will restart.
.' Finish the course |q 30145/1
step
goto 58.6,43.7
.talk 58420
..turnin 30145
..accept 30187
step
'The color of Cloud Serpent depends on your egg color choice when you unlocked the dailies for this faction.
.clicknpc Golden Cloud Serpent##58429
.clicknpc Azure Cloud Serpent##58441
.clicknpc Jade Cloud Serpent##58442
.' Ride your Cloud Serpent |invehicle |c
|only if havequest(30187)
step
path	strict; curved; loop
path	60.6,39.4	59.7,31.5	61.3,25.2
path	66.3,36.0	66.2,42.4	66.8,51.4
path	64.0,51.0	60.4,52.9	61.8,54.5
path	58.7,46.8	58.4,46.4
'Follow this path and collect the checked flags hanging off of the Checkpoint balloons. As you fly, gain speed by flying through cloud rings
.' Pass 10 Checkpoints |q 30187/1
step
goto 58.6,43.7
.talk 58420
..turnin 30187
|next "end"
step
label exalted
goto 57.6,45.0
.talk 58564
..accept 31811
step
'Watch the cinematic
.' Join the Order of the Cloud Serpent |q 31811/1
step
goto 57.6,45.0
.talk 58564
..turnin 31811
step
Proceeding to the next step |next end |only if default
Proceeding to Riding the Skies Quest |next exalted |only if rep('Order of the Cloud Serpent')==Exalted
step
label	exalted
goto 57.7,44.9
.talk 58564
..accept 31810
step
goto 57.7,44.9
.talk 58564
..turnin 31810
step
label end
'This the end of our daily guide.
.' Click here to go back to the beginning |confirm |next start
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Pandaria (85 - 90)\\The Shado-Pan Dailies",[[
description This guide will take you through the Shado-Pan dailies
startlevel 90
step
#include "Shado_Pan_Daily_H"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Pandaria (85 - 90)\\The Tillers Dailies",[[
description This guide will take you through The Tillers dailies
startlevel 90
step
'Proceeding to the Tiller's Dailies  |next "dailies" |condition completedq(31945) |only if completedq(31945)
'Proceeding to the Tiller's Prequests |next |condition not completedq(31945) |only if not completedq(31945)
step
goto Vale of Eternal Blossoms 60.2,22.9
.talk 64011
..accept 31374
step
goto Valley of the Four Winds 52.0,48.0
.talk 58721
..turnin 31374
..accept 30252
step
goto 51.8,48.8
.click Unbudging Rock
.' Clear 8 Unbudging Rocks |q 30252/1
step
goto 52.8,47.9
.talk 58646
..turnin 30252
step
goto 52.3,48.8
.talk 58646
..accept 30535
step
goto 52.9,52.2
.talk 58718
.' Tell him you're there to pick up seeds.
.' Get a Packet of Green Cabbage Seeds |q 30535/1
step
goto 52.3,48.8
.talk 58646
..turnin 30535
..accept 30254
step
goto 52.0,48.3
.clicknpc Untilled Soil##59985+
.' Till 2 patches of Soil. |q 30254/1
.' Use the EZ-Gro Green Cabbage Seeds in your bags on the Tilled Soil. |use EZ-Gro Green Cabbage Seeds##80302
.' Plant seeds in 2 patches of Tilled Soil. |q 30254/2
|modelnpc Tilled Soil##58563
step
goto 52.3,48.8
.talk 58646
..turnin 30254
..accept 30255
step
goto 52.0,48.3
.' Use the Rusty Watering Can on the Parched EZ-Gro Green Cabbage |use Rusty Watering Can##79104
.' Water 2 parched Ez-Gro Green Cabbage |q 30255/1
|modelnpc Parched EZ-Gro Green Cabbage##59987
step
goto 52.3,48.8
.talk 58646
..turnin 30255
..accept 30256
step
goto 52.0,48.3
.clicknpc Ripe EZ-Gro Green Cabbage##59833
.get 2 EZ-Gro Green Cabbage |q 30256/1
step
goto 52.3,48.8
.talk 58646
..turnin 30256
..accept 30257
step
goto 52.8,48.0
.click Dark Soil
.get Marsh Lily |q 30257/1
step
goto 53.1,51.8
.talk 58706
..turnin 30257 
..accept 31945
step
goto 52.9,52.2
.talk 58718
.buy 1 Scallion Seeds##80591 |q 31945
step
goto 52.0,48.4
.clicknpc Untilled Soil##58562
.' Use your Scallion Seeds on the Tilled Soil |use Scallion Seeds##80591
.' Plant Scallion Seeds |q 31945/1
|modelnpc Tilled Soil##58563
step
label info
'Click here for information on Bursting Crops |next "bursting" |confirm
'Click here for information on Parched Crops |next "parched" |confirm
'Click here for information on Infested Crops |next "infested" |confirm
'Click here for information on Wiggling Crops |next "wiggling" |confirm
'Click here for information on Alluring Crops |next "alluring" |confirm
'Click here for information on Smothered Crops |next "smothered" |confirm
'Click here for information on Wild Crops |next "wild" |confirm
'Click here for information on Runty Crops |next "runty" |confirm
'Click here for information on Tangled Crops |next "tangled" |confirm
step
label bursting
'Unless you got a Bursting Scallion immediately after planting your Scallions, you will have to wait a full day until you can pick your crops.
.' Click here if you are ready to harvest your crops. |confirm
.' Click here to start doing dailies. |next "dailies" |confirm
step
goto 52.0,48.4
.clicknpc Bursting Scallions##63160 
.clicknpc Ripe Scallions##63165
.' Harvest Ripe Scallions |q 31945/2
.get 5 Scallion##74843 |q 31945/3
|next "exit"
step
label runty
goto 52.0,48.4
.clicknpc Runty Scallions##63166
.' Press your Space Bar and jump. 
.' Click here to return to the information page. |next "info" |confirm
.' Click here when you are have tilled your crops. |next "bursting" |confirm
step
label wiggling
goto 52.0,48.4
.clicknpc Wiggling Scallions##63169
.from Voracious Virmen##60039
.' Click here to return to the information page. |next "info" |confirm
.' Click here when you are have tilled your crops. |next "bursting" |confirm
step
label infested
goto 52.2,48.3
.click Vintage Bug Sprayer
.collect Vintage Bug Sprayer##80513 |n
.' Use your Vintage Bug Sprayer on the Infested Scallions |use Vintage Bug Sprayer##80513
|modelnpc Infested Scallions##63162
.' Click here to return to the information page. |next "info" |confirm
.' Click here when you are have tilled your crops. |next "bursting" |confirm
step
label alluring
goto 52.2,48.3
.clicknpc Alluring Scallions##63159
.from Swooping Plainshawk##60072
.' Click here to return to the information page. |next "info" |confirm
.' Click here when you are have tilled your crops. |next "bursting" |confirm
step
label wild
goto 52.0,48.4
.clicknpc Wild Scallions##63170	
.' Ride the Scallion |invehicle |c 
step
'Spam the Flex ability on your new hotbar, when the plant tries to cast Vine Slam, interrupt it with your Gnaw ability.
.' Build 50 stacks on Dominance. |outvehicle |c
step
.' Click here to return to the information page. |next "info" |confirm
.' Click here when you are have tilled your crops. |next "bursting" |confirm
step
label tangled
goto 52.0,48.4 |n
.clicknpc Tangled Scallions##63168
.' Run to [51.7,48.9]
'|goto 51.7,48.9 <5 |c
step
.' Click here to return to the information page. |next "info" |confirm
.' Click here when you are have tilled your crops. |next "bursting" |confirm
step
label parched
goto 52.0,48.4
.' Use the Rusty Watering Can on the Parched Scallions |use Rusty Watering Can##79104
.' Click here to return to the information page. |next "info" |confirm
.' Click here when you are have tilled your crops. |next "bursting" |confirm
|modelnpc Parched Scallions##63163
step
label smothered
goto 52.0,48.4
.clicknpc Encroaching Weed##60185
.' Ride the Weed |invehicle |c
step
'Spam the Pull ability on your new hotbar. 
.' Pull the Weed |outvehicle |c
step
.' Click here to return to the information page. |next "info" |confirm
.' Click here when you are have tilled your crops. |next "bursting" |confirm
|modelnpc Smothered Scallions##63167
step
label exit
goto 53.1,51.8
.talk 58706
..turnin 31945
step
label dailies
goto Valley of the Four Winds 51.9,48.3
'Start each day out by harvesting the crops from the previous day.
|confirm
step
goto 52.3,48.8
.talk 58646 |tip He will only have 2 quests a day.
..accept 30336 |daily |or 2
..accept 31670 |daily |or 2
..accept 30334 |daily |or 2
..accept 31669 |daily |or 2
..accept 31942 |daily |or 2
..accept 31672 |daily |or 2
..accept 30335 |daily |or 2
..accept 31673 |daily |or 2
..accept 31941 |or 2
..accept 30333 |or 2
..accept 31675 |or 2
..accept 31674 |or 2
..accept 31943 |or 2
..accept 31671 |or 2
..accept 30337 |or 2
step
goto 52.7,50.5
.talk 64464 |tip He will only have 1 quest a day.
..accept 30475 |daily |or
..accept 30471 |daily |or
..accept 30477 |daily |or
..accept 30478 |daily |or
..accept 30472 |daily |or
..accept 30470 |daily |or
..accept 30474 |daily |or
..accept 30476 |daily |or
..accept 30473 |daily |or
 ..accept 30479 |daily |or
step
goto 53.1,51.7
.talk 58647
..accept 30327 |daily
.'_
.' Click here if Ella is not in town |confirm
step
goto 53.0,51.7
.talk 57402
..accept 30319
.'_
.' Click here if Haohan is not in town |confirm
step
goto 53.1,51.7
.talk 58761
..accept 30323
.'_
.' Click here if Tina is not in town |confirm
step
goto 53.1,52.1
.talk 58709
..accept 30324 |daily
.'_
.' Click here if Chee-Chee is not in town |confirm
step
goto 52.8,51.8
.talk 58705
..accept 30326 |daily
.'_
.' Click here if Fish Felreed is not in town |confirm
step
goto 52.9,51.7
.talk 57298
..accept 30317 |daily
.'_
.' Click here if Farmer Fung is not in town |confirm
step
goto 53.1,52.1
.talk 58708
..accept 30325
.'_
.' Click here if Sho is not in town |confirm
step
goto 53.6,52.5
.talk 58710
..accept 30321 |daily
.'_
.' Click here if Jogu has no available quests. |confirm
step
goto 53.0,51.8
.talk 58707
..accept 30318
.'_
.' Click here if Old Hillpaw is not in town. |confirm
step
goto 53.2,51.8
.talk 58706
..accept 30322
.'_
.' If this quest is unavailable click here. |confirm
step
goto 55.1,50.3
.talk 59582
.' Tell her you are here on behalf of Gina Mudclaw.
.' Innkeeper Lei Lan's Payment |q 30322/3
|only if havequest(30322)
step
goto 55.6,52.1
.talk 59585
.' Tell him you are here on behalf of Gina Mudclaw.
.' Lolo Lio's Payment |q 30322/4
|only if havequest(30322)
step
goto 56.1,49.6
.talk 59583
.' Tell him you are here on behalf of Gina Mudclaw.
.' Trader Jambeezi's Payment |q 30322/2
|only if havequest(30322)
step
goto 56.7,47.1
.talk 59581
.' Tell him you are here on behalf of Gina Mudclaw.
.' Spicemaster Jin Jao's Payment |q 30322/1
|only if havequest(30322)
step
goto 52.9,52.1
.talk 58718
.buy 1 Juicycrunch Carrot Seeds##80590
|only if havequest(31670)
step
goto 52.9,52.1
.talk 58718
.buy 1 Green Cabbage Seeds##79102
|only if havequest(31669)
step
goto 52.9,52.1
.talk 58718
.buy 1 Witchberry Seeds##89326
|only if havequest(31943)
step
goto 52.9,52.1
.talk 58718
.buy 1 Scallion Seeds##80591
|only if havequest(31671)
step
goto 52.9,52.1
.talk 58718
.buy 1 White Turnip Seeds##80595
|only if havequest(31675)
step
goto 52.9,52.1
.talk 58718
.buy 1 Pink Turnip Seeds##80594
|only if havequest(31674)
step
goto 52.9,52.1
.talk 58718
.buy 1 Jade Squash Seeds##89328
|only if havequest(31941)
step
goto 52.9,52.1
.talk 58718
.buy 1 Striped Melon Seeds##89329
|only if havequest(31942)
step
goto 52.9,52.1
.talk 58718
.buy 1 Mogu Pumpkin Seeds##80592
|only if havequest(31672)
step
goto 52.9,52.1
.talk 58718
.buy 1 Red Blossom Leek Seeds##80593
|only if havequest(31673)
step
goto 53.8,50.9
.talk 60231
.' Tell her that you'd like to borrow one of Farmer Fung's kites.
.' Ride a kite. |invehicle |c
|only if havequest(30317)
step
.' Use your Water Buckest ability on the Dusty Spots below you. |tip They are outlined by a yellow circle.
.' Water 35 Dusty Spots |q 30317/1
|only if havequest(30317)
step
goto 52.0,48.4
.clicknpc Untilled Soil##58562
.' Use your Scallion Seeds on the Tilled Soil |use Scallion Seeds##80591
.' Plant Scallion Seeds |q 31671/1
|modelnpc Tilled Soil##58563
|only if havequest(31671)
step
goto 52.0,48.4
.clicknpc Untilled Soil##58562
.' Use your Juicycrunch Carrot Seed on the Tilled Soil |use Juicycrunch Carrot Seeds##80590
.' Plant 1 Juicycrunch Carrot Seed |q 31670/1
|modelnpc Tilled Soil##58563
|only if havequest(31670)
step
goto 52.0,48.4
.clicknpc Untilled Soil##58562
.' Use your Witchberry Seeds on the Tilled Soil |use Witchberry Seeds##89326
.' Plant Witchberry Seeds |q 31943/1
|modelnpc Tilled Soil##58563+
|only if havequest(31943)
step
goto 52.0,48.4
.clicknpc Untilled Soil##58562
.' Use your Mogu Pumpkin Seeds on the Tilled Soil |use Mogu Pumpkin Seeds##80592
.' Plant Mogu Pumpkin Seeds |q 31672/1
|modelnpc Tilled Soil##58563+
|only if havequest(31672)
step
goto 52.0,48.4
.clicknpc Untilled Soil##58562
.' Use your Jade Squash Seeds on the Tilled Soil |use Jade Squash Seeds##89328
.' Plant Jade Squash Seeds |q 31941/1
|modelnpc Tilled Soil##58563+
|only if havequest(31941)
step
goto 52.0,48.4
.clicknpc Untilled Soil##58562
.' Use your White Turnip Seeds on the Tilled Soil |use White Turnip Seeds##80595
.' Plant White Turnip Seeds |q 31675/1
|modelnpc Tilled Soil##58563+
|only if havequest(31675)
step
goto 52.0,48.4
.clicknpc Untilled Soil##58562
.' Use your Pink Turnip Seeds on the Tilled Soil |use Pink Turnip Seeds##80594
.' Plant Pink Turnip Seeds |q 31674/1
|modelnpc Tilled Soil##58563+
|only if havequest(31674)
step
goto 52.0,48.4
.clicknpc Untilled Soil##58562
.' Use your Green Cabbage Seeds on the Tilled Soil |use Green Cabbage Seeds##79102
.' Plant Green Cabbage Seeds |q 31669/1
|modelnpc Tilled Soil##58563+
|only if havequest(31669)
step
goto 52.0,48.4
.clicknpc Untilled Soil##58562
.' Use your Striped Melon Seeds on the Tilled Soil |use Striped Melon Seeds##89329
.' Plant Striped Melon Seeds |q 31942/1
|modelnpc Tilled Soil##58563+
|only if havequest(31942)
step
goto 52.0,48.4
.clicknpc Untilled Soil##58562
.' Use your Red Blossom Leek Seeds on the Tilled Soil |use Red Blossom Leek Seeds##80593
.' Plant Red Blossom Leek Seeds |q 31673/1
|modelnpc Tilled Soil##58563
|only if havequest(31673)
step
goto 45.9,48.5
.click Goldenfire Orchid##10921
.get Goldenfire Orchid |q 30479/1
.' You can also find this here: [41.6,42.8]
.' or here: [37.5,37.3]
|only if havequest(30479)
step
goto 42.4,50.0
.talk 59533
..accept 30526
|only if repval('The Tillers','Revered')>=13000
step
goto 38.5,51.7
.talk 57385
.' Ask him, "What Weeds?"
.' Get the Weed War buff. |havebuff Weed War
|only if havequest(30321)
step
.clicknpc Ugly Weed##57306
.clicknpc Nasty Weed##57308
.click Weed-B-Gone Gas Bomb |tip Use the new button available to you to clear a lot of weeds at once
.' Pull 100 Weeds |q 30321/1
|only if havequest(30321)
step
goto 31.3,53.2
.clicknpc Hillpaw's Chicken##58918 |tip Most of these chickens are disguised animals. When you pick one up click the button that appears on your screen.
.' You can deliver lost hens to the chicken coop here [30.4,52.5]
.get Old Hillpaw's Prize Chicken##80223 |q 30318/1
|only if havequest(30318)
step
goto 37.4,37.3
.from Monstrous Plainshawk##59641
.collect 1 Bloody Plainshawk Leg##80232
|only if havequest(30475)
step
goto 39.6,45.3
.talk 59532
.' Mook-mooks?
.' Get the Pest Problems buff. |havebuff Pest Problems
|only if havequest(30319)
step
goto 39.6,45.3
.clicknpc Black-Nose Marmot##59530
.' Stomp 25 Black-Nose Marmot |q 30319/1
|only if havequest(30319)
step
goto 30.2,46.0
.from Teeku##59130, Jim-Jim##59128, Jokka-Jokka##59126, Kon-Kon##59127
.' Kill the Kunzen-Hunter Chief. |q 30336/1
|only if havequest(30336)
step
goto 29.2,38.2
.from Skyrange Mushan##64309+
.get 20 Tasty T-Bone |q 30526/1
|only if havequest(30526)
step
goto 32.0,32.1
.click Kunzen Rope
.' Burn 6 ropes |q 30327/1
|only if havequest(30327)
step
goto 29.7,34.5
.click Yu-Ping Soup Cauldron
.get Yu-Ping Soup##79870 |q 30472/1
|only if havequest(30472)
step
goto 29.7,34.5
.kill 1 Kunzen Ritualist##59123 |q 30325/3
.click Blazing Ember##5746
.' Kick 4 Blazing Ember |q 30325/2
.click Kunzen Ritual Candle##11320
.' Throw 8 Kunzen Ritual Candles |q 30325/1
|only if havequest(30325)
step
goto 31.6,28.7
.from Buk-Buk##59133+, Bimba##59135+, Yammo##59134+, Rit-Rit##59132+
.get 1 Kunzen Legend-Book##79866 |q 30326/1
|only if havequest(30326)
step
goto 33.6,23.9
.click Authentic Valley Stir Fry
.get Authentic Valley Stir Fry |q 30471/1
|only if havequest(30471)
step
goto 34.0,24.1
.click Yak Statuette
.get Yak Statuette##79828 |q 30473/1
|only if havequest(30473)
step
goto 32.7,30.6
'Use the Barrel of Fireworks in your bags. |use Barrel of Fireworks##79885
.' Stolen tools exploded |q 30337/2
|only if havequest(30337)
step
goto 30.4,28.1
'Use the Barrel of Fireworks in your bags. |use Barrel of Fireworks##79885
.' Stolen weapons exploded |q 30337/1
|only if havequest(30337)
step
goto 32.1,25.9
'Use the Barrel of Fireworks in your bags. |use Barrel of Fireworks##79885
.' Stolen beer exploded |q 30337/3
|only if havequest(30337)
step
goto 35.0,22.0
'Use the Barrel of Fireworks in your bags. |use Barrel of Fireworks##79885
.' Stolen grain exploded |q 30337/4
|only if havequest(30337)
step
goto 34.2,23.5
.from Kunzen Rockflinger##59120+, Kunzen Collector##59124+, Kunzen Ravager##59119+, Kunzen Hunter##59121+
.' Kill 12 Kunzen hozen |q 30335/1
|only if havequest(30335)
step
goto 34.2,23.5
.click Stolen Vegetable |only if havequest(30334)
.get 16 Stolen Vegetable##79824 |q 30334/1 |only if havequest(30334)
.from Kunzen Rockflinger##59120+, Kunzen Collector##59124+, Kunzen Ravager##59119+ |only if havequest(30324)
.' Kill 8 Kunzen tribe members. |q 30324/1 |only if havequest(30324)
step
goto 44.1,29.1
.from Enormous Cattail Grouper##59639
.get Enormous Cattail Grouper Tooth |q 30477/1
|only if havequest(30477)
step
'Enter this warren. |goto 46.9,21.1 <5 |c
|only if havequest(30333)
step
goto 48.7,18.7
.kill Springtail Warren-Mother##59516 |q 30333/1
|only if havequest(30333)
step
'Leave the warren. |goto 46.9,21.1 <5 |c
|only if havequest(30333)
step
'Enter this warren. |goto 44.0,22.3 <5 |c
|only if havequest(30470)
step
goto 44.7,19.6
.from Springtail Littlewhisker##59515+, Springtail Trapper##59513+, Springtail Burrower##59514+
.get Stolen Circlet##80138 |q 30323/1
.get Ransacked Ring##80137 |q 30323/2
.get Buglarized Bracelet##80139 |q 30323/3
|only if havequest(30323)
step
'Leave the warren. |goto 44.0,22.3 <5 |c
|only if havequest(30470)
step
'This item could be in either warren or the patch of land seperating the two entrances.
.click Chrysoberyl Outcropping##7456
.get Uncut Chrysoberyl |q 30470/1
|only if havequest(30470)
step
goto 44.2,28.8
.click Freshwater Oyster
.get Blue Freshwater Pearl## |q 30476/1
|only if havequest(30476)
step
goto 42.4,50.0
.talk 59533
..turnin 30526
|only if havequest(30526)
step
goto 52.6,47.8
.click Yoon's Apples
.collect 8 Yoon's Apple##80234
|only if havequest(30478)
step
goto 52.8,47.9
.click Yoon's Craneberries
.collect 50 Yoon's Craneberry##80235
|only if havequest(30478)
step
goto 53.2,52.2
.talk 58717
.' Tell him you've got all this fruit here.
.get Apple-Berry Hooch |q 30478/1
|only if havequest(30478)
step
goto 53.0,51.3
.talk 58712
.' Ask him if he could grill your plainshawk leg.
.get Grilled Plainshawk Leg##80233 |q 30475/1
|only if havequest(30475)
step
goto 52.3,48.8
.talk 58646
..turnin 30336
..turnin 31670
..turnin 30334
..turnin 31669
..turnin 31942
..turnin 31672
..turnin 30335
..turnin 31673
..turnin 31941
..turnin 30333
..turnin 31675
..turnin 31674
..turnin 31943
..turnin 31671
..turnin 30337
step
goto 52.9,51.7
.talk 57298
..turnin 30317
..turnin 30475 |only if havequest(30475)
step
goto 52.8,51.8
.talk 58705
..turnin 30326
..turnin 30473 |only if havequest(30473)
step
goto  53.0,51.7
.talk 58647
..turnin 30327
step
goto 53.1,52.1
.talk 58708
..turnin 30325
..turnin 30472 |only if havequest(30472)
step
goto 53.2,51.8
.talk 58706
..turnin 30322
..turnin 30479
step
goto 53.1,51.9
.talk 58707
..turnin 30318
..turnin 30476 |only if havequest(30476)
step
goto 53.1,51.7
.talk 58761
..turnin 30470 |only if havequest(30470)
..turnin 30323
step
goto 53.0,51.7
.talk 57402
..turnin 30319
..turnin 30477 |only if havequest(30477)
step
goto 53.6,52.5
.talk 58710
..turnin 30321
..turnin 30478 |only if havequest(30478)
step
goto 53.1,52.1
.talk 58709
..turnin 30324
..turnin 30471 |only if havequest(30471)
|next "honored" |only if rep('The Tillers')==Honored
|next "revered" |only if rep('The Tillers')==Revered
|next "exalted" |only if rep('The Tillers')==Exalted
|next "end" |only if rep('The Tillers')<=Friendly
step
label honored
goto 52.3,48.8
.talk 58646
..accept 30260
|next "mungmung" |only if rep('The Tillers','Honered')>=5800
|next "revered" |only if completedq(31936)
|next |only if default
step
goto 38.6,51.7
.talk 57385
..turnin 30260
..accept 30516
step
goto 36.5,51.1
.click Spideroot
.get 6 Spideroot |q 30516/1
step
goto 38.6,51.7
.talk 57385
..turnin 30516
step
goto 51.9,48.3
'When you arrive at Sunsong Ranch you will get a buff. After 15 minutes your ranch will be expanded. |tip You cannot buy your farm upgrade until the expansion is done. 
|confirm
step
goto 53.2,51.8
.talk 58706
.buy 1 "Jinyu Princess" Irrigation System##89812 |q 31936
step
'Click the "Jinyu Princess" Irrigation System in your bags. |use "Jinyu Princess" Irrigation System##89812
..accept 31936
step
goto 52.3,48.8
.talk 58646
..turnin 31936
|next "end"
step
label revered
goto 52.3,48.8
.talk 58646
..accept 30523
|next "fung" |only if rep('The Tillers','Revered')>=4200
|next "mungmung" |only if completedq(31937)
step
goto 41.7,30.0
.talk 58705
..turnin 30523
..accept 30524
step
goto 42.8,29.1
.click Boat Planks
.get 100 Waxed Plank##80136 |q 30524/1
step
goto 41.7,30.0
.talk 58705
..turnin 30524
step
goto 51.9,48.3
'When you arrive at Sunsong Ranch you will get a buff. After 15 minutes your ranch will be expanded. |tip You cannot buy your farm upgrade until the expansion is done. 
|confirm
step
goto 53.2,51.8
.talk 58706
.buy 1 "Thunder King" Pest Repellers##89813 |q 31937
step
'Click the "Thunder King" Pest Repellers in your bags. |use "Thunder King" Pest Repellers##89813
..accept 31937
step
goto 52.3,48.8
.talk 58646
..turnin 31937
|next "end"
step
label mungmung
goto 52.3,48.8
.talk 58646
..accept 30258
|next "fung" |only if completedq(31946)
step
goto 44.2,34.3
.talk 57401
..turnin 30258
..accept 30259
step
goto 42.7,38.2
.click Partially Chewed Carrot
.get 10 Partially Chewed Carrot##80116 |q 30259/1
step
goto 44.2,34.3
.talk 57401
..turnin 30259
..accept 31946
step
goto 52.9,52.1
.talk 58718
.buy 2 Juicycrunch Carrot Seeds##80590 |q 31946
step
goto 52.0,48.4
.clicknpc Untilled Soil##58562
.' Use your Juicycrunch Carrot Seeds on the Tilled Soil |use Juicycrunch Carrot Seeds##80590
.' Plant 2 Juicycrunch Carrot Seeds |q 31946/1
|modelnpc Tilled Soil##58563
step
'Wait a day for the carrots to grow and then harvest them.
.' Harvest 2 Ripe Juicycrunch Carrots |q 31946/2
.get 10 Juicycrunch Carrot##74841 |q 31946/3
step
goto 44.2,34.3
.talk 57401
..turnin 31946
|next "end"
step
label fung
goto 52.3,48.8
.talk 58646
..accept 30517
|next "nana" |only if rep('The Tillers','Revered')>=8400
.' Click here if this quest is not available yet |confirm |next end
step
goto 48.3,33.9
.talk 57298
..turnin 30517
..accept 30518
step
goto 51.0,36.7
.clicknpc Escaped Shagskin##59491
.' Ride 5 Escaped Shagskin to [50.4,34.7] |q 30518/1
step
goto 48.3,33.9
.talk 57298
..turnin 30518
..accept 31947
step
goto 52.9,52.1
.talk 58718
.buy 3 Green Cabbage Seeds##79102 |q 31947
step
goto 52.0,48.4
.clicknpc Untilled Soil##58562
.' Use your Green Cabbage Seeds on the Tilled Soil |use Green Cabbage Seeds##79102
.' Plant 3 Green Cabbage Seeds |q 31947/1
|modelnpc Tilled Soil##58563
step
'Wait a day for the Green Cabbage to grow and then harvest them.
.' Harvest 3 Green Cabbage |q 31947/2
.get 15 Green Cabbage##74840 |q 31947/3
step
goto 48.3,33.9
.talk 57298
..turnin 31947
step
label nana
goto 52.2,48.8
.talk 58646
..accept 30519
|next "haohan" |only if rep('The Tillers','Revered')>=16800
.' Click here if this quest is not available yet |confirm |next end
step
goto 54.7,47.0
.talk 64597
..turnin 30519
..accept 31948
step
goto 56.7,21.7
.from Thousand-Year Guardian##66850+
.' You may have to kill the Guardian first, then collect the water
'Use the Empty Pitcher while standing under the waterfall. |use Empty Pitcher##89902
.' Thousand-Year Water |q 31948/1
step
goto 54.7,47.0
.talk 64597
..turnin 31948
..accept 31949
step
goto 52.9,52.1
.talk 58718
.buy 3 Witchberry Seeds##89326 |q 31949
step
goto 52.0,48.4
.clicknpc Untilled Soil##58562
.' Use your Witchberry Seeds on the Tilled Soil |use Witchberry Seeds##89326
.' Plant 3 Witchberry Seeds |q 31949/1
|modelnpc Tilled Soil##58563
|only if havequest(31949)
step
'Wait a day for the Witchberries to grow and then harvest them.
.' Harvest 3 Witchberries |q 31949/2
.get 15 Witchberries##74846 |q 31949/3	
step
goto 54.7,47.0
.talk 64597
..turnin 31949
step
label haohan
goto 52.2,48.8
.talk 58646
..accept 30521
.' Click here if this quest is not available yet |confirm |next end
step
goto 44.6,34.1
.talk 57402
..turnin 30521
..accept 30522
step
goto 39.4,43.6
.clicknpc Suspicious Footprint##52171
.' Investigate 8 Suspicious Footprints. |q 30522/1 |tip When you click the eighth footprint a hozen will attack you.
step
goto 52.2,48.8
.talk 58646
..turnin 30522
..accept 30525
step
'Enter this warren |goto 47.0,20.9 <5 |c
step
.click Cave Lily
.get Cave Lily##80141 |q 30525/2
step
'Leave this warren |goto 47.0,20.9 <5 |c
step
'Enter this warren |goto 44.0,22.2 <5 |c
step
.click Bloodbloom##2313
.get Bloodbloom##80140 |q 30525/1
step
'Leave this warren |goto 44.0,22.2 <5 |c
step
goto 42.5,22.3
.click Violet Lichen##2314
.get Violet Lichen |q 30525/4
step
'Enter this warren |goto 39.4,20.4 <5 |c
step
.click Ghostcap##9844
.get Ghostcap##80142 |q 30525/3
step
'Leave this warren |goto 39.4,20.4 <5 |c
step
goto 52.2,48.8
.talk 58646
..turnin 30525
..accept 30527
step
goto 52.9,52.1
.talk 58718
.buy 4 Striped Melon Seeds##89329 |q 30527
step
goto 52.0,48.4
.clicknpc Untilled Soil##58562
.' Use your Striped Melon Seeds on the Tilled Soil |use Striped Melon Seeds##89329
.' Plant 4 Striped Melon Seeds |q 30527/1
|modelnpc Tilled Soil##58563
step
'Wait a day for the Striped Melons to grow and then harvest them.
.' Harvest 4 Striped Melons |q 30527/2
.get 20 Striped Melon##74848 |q 30527/3	
step
goto 52.2,48.8
.talk 58646
..turnin 30527
..accept 30528
step
'Enter the cave here |goto 33.1,20.2 <5 |c
step
goto 32.4,20.6
.kill Chief Yip-Yip##59567 |q 30528/1
'Use the _Throw Melon_ button on your screen when he begins casting _Charging Up_. This will cause him to stop attacking and take increased damage for a few seconds.
step
goto 52.2,48.8
.talk 58646
..turnin 30528
step
goto 52.0,49.0
'After some talking, the Offering Bowl should light up for you to click.
.click Offering Bowl
|confirm
step
label exalted
goto 52.2,48.8
.talk 58646
..accept 30529
.' Click here if this quest is not available yet |confirm |next end
step
goto 44.6,34.1
.talk 57402
..turnin 30529
step
goto 51.9,48.3
'When you arrive at Sunsong Ranch you will get a buff. After 15 minutes your ranch will be expanded. |tip You cannot buy your farm upgrade until the expansion is done. 
|confirm
step
goto 53.2,51.8
.talk 58706
.buy 1 "Earth-Slasher" Master Plow##89814 |q 31938
step
'Click the "Earth-Slasher" Master Plow in your bags. |use "Earth-Slasher" Master Plow##89814
..accept 31938
step
goto 52.3,48.8
.talk 58646
..turnin 31938
step
goto 52.0,49.0
.click Tillers Shrine##11506
..accept 30534
step
goto 53.2,51.8
.talk 58706
.' Ask her: Gina, how'd you like to help us run the farm? |q 30534/1
step
goto 52.0,49.0
.click Tillers Shrine##11506
..turnin 30534
step
label end
'The last thing to do with The Tillers each day is to plant as many crops as your farm can hold. Each crop harvest will award reputation so do this every day.
.' Click here to go back to the beginning of the dailies section. |next "dailies" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Pandaria (85 - 90)\\The Golden Lotus Dailies",[[
description This guide will take you through The Golden Lotus dailies
startlevel 90
#include "Golden_Lotus"
step
label end
'You have reached the end of our guide.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Pandaria (85 - 90)\\The Klaxxi Dailies",[[
description This guide will take you through The Klaxxi dailies
startlevel 90
step
label	klaxxi start
goto Dread Wastes 55.0,35.9
.talk 62538
..accept 31231 |daily |or 2
..accept 31235 |daily |or 2
..accept 31109 |daily |or 2
..accept 31267 |daily |or 2
..accept 31111 |daily |or 2
..accept 31505 |daily |or 2
.'  
.' Click here if no quests are available today |confirm |only if not havequest(31109) and not havequest(31231) and not havequest(31235) and not havequest(31267) and not havequest(31111)
|confirm |only if havequest(31109) or havequest(31231) or havequest(31235) or havequest(31267) or havequest(31111)
step
goto 54.3,36.1
.talk 62180
..accept 31232 |daily |or 2
..accept 31233 |daily |or 2
..accept 31496 |daily |or 2
..accept 31270 |daily |or 2
..accept 31269 |daily |or 2
..accept 31507 |daily |or 2
.'_
|confirm
step
goto 54.3,35.9
.talk 65253
..accept 31271 |daily |or 2
..accept 31502 |daily |or 2
..accept 31503 |daily |or 2
..accept 31234 |daily |or 2
..accept 31508 |daily |or 2
..accept 31509 |daily |or 2
.'_
|confirm
|only if completedq(31606)
step
goto 54.3,35.8
.talk 63758
..accept 31238 |daily |or 2
..accept 31487 |daily |or 2
..accept 31494 |daily |or 2
..accept 31268 |daily |or 2
..accept 31024 |daily  |or 2
..accept 31808 |daily |or 2
..accept 31506 |daily |or 2
.'_
|confirm
step
goto 54.9,36.2
.talk 62151
..accept 31216 |daily
.'_
|confirm
|only if rep("The Klaxxi")>=Revered
step
goto 54.8,36.2
.talk 63785
..accept 31237 |daily |or
..accept 31510 |daily |or
..accept 31272 |daily |or
.'_
|confirm
|only if rep("The Klaxxi")>=Revered
//terrace of gurthan
step
goto 55.1,35.9
.talk 62538
.' Tell him:
.' <Please Fly me to the Terrace of Gurthan.> |invehicle
|only if havequest(31237)
step
 goto 67.9,24.3
 .' Kill creatures until you get the buff:
 .' Pheremone Tracking |havebuff Interface\Icons\Ability_Rogue_BloodyEye
 .' Locate and kill Eye's of the Empress. |tip Start looking for red mist on the groud first.
 .kill 6 Eye of the Emepress##63783+ |q 31237/1
 |only if havequest(31237)
step
goto 54.9,36.2
.talk 62151
.' Talk to Xaril and tell him:  |q 31216/1
.' <I am ready to fly, Xaril.> |invehicle
|only if havequest(31216)
step
'Use the _Venom Syrum_ to kill the small enemies. 
.' Use the _Paralyzing Syrum_ then immidiately the _Venom Syrum_ to kill the larger enemies.
.kill Speak to Xaril the Poisoned Mind |q 31216/1
.kill 200 Mantid |q 31216/2
.kill 3 Kunchong |q 31216/3
|only if havequest(31216)
step
'Click the Return to Klaxxl'vess button on your action bar |outvehicle
|only if havequest(31216)
step
goto 50.8,41.3
.clicknpc Kovok##63765
.' Locate Kovok. |q 31808/1 
|only if havequest(31808)
step
'Use the abilities on your hotbar to complete your task.
.from Ik'thik Slayer, Ik'thik Kunchong, Ik'thik Warrior
.' Kill 200 Mantid. |q 31808/2
|only if havequest(31808)
step
goto 55.0,35.9
.talk 62538
.' Ask him to fly you to the Clutches of Shek'zeer. |invehicle
|only if havequest(31109)
step
goto 38.3,30.3
'Use the Sonic Divebomb ability on your new hotbar to land. |outvehicle
|only if havequest(31109)
step
'Enter this building. |goto 37.0,28.1 <5 |c
|only if havequest(31496)
step
goto 37.4,29.3
.click Central Feeder##12991
.' Sample the Central Feeder |q 31496/1
|only if havequest(31496)
step
'Leave this building. |goto 37.0,28.1 <5 |c
|only if havequest(31496)
step
'Enter this building. |goto 39.3,29.3 <5 |c
|only if havequest(31496)
step
goto 39.1,30.5
.click Northeast Feeder##12991
.' Sample the Northeast Feeder |q 31496/4
|only if havequest(31496)
step
'Leave this building. |goto 39.3,29.3 <5 |c
|only if havequest(31496)
step
goto 39.3,30.9
.kill Vess-Guard Na'kal##64890 |q 31503/1
|only if havequest(31503)
step
'Enter this building. |goto 38.3,32.0 <5 |c
|only if havequest(31496)
step
goto 37.9,33.1
.click East Feeder##12991
.' Sample the East Feeder |q 31496/2
|only if havequest(31496)		
step
'Leave this building. |goto 38.3,32.0 <5 |c
|only if havequest(31496)
step
'Enter this building. |goto 36.3,32.3 <5 |c
|only if havequest(31496)
step
goto 37.0,32.8
.click North Feeder##12991
.' Sample the North Feeder |q 31496/3
|only if havequest(31496)		
step
'Leave this building. |goto 36.3,32.3 <5 |c
|only if havequest(31496)
step
goto 35.2,31.3
.from Shek'zeer Needler##64714+
.get 24 Needler Wings##87401 |q 31502/1 
|only if havequest(31502)
step
goto 66.0,19.3
.from Greatback Mushan##62029
.get 6 Mushan Tongue##85665 |q 31238/1
.' You can find more Mushan around [56.9,23.4]
|only if havequest(31238)
step
goto 73.2,22.5
'Use the Shado-Pan Dragon Gun on Dreadspinner Eggs |use Shado-Pan Dragon Gun##82807 |only if havequest(31235)
.' Destroy 20 Dreadspinner Eggs |q 31235/1 |only if havequest(31235)
.kill 8 Dreadspinner Tender##61981+ |q 31231/1 |only if havequest(31231)
|only if havequest(31235) or havequest(31231)
step
goto 68.1,30.0
.click Gurthani Tablet
.get 8 Gurthani Tablet##85634 |q 31232/1
|only if havequest(31232)
step
goto 67.7,37.1
.from Mire Beast##63731+
.get 1 Pristine Mire Beast Eye## |q 31234/1
|only if havequest(31234)
step
goto 66.6,43.8
.click Amber Tap |tip These are located on trees. Look for Sapfly packs to find these easier. |modelnpc Sapfly##62386
.click Amber Pot
.get 6 Amber Sap##85664 |q 31233/1
|only if havequest(31233)
step
goto 44.9,35.6
.' Use the Sonic Disruption Fork on Dread Kunchong. |use Sonic Disruption Fork##87394 |only if havequest(31487)
.kill 4 Dread Kunchong##64717 |q 31487/1 |only if havequest(31487)
.kill 6 Shek'zeer Manipulator##64720 |q 31487/2 |only if havequest(31487)
.click Kunchong Cage |only if havequest(31494)
.' Free 8 Kunchong Hatchlings |q 31494/1 |only if havequest(31494)
|only if havequest(31487) or havequest(31494)
step
goto 44.4,43.0
.from Shek'zeer Swarmborn##62582+, Shek'zeer Needler##64714+, Shek'zeer Bladesworn##62563+, Shek'zeer Clutch-Keeper##64559+
.' Kill 40 Shek'zeer Mantid. |q 31109/1
|only if havequest(31109)
step
goto 58.6,51.1 
.kill 15 Horrorscale Scorpid##62162+ |q 31270/1 |only if havequest(31270)
.from Chillwater Turtle##62160+ |only if havequest(31024)
.get 4 Meaty Turtle Haunch##82869 |q 31024/1 |only if havequest(31024)
|only if havequest(31270) or havequest(31024)
step
goto 62.0,65.8
.kill 3 Ik'thik Genemancer##63257+ |q 31271/1
.kill 6 Ik'thik Egg-Drone##63176+ |q 31271/2
|only if havequest(31271)
step
goto 61.4,70.3
.' Use the Sonic Emitter in your bags on Ik'thik Amberstingers. |use Sonic Emitter##85884
.from Ik'thik Amberstinger##63728+ 
.get 3 Amber-Encrusted Brain##85885 |q 31268/1
|only if havequest(31268)
step
 goto 60.7,67.7
.from Bluehide Mushan##63729+, Needleback Porcupine##65118+, Bonedust Moth##63725
.kill 6 Infected wildlife |q 31272/1
step
'Enter the tunnel here. |goto 66.8,63.8 <5 |c
|only if havequest(31269)
step
goto 66.5,66.0
.kill Mistblade Scale-Lord##63179 |q 31269/1
|only if havequest(31269)
step
'Leave the tunnel. |goto 66.8,63.8 <5 |c
|only if havequest(31269)
step
goto 67.2,59.3
.kill 6 Mistblade Ripper##61970+ |q 31267/1
|only if havequest(31267)
step
goto 55.1,35.9
.talk 62538
.' Ask him to fly you to Zan'vess |invehicle
|only if havequest(31111) or havequest(31508) or havequest(31506) or havequest(31111) or havequest(31510)
step
goto 31,70
'Use the Sonic Divebomb ability on your new hotbar to land. |outvehicle
|only if havequest(31111) or havequest(31508) or havequest(31506) or havequest(31111) or havequest(31510)
step
'As you complete quests in this area:
.click Dreadspore Bulbs##391
.' Destroy 15 Dreadspore Bulbs |q 31509/1 |n
|confirm
|only if havequest(31509)
step
goto 31.5,69.6
.from Kypari Crawler##65231+ |only if havequest(31508)
.get 6 Kyparite Shards |q 31508/1 |only if havequest(31508)
.from Thought-Bound Miner##64970+ |only if havequest(31506)
.get 6 Zan'thik Shackles |q 31506/1 |only if havequest(31506)
.kill 6 Zan'thik Impaler##64971+ |q 31111/1 |only if havequest(31111)
.kill 6 Zan'thik Manipulator##64973+ |q 31111/2 |only if havequest(31111)
|only if havequest(31506) or havequest(31111) or havequest(31508)
step
goto 29.1,74.7
..kill Vess-Guard Vik'az##64979+ |q 31505/1
|only if havequest(31505)
step
goto 23.0,77.3
.kill 6 Zan'thik Amberhusk##64982+ |q 31507/1
|only if havequest(31507)
step
'All around this area
.click Dreadspore Bulbs##391
.' Destroy 15 Dreadspore Bulbs |q 31509/1
|only if havequest(31509)
step
goto 24.2,86.2
.click Adjunct Sek'ot##11609
.kill Adjunct Sek'ot##64995 |q 31510/1
step
goto 55.0,35.9
.talk 62538
..turnin 31231 
..turnin 31235 
..turnin 31109 
..turnin 31267
..turnin 31111
..turnin 31505
step
goto 54.9,36.2
.talk 62151
..turnin 31216
step
goto 54.8,36.2
.talk 63785
..turnin 31237
..turnin 31510
..turnin 31272
step
goto 54.3,36.1
.talk 62180
..turnin 31232 
..turnin 31233 
..turnin 31496 
..turnin 31270
..turnin 31269
..turnin 31507
step
goto 54.3,35.9
.talk 65253
..turnin 31271 
..turnin 31502
..turnin 31503
..turnin 31234
..turnin 31508
..turnin 31509
|only if completedq(31606)
step
goto 54.3,35.8
.talk 63758
..turnin 31238 
..turnin 31487 
..turnin 31494 
..turnin 31268
..turnin 31024
..turnin 31808
..turnin 31506
|next |only if rep("The Klaxxi")>=Revered and not completedq(31465)
|next end |only if default
step
goto 55.1,35.9
.talk 62538
..accept 31018
step
goto 29.0,42.4 |n
.' Enter this tunnel |goto 29.0,42.4 <5 |noway |c
step
goto 30.7,40.3
.kill Adjunct Ek'vem##62073+ |q 31018/1
step
goto 33.4,40.2
.kill Adjunct Ikkess##62074+ |q 31018/2
step
goto 33.4,44.3
.kill Adjunct Suruz##62075+ |q 31018/3
step
goto 30.7,44.4
.kill Adjunct Tzikzi##62076+ |q 31018/4
step
goto 31.9,42.5
.click Ancient Amber Chunk
.' Wake Xaril the Poisoned Mind |q 31018/5
step
goto 29.0,42.4 |n
.' Exit the tunnel here |goto 29.0,42.4 <5 |noway |c
step
goto 28.6,42.1
.talk 62151
..turnin 31018
..accept 31208
..accept 31209
..accept 31210
step
goto 24.7,41.8
.from Ruby Venomtail##63588+, Dread Scarab##63587+
.get 150 Scarab Wing |q 31209/1
.get 8 Venomous Stinger |q 31208/1
.click Dreadshade##5031
.get 8 Dreadshade |q 31210/1
.' You can find more around [26.4,36.4]
.' And here [26.2,30.8]
step
goto 28.6,42.1
.talk 62151
..turnin 31208
..turnin 31209
..turnin 31210
step
goto 28.6,42.1
.talk 62151
..accept 31211
step
goto 28.6,42.1
.talk 62151
.' Tell him:
.' <I am ready to fly, Xaril.> |invehicle |q 31211
step
'Use the _Venom Syrum_ to kill the small enemies. 
.' Use the _Paralyzing Syrum_ then immidiately the _Venom Syrum_ to kill the larger enemies.
.' Speak to Xaril the Poisoned Mind |q 31211/1
.kill 200 Mantid |q 31211/2
.kill 3 Kunchong |q 31211/3
'|from Krik'thik Wingguard##63613+, Ik'thik Warrior##63635+, Ik'thik Slayer##63636+ Dread Behemoth##65513+, Krik'thik Battletank##63625+, 
step
goto 54.9,36.2
.talk 62151
..turnin 31211
step
goto 54.8,34.1
.talk 64815
..accept 31439
step
goto 56.3,58.2
.' Use your Tuning Fork on the Amber Rock |use Klaxxi Tuning Fork##87202
.' Awaken Hisek the Swarmkeeper |q 31439/1
step
goto 56.3,58.2
.talk 64672
..turnin 31439
..accept 31441
step
goto 56.2,57.6
.kill Kor'ik##64583+ |q 31441/1
step
goto 56.3,57.6
.talk 64705
..turnin 31441
..accept 31458
..accept 31465
step
goto 55.6,47.1
.click Kypari Ik Beacon##11971
.' Deactivate Kypari Ik Resonating Crystal |q 31458/2
step
goto 50.5,45.8
.kill 5 Ik'thik Whisperer##64622+ |q 31458/1
.from Ik'thik Swarmborn##64831+
.get 6 Venom-Coated Mandible |q 31465/1
step
goto 54.8,36.2
.talk 63785
..turnin 31458
..turnin 31465
|next klaxxi start
step
label end
'This is the end of this guide.
.' Click here to return to the beginning of the dailies |confirm |next "klaxxi start"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Pandaria (85 - 90)\\Cooking Dailies",[[
description This guide will take you through the Cooking dailies
step
#include "H_MOP_Cooking_Dailies"
]])
