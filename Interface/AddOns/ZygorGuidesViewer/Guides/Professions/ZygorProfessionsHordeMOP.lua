local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("ProfessionsHMoP") then return end
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Profession Guides\\Cooking\\Cooking 1-600 Leveling Guide",[[
description This guide will walk you through leveling your Cooking skill from 1-600.
author support@zygorguides.com
completion skill,Cooking,600
condition suggested hasprof('Cooking',1,600)
step
goto Valley of the Four Winds 53.6,51.2
.talk 64231
..accept 31281
step
'Skipping 1st part of cooking quests |next "+cooking_start" |only if step:Find("+final_quest"):IsComplete()
'Proceeding to Mastery's |next |only if default	
step
goto 53.6,51.2
.talk 64231
.learn Sliced Peaches##125117 |q 31281
.buy 5 Pandaren Peach##74660 |q 31281
step
.' Stand next to a fire, or create one yourself |cast Cooking fire##818
.create 5 Sliced Peaches##125117,Cooking,5 total |q 31281/1
.get 5 Sliced Peaches##86057 |q 31281/2
.skill Cooking,30
|tip You may need to buy another peach if your cooking skill is not 30 yet.
step
goto 53.7,51.0
.talk 64231
..turnin 31281
..accept 31302
step
goto 53.7,51.0
.talk 64231
.learn Perfectly Cooked Instant Noodles##125067
|only if skill('Cooking')<=59
step
goto 53.7,51.0
.talk 64231
.buy 6 Instant Noodles##74854 |n
.create 6 Perfectly Cooked Instant Noodles##125067,Cooking,60
step
goto 53.7,51.0
.talk 64231
.learn Toasted Fish Jerky##124225
|only if skill('Cooking')<=89
step
goto Krasarang Wilds 37.4,35.2
.' Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
.' Use your Fishing skill to fish in the water here. You can look for fishing pools around the beach also |cast Fishing##7620
.collect 6 Golden Carp##74866
|only if skill('Cooking')<=89
step
.' Stand next to a fire, or create one yourself |cast Cooking fire##818
.create Toasted Fish Jerky##124225,Cooking,90
step
goto Valley of the Four Winds 53.7,51.0
.talk 64231
.learn Dried Needle Mushrooms##124227
|only if skill('Cooking')<=119
step
goto 53.7,51.0
.talk 64231
.buy 6 Needle Mushrooms##85583 |n
.create Dried Needle Mushrooms##124227,Cooking,120
step
goto 53.7,51.0
.talk 64231
.learn Pounded Rice Cake##124223
|only if skill('Cooking')<=149
step
goto 53.7,51.0
.talk 64231
.buy 6 Rice##74851 |n
.create Pounded Rice Cake##124223,Cooking,150
step
goto 53.7,51.0
.talk 64231
.learn Yak Cheese Curds##124224
|only if skill('Cooking')<=179
step
goto 53.7,51.0
.talk 64231
.buy 6 Yak Milk##74852 |n
.create Yak Cheese Curds##124224,Cooking,180
step
goto 53.7,51.0
.talk 64231
.learn Dried Peaches##124226
|only if skill('Cooking')<=209
step
goto 53.7,51.0
.talk 64231
.buy 6 Pandaren Peach##74660 |n
.create Dried Peaches##124226,Cooking,210
step
goto 53.7,51.0
.talk 64231
.learn Boiled Silkworm Pupa##124228
|only if skill('Cooking')<=239
step
goto 53.7,51.0
.talk 64231
.buy 6 Silkworm Pupa##85584 |n
.create Boiled Silkworm Pupa##124228,Cooking,240
step
goto 53.7,51.0
.talk 64231
.learn Roasted Barley Tea##125078
|only if skill('Cooking')<=269
step
goto 53.7,51.0
.talk 64231
.buy 6 Barley##74832 |n
.create Roasted Barley Tea##125078,Cooking,270
step
goto 53.7,51.0
.talk 64231
.learn Golden Carp Consomme##104237
|only if skill('Cooking')<=299
step
goto Krasarang Wilds 37.4,35.2
.' Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
.' Use your Fishing skill to fish in the water here. You can look for fishing pools around the beach also |cast Fishing##7620
.collect 24 Golden Carp##74866 |only if skill('Cooking')<=299
.collect 12 Golden Carp##74866 |only if skill('Cooking')>=300 and skill('Cooking')<=329
step
.' Stand next to a fire, or create one yourself |cast Cooking fire##818
.create Golden Carp Consomme##104237,Cooking,300
step
goto 53.7,51.0
.talk 64231
.learn Fish Cake##104297
|only if skill('Cooking')<=329
step
goto Krasarang Wilds 37.4,35.2
.' Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
.' Use your Fishing skill to fish in the water here. You can look for fishing pools around the beach also |cast Fishing##7620
.collect 12 Golden Carp##74866 |only if skill('Cooking')>=300 and skill('Cooking')<=329
step
goto 53.7,51.0
.talk 64231
.create Fish Cake##104297,Cooking,330
step
goto 53.7,51.0
.talk 64231
.learn Blanched Needle Mushrooms##124233
|only if skill('Cooking')<=359
step
goto 53.7,51.0
.talk 64231
.buy 12 Needle Mushrooms##85583 |n
.create 6 Blanched Needle Mushrooms##124233,Cooking,360
step
goto 53.7,51.0
.talk 64231
.learn Red Bean Bun##124229
|only if skill('Cooking')<=389
step
goto 53.7,51.0
.talk 64231
.buy 6 Red Beans##85585 |n
.create Red Bean Bun##124229,Cooking,390
step
goto 53.7,51.0
.talk 64231
.learn Skewered Peanut Chicken##124234
|only if skill('Cooking')<=419
step
goto 53.7,51.0
.talk 64231
.buy 6 Farm Chicken##74659 |n
.create Skewered Peanut Chicken##124234,Cooking,420
step
goto 53.7,51.0
.talk 64231
.learn Green Curry Fish##124231
|only if skill('Cooking')<=449
step
goto Krasarang Wilds 37.4,35.2
.' Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
.' Use your Fishing skill to fish in the water here. You can look for fishing pools around the beach also |cast Fishing##7620
.collect 12 Golden Carp##74866 
|only if skill('Cooking')<=449
step
.' Stand next to a fire, or create one yourself |cast Cooking fire##818
.create Green Curry Fish##124231,Cooking,450
step
goto Valley of the Four Winds 53.7,51.0
.talk 64231
.learn Peach Pie##124232
|only if skill('Cooking')<=479
step
goto 53.7,51.0
.talk 64231
.buy 12 Pandaren Peach##74660 |n
.create Peach Pie##124232,Cooking,480
step
goto 53.7,51.0
.talk 64231
.learn Tangy Yogurt##124230
|only if skill('Cooking')<=494
step
goto 53.7,51.0
.talk 64231
.buy 3 Pandaren Peach##74660 |n
.buy 3 Yak Milk##74852 |n
.create 6 Tangy Yogurt##124230,Cooking,495
step
goto 53.7,51.0
.talk 64231
.learn Pearl Milk Tea##125080
|only if skill('Cooking')<=509
step
goto 53.7,51.0
.talk 64231
.buy 6 Yak Milk##74852 |n
.create Pearl Milk Tea##125080,Cooking,510
step
goto 53.7,51.0
.talk 64231
.learn Wildfowl Ginseng Soup##125121
|only if skill('Cooking')<=519
step
goto 53.7,51.0
.talk 64231
.buy 2 Ginseng##74845
|only if skill('Cooking')<=519
step
goto Krasarang Wilds 64.6,29.3
.from Carp Hunter##58116+
.collect 15 Wildfowl Breast##74839
|only if skill('Cooking')<=519
step
goto Valley of the Four Winds 53.7,51.0
.talk 64231	
.create Wildfowl Ginseng Soup##125121,Cooking,520
step
goto 53.6,51.2
.talk 64231
.learn Rice Pudding##125122
.buy 5 Rice##74851 |q 31302
.buy 5 Yak Milk##74852 |q 31302
step
.' Stand next to a fire, or create one yourself |cast Cooking fire##818
.create 5 Rice Pudding##125122,Cooking,5 total |q 31302/1
.get 5 Rice Pudding##86069 |q 31302/2
step
goto 53.7,51.0
.talk 64231
..turnin 31302
..accept 31311
..accept 31470
..accept 31472
..accept 31475
..accept 31478
..accept 31479
step
goto 53.7,51.0
.talk 64231
.buy 1 Ginseng##74845 |q 31480
step
goto 53.5,51.2
.talk 64395
.buy 1 Sack of Raw Tiger Steaks##87701 |n
'Use the Sack of Raw Tiger Steaks |use Sack of Raw Tiger Steaks##87701 
.get 5 Raw Tiger Steak##74833 |q 31311/1
step
goto 53.0,51.3
.talk 58712
..turnin 31311
..accept 31467
step
goto 53.0,51.3
.talk 58712
.learn Charbroiled Tiger Steak##104298 |q 31467/1
step
.' Stand next to a fire, or create one yourself |cast Cooking fire##818
.create 5 Charbroiled Tiger Steak##104298,Cooking,5 total |n
.' Cook 5 Charboiled Tiger Steak |q 31467/2
step
goto 53.0,51.3
.talk 58712
..turnin 31467
step
goto 53.2,52.2
.talk 58717
..turnin 31479
..accept 31480
step
goto 53.0,51.3
.talk 58712
.learn Ginseng Tea##124052 |q 31480/1
step
.' Stand next to a fire, or create one yourself |cast Cooking fire##818
.create 1 Ginseng Tea##124052,Cooking,1 total |n
.get 1 Ginseng Tea##75026 |q 31480/2
step
goto 53.2,52.2
.talk 58717
..turnin 31480
step
goto 53.5,51.2
.talk 64395
.buy 1 Sack of Juicycrunch Carrots##87707 |n 
'Use the Sack of Juicycrunch Carrots |use Sack of Juicycrunch Carrots##87707 
.get 5 Juicycrunch Carrot##74841 |q 31470/1
step
goto 52.7,52.0
.talk 58713
..turnin 31470
..accept 31471
step
goto 52.7,52.0
.talk 58713
.learn Sauteed Carrots##104301 |q 31471/1
step
.' Stand next to a fire, or create one yourself |cast Cooking fire##818
.create 5 Sauteed Carrots##104301,Cooking,5 total |n
.' Cook 5 Sauteed Carrots |q 31471/2
step
goto 52.7,52.0
.talk 58713
..turnin 31471
step
goto 53.5,51.2
.talk 64395
.buy 1 Sack of Jade Lungfish##87721 |n
'Use the Sack of Jade Lungfish |use Sack of Jade Lungfish##87721
.get 5 Jade Lungfish##74856 |q 31472/1
.buy 1 Sack of Mantis Shrimp##87722 |n
'Use the Sack of Mantis Shrimp |use Sack of Mantis Shrimp##87722
.get 5 Giant Mantis Shrimp##74857 |q 31475/1
.buy 1 Sack of Wildfowl Breasts##87705 |n
'Use the Sack of Wildfowl Breasts |use Sack of Wildfowl Breasts##87705
.get 5 Wildfowl Breast##74839 |q 31478/1
step
goto 53.4,51.6
.talk 58716
..turnin 31478
..accept 31477
step
goto 53.4,51.6
.talk 58716
.learn Wildfowl Roast##104310 |q 31477/1
step
.' Stand next to a fire, or create one yourself |cast Cooking fire##818
.create 5 Wildfowl Roast##104310,Cooking,5 total |n
.' Cook 5 Wildfowl Roasts |q 31477/2
step
goto 53.4,51.6
.talk 58716
..turnin 31477
step
goto 52.5,51.8
.talk 58715
..turnin 31475
..accept 31476
step
goto 52.5,51.8
.talk 58715
.learn Shrimp Dumplings##104307 |q 31476/1
step
.' Stand next to a fire, or create one yourself |cast Cooking fire##818
.create 5 Shrimp Dumplings##104307,Cooking,5 total |n
.' Cook 5 Shrmip Dumplings |q 31476/2	
step
goto 52.5,51.8
.talk 58715
..turnin 31476
step
goto 52.6,51.5
.talk 58714
..turnin 31472
..accept 31474
step
goto 52.6,51.5
.talk 58714
.learn Swirling Mist Soup##104304 |q 31474/1
step
.' Stand next to a fire, or create one yourself |cast Cooking fire##818
.create 5 Swirling Mist Soup##104304,Cooking,5 total |n
.' Cook 5 Swirling Mist Soup |q 31474/2
step
goto 52.6,51.5
.talk 58714
..turnin 31474
step
goto 53.5,51.2
.talk 64395
..accept 31536
step
goto 53.0,52.4
.talk 64940
.buy 1 Empty Raw Tiger Steak Container##87658 |q 31536/1
step
label	final_quest
goto 53.5,51.2
.talk 64395
..turnin 31536
step
label	cooking_start
'Your Cooking Skill should now be at 535.
.' With cooking you now have a choice to choose a _Cooking Mastery_.
.' This allows you to _Cook foods based on what your character needs or wants._
.'_
'Before you continue, _open your cooking window_ so the guide can dertermine what level your cooking mastery is. |cast Cooking##2550
|confirm always
step
title	Cooking Mastery
label	start
'Here is where you will start your Mastery Cooking:
.' Remember to open your Cooking Window|cast Cooking##2550
.' Click here for Way of the Oven - Stamina Food |confirm |next Oven |only if skill('Way of the Oven')<=599
.' You have maxed out Way of the Grill |only if skill('Way of the Oven')==600
.' Or
.' Click here for Way of the Brew - Mana drinks and Random Food buffs |confirm |next Brew |only if skill('Way of the Brew')<=599
.' You have maxed out Way of the Grill |only if skill('Way of the Brew')==600
.' Or
.' Click here for Way of the Wok - Agility Food |confirm |next Wok |only if skill('Way of the Wok')<=599
.' You have maxed out Way of the Grill |only if skill('Way of the Wok')==600
.' Or
.' Click here for Way of the Steamer - Spirit Food |confirm |next Steamer |only if skill('Way of the Steamer')<=599
.' You have maxed out Way of the Grill |only if skill('Way of the Steamer')==600
.' Or
.' Click here for Way of the Pot - Intellect Food |confirm |next Pot |only if skill('Way of the Pot')<=599
.' You have maxed out Way of the Grill |only if skill('Way of the Pot')==600
.' Or
.' Click here for Way of the Grill - Strength Food |confirm |next Grill |only if skill('Way of the Grill')<=599
.' You have maxed out Way of the Grill |only if skill('Way of the Grill')==600
|next mastery
step
//Way of the Oven
title	Way of the Oven
label	Oven
'Skipping 1st part of cooking |next "+twin_fish" |only if step:Find("+create_fowl"):IsComplete()
'Proceeding to Wild Fowl Roast |next |only if default
step
goto Valley of the Four Winds 53.4,51.6
.talk 58716
.learn Wild Fowl Roast##104310
step
#include "auctioneer"
.buy 15 Wildfowl Breast##74839 |next create_fowl
.' Or
.' Click here to use Cooking Tokens to purchase this ingredient |confirm |next token_start
.' Or
.' Click here to farm the ingredient yourself |confirm |next farm_fowl
//oven token start
step
label	token_start
'You earn tokens by turning in _Bundles of Groceries_ as a _Repeatable Quest_
.' You can farm any cooking ingredient and turn it into _Bundle of Groceries_
|tip Farming 20 pieces of meat or 100 vegetables will get you one token. One token buys 5 pieces of meat or 25 vegetables of your choice
.' For a good location to farm vegetables for tokens, click here |confirm |next farm_veggie
.' Or
.' For a good location to farm meat for tokens, click here |confirm |next farm_meat
.' Or
.' If you have ingredients to turn in for tokens, click here |confirm |next token_end
.' Or
.' Click here to turn in _Spirit of Harmony's_ for Cooking Tokens. |confirm |next spirit
step
label	spirit
goto Vale of Eternal Blossoms 61.7,21.7
.talk 1149
.buy Ironpaw Token##402+ |n
.' You have _{curcount(402)} Tokens_
.' You need _{_G.ceil(_G.max(0,  ((15-itemcount(74839))/25)-curcount(402)))} Tokens_ to buy the ingredients you need. |only if skill ("Cooking")<=549
.' You need _{_G.ceil(_G.max(0,  ((26-itemcount(74865))/5) -curcount(402)))} Tokens_ to buy the ingredients you need. |only if skill("Cooking")>=550 and skill("Cooking")<=574
.' You need _{_G.ceil(_G.max(0,  ((50-itemcount(74865))/5)+((50-itemcount(74837))/5)+((250-itemcount(74842))/25)-curcount(402)))} Tokens_ to buy the ingredients to cook |only if skill("Cooking")>=575 and skill("Cooking")<=599
|tip Remember, 1 Token will buy you 25 vegetables or 5 pieces of meat of your choice.
.' Click here when you are ready to buy Sacks of Meat with your Tokens |confirm |next buy
step
label	farm_veggie
goto The Jade Forest 53.9,81.4
.from Slingtail Treeleaper##61562+
.' These won't give you all vegetables, but you can gain a lot of Striped Melon and Jade Squash to turn in for tokens.
.' You will need 100 of a vegetable to turn in for one token
.' You have enough Squash to turn in for _{_G.floor(_G.max(0, itemcount(74847)/20))} Tokens_
.' You have enough Melon to turn in for _{_G.floor(_G.max(0, itemcount(74848)/20))} Tokens_
|tip Remember, 1 Token will buy you 25 vegetables or 5 pieces of meat of your choice.
.collect Jade Squash##74847 |n
.collect Striped Melon##74848 |n
|confirm |next token_end
step
label	farm_meat
goto Dread Wastes 58.6,59.4
.' Enter this tunnel and walk over the crocodile eggs. They will hatch and respawn quickly for a great amount of farming.
.' You will need stacks of 20 meat to turn in for one token
.' You have enough meat to turn in for _{_G.floor(_G.max(0, (itemcount(75014)/20)))} Tokens_
|tip Remember, 1 Token will buy you 25 vegetables or 5 pieces of meat.
.collect Raw Crocolisk Belly##75014 |n
|confirm |next token_end
step
label	token_end
goto Valley of the Four Winds 53.0,52.4
.talk 64940
.' Buy Empty containers and fill with any ingredients you have. 
.' Once you are ready to turn in for tokens, click here |confirm |next repeat
step
label	repeat
goto Valley of the Four Winds 53.5,51.2
.talk 64395
..accept 31535 |repeatable
step
goto Valley of the Four Winds 53.5,51.2
.talk 64395
..turnin 31535 |repeatable |next repeat
|next |only if default
//oven token end
step
label	buy
'Continuing to Wild Fowl Breast |next |only if default
'Redirecting to Twin Fish Platter |next "twin_fish_bag" |only if step:Find("+create_fowl"):IsComplete()
step
goto Valley of the Four Winds 53.5,51.2
.talk 64395
.buy Sack of Wildfowl Breasts##87705 |n
.' _{_G.ceil(_G.max(0,  ((15-itemcount(74839))/5)-itemcount(87705)))} Sacks_ will get the ingredients you need.
.' Open the Sack to collect the ingredients |use Sack of Wildfowl Breasts##87705
.collect 15 Wildfowl Breast##74839
.' If you need more tokens, or wish to farm more ingredients, click here |confirm |next Oven
|next create_fowl
step
label	farm_fowl
goto Krasarang Wilds 64.6,29.3
.from Carp Hunter##58116+
.collect 15 Wildfowl Breast##74839
step
label	create_fowl
.' Stand next to a fire, or create one yourself |cast Cooking fire##818
.create 15 Wild Fowl Roast##104310,Cooking,550
|confirm |only if skill("Way of the Oven")<=549
step
label	twin_fish
'Skipping 2nd part of cooking |next "+banquet_oven" |only if step:Find("+create_twin"):IsComplete()
'Proceeding to End of Way of the Oven |next |only if default
step
goto Valley of the Four Winds 53.4,51.6
.talk 58716
.learn Twin Fish Platter##104311
step
#include "auctioneer"
.buy 26 Krasarang Paddlefish##74865 |next create_twin
.' Or
.' Click here to use Cooking Tokens |confirm |next token_start
.' Or
.' Click here to farm the ingredients yourself |confirm |next farm_twin
step
label	farm_twin
map Krasarang Wilds
path loose; loop; curved
path	37.4,35.2	42.9,38.7	43.4,46.0
path	38.0,42.3	34.1,38.4	30.3,33.8
.' Follow this river and use your fishing ability to catch Krasarang Paddlefish
.' Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
.' Use your Fishing skill to fish in the water all around the wooden dock |cast Fishing##7620
.collect 26 Krasarang Paddlefish##74865
|next create_twin
step
label	twin_fish_bag
'Redirecting to Banquet of the Oven |next "banquet_oven_bag" |only if step:Find("+create_twin"):IsComplete()
'Proceeding to Twin Fish Platter |next |only if default
step
.buy Sack of Krasarang Paddlefish##87728 |n
.' Open the Sack to collect the ingredients |use Sack of Krasarang Paddlefish##87728
.' _{_G.ceil(_G.max(0,  ((26-itemcount(74839))/5)-itemcount(87705)))} Sacks_ will get the ingredients you need.
.collect 26 Krasarang Paddlefish##74865
.' If you need more tokens, or wish to farm more ingredients, click here |confirm |next Oven
|next create_twin
step
label	create_twin
.' Stand next to a fire, or create one yourself |cast Cooking fire##818
.create 12 Twin Fish Platter##104311,Cooking,576 
|confirm |only if skill("Way of the Oven")<=574
step
label	banquet_oven
'Skipping 1st part of farming |next "+create_banquet_oven" |only if step:Find("+end_way_of_oven"):IsComplete()
'Proceeding to farm |next |only if default
step
goto Valley of the Four Winds 53.4,51.6
.talk 58716
.learn Banquet of the Oven##125600
step
#include "auctioneer"
.buy 50 Krasarang Paddlefish##74865
.buy 50 Raw Turtle Meat##74837
.buy 250 Mogu Pumpkin##74842
.' Or
.' Click here to use Cooking Tokens to purchase this ingredient |confirm |next token_start
.' Or
.' Click here to farm the ingredient yourself |confirm |next farm_banquet_oven_1
|next create_banquet_oven
step
'Skipping 1st part of farming |next "+farm_banquet_oven_2" |only if step:Find("+farm_banquet_oven_1"):IsComplete()
'Proceeding to farm |next |only if default
step
label	farm_banquet_oven_1
map Krasarang Wilds
path loose; loop; curved
path	37.4,35.2	42.9,38.7	43.4,46.0
path	38.0,42.3	34.1,38.4	30.3,33.8
.' Follow this river and use your fishing ability to catch Krasarang Paddlefish
.' Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
.' Use your Fishing skill to fish in the water all around the wooden dock |cast Fishing##7620
.collect 26 Krasarang Paddlefish##74865
step
'Skipping 2st part of farming |next "+farm_banquet_oven_3" |only if step:Find("+farm_banquet_oven_2"):IsComplete()
'Proceeding to farm |next |only if default
step
label	farm_banquet_oven_2
goto Valley of the Four Winds 66.8,32.5
.from Wyrmhorn Turtle##56256+
.collect 50 Raw Turtle Meat##74837
step
label	farm_banquet_oven_3
goto Valley of the Four Winds 86.5,28.5
.from Snagtooth Hooligan##56462+
.collect 250 Mogu Pumpkin##74842
|next create_banquet_oven
step
label	banquet_oven_bag
'Redirecting to End of Way of the Oven |next "end_way_of_oven" |only if step:Find("+create_banquet_oven"):IsComplete()
'Proceeding to Twin Fish Platter |next |only if default
step
.buy Sack of Mogu Pumpkins##87708 |n
.' You need _{_G.ceil(_G.max(0,  ((50-itemcount(74865))/5)-itemcount(87728)))} Krasarang Sacks_
.' Open the Sack to collect the ingredients |use Sack of Krasarang Paddlefish##87728
.collect 250 Mogu Pumpkin##74842
.buy Sack of Raw Turtle Meat##87703 |n
.' You need _{_G.ceil(_G.max(0,  ((50-itemcount(74837))/5)-itemcount(87703)))} Turtle Sacks_
.' Open the Sack to collect the ingredients |use Sack of Raw Turtle Meat##87703
.collect 50 Raw Turtle Meat##74837
.buy Sack of Krasarang Paddlefish##87728 |n
.' You need _{_G.ceil(_G.max(0,  ((50-itemcount(74865))/5)-itemcount(87728)))} Krasarang Sacks_
.' Open the Sack to collect the ingredients |use Sack of Krasarang Paddlefish##87728
.collect 26 Krasarang Paddlefish##74865	
.' If you need more tokens, or wish to farm more ingredients, click here |confirm |next Oven
step
label	create_banquet_oven
.' Stand next to a fire, or create one yourself |cast Cooking fire##818
.create 5 Banquet of the Oven##125600,Way of the Oven,600
.confirm |only if skill("Way of the Oven")<=559
step
label	end_way_of_oven
'Congratulations, you have maxed out the _Way of the Oven_ mastery for Cooking!
.' Click here to return to the Cooking Mastery List |confirm |next start
//Way of the Brew
step
title	Way of the Brew
label	Brew
'Skipping 1st part of cooking |next "+jade_brew" |only if step:Find("+create_tea"):IsComplete()
'Proceeding to Ginseng Tea |next |only if default
step
goto Valley of the Four Winds 53.4,51.6
.talk 58716
.learn Ginseng Tea##124052
step
goto Valley of the Four Winds 53.5,51.2
.talk 64395
.buy 15 Ginseng##74845
step
label	create_tea
.' Stand next to a fire, or create one yourself |cast Cooking fire##818
.create Ginseng Tea##124052,Way of the Brew,550
|confirm |only if skill("Way of the Brew")<=549
|next jade_brew
//brew token start
step
label	token_start_brew
'You earn tokens by turning in _Bundles of Groceries_ as a _Repeatable Quest_
.' You can farm any cooking ingredient and turn it into _Bundle of Groceries_
|tip Farming 20 pieces of meat or 100 vegetables will get you one token. One token buys 5 pieces of meat or 25 vegetables of your choice
.' For a good location to farm vegetables for tokens, click here |confirm |next farm_veggie
.' Or
.' For a good location to farm meat for tokens, click here |confirm |next farm_meat
.' Or
.' If you have ingredients to turn in for tokens, click here |confirm |next token_end_brew
.' Or
.' Click here to turn in _Spirit of Harmony's_ for Cooking Tokens. |confirm |next spirit
step
label	spirit
goto Vale of Eternal Blossoms 61.7,21.7
.talk 1149
.buy Ironpaw Token##402+ |n
.' You have _{curcount(402)} Tokens_
.' You need _{_G.ceil(_G.max(0,  ((60-itemcount(74846))/25)+((60-itemcount(74847))/25)-curcount(402)))} more Tokens_ to buy the ingredients to cook |only if skill("Cooking")>=550 and skill("Cooking")<=574
.' You need _{_G.ceil(_G.max(0,  ((250-itemcount(74840))/25)+((250-itemcount(74846))/25)-curcount(402)))} more Tokens_ to buy the ingredients to cook |only if skill("Cooking")>=575 and skill("Cooking")<=600
|tip Remember, 1 Token will buy you 25 vegetables or 5 pieces of meat of your choice.
.' Click here when you are ready to buy Sacks of Meat with your Tokens |confirm |next jade_brew_bag
.' Or
.' If you still do not have enough tokens, click here to go back to the token menu |confirm |next token_start_brew
step
label	farm_veggie
goto The Jade Forest 53.9,81.4
.from Slingtail Treeleaper##61562+
.' These won't give you all vegetables, but you can gain a lot of Striped Melon and Jade Squash to turn in for tokens.
.' You will need 100 of a vegetable to turn in for one token
.' You have enough Squash to turn in for _{_G.ceil(_G.max(0, (itemcount(74847))/100)))} Tokens_
.' You have enough Melon to turn in for _{_G.ceil(_G.max(0, (itemcount(74848))/100)))} Tokens_
|tip Remember, 1 Token will buy you 25 vegetables or 5 pieces of meat of your choice.
.collect Jade Squash##74847 |n
.collect Striped Melon##74848 |n
|confirm |next token_end_brew
step
label	farm_meat
goto Dread Wastes 58.6,59.4
.' Enter this tunnel and walk over the crocodile eggs. They will hatch and respawn quickly for a great amount of farming.
.' You will need stacks of 20 meat to turn in for one token
You have enough meat to turn in for _{_G.floor(_G.max(0, (itemcount(75014))/20))} Tokens_
|tip Remember, 1 Token will buy you 25 vegetables or 5 pieces of meat.
.collect Raw Crocolisk Belly##75014 |n
|confirm |next token_end_brew
step
label	token_end_brew
goto Valley of the Four Winds 53.0,52.4
.talk 64940
.' Buy Empty containers and fill with any ingredients you have. 
.' Once you are ready to turn in for tokens, click here |confirm |next repeat
step
label	repeat
goto Valley of the Four Winds 53.5,51.2
.talk 64395
..accept 31535 |repeatable
step
goto Valley of the Four Winds 53.5,51.2
.talk 64395
..turnin 31535 |repeatable |next repeat
|next |only if default
//brew token end
step
label	jade_brew
'Continuing to Jade Witch Brew |next |only if default
'Redirecting to Banquet of the Brew |next "banquet_brew" |only if step:Find("+create_jade"):IsComplete()
step
goto Valley of the Four Winds 53.2,52.2
.talk 58717
.learn Jade Witch Brew##124053
step
#include "auctioneer"
.buy 60 Witchberries##74846
.buy 60 Jade Squash##74847
.' Or
.' Click here to use Cooking Tokens |confirm |next token_start_brew |or
.' Or
.' Click here to farm the ingredients yourself |confirm |next farm_jade_1 |or
|next create_jade
step
label	farm_jade_1
'Skipping 1st part of farming |next "+create_jade" |only if step:Find("+farm_jade_2"):IsComplete()
'Proceeding to farm |next |only if default
step
 goto Valley of the Four Winds 52.8,62.2
.from Tricky Maizer##57223+, Kernel Sprite##660+
.collect 60 Witchberries##74846
step
label	farm_jade_2
goto The Jade Forest 53.9,81.4
.from Slingtail Treeleaper##61562+
.collect 60 Jade Squash##74847
|next create_jade
step
label	jade_brew_bag
.buy Sack of Witchberries##87712 |n
.' You need _{_G.ceil(_G.max(0, ((26-itemcount(74846))/25)-itemcount(87712)))} Sacks of Witchberries_
.' Open the Sack to collect the ingredients |use Sack of Witchberries##87712
.collect 60 Witchberries##74846
.buy Sack of Jade Squash##87713 |n
.' You need _{_G.ceil(_G.max(0, ((26-itemcount(74846))/25)-itemcount(87712)))} Sacks of Squash_
.' Open the Sack to collect the ingredients |use Sack of Jade Squash##87713
.collect 60 Jade Squash##74847
step
label	create_jade
.' Stand next to a fire, or create one yourself |cast Cooking fire##818
.create Jade Witch Brew##124053,Cooking,576
|confirm |only if skill("Way of the Brew")<=574
step
label	banquet_brew
'Skipping 1st part of farming |next "+end_way_of_brew" |only if step:Find("+create_banquet_brew"):IsComplete()
'Proceeding to next Banquet |next |only if default
step
goto Valley of the Four Winds 53.4,51.6
.talk 58716
.learn Banquet of the Brew##125602
step
#include "auctioneer"
.buy 250 Green Cabbage##74840
.buy 250 Witchberries##74846
.' Or
.' Click here to use Cooking Tokens to purchase this ingredient |confirm |next token_start_brew
.' Or
.' Click here to farm the ingredient yourself |confirm |next farm_banquet_brew_1
|next create_banquet_brew
step
'Skipping 1st part of farming |next "+farm_banquet_brew_2" |only if step:Find("+farm_banquet_brew_1"):IsComplete()
'Proceeding to farm |next |only if default
step
label	farm_banquet_brew_1
 goto Valley of the Four Winds 52.8,62.2
.from Tricky Maizer##57223+, Kernel Sprite##660+
.collect 250 Witchberries##74846
step
label	farm_banquet_brew_2
goto Valley of the Four Winds 86.6,28.3
.from Snagtooth Hooligan##56462+
.collect 250 Green Cabbage##74840
step
label	banquet_brew_bag
.buy Sack of Green Cabbages##87706 |n
.' Open the Sack to collect the ingredients |use Sack of Green Cabbages##87706
.' You need _{_G.ceil(_G.max(0, ((250-itemcount(74840))/25)-itemcount(87706)))} Sacks of Cabbage_
.collect 250 Green Cabbage##74840
.buy Sack of Witchberries##87712 |n
.' You need _{_G.ceil(_G.max(0, ((250-itemcount(74846))/25)-itemcount(87712)))} Sacks of Cabbage_
.' Open the Sack to collect the ingredients |use Sack of Witchberries##87712
.collect 250 Witchberries##74846
step
label	create_banquet_brew
.' Stand next to a fire, or create one yourself |cast Cooking fire##818
.create Banquet of the Brew##125602,Cooking,600
|confirm |only if skill("Way of the Brew")<=599
step
label	end_way_of_brew
'Congratulations, you have maxed out the _Way of the Brew_ mastery for Cooking!
.' Click here to return to the Cooking Mastery List |confirm |next start
//Way of the Wok
step
title	Way of the Wok
label	Wok
'Skipping 1st part of cooking |next "+stir_fry" |only if step:Find("+create_carrot"):IsComplete()
'Proceeding to Sauteed Carrots |next |only if default
step
goto Valley of the Four Winds 52.7,52.0
.talk 58713
.learn Sauteed Carrots##104301
step
#include "auctioneer"
.buy 30 Juicycrunch Carrot##74841 |next create_carrot
.' Or
.' Click here to use Cooking Tokens to purchase this ingredient |confirm |next token_start_wok
.' Or
.' Click here to farm the ingredient yourself |confirm |next farm_carrot
//wok token start
step
label	token_start_wok
'You earn tokens by turning in _Bundles of Groceries_ as a _Repeatable Quest_
.' You can farm any cooking ingredient and turn it into _Bundle of Groceries_
|tip Farming 20 pieces of meat or 100 vegetables will get you one token. One token buys 5 pieces of meat or 25 vegetables of your choice
.' For a good location to farm vegetables for tokens, click here |confirm |next farm_veggie
.' Or
.' For a good location to farm meat for tokens, click here |confirm |next farm_meat
.' Or
.' If you have ingredients to turn in for tokens, click here |confirm |next token_end_wok
step
label	spirit
goto Vale of Eternal Blossoms 61.7,21.7
.talk 1149
.buy Ironpaw Token##402+ |n
.' You have _{curcount(402)} Tokens_
.' You need _{_G.ceil(_G.max(0,  ((30-itemcount(74841))/25)-curcount(402)))} Tokens_ to buy the ingredients you need. |only if skill ("Cooking")<=549
.' You need _{_G.ceil(_G.max(0,  ((12-itemcount(74864))/5)+((12-itemcount(74839))/5)-curcount(402)))} Tokens_ to buy the ingredients you need. |only if skill("Cooking")>=550 and skill("Cooking")<=574
.' You need _{_G.ceil(_G.max(0,  ((50-itemcount(74857))/5)+((50-itemcount(75014))/5)+((250-itemcount(74844))/25)-curcount(402)))} Tokens_ to buy the ingredients to cook |only if skill("Cooking")>=575 and skill("Cooking")<=599
|tip Remember, 1 Token will buy you 25 vegetables or 5 pieces of meat of your choice.
.' Click here when you are ready to buy Sacks of Meat with your Tokens |confirm |next buy
step
label	farm_veggie
goto The Jade Forest 53.9,81.4
.from Slingtail Treeleaper##61562+
.' These won't give you all vegetables, but you can gain a lot of Striped Melon and Jade Squash to turn in for tokens.
.' You will need 100 of a vegetable to turn in for one token
.' You have enough Squash to turn in for _{_G.ceil(_G.max(0, (20-itemcount(74847))/5))} Tokens_
.' You have enough Melon to turn in for _{_G.ceil(_G.max(0, (20-itemcount(74848))/5))} Tokens_
|tip Remember, 1 Token will buy you 25 vegetables or 5 pieces of meat of your choice.
.collect Jade Squash##74847 |n
.collect Striped Melon##74848 |n
|confirm |next token_end_wok
step
label	farm_meat
goto Dread Wastes 58.6,59.4
.' Enter this tunnel and walk over the crocodile eggs. They will hatch and respawn quickly for a great amount of farming.
.' You will need stacks of 20 meat to turn in for one token
You have enough meat to turn in for _{_G.floor(_G.max(0, (itemcount(75014))/20))} Tokens_
|tip Remember, 1 Token will buy you 25 vegetables or 5 pieces of meat.
.collect Raw Crocolisk Belly##75014 |n
|confirm |next token_end_wok
step
label	token_end_wok
goto Valley of the Four Winds 53.0,52.4
.talk 64940
.' Buy Empty containers and fill with any ingredients you have. 
.' Once you are ready to turn in for tokens, click here |confirm |next repeat
step
label	repeat
goto Valley of the Four Winds 53.5,51.2
.talk 64395
..accept 31535 |repeatable
step
goto Valley of the Four Winds 53.5,51.2
.talk 64395
..turnin 31535 |repeatable |next repeat
|next |only if default
//wok token end
step
label	 buy
'Continuing to Sauteed Carrots |next |only if default
'Redirecting to Valley Stir Fry |next "stir_fry_bag" |only if step:Find("+create_carrot"):IsComplete()
step
goto Valley of the Four Winds 53.5,51.2
.talk 64395
.buy Sack of Juicycrunch Carrots##87707 |n
.' You need _{_G.ceil(G.max(0, ((30-itemcount(74841))/5)-itemcount(87707)))} Sacks of Carrots_
.' Open the Sack to collect the ingredients |use Sack of Juicycrunch Carrots##87707
.collect 30 Juicycrunch Carrot##74841
|next create_carrot
step
label	farm_carrot
goto Valley of the Four Winds 86.5,28.5
.from Snagtooth Hooligan##56462+
.collect 30 Juicycrunch Carrot##74841
step
label	create_carrot
.' Stand next to a fire, or create one yourself |cast Cooking fire##818
.create Sauteed Carrots##104301,Cooking,550
|confirm |only if skill("Way of the Wok")<=549
step
label	stir_fry
'Skipping 2nd part of cooking |next "+end_way_of_wok" |only if step:Find("+create_banquet_wok"):IsComplete()
'Proceeding to End of Way of the Wok |next |only if default
step
goto Valley of the Four Winds 52.7,52.0
.talk 58713
.learn Valley Stir Fry##104302
step
#include "auctioneer"
.buy 12 Reef Octopus##74864
.buy 12 Wildfowl Breast##74839
.' Or
.' Click here to use Cooking Tokens |confirm |next token_start_wok
.' Or
.' Click here to farm the ingredients yourself |confirm |next farm_stir_fry_1
|tip You should at least have 525 fishing for this.
step
label	farm_stir_fry_1
goto Krasarang Wilds 67.9,49.6
.' Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
.' Use your Fishing skill to fish in the water here. You can look for fishing pools around the beach also |cast Fishing##7620
.collect 12 Reef Octopus##74864
step
'Skipping farming |next "+create_stir_fry" |only if step:Find("+farm_stir_fry_2"):IsComplete()
'Proceeding to Valley Stir Fry |next |only if default
step
label	farm_stir_fry_2
goto Krasarang Wilds 64.6,29.3
.from Carp Hunter##58116+
.collect 15 Wildfowl Breast##74839
|next create_stir_fry
step
label	stir_fry_bag
'Continuing to Sauteed Carrots |next |only if default
'Redirecting to Banquet of the Wok |next "banquet_wok_bag" |only if step:Find("+create_stir_fry"):IsComplete()
step
goto Valley of the Four Winds 53.5,51.2
.talk 64395
.buy Sack of Wildfowl Breasts##87705 |n
.' You need _{_G.ceil(_G.max(0, ((12-itemcount(74839))/5)-itemcount(87705)))} Sacks of Wildfowl_
.' Open the Sack to collect the ingredients |use Sack of Wildfowl Breasts##87705
.collect 12 Wildfowl Breast##74839
.buy Sack of Reef Octopus##87727 |n
.' You need _{_G.ceil(_G.max(0, ((12-itemcount(74864))/5)-itemcount(87727)))} Sacks of Octopus_
.' Open the Sack to collect the ingredients |use Sack of Reef Octopus##87727
.collect 12 Reef Octopus##74864
|next create_stir_fry
step
label	create_stir_fry
.' Stand next to a fire, or create one yourself |cast Cooking fire##818
.create Valley Stir Fry##104302,Cooking,576
|confirm |only if skill("Way of the Wok")<=574
step
label	banquet_wok
'Skipping 1st part of farming |next "+create_banquet_wok" |only if step:Find("+end_way_of_wok"):IsComplete()
'Proceeding to farm |next |only if default
step
goto Valley of the Four Winds 52.7,52.0
.talk 58713
.learn Banquet of the Wok##125584
step
#include "auctioneer"
.buy 50 Giant Mantis Shrimp##74857
.buy 50 Raw Crocolisk Belly##75014
.buy 250 Red Blossom Leek##74844
.' Or
.' Click here to use Cooking Tokens to purchase this ingredient |confirm |next token_start_wok
.' Or
.' Click here to farm the ingredient yourself |confirm |next farm_banquet_wok_1
|next create_banquet_wok
step
'Skipping 1st part of farming |next "+farm_banquet_wok_2" |only if step:Find("+farm_banquet_wok_1"):IsComplete()
'Proceeding to farm |next |only if default
step
label	farm_banquet_wok_1
goto Krasarang Wilds 67.9,49.6
.' Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
.' Use your Fishing skill to fish in the water here. You can look for fishing pools around the beach also |cast Fishing##7620
.collect 50 Giant Mantis Shrimp##74857
step
'Skipping 2st part of farming |next "+farm_banquet_wok_3" |only if step:Find("+farm_banquet_wok_2"):IsComplete()
'Proceeding to farm |next |only if default
step
label	farm_banquet_wok_2
goto Valley of the Four Winds 66.8,32.5
.from Wyrmhorn Turtle##56256+
.collect 50 Raw Turtle Meat##74837
step
label	farm_banquet_wok_3
goto Valley of the Four Winds 86.5,28.5
.from Snagtooth Hooligan##56462+
.collect 250 Red Blossom Leek##74844
|next create_banquet_wok
step
label	banquet_wok_bag
.buy Sack of Mantis Shrimp##87722 |n
.' You need _{_G.ceil(_G.max(0, ((50-itemcount(74857))/5)-itemcount(87722)))} Sacks of Shrimp_
.' Open the Sack to collect the ingredients |use Sack of Mantis Shrimp##87722
.collect 50 Giant Mantis Shrimp##74857
.buy Sack of Crocolisk Belly##87730 |n
.' You need _{_G.ceil(_G.max(0, ((50-itemcount(75014))/5)-itemcount(87730)))} Sacks of Crocolisk_
.' Open the Sace to collect the ingredients |use Sack of Crocolisk Belly##87730
.collect 50 Raw Crocolisk Belly##75014
.buy Sack of Red Blossom Leeks##87710 |n
.' You need _{_G.ceil(_G.max(0, ((250-itemcount(74844))/25)-itemcount(87710)))} Sacks of Shrimp_
.' Open the Sack to collect the ingredients |use Sack of Red Blossom Leeks##87710
.collect 250 Red Blossom Leek##74844
step
label	create_banquet_wok
.' Stand next to a fire, or create one yourself |cast Cooking fire##818
.create Banquet of the Wok##125600,Cooking,600
|confirm |only if skill("Way of the Wok")<=599
step
label	end_way_of_wok
'Congratulations, you have maxed out the _Way of the Wok_ mastery for Cooking!
.' Click here to return to the Cooking Mastery List |confirm |next start
step
goto 53.6,51.2
.talk 64231
..accept 31521 |tip This will only be avaialable when you have maxed out your cooking.
step
goto 53.6,51.2
.talk 64231
..turnin 31521
//Way of the Steamer
step
title	Way of the Steamer
label	Steamer
'Skipping 1st part of cooking |next "+fire_spirit" |only if step:Find("+create_shrimp"):IsComplete()
'Proceeding to Sauteed Carrots |next |only if default
step
goto Valley of the Four Winds 52.7,52.0
.talk 58713
.learn Shrimp Dumplings##104307
step
#include "auctioneer"
.buy 15 Giant Mantis Shrimp##74857 |next create_shrimp
.' Or
.' Click here to use Cooking Tokens to purchase this ingredient |confirm |next token_start_steam
.' Or
.' Click here to farm the ingredient yourself |confirm |next farm_carrot
//steam token start
step
label	token_start_steam
'You earn tokens by turning in _Bundles of Groceries_ as a _Repeatable Quest_
.' You can farm any cooking ingredient and turn it into _Bundle of Groceries_
|tip Farming 20 pieces of meat or 100 vegetables will get you one token. One token buys 5 pieces of meat or 25 vegetables of your choice
.' For a good location to farm vegetables for tokens, click here |confirm |next farm_veggie
.' Or
.' For a good location to farm meat for tokens, click here |confirm |next farm_meat
.' Or
.' If you have ingredients to turn in for tokens, click here |confirm |next token_end_steam
step
label	spirit
goto Vale of Eternal Blossoms 61.7,21.7
.talk 1149
.buy Ironpaw Token##402+ |n
.' You have _{curcount(402)} Tokens_
.' You need _{_G.ceil(_G.max(0,  ((15-itemcount(74857))/5)-curcount(402)))} Tokens_ to buy the ingredients you need. |only if skill ("Cooking")<=549
.' You need _{_G.ceil(_G.max(0,  ((12-itemcount(74859))/5)+((60-itemcount(74843))/25)-curcount(402)))} Tokens_ to buy the ingredients you need. |only if skill("Cooking")>=550 and skill("Cooking")<=574
.' You need _{_G.ceil(_G.max(0,  ((50-itemcount(74859))/5)+((50-itemcount(74839))/5)+((250-itemcount(74847))/25)-curcount(402)))} Tokens_ to buy the ingredients to cook |only if skill("Cooking")>=575 and skill("Cooking")<=599
|tip Remember, 1 Token will buy you 25 vegetables or 5 pieces of meat of your choice.
.' Click here when you are ready to buy Sacks of Meat with your Tokens |confirm |next buy
step
label	farm_veggie
goto The Jade Forest 53.9,81.4
.from Slingtail Treeleaper##61562+
.' These won't give you all vegetables, but you can gain a lot of Striped Melon and Jade Squash to turn in for tokens.
.' You will need 100 of a vegetable to turn in for one token
.' You have enough Squash to turn in for _{_G.ceil(_G.max(0, (20-itemcount(74847))/5))} Tokens_
.' You have enough Melon to turn in for _{_G.ceil(_G.max(0, (20-itemcount(74848))/5))} Tokens_
|tip Remember, 1 Token will buy you 25 vegetables or 5 pieces of meat of your choice.
.collect Jade Squash##74847 |n
.collect Striped Melon##74848 |n
|confirm |next token_end_steam
step
label	farm_meat
goto Dread Wastes 58.6,59.4
.' Enter this tunnel and walk over the crocodile eggs. They will hatch and respawn quickly for a great amount of farming.
.' You will need stacks of 20 meat to turn in for one token
You have enough meat to turn in for _{_G.floor(_G.max(0, (itemcount(75014))/20))} Tokens_
|tip Remember, 1 Token will buy you 25 vegetables or 5 pieces of meat.
.collect Raw Crocolisk Belly##75014 |n
|confirm |next token_end_steam
step
label	token_end_steam
goto Valley of the Four Winds 53.0,52.4
.talk 64940
.' Buy Empty containers and fill with any ingredients you have. 
.' Once you are ready to turn in for tokens, click here |confirm |next repeat
step
label	repeat
goto Valley of the Four Winds 53.5,51.2
.talk 64395
..accept 31535 |repeatable
step
goto Valley of the Four Winds 53.5,51.2
.talk 64395
..turnin 31535 |repeatable |next repeat
|next |only if default
//steam token end
step
label	 buy
'Continuing to Shrimp Dumplings |next |only if default
'Redirecting to Fire Spirit Salmon |next "fire_spirit_bag" |only if step:Find("+create_shrimp"):IsComplete()
'Redirecting to Banquet of the Steam |next "banquet_steam_bag" |only if step:Find("+create_fire_spirit"):IsComplete()
step
goto Valley of the Four Winds 53.5,51.2
.talk 64395
.buy Sack of Giant Mantis Shrimp##87722 |n
.' You need _{_G.ceil(_G.max(0,  ((15-itemcount(87722))/5)-itemcount(87707)))} Sacks of Shrimp_
.' Open the Sack to collect the ingredients |use Sack of Giant Mantis Shrimp##87722
.collect 15 Giant Mantis Shrimp##74857
|next create_shrimp
step
label	farm_shrimp
goto Krasarang Wilds 67.9,49.6
.' Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
.' Use your Fishing skill to fish in the water here. You can look for fishing pools around the beach also |cast Fishing##7620
.collect 50 Giant Mantis Shrimp##74857
step
label	create_shrimp
.' Stand next to a fire, or create one yourself |cast Cooking fire##818
.create Shrimp Dumplings##104307,Cooking,550
|confirm |only if skill("Way of the Steamer")<=549
step
label	fire_spirit
'Skipping 2nd part of cooking |next "+end_way_of_steam" |only if step:Find("+create_banquet_steam"):IsComplete()
'Proceeding to End of Way of the Steamer |next |only if default
step
goto Valley of the Four Winds 53.4,51.6
.talk 58716
.learn Fire Spirit Salmon##104308
step
#include "auctioneer"
.buy 12 Emperor Salmon##74859
.buy 60 Scallions##74843
.' Or
.' Click here to use Cooking Tokens |confirm |next token_start_steam
.' Or
.' Click here to farm the ingredients yourself |confirm |next farm_fire_spirit_1
|tip You should at least have 525 fishing for this.
step
label	farm_fire_spirit_1
goto Krasarang Wilds 37.4,35.2
.' Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
.' Use your Fishing skill to fish in the water here. You can look for fishing pools around the beach also |cast Fishing##7620
.collect 12 Emperor Salmon##74859
step
'Skipping farming |next "+create_fire_spirit" |only if step:Find("+farm_fire_spirit_2"):IsComplete()
'Proceeding to Valley Stir Fry |next |only if default
step
label	farm_fire_spirit_2
goto Krasarang Wilds 62.0,40.6
.from Riverblade Raider##59714+, Riverblade Thief##64034+
.collect 60 Scallions##74843
|next create_fire_spirit
step
label	fire_spirit_bag
goto Valley of the Four Winds 53.5,51.2
.talk 64395
.buy Sack of Emperor Salmon##87723 |n
.' You need _{_G.ceil(_G.max(0,  ((12-itemcount(74859))/5)-itemcount(87723)))} Sacks of Salmon_
.' Open the Sack to collect the ingredients |use Sack of Emperor Salmon##87723
.collect 12 Emperor Salmon##74859
.buy Sack of Scallions##87709 |n
.' You need _{_G.ceil(_G.max(0,  ((60-itemcount(74843))/25)-itemcount(87709)))} Sacks of Scallions_
.' Open the Sack to collect the ingredietns |use Sack of Scallions##87709
.collect 60 Scallions##74843
|next create_fire_spirit
step
label	create_fire_spirit
.' Stand next to a fire, or create one yourself |cast Cooking fire##818
.create Valley Stir Fry##104302,Cooking,576
|confirm |only if skill("Way of the Steamer")<=574
step
label	banquet_steam
'Skipping 1st part of farming |next "+create_banquet_steam" |only if step:Find("+end_way_of_steam"):IsComplete()
'Proceeding to farm |next |only if default
step
goto Valley of the Four Winds 53.4,51.6
.talk 58716
.learn Banquet of the Steamer##125598
step
#include "auctioneer"
.buy 50 Emperor Salmon##74859
.buy 50 Wildfowl Breast##74839
.buy 250 Jade Squash##74847
.' Or
.' Click here to use Cooking Tokens to purchase this ingredient |confirm |next token_start_steam
.' Or
.' Click here to farm the ingredient yourself |confirm |next farm_banquet_steam_1
|next create_banquet_steam
step
'Skipping 1st part of farming |next "+farm_banquet_steam_2" |only if step:Find("+farm_banquet_steam_1"):IsComplete()
'Proceeding to farm |next |only if default
step
label	farm_banquet_steam_1
goto Krasarang Wilds 37.4,35.2
.' Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
.' Use your Fishing skill to fish in the water here. You can look for fishing pools around the beach also |cast Fishing##7620
.collect 50 Emperor Salmon##74859
step
'Skipping 2st part of farming |next "+farm_banquet_steam_3" |only if step:Find("+farm_banquet_steam_2"):IsComplete()
'Proceeding to farm |next |only if default
step
label	farm_banquet_steam_2
goto Krasarang Wilds 64.6,29.3
.from Carp Hunter##58116+
.collect 50 Wildfowl Breast##74839
step
label	farm_banquet_steam_3
goto The Jade Forest 53.9,81.4
.from Slingtail Treeleaper##61562+
.collect 250 Jade Squash##74847
|next create_banquet_steam
step
label	banquet_steam_bag
goto Valley of the Four Winds 53.5,51.2
.talk 64395
.buy Sack of Wildfowl Breasts##87705 |n
.' You need _{_G.ceil(_G.max(0,  ((50-itemcount(74839))/5)-itemcount(87705)))} Sacks of Wildfowl_
.' Open the Sack to collect the ingredients |use Sack of Wildfowl Breasts##87705
.collect 50 Wildfowl Breast##74839
.buy Sack of Emperor Salmon##87723 |n
.' You need _{_G.ceil(_G.max(0, ((50-itemcount(74859))/5)-itemcount(87723)))} Sacks of Salmon_
.' Open the Sack to collect the ingredients |use Sack of Emperor Salmon##87723
.collect 50 Emperor Salmon##74859
.buy Sack of Jade Squash##87713 |n
.' You need _{_G.ceil(_G.max(0, ((250-itemcount(74847))/25)-itemcount(87713)))} Sacks of Shrimp_
.' Open the Sack to collect the ingredients |use Sack of Jade Squash##87713
.collect 250 Jade Squash##74847
step
label	create_banquet_steam
.' Stand next to a fire, or create one yourself |cast Cooking fire##818
.create Banquet of the Steamer##125598,Cooking,600
|confirm |only if skill("Way of the Steamer")<=599
step
label	end_way_of_steam
'Congratulations, you have maxed out the _Way of the Steamer_ mastery for Cooking!
.' Click here to return to the Cooking Mastery List |confirm |next start
//Way of the Grill
step
title	Way of the Grill
label	Grill
'Skipping 1st part of cooking |next "+eternal_blossom" |only if step:Find("+create_tiger_steak"):IsComplete()
'Proceeding to Tiger Steak |next |only if default
step
goto Valley of the Four Winds 52.7,52.0
.talk 58713
.learn Charbroiled Tiger Steak##104298
step
#include "auctioneer"
.buy 15 Raw Tiger Steak##74857 |next create_tiger_steak
.' Or
.' Click here to use Cooking Tokens to purchase this ingredient |confirm |next token_start_grill
.' Or
.' Click here to farm the ingredient yourself |confirm |next farm_carrot
//Grill token start
step
label	token_start_grill
'You earn tokens by turning in _Bundles of Groceries_ as a _Repeatable Quest_
.' You can farm any cooking ingredient and turn it into _Bundle of Groceries_
|tip Farming 20 pieces of meat or 100 vegetables will get you one token. One token buys 5 pieces of meat or 25 vegetables of your choice
.' For a good location to farm vegetables for tokens, click here |confirm |next farm_veggie
.' Or
.' For a good location to farm meat for tokens, click here |confirm |next farm_meat
.' Or
.' If you have ingredients to turn in for tokens, click here |confirm |next token_end_grill
step
label	spirit
goto Vale of Eternal Blossoms 61.7,21.7
.talk 1149
.buy Ironpaw Token##402+ |n
.' You have _{curcount(402)} Tokens_
.' You need _{_G.ceil(_G.max(0,  ((15-itemcount(74857))/5)-curcount(402)))} Tokens_ to buy the ingredients you need. |only if skill ("Way of the Grill")<=549
.' You need _{_G.ceil(_G.max(0,  ((12-itemcount(74856))/5)+((60-itemcount(74848))/25)-curcount(402)))} Tokens_ to buy the ingredients you need. |only if skill("Way of the Grill")>=550 and skill("Way of the Grill")<=574
.' You need _{_G.ceil(_G.max(0,  ((50-itemcount(74860))/5)+((50-itemcount(74838))/5)+((250-itemcount(74850))/25)-curcount(402)))} Tokens_ to buy the ingredients to cook |only if skill("Way of the Grill")>=575 and skill("Way of the Grill")<=599
|tip Remember, 1 Token will buy you 25 vegetables or 5 pieces of meat of your choice.
.' Click here when you are ready to buy Sacks of Meat with your Tokens |confirm |next buy
step
label	farm_veggie
goto The Jade Forest 53.9,81.4
.from Slingtail Treeleaper##61562+
.' These won't give you all vegetables, but you can gain a lot of Striped Melon and Jade Squash to turn in for tokens.
.' You will need 100 of a vegetable to turn in for one token
.' You have enough Squash to turn in for _{_G.floor(_G.max(0, (itemcount(74847))/100))} Tokens_
.' You have enough Melon to turn in for _{_G.floor(_G.max(0, (itemcount(74848))/100))} Tokens_
|tip Remember, 1 Token will buy you 25 vegetables or 5 pieces of meat of your choice.
.collect Jade Squash##74847 |n
.collect Striped Melon##74848 |n
|confirm |next token_end_grill
step
label	farm_meat
goto Dread Wastes 58.6,59.4
.' Enter this tunnel and walk over the crocodile eggs. They will hatch and respawn quickly for a great amount of farming.
.' You will need stacks of 20 meat to turn in for one token
You have enough meat to turn in for _{_G.floor(_G.max(0, (itemcount(75014))/20))} Tokens_
|tip Remember, 1 Token will buy you 25 vegetables or 5 pieces of meat.
.collect Raw Crocolisk Belly##75014 |n
|confirm |next token_end_grill
step
label	token_end_grill
goto Valley of the Four Winds 53.0,52.4
.talk 64940
.' Buy Empty containers and fill with any ingredients you have. 
.' Once you are ready to turn in for tokens, click here |confirm |next repeat
step
label	repeat
goto Valley of the Four Winds 53.5,51.2
.talk 64395
..accept 31535 |repeatable
step
goto Valley of the Four Winds 53.5,51.2
.talk 64395
..turnin 31535 |repeatable |next repeat
|next |only if default
//Grill token end
step
label	 buy
'Continuing to Tiger Steak |next |only if default
'Redirecting to Fire Spirit Salmon |next "eternal_blossom" |only if step:Find("+create_tiger_steak"):IsComplete()
step
goto Valley of the Four Winds 53.5,51.2
.talk 64395
.buy Sack of Raw Tiger Steak##87701 |n
.' You need _{_G.ceil(_G.max(0, ((15-itemcount(74833))/5)-itemcount(87701)))} Sacks of Raw Tiger Steak_
.' Open the Sack to collect the ingredients |use Sack of Raw Tiger Steak##87701
.collect 15 Raw Tiger Steak##74833
|next create_tiger_steak
step
label	farm_tiger
goto Krasarang Wilds 66.0,28.4
.from Krasari Huntress##58070+
.' If you want to travel a little further, you can farm Tiger Meat here with a higher spawn rate.
.' Go to [The Jade Forest 62.5,24.3]
.from Windward Tiger##63537+
.collect 15 Raw Tiger Steak##74833
step
label	create_tiger_steak
.' Stand next to a fire, or create one yourself |cast Cooking fire##818
.create Charboiled Tiger Steak##104298,Cooking,15 total |n
.skill Way of the Grill,550 |only if skill('Way of the Grill')>=550
.' Achieve Way of the Grill level 550 |confirm |only if skill('Way of the Grill')<=549
step
label	eternal_blossom
'Skipping 2nd part of cooking |next "+banquet_grill" |only if step:Find("+create_eternal_blossom"):IsComplete()
'Proceeding to Eternal Blossom Fish |next |only if default
step
goto Valley of the Four Winds 53.4,51.6
.talk 58716
.learn Eternal Blossom Fish##104299
step
#include "auctioneer"
.buy 12 Jade Lungfish##74856
.buy 60 Striped Melon##74848
.' Or
.' Click here to use Cooking Tokens |confirm |next token_start_grill
.' Or
.' Click here to farm the ingredients yourself |confirm |next farm_eternal_blossom_1
|tip You should at least have 525 fishing for this.
step
label	farm_eternal_blossom_1
goto The Jade Forest 55.0,71.1
.' Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
.' Use your Fishing skill to fish in the water here. Look for Schools of fish to increase your chance of catching Jade Lungfish |cast Fishing##7620
.collect 12 Jade Lungfish##74856
step
'Skipping farming |next "+create_eternal_blossom" |only if step:Find("+farm_eternal_blossom_2"):IsComplete()
'Proceeding to Eternal Blossom Fish |next |only if default
step
label	farm_eternal_blossom_2
goto The Jade Forest 53.9,81.4
.from Slingtail Treeleaper##61562+
.collect 60 Striped Melon##74848
step
label	eternal_blossom_bag
'Moving to next step |next |only if default
'Redirecting to Banquet of the grill |next "banquet_grill" |only if step:Find("+create_eternal_blossom"):IsComplete()
step
goto Valley of the Four Winds 53.5,51.2
.talk 64395
.buy Sack of Jade Lungfish##87721 |n
.' You need _{_G.ceil(_G.max(0, ((12-itemcount(74856))/5)-itemcount(87721)))} Sacks of Lungfish_
.' Open the Sack to collect the ingredients |use Sack of Jade Lungfish##87721
.collect 12 Jade Lungfish##74856
.buy Sack of Striped Melons##87714 |n
.' You need _{_G.ceil(_G.max(0, ((60-itemcount(74848))/25)-itemcount(87714)))} Sacks of Melon_
.' Open the Sack to collect the ingredients |use Sack of Striped Melons##87714
.collect 60 Striped Melon##74848
step
label	create_eternal_blossom
.' Stand next to a fire, or create one yourself |cast Cooking fire##818
.create Eternal Blossom Fish##104299,Cooking,12 total |n
.skill Way of the Grill,575 |only if skill('Way of the Grill')>=575
.' Achieve Way of the Grill level 575 |confirm |only if skill('Way of the Grill')<=574
step
label	banquet_grill
'Skipping 1st part of farming |next "+end_way_of_grill" |only if step:Find("+create_banquet_grill"):IsComplete()
'Proceeding to farm |next |only if default
step
goto Valley of the Four Winds 53.4,51.6
.talk 58716
.learn Banquet of the Grill##125141
step
#include "auctioneer"
.buy 50 Redbelly Mandarin##74860
.buy 50 Raw Crab Meat##74838
.buy 250 White Turnip##74850
.' Or
.' Click here to use Cooking Tokens to purchase this ingredient |confirm |next token_start_grill
.' Or
.' Click here to farm the ingredient yourself |confirm |next farm_banquet_grill_1
|next create_banquet_grill
step
'Skipping 1st part of farming |next "+farm_banquet_grill_2" |only if step:Find("+farm_banquet_grill_1"):IsComplete()
'Proceeding to farm |next |only if default
step
label	farm_banquet_grill_1
goto The Jade Forest 55.0,71.1
.' Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
.' Use your Fishing skill to fish in the water here. Look for Schools of fish to increase your chance of catching Jade Lungfish |cast Fishing##7620
.collect 50 Redbelly Mandarin##74860
step
'Skipping 2st part of farming |next "+farm_banquet_grill_3" |only if step:Find("+farm_banquet_grill_2"):IsComplete()
'Proceeding to farm |next |only if default
step
label	farm_banquet_grill_2
goto Krasarang Wilds 55.3,44.2
.from Flesh-Eating Sandsnapper##287+, Viseclaw Fisher##58880+
.collect 50 Raw Crab Meat##74838
step
label	farm_banquet_grill_3
goto The Jade Forest 53.9,81.4
.from Slingtail Treeleaper##61562+
.collect 250 Jade Squash##74847
|next create_banquet_grill
step
label	banquet_grill_bag
goto Valley of the Four Winds 53.5,51.2
.talk 64395
.buy Sack of Redbelly Mandarin##87724 |n
.' You need _{_G.ceil(_G.max(0,  ((50-itemcount(74860))/5)-itemcount(87724)))} Sacks of Mandarin_
.' Open the Sack to collect the ingredients |use Sack of Redbelly Mandarin##87724
.collect 50 Redbelly Mandarin##74860
.buy Sack of Raw Crab Meat##87704 |n
.' You need _{_G.ceil(_G.max(0, ((50-itemcount(74838))/5)-itemcount(87704)))} Sacks of Crab_
.' Open the Sack to collect the ingredients |use Sack of Raw Crab Meat##87704
.collect 50 Raw Crab Meat##74838
.buy Sack of Jade Squash##87713 |n
.' You need _{_G.ceil(_G.max(0, ((250-itemcount(87713))/25)-itemcount(87716)))} Sacks of Squash_
.' Open the Sack to collect the ingredients |use Sack of Jade Squash##87713
.collect 250 Jade Squash##74847
step
label	create_banquet_grill
.' Stand next to a fire, or create one yourself |cast Cooking fire##818
.create Banquet of the Grill##125141,Cooking,5 total |n
.skill Way of the Grill,600 |only if skill('Way of the Grill')==600
.' Achieve Way of the Grill level 600 |confirm |only if skill('Way of the Grill')<=599
step
label	end_way_of_grill
'Congratulations, you have maxed out the _Way of the Grill_ mastery for Cooking!
.' Click here to return to the Cooking Mastery List |confirm |next start
//Way of the Pot
step
title	Way of the Pot
label	Pot
'Skipping 1st part of cooking |next "+braised_turtle" |only if step:Find("+create_mist"):IsComplete()
'Proceeding to Sauteed Carrots |next |only if default
step
goto Valley of the Four Winds 52.6,51.6
.talk 58714
.learn Swirling Mist Soup##104304
step
#include "auctioneer"
.buy 15 Jade Lungfish##74856 |next create_mist
.' Or
.' Click here to use Cooking Tokens to purchase this ingredient |confirm |next token_start_pot
.' Or
.' Click here to farm the ingredient yourself |confirm |next farm_jadefish
//Pot token start
step
label	token_start_pot
'You earn tokens by turning in _Bundles of Groceries_ as a _Repeatable Quest_
.' You can farm any cooking ingredient and turn it into _Bundle of Groceries_
|tip Farming 20 pieces of meat or 100 vegetables will get you one token. One token buys 5 pieces of meat or 25 vegetables of your choice
.' For a good location to farm vegetables for tokens, click here |confirm |next farm_veggie
.' Or
.' For a good location to farm meat for tokens, click here |confirm |next farm_meat
.' Or
.' If you have ingredients to turn in for tokens, click here |confirm |next token_end_pot
step
label	spirit
goto Vale of Eternal Blossoms 61.7,21.7
.talk 1149
.buy Ironpaw Token##402+ |n
.' You have _{curcount(402)} Tokens_
.' You need _{_G.ceil(_G.max(0,  ((15-itemcount(74856))/5)-curcount(402)))} Tokens_ to buy the ingredients you need. |only if skill ("Way of the Pot")<=549
.' You need _{_G.ceil(_G.max(0,  ((12-itemcount(74837))/5)+((60-itemcount(74841))/25)-curcount(402)))} Tokens_ to buy the ingredients you need. |only if skill('Way of the Pot')>=550 and skill('Way of the Pot')<=574
.' You need _{_G.ceil(_G.max(0,  ((250-itemcount(74841))/25)+((50-itemcount(74834))/5)+((50-itemcount(74864))/5)-curcount(402)))} Tokens_ to buy the ingredients to cook |only if skill('Way of the Pot')>=575 and skill('Way of the Pot')<=599
|tip Remember, 1 Token will buy you 25 vegetables or 5 pieces of meat of your choice.
.' Click here when you are ready to buy Sacks of Meat with your Tokens |confirm |next buy
step
label	farm_veggie
goto The Jade Forest 53.9,81.4
.from Slingtail Treeleaper##61562+
.' These won't give you all vegetables, but you can gain a lot of Striped Melon and Jade Squash to turn in for tokens.
.' You will need 100 of a vegetable to turn in for one token
.' You have enough Squash to turn in for _{_G.ceil(_G.max(0, (20-itemcount(74847))/5))} Tokens_
.' You have enough Melon to turn in for _{_G.ceil(_G.max(0, (20-itemcount(74848))/5))} Tokens_
|tip Remember, 1 Token will buy you 25 vegetables or 5 pieces of meat of your choice.
.collect Jade Squash##74847 |n
.collect Striped Melon##74848 |n
|confirm |next token_end_pot
step
label	farm_meat
goto Dread Wastes 58.6,59.4
.' Enter this tunnel and walk over the crocodile eggs. They will hatch and respawn quickly for a great amount of farming.
.' You will need stacks of 20 meat to turn in for one token
You have enough meat to turn in for _{_G.floor(_G.max(0, (itemcount(75014))/20))} Tokens_
|tip Remember, 1 Token will buy you 25 vegetables or 5 pieces of meat.
.collect Raw Crocolisk Belly##75014 |n
|confirm |next token_end_pot
step
label	token_end_pot
goto Valley of the Four Winds 53.0,52.4
.talk 64940
.' Buy Empty containers and fill with any ingredients you have. 
.' Once you are ready to turn in for tokens, click here |confirm |next repeat
step
label	repeat
goto Valley of the Four Winds 53.5,51.2
.talk 64395
..accept 31535 |repeatable
step
goto Valley of the Four Winds 53.5,51.2
.talk 64395
..turnin 31535 |repeatable |next repeat
|next |only if default
//Pot token end
step
label	 buy
'Continuing to Swirling Mist Soup |next |only if default
'Redirecting to Braised Turtle |next "braised_turtle_bag" |only if step:Find("+create_mist"):IsComplete()
step
goto Valley of the Four Winds 53.5,51.2
.talk 64395
.buy Sack of Jade Lungfish##87721 |n
.' You need _{_G.ceil(_G.max(0, ((15-itemcount(74856))/5)-itemcount(87721)))} Sacks of Lungfish_
.' Open the Sack to collect the ingredients |use Sack of Jade Lungfish##87721
.collect 15 Jade Lungfish##74856
|next create_mist
step
label	farm_jadefish
goto The Jade Forest 55.0,71.1
.' Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
.' Use your Fishing skill to fish in the water here. Look for Schools of fish to increase your chance of catching Jade Lungfish |cast Fishing##7620
.collect 15 Jade Lungfish##74856
step
label	create_mist
.' Stand next to a fire, or create one yourself |cast Cooking fire##818
.create 15 Swirling Mist Soup##104304,Cooking,5 total |n
.skill Way of the Pot,550 |only if skill('Way of the Pot')>=550
|confirm |only if skill("Way of the Pot")<=549
step
label	braised_turtle
'Skipping 2nd part of cooking |next "+end_way_of_pot" |only if step:Find("+create_banquet_pot"):IsComplete()
'Proceeding to Braised Turtle |next |only if default
step
goto Valley of the Four Winds 52.6,51.6
.talk 58714
.learn Braised Turtle##104305
step
#include "auctioneer"
.buy 12 Raw Turtle Meat##74837
.buy 60 Juicycrunch Carrot##74841
.' Or
.' Click here to use Cooking Tokens |confirm |next token_start_pot
.' Or
.' Click here to farm the ingredients yourself |confirm |next farm_braised_1
step
label	farm_braised_1
goto Valley of the Four Winds 67.3,29.4
.from Wyrmhorn Turtle##56256+
.collect 12 Raw Turtle Meat##74837
step
'Skipping farming |next "+create_braised_turtle" |only if step:Find("+farm_braised_2"):IsComplete()
'Proceeding to Braised Turtle |next |only if default
step
label	farm_braised_2
goto Valley of the Four Winds 86.5,28.5
.from Snagtooth Hooligan##56462+
.collect 60 Juicycrunch Carrot##74841
step
'Continuing to Braised Turtle |only if default
'Redirecting to Banquet of the pot |next "banquet_pot_bag" |only if step:Find("+create_braised_turtle"):IsComplete()
step
label	braised_turtle_bag
goto Valley of the Four Winds 53.5,51.2
.talk 64395
.buy Sack of Raw Turtle Meat##87703 |n
.' You need _{_G.ceil(_G.max(0, ((12-itemcount(74837))/5)-itemcount(87703)))} Sacks of Salmon_
.' Open the Sack to collect the ingredients |use Sack of Raw Turtle Meat##87703
.collect 12 Raw Turtle Meat##74837
.buy Sack of Juicycrunch Carrots##87707 |n
.' You need _{_G.ceil(_G.max(0, ((60-itemcount(74841))/25)-itemcount(87707)))} Sacks of Scallions_
.' Open the Sack to collect the ingredients |use Sack of Juicycrunch Carrots##87707
.collect 60 Juicycrunch Carrot##74841
|next create_braised_turtle
step
label	create_braised_turtle
.' Stand next to a fire, or create one yourself |cast Cooking fire##818
.create Braised Turtle##104305,Cooking,6 total |n
.skill Way of the Pot,575 |only if skill('Way of the Pot')>=575
.' Achieve Way of the Grill level 600 |confirm |only if skill('Way of the Pot')<=574
step
label	banquet_pot
'Skipping 1st part of farming |next "+create_banquet_pot" |only if step:Find("+end_way_of_pot"):IsComplete()
'Proceeding to farm |next |only if default
step
goto Valley of the Four Winds 52.6,51.6
.talk 58714
.learn Banquet of the Pot##125596
step
#include "auctioneer"
.buy 50 Reef Octopus##74864
.buy 50 Mushan Ribs##74834
.buy 250 Juciycrunch Carrot##74841
.' Or
.' Click here to use Cooking Tokens to purchase this ingredient |confirm |next token_start_pot
.' Or
.' Click here to farm the ingredient yourself |confirm |next farm_banquet_pot_1
|next create_banquet_pot
step
'Skipping 1st part of farming |next "+farm_banquet_pot_2" |only if step:Find("+farm_banquet_pot_1"):IsComplete()
'Proceeding to farm |next |only if default
step
label	farm_banquet_pot_1
goto Krasarang Wilds 67.9,49.6
.' Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
.' Use your Fishing skill to fish in the water here. You can look for fishing pools around the beach also |cast Fishing##7620
.collect 50 Reef Octopus##74864
step
'Skipping 2st part of farming |next "+farm_banquet_pot_3" |only if step:Find("+farm_banquet_pot_2"):IsComplete()
'Proceeding to farm |next |only if default
step
label	farm_banquet_pot_2  
goto Valley of the Four Winds 24.6,75.9
.from Dustback Warder##65627+, Young Dustback Mushan##58427+
.collect 50 Mushan Ribs##74834
step
label	farm_banquet_pot_3
goto Valley of the Four Winds 86.5,28.5
.from Snagtooth Hooligan##56462+
.collect 250 Juciycrunch Carrot##74841
|next create_banquet_pot
step
label	banquet_pot_bag
goto Valley of the Four Winds 53.5,51.2
.talk 64395
.buy Sack of Reef Octopus##87727 |n
.' You need _{_G.ceil(_G.max(0,  ((1-0itemcount(74864))/5)-itemcount(87727)))} Sacks of Mandarin_
.' Open the Sack to collect the ingredients |use Sack of Reef Octopus##87727
.collect 50 Reef Octopus##74864
.buy Sack of Mushan Ribs##87702 |n
.' You need _{_G.ceil(_G.max(0, ((50-itemcount(74834))/5)-itemcount(87702)))} Sacks of Salmon_
.' Open the Sack to collect the ingredients |use Sack of Mushan Ribs##87702
.collect 50 Mushan Ribs##74834
.buy Sack of Juicycrunch Carrots##87707 |n
.' You need _{_G.ceil(_G.max(0, ((250-itemcount(74841))/25)-itemcount(87707)))} Sacks of Shrimp_
.' Open the Sack to collect the ingredients |use Sack of Juicycrunch Carrots##87707
.collect 250 Juicycrunch Carrot##74841
step
label	create_banquet_pot
.' Stand next to a fire, or create one yourself |cast Cooking fire##818
.create Banquet of the pot##125141,Cooking,5 total |n
.skill Way of the Pot,600 |only if skill('Way of the Pot')>=600
.' Achieve Way of the Grill level 600 |confirm |only if skill('Way of the Pot')<=599
step
label	end_way_of_pot
'Congratulations, you have maxed out the _Way of the Pot_ mastery for Cooking!
.' Click here to return to the Cooking Mastery List |confirm |next start
step
label	mastery
goto 53.6,51.2
.talk 64231
..accept 31521 |tip This will only be avaialable when you have maxed out your cooking.
step
goto 53.6,51.2
.talk 64231
..turnin 31521
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Profession Guides\\Cooking\\Cooking Dailies Guide",[[
step
#include "H_MOP_Cooking_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Profession Guides\\Alchemy\\Alchemy 500-600 Leveling Guide",[[
description This guide will walk you through leveling your Alchemy skill from 500-600.
author support@zygorguides.com
completion skill,Alchemy,600
condition suggested hasprof('Alchemy',500,600)
// ----------
// 500-600
// ----------
// TRAIN: Zen Master Alchemy
step
title + Alchemy 500-600
label "alch_500-600"
#include "trainer_Alchemy"
.' Learn the Zen Master Alchemist skill |skillmax Alchemy,600 |tip You must be at least level 85.
.learn Draught of War##93935
step
#include "auctioneer"
.buy 150 Green Tea Leaf##72234
.buy 75 Snow Lilies##79010
.buy 75 Fool's Cap##79011
#include go_farm,skill="Herbalism",req="500",goto="alch_500-600_farm"
|next "alch_500-600_skill"
//GATHER: 150 Green Tea Leaves, 75 Snow Lilies, 75 Fool's Caps
step
label "alch_500-600_farm"
title + Alchemy 500-600 (farming)
#include "trainer_Herbalism"
.skillmax Herbalism,600
step
label "travel"
'Skipping travel |next "+farm" |only if itemcount("Goldclover")>=30 and itemcount("Lichbloom")>=70 and itemcount("Frost Lotus")>=10
'Proceeding to travel |next |only if default
step
label "farm"
'Skipping 1st part of farming |next "+farm2" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
map Valley of the Four Winds
path	81.4,21.5	76.4,29.2	71.1,29.5
path	69.0,31.0	70.8,34.4	70.6,41.8
path	65.1,60.1	57.6,65.6	50.8,58.6
path	47.4,64.9	46.9,61.3	42.5,54.3
path	33.6,62.1	28.1,72.7	25.7,78.4
path	24.4,56.0	21.9,53.9	12.8,44.7
path	14.3,41.2	14.8,35.8	19.6,34.4
#include "follow_path_herbs"
.collect 150 Green Tea Leaf##72234
.' Keep any _Snow Lily_ or _Fool's Cap_ you find.
#include "max_skill_warning",skill="Herbalism",goto="alch_500-600_farm"
step
label "farm2"
'Skipping 2nd part of farming |next "+farm3" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
map Dread Wastes
path	40.4,56.5	43.9,59.5	43.1,64.4
path	40.5,69.7	37.4,69.2	33.0,66.4
path	33.4,61.6	30.0,56.5	35.5,55.1
#include follow_path_herbs
.collect 75 Fool's Cap##79011
#include "max_skill_warning",skill="Herbalism",goto="alch_500-600_farm"
step
label "farm3"
'Skipping 3rd part of farming |next "alch_500-600_skill" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
map Kun-Lai Summit
path	39.4,77.3	38.0,75.5	40.1,71.8
path	43.7,64.5	42.9,60.8	41.1,59.3
path	33.9,54.9	36.0,75.5
#include follow_path_herbs
.collect 75 Snow Lily##79010
#include "max_skill_warning",skill="Herbalism",goto="alch_500-600_farm"
// CREATE: 25 Master Healing Potions, 25 Mantid Elixir, 50 Master Mana Potions
step
label "alch_500-600_skill"
title + Alchemy 500-600
#include "vendor_Alchemy"
.buy 120 Crystal Vial##3371
step
.create 25 Master Healing Potions##114752,Alchemy,525
.' While you create these, you will discover random Pandaria Recipes. Keep making potions until you discover _Mantid Elixir_ or _Master Mana Potion_.
.learn Mantid Elixir##114755 |or |next "mantid"
.learn Master Mana Potion##114775 |or |next "mana"
step
label "mantid"
.create 25 Mantid Elixir##114755,Alchemy,550
.' While making these you should discover the recipe for _Master Mana Potions_.
.learn Master Mana Potion##114775 |next "mana2"
step
label "mana"
.create 50 Master Mana Potion##114775,Alchemy,600
|next "alch_600"
step
label "mana2"
.create 75 Master Mana Potion##114775,Alchemy,600
step
label "alch_600"
' Congratulations, you are now a Zen Master Alchemist!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Profession Guides\\Cooking\\Cooking Dailies\\Half Hill Cooking Dailies",[[
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Profession Guides\\Archaeology\\Archaeology 525-600 Leveling Guide",[[
description This guide will walk you through leveling your Archaeology skill from 525-600.
author support@zygorguides.com
completion skill,Archaeology,600
condition suggested hasprof('Archaeology',525,600)
// ----------
// 525 - 600
// ----------
// TRAIN: Zen Master Archaeology
step
title + Archaeology 525-600
label "arc_525-600"
#include "trainer_Archaeology"
.' Learn the Zen Master Archaeology skill |skillmax Archaeology,600 |tip You must be at least level 80.
step
'Open your world map, find dig sites in Pandaria, then go to them |tip They look like small shovel icons on your world map that spawn in random places.  Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
.' Use your Survey ability inside the dig site area |cast Survey##80451
.' A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts |tip Each dig site has 6 artifacts you can find.
.' Click the Archaeology Fragments that spawn on the ground
.' Open your Archaeology profession window |cast Archaeology##78670
.' Click artifacts to open them, then solve them once you have the required amounts of each
.skill Archaeology,600
step
title + Archaeology 600
label "arc_600"
'Congratulations, you are now a level 600 Archaeologist.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Profession Guides\\Blacksmithing\\Blacksmithing 500-600 Leveling Guide",[[
description This guide will walk you through leveling your Blacksmithing skill from 500-600.
author support@zygorguides.com
completion skill,Blacksmithing,600
condition suggested hasprof('Blacksmithing',500,600)
// ----------
// 500 - 600
// ----------
step
title + Blacksmithing 500-600
label "bla_500-600"
#include "trainer_Blacksmithing"
.skillmax Blacksmithing,600 
step
#include "auctioneer"
.buy 200 Ghost Iron Bar##72096
#include go_farm,skill="Mining",req="500",goto="bla_500-600_farm"
next "bla_500-600_skill"
step
label "bla_500-600_farm"
#include "trainer_Mining"
.skillmax Mining,600
.learn Smelt Ghost Iron##102165
'Your _Mining_ skill is too low to learn this; You can proceed with farming, but your skill gains will stop at 450. It's better to skill up first. |only if skill("Mining")<425 and skillmax("Mining")<525
step
label	"farming"
map Krasarang Wilds
path	70.3,9.7	66.1,18.5	64.5,21.5
path	61.6,21.9	52.0,30.2	40.2,27.5	
path	38.0,28.1	33.4,32.1	33.0,28.9
path	28.2,37.9	18.4,33.3	14.8,41.8	
path	15.8,47.6	13.1,52.8	9.8,54.9	
path	13.6,64.2	32.3,80.1	35.6,69.0
path	39.5,77.9	41.7,89.1	46.3,94.4
path	48.3,92.3	50.0,90.5	45.6,68.2
path	44.5,65.3	48.3,45.4	55.9,34.3
path	58.6,36.7	65.1,35.6	69.2,28.7
path	74.8,24.3	75.5,35.0	77.7,34.9	
path	79.8,17.9	82.3,17.8	85.3,21.4				
path	86.8,26.6	88.2,23.8	85.0,9.9				
#include "follow_path_mine"
.collect 500 Ghost Iron Ore##72092
#include "max_skill_warning",skill="Mining",goto="bla_500-600_farm"
step
#include "trainer_Mining"
.learn Smelt Ghost Iron##102165
step
#include "maincity_anvil"
.create Smelt Ghost Iron##102165,Mining,200 total
.collect 250 Ghost Iron Bar##72096
step
label "bla_500-600_skill"
#include "trainer_Blacksmithing"
.learn Ghost-Forged Bracers##122581
step
#include "maincity_anvil"
.create Ghost-Forged Bracers##122581,Blacksmithing,525
step
#include "trainer_Blacksmithing"
.learn Ghostly Skeleton Key##122581
step
#include "maincity_anvil"
.create Ghostly Skeleton Key##122633,Blacksmithing,560
step
#include "trainer_Blacksmithing"
.learn Ghost-Forged Helm##122576
step
#include "maincity_anvil"
.create Ghost-Forged Helm##122576,Blacksmithing,565
step
#include "trainer_Blacksmithing"
.learn Ghost Shard##122641
step
#include "maincity_anvil"
.create Ghost Shard##122641,Blacksmithing,575
step
goto Shrine of Two Moons/1 26.0,45.2
.talk 64058
.buy 1 Plans: Contender's Revenant Bracers##84160 |n
..learn Contender's Revenant Bracers##122621 |use Plans: Contender's Revenant Bracers##84160
step
#include "maincity_anvil"
.create Contender's Revenant Bracers##122621,Blacksmithing,600
step
title + Blacksmithing 600
label "bla_600"
'Congratulations, you are now a level 600 Blacksmith!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Profession Guides\\Enchanting\\Enchanting 525-600 Leveling Guide",[[
description This guide will walk you through leveling your Enchanting skill from 525-600.
author support@zygorguides.com
completion skill,Enchanting,600
condition suggested hasprof('Enchanting',525,600)
// ----------
// 525 - 600
// ----------
// TRAIN: Zen Master Enchanter
step
title +Enchanting 525-600
label "ench_525_600"
#include "trainer_Enchanting"
.skillmax Enchanting,600
.learn Enchant Boots - Greater Precision##104408
.learn Enchant Weapon - Elemental Force##104430
.learn Mysterious Essence##116497
step
#include "auctioneer"
.buy 56 Spirit Dust##74249
.buy 41 Mysterious Essence##74250
#include "go_disenchant",skill="Enchanting",req="1",goto="ench_525_600_farm"
next "ench_525_600_skill" 
// DISENCHANT: 56 Spirit Dust, 41 Mysterious Essence
step
label "ench_525_600_farm"
'Disenchant any uncommon quality (green) armor and weapons with an item level of 372-414.|cast Disenchant##13262
.collect 56 Spirit Dust##74249
.collect 41 Mysterious Essence##74250
next "ench_525_600_skill" 
step
label "ench_525_600_skill"
.create 12 Enchant Boots - Greater Precision##104408,Enchanting,549
step
.create 1 Enchant Weapon - Elemental Force##104430,Enchanting,553
step
#include "trainer_Enchanting"		
.learn Enchant Boots - Greater Haste##104407
.learn Spirit Dust##118237
step
.create 11 Enchant Boots - Greater Haste##104407,Enchanting,575
step
#include "trainer_Enchanting"	
.learn Enchant Chest - Glorious Stats##104395
step
.create 5 Enchant Chest - Glorious Stats##104395,Enchanting,600
step
label "ench_600"
'Congratulations, you are now a level 600 Enchanter!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Profession Guides\\Engineering\\Engineering 500-600 Leveling Guide",[[
description This guide will walk you through leveling your Engineering skill from 500-600.
author support@zygorguides.com
completion skill,Engineering,600
condition suggested hasprof('Engineering',500,600)
// ----------
// 500 - 600
// ----------
// TRAIN: Zen Master Engineer
step
title +Engineering 500-600
label  "eng_500-600"
#include "trainer_Engineering"
.skillmax Engineering,600 |tip You must be at least level 80.
.learn Ghost Iron Bolts##127113
.learn High-Explosive Gunpowder##127114
step
#include "auctioneer"
.buy 383 Ghost Iron Bar##72096
.buy 74 Windwool Cloth##72988
#include go_farm,skill="Mining",req="500",goto="eng_500-600_farm"
next "eng_500-600_skill"
 	step
label  "eng_500-600_farm"
#include "trainer_Mining"
.skillmax Mining,600
.learn Smelt Ghost Iron##102165
step
label	"farming"
map Krasarang Wilds
path	70.3,9.7	66.1,18.5	64.5,21.5
path	61.6,21.9	52.0,30.2	40.2,27.5	
path	38.0,28.1	33.4,32.1	33.0,28.9
path	28.2,37.9	18.4,33.3	14.8,41.8	
path	15.8,47.6	13.1,52.8	9.8,54.9	
path	13.6,64.2	32.3,80.1	35.6,69.0
path	39.5,77.9	41.7,89.1	46.3,94.4
path	48.3,92.3	50.0,90.5	45.6,68.2
path	44.5,65.3	48.3,45.4	55.9,34.3
path	58.6,36.7	65.1,35.6	69.2,28.7
path	74.8,24.3	75.5,35.0	77.7,34.9	
path	79.8,17.9	82.3,17.8	85.3,21.4				
path	86.8,26.6	88.2,23.8	85.0,9.9				
#include "follow_path_mine"
.collect 766 Ghost Iron Ore##72092
#include "max_skill_warning",skill="Mining",goto="eng_500-600_farm"
step
label "eng_500-600_skill"
goto 43.9,38.6
.from Springtail Leaper##57415+, Springtail Gnasher##57413+
.collect 74 Windwool Cloth##72988
.collect 20 Mote of Harmony##89112 |n |use Mote of Harmony##89112 |tip Turn 10 Mote of Harmony into a Spirit of Harmony
.collect 2 Spirit of Harmony##76061 
step
#include "maincity_anvil"
.create 383 Ghost Iron Bar##102165,Mining,383 total	
step
#include "maincity_anvil"
.create Ghost Iron Bolts##127113,Engineering,94 total
.collect 188 Ghost Iron Bolts##77467
step
.create High-Explosive Gunpowder##127114,Engineering,101 total
.collect 202 High-Explosive Gunpowder##77468
.skill Engineering,550
step
#include "trainer_Engineering"
.learn Mist-Piercing Goggles##127130
.learn Thermal Anvil##127131
.learn Tinker's Kit##131563
.learn Ghost Iron Dragonling##127134
step
#include "maincity_anvil"
.create Ghost Iron Dragonling##127134,Engineering,575
step
#include "maincity_anvil"
.create Tinker's Kit##131563,Engineering,580
step
#include "maincity_anvil"
.create Thermal Anvil##127131,Engineering,595
step
#include "maincity_anvil"
.create Mist-Piercing Goggles##127130,Engineering,600
step
title +Engineering 600
label "eng_600"
'Congratulations, you are now a level 600 Engineer!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Profession Guides\\First Aid\\First Aid 525-600 Leveling Guide",[[
description This guide will walk you through leveling your First Aid skill from 525-600.
author support@zygorguides.com
completion skill,First Aid,600
condition suggested hasprof('First Aid',525,600)
// ----------
// 525 - 600
// ----------
// TRAIN: Zen Master First Aid
step
title + First Aid 525-600
label "aid_525-600"
#include "trainer_FirstAid"
.skillmax First Aid,600 |tip You must be at least level 85.
.learn Windwool Bandage##102697
step
#include "auctioneer"
.buy 150 Windwool Cloth##72988
#include go_farm,skill="First Aid",req="525",goto="aid_525-600_farm"
|next "aid_525-600_skill"
// GATHER: 280 Embersilk Cloth
step
label "aid_525-600_farm"
goto Krasarang Wilds 43.9,38.6
.from Springtail Leaper##57415+, Springtail Gnasher##57413+
.collect 150 Windwool Cloth##72988
// CREATE: 25 Windwool Bandage, 50 Heavy Windwool Bandage
step
label "aid_525-600_skill"
.create Windwool Bandage##102697,Leatherworking,550
step
#include "trainer_FirstAid"
.learn Heavy Windwool Bandage##102698
step
.create Heavy Embersilk Bandage##102698,First Aid,600
step
label "aid_600"
'Congratulations, you are now a Zen Master Leatherworker!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Profession Guides\\Fishing\\Fishing 525-600 Leveling Guide",[[
description This guide will walk you through leveling your Fishing skill from 525-600.
author support@zygorguides.com
completion skill,Fishing,600
condition suggested hasprof('Fishing',525,600)
// ----------
// 525 - 600
// ----------
// TRAIN: Zen Master Fishing
step
label "fish_525-600"
#include "trainer_Fishing"
.skillmax Fishing,600
step
 goto 66.5,41.5
.' Equip your Strong Fishing Pole |use Strong Fishing Pole##6365
.' Stand on the end of this wooden dock
.' Use your Fishing skill to fish in the water |cast Fishing##7620
.' Get your Fishing skill to level 600 |skill Fishing,600
step
label "fish_600"
'Congratulations, you are now a Zen MasterFisherman!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Profession Guides\\Herbalism\\Herbalism 525-600 Leveling Guide",[[
description This guide will walk you through leveling your Herbalism skill from 525-600.
author support@zygorguides.com
completion skill,Herbalism,600
condition suggested hasprof('Herbalism',525,600)
// ----------
// 525 - 600
// ----------
// TRAIN: Zen Master
step
title + Herbalism 525-545
label "herb_525-545"
#include "trainer_Herbalism"
.skillmax Herbalism,600
step
label "farming"
map Valley of the Four Winds
path	81.4,21.5	76.4,29.2	71.1,29.5
path	69.0,31.0	70.8,34.4	70.6,41.8
path	65.1,60.1	57.6,65.6	50.8,58.6
path	47.4,64.9	46.9,61.3	42.5,54.3
path	33.6,62.1	28.1,72.7	25.7,78.4
path	24.4,56.0	21.9,53.9	12.8,44.7
path	14.3,41.2	14.8,35.8	19.6,34.4
#include "follow_path_herbs"
.collect Green Tea Leaf##72234 |n
skill Herbalism,545
step
title + Herbalism 545-590
label "herb_545-590"
map Valley of the Four Winds
path	86.4,19.2	88.4,25.7	88.4,31.4
path	85.3,32.0	85.9,35.5	71.1,54.9
path	62.4,67.6
path	59.1,37.3	51.5,32.4	35.3,42.4
path	30.9,51.4	26.1,45.2	37.9,31.8
path	41.2,36.0	47.0,28.8	51.9,29.1
path	57.2,27.3	55.7,33.0
path	62.9,37.3	64.7,31.4	59.0,28.1								
#include "follow_path_herbs"
.collect Silkweed##72235 |n
skill Herbalism,590
step
title + Herbalism 590-600
label "herb_590-600"
map Kun-Lai Summit
path	53.9,58.1	50.9,51.6	49.9,52.4
path	50.1,57.1	49.6,63.7	48.1,64.3
path	45.4,65.8	47.6,61.0	47.8,55.6
#include "follow_path_herbs"
.collect Snow Lily##79010 |n
skill Herbalism,600
step
label "herb_600"
'Congratulations, you are now a level 600 Herbalist!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Profession Guides\\Inscription\\Inscription 500-600 Leveling Guide",[[
description This guide will walk you through leveling your Inscription skill from 500-600.
author support@zygorguides.com
completion skill,Inscription,600
condition suggested hasprof('Inscription',500,600)
// ----------
// 500-600
// ----------
// TRAIN: Zen Master Inscription
step
title + Inscription 500-600
label "ins_500-600"
#include "trainer_Inscription"
.skillmax Inscription,600 |tip You must be at least level 85.
.learn Ink of Dreams##111645
step
#include "vendor_Inscription"
.buy 100 Light Parchment##39354
step
#include "auctioneer"
.' You need about 130 Shadow-giving herbs total
.buy Rain Poppy##72237 |n
.buy Green Tea leaf##72234 |n
.buy Silkweed##72235 |n
.buy Snow Lily##79010 |n
.buy Fool's Cap##79011 |n
.' You'll need about {_G.max(0 , (250-itemcount(72237,72234,72235,79010,79011)))} more herbs in stacks of 5.
.' Mill the 250 herbs you purchased into Shadow Pigment |cast Milling##51005
.buy 130 Shadow Pigment##79251
#include go_farm,skill="Herbalism",req="1",goto="ins_500-600_farm"
|next "ins_500-600_skill"
//GATHER: 130 Shadow Pigment
step
label "ins_500-600_farm"
#include "trainer_Herbalism"
.skillmax Herbalism,525
'Your _Herbalism_ skill is too low to learn this; You can proceed with farming, but your skill gains will stop at 450. It's better to skill up first. |only if skill("Herbalism")<425 and skillmax("Herbalism")<525
step
map Valley of the Four Winds
path 81.4,21.5	76.4,29.2	68.2,33.3
path 70.6,41.8	65.1,60.1	57.6,65.6
path 50.8,58.6	48.0,65.9	46.9,61.3
path 42.5,58.3	33.6,62.1	28.1,72.7
path 25.7,78.4	18.5,51.0	15.4,53.9
path 12.8,44.7	14.3,41.2	14.8,35.8
path 19.6,34.4	24.0,42.2	25.0,50.2
path 30.1,55.7	 35.8,54.8	41.5,48.9
#include "follow_path_herbs"
.' You need about 130 Shadow-giving herbs total
.collect Green Tea leaf##72234 |n
.collect Silkweed##72235 |n
.' You'll need about {_G.max(0 , (250-itemcount(72234,72235)))} more herbs in stacks of 5.
.' Mill the 250 herbs you gathered into Shadow Pigment |cast Milling##51005
.collect 130 Shadow Pigment##79251
#include "max_skill_warning",skill="Herbalism",goto="ins_500-600_farm"
//CREATE
step
label "ins_500-600_skill"
.create 65 Ink of Dreams##79254,65 total
skill Inscription,545
step
#include "trainer_Inscription"
.learn Scroll of Wisdom##112996
step
.create Scroll of Wisdom##112996,Inscription,546 |tip This ability will allow you to learn a new glyph. It also has a 20 hour cooldown.
step
'Use Inscription skill to create your Newly Discovered glyph until your Inscription skill is 597. |tip Each glyph will give you three skill-up points.
skill Inscription,597
step
#include "trainer_Inscription"
.learn Secret Crane Wing Inscription##127023
step
.create 2 Secret Crane Wing Inscription##87582,2 total
skill Inscription,600
step
label "ins_600"
'Congratulations, you are now a level 600 Inscriptionist!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Profession Guides\\Jewelcrafting\\Jewelcrafting 525-600 Leveling Guide",[[
description This guide will walk you through leveling your Jewelcrafting skill from 500-600.
author support@zygorguides.com
completion skill,Jewelcrafting,600
condition suggested hasprof('Jewelcrafting',500,600)
// ----------
// 525 - 600
// ----------
// TRAIN: Zen Master Jewelcrafting
step
label "jc_525-600"
title +Jewelcrafting 525-600
#include "trainer_Jewelcrafting"
.skillmax Jewelcrafting,600 	
step
#include "auctioneer"
.buy Lapis Lazuli##76133 |n
.buy Sunstone##76134 |n
.buy Tiger Opal##76130 |n
.buy Alexandrite##76137 |n
.buy Pandarian Garnet##76136 |n
.buy Roguestone##76135 |n
.' You'll need about {_G.max(0 , (55-itemcount(76133,76134,76130,76137,76136,76135))*1)} more of the gems above. |condition itemcount(76133,76134,76130,76137,76136,76135)>=55 
.buy 13 Sun's Radiance##76142
#include go_farm,skill="Mining",req="500",goto="jc_525-600_farm"
|next "jc_525-600_skill"
step
label "jc_525-600_farm"
map Krasarang Wilds
path	70.3,9.7	66.1,18.5	64.5,21.5
path	61.6,21.9	52.0,30.2	40.2,27.5	
path	38.0,28.1	33.4,32.1	33.0,28.9
path	28.2,37.9	18.4,33.3	14.8,41.8	
path	15.8,47.6	13.1,52.8	9.8,54.9	
path	13.6,64.2	32.3,80.1	35.6,69.0
path	39.5,77.9	41.7,89.1	46.3,94.4
path	48.3,92.3	50.0,90.5	45.6,68.2
path	44.5,65.3	48.3,45.4	55.9,34.3
path	58.6,36.7	65.1,35.6	69.2,28.7
path	74.8,24.3	75.5,35.0	77.7,34.9	
path	79.8,17.9	82.3,17.8	85.3,21.4				
path	86.8,26.6	88.2,23.8	85.0,9.9
#include "follow_path_mine"
.collect Lapis Lazuli##76133 |n |cast Prospecting##31252
.collect Sunstone##76134 |n |cast Prospecting##31252
.collect Tiger Opal##76130 |n |cast Prospecting##31252
.collect Alexandrite##76137 |n |cast Prospecting##31252
.collect Pandarian Garnet##76136 |n |cast Prospecting##31252
.collect Roguestone##76135 |n |cast Prospecting##31252
.' You'll need about {_G.max(0 , (55-itemcount(76133,76134,76130,76137,76136,76135))*1)} more of the gems above. |condition itemcount(76133,76134,76130,76137,76136,76135)>=55 
.collect 13 Sun's Radiance##76142 |cast Prospecting##31252	
step
label "jc_525-600_skill"
#include "trainer_Jewelcrafting"
.learn Artful Tiger Opal##107646
.learn Etched Roguestone##107630
.learn Lightning Alexandrite##107604
.learn Rigid Lapis Lazuli##107617
step
'Create any of the following:
.create Artful Tiger Opal##107646,Jewelcrafting,530
.create Etched Roguestone##107630,Jewelcrafting,530
.create Lightning Alexandrite##107604,Jewelcrafting,530
.create Rigid Lapis Lazuli##107617,Jewelcrafting,530
step
#include "trainer_Jewelcrafting"
.learn Delicate Pandarian Garnet##107624
step
'Create any of the following:
.create Artful Tiger Opal##107646,Jewelcrafting,535
.create Etched Roguestone##107630,Jewelcrafting,535
.create Lightning Alexandrite##107604,Jewelcrafting,535
.create Rigid Lapis Lazuli##107617,Jewelcrafting,535
.create Delicate Pandarian Garnet##107624,Jewelcrafting,535
step
#include "trainer_Jewelcrafting"
.learn Fractured Sunstone##107640
step
'Create any of the following:
.create Artful Tiger Opal##107646,Jewelcrafting,577
.create Etched Roguestone##107630,Jewelcrafting,577
.create Lightning Alexandrite##107604,Jewelcrafting,577
.create Rigid Lapis Lazuli##107617,Jewelcrafting,577
.create Delicate Pandarian Garnet##107624,Jewelcrafting,577
.create Fractured Sunstone##107640,Jewelcrafting,577
step
#include "trainer_Jewelcrafting"
.learn Sun's Radiance##131695
step
.create Sun's Radiance##131695,Jewelcrafting,580
step
'The research you performed in the previous step has given you a new pattern for Yellow Gems. Create that Yellow gem until you are 600 Jewelcrafting
skill Jewelcrafting,600
step
label "jc_600"
'Congratulations, you are now a level 600 Jewelcrafter!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Profession Guides\\Tailoring\\Tailoring 500-600 Leveling Guide",[[
description This guide will walk you through leveling your Tailoring skill from 500-600.
author support@zygorguides.com
completion skill,Tailoring,600
condition suggested hasprof('Tailoring',500,600)
// ----------
// 500-600
// ----------
step
label	"tl_500-600"
#include "trainer_Tailoring"
.skillmax Tailoring,600 |tip You must be at least level 80.
.learn Bolt of Windwool Cloth##125551
step
#include "auctioneer"
.buy 500 Windwool##72988
.buy 24 Spirit of Harmony##76061 
.' or
#include go_farm_level,level="85",goto="tl_500-600_farm"
|next "tl_500-600_skill"
step
label	"tl_500-600_farm"
goto Krasarang Wilds 43.9,38.6
.from Springtail Leaper##57415+, Springtail Gnasher##57413+
.collect 500 Windwool Cloth##72988
.collect 240 Mote of Harmony##89112 |n |use Mote of Harmony##89112 |tip Turn 10 Mote of Harmony into a Spirit of Harmony
.collect 24 Spirit of Harmony##76061 
step
label	"tl_500-600_skill"
.create 100 Bolt of Windwool Cloth##125551,Tailoring,100 total |n
.skill Tailoring,535
step
#include "trainer_Tailoring"
.learn Pearlescent Spellthread##125552
step
.create 5 Pearlescent Spellthread##125552,Tailoring,550
step
#include "trainer_Tailoring"
.learn Windwool Hood##125523
step
.create 9 Windwool Hood##125523,Tailoring,580
step
#include "trainer_Tailoring"
.learn Song of Harmony##130325
step
.create 8 Song of Harmony##130325,Tailoring,600
step
'Congratulations! You have leveled Tailoring to 600!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Profession Guides\\Leatherworking\\Leatherworking 500-600 Leveling Guide",[[
description This guide will walk you through leveling your Leatherworking skill from 500-600.
author support@zygorguides.com
completion skill,Leatherworking,600
condition suggested hasprof('Leatherworking',500,600)
// ----------
// 500 - 600
// ----------
// TRAIN:	Zen Master Leatherworking
step
title + Leatherworking 500-600
label	"lw_500-600"
#include "trainer_Leatherworking"
.skillmax Leatherworking,600 |tip You must be at least level 85.
.learn Exotic Leather##124627
// GATHER:	500 Exotic Leather, 65 Sha-Touched Leather
step
#include "auctioneer"
.buy 65 Sha-Touched Leather##72162
.buy 500 Exotic Leather##72120
#include go_farm,skill="Skinning",req="510",goto="lw_500-600_farm"
|next "lw_500-600_skill"
step
title + Leatherworking 500-600 (farming)
label	"lw_500-600_farm"
#include "trainer_Skinning" 
.skillmax Skinning,600 |only if skill("Skinning")>=500
'Your _Skinning_ skill is too low to learn the _Zen Master_ skill. You can proceed with farming, but your skill gains will stop at 525. It's better to skill up first. |only if skill("Skinning")<500
.' Click here to continue |only if skill("Skinning")<500 |confirm
step
map The Jade Forest
path	30.1,12.6	30.2,11.3	30.8,11.1
path	31.0,9.7	32.3,10.4	32.0,13.1
path	31.1,15.9
.from Sha-Infested Prowler##66668
.collect 65 Sha-Touched Leather##72162
#include "max_skill_warning",skill="Skinning",goto="lw_500-600_farm"
step
map Dread Wastes
path	27.2,26.0	28.0,27.6	27.5,30.2
path	27.0,33.4	27.1,37.2	28.1,42.9
path	30.9,51.7	28.1,50.1	26.3,47.3
path	26.1,43.4	25.4,38.4	25.6,34.6
path	24.3,28.1
.from Onyx Venomtail##63586+, Dread Scarab##63587+, Ruby Venomtail##63588+
.collect 500 Exotic Leather##72120
.collect 10 Mote of Harmony##89112 |n
.' Right-Click the _Motes of Harmony_ in your bags to create a _Spirit of Harmony_.
.collect 1 Spirit of Harmony##76061
#include "max_skill_warning",skill="Skinning",goto="lw_500-600_farm"
// CREATE:	13 Exotic Leather, 9 Sha Armor Kit, 15 Misthide Bracers, 10 Misthide Gloves, 40 Contender's Leather Bracers
step
label	"lw_500-600_skill"  
goto Shrine of Two Moons/1 31.4,47.1
.talk 64054
.buy 1 Pattern: Contender's Leather Bracers##86250
step
.create Exotic Leather##124627,Leatherworking,526
step
#include "trainer_Leatherworking"
.learn Sha Armor Kit##124628
step
.create Sha Armor Kit##124628,Leatherworking,535
step
#include "trainer_Leatherworking"
.learn Misthide Belt##124578
step
.create Misthide Belt##124578,Leatherworking,550
step
#include "trainer_Leatherworking"
.learn Misthide Gloves##124574
step
.create Misthide Gloves##124574,Leatherworking,560
step
'Click the pattern in your bags to learn _Contender's Leather Bracers_.
.learn Contender's Leather Bracers##124608
step
.create Contender's Leather Bracers##124608,Leatherworking,600
step
label "lw_600"
'Congratulations, you are now a Zen Master Leatherworker!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Profession Guides\\Skinning\\Skinning 525-600 Leveling Guide",[[
description This guide will walk you through leveling your Skinning skill from 525-600.
author support@zygorguides.com
completion skill,Skinning,600
condition suggested hasprof('Skinning',525,600)	
step
label	"skn_525-600"
#include trainer_Skinning
.skillmax Skinning,600
step
map Townlong Steppes
path	58.6,52.8	59.2,57.7	56.9,66.3
path	54.3,66.3	53.5,65.1	51.3,62.3
path	50.9,56.8	52.6,54.3	54.7,50.4
.' Kill any beasts you find in the area.
skill Skinning,600
step
label	"skn_600"
'Congratulations, you are now a Zen Master Skinner!	
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Profession Guides\\Mining\\Mining 525-600 Leveling Guide",[[
description This guide will walk you through leveling your Mining skill from 525-600.
author support@zygorguides.com
completion skill,Mining,600
condition suggested hasprof('Mining',525,600)	
step
title + Mining (525-600)
label	"m_525-600"
#include trainer_Mining
.skillmax Mining,600
.learn Smelt Ghost Iron##102165
step
label	"farming"
map Krasarang Wilds
path	70.3,9.7	66.1,18.5	64.5,21.5
path	61.6,21.9	52.0,30.2	40.2,27.5	
path	38.0,28.1	33.4,32.1	33.0,28.9
path	28.2,37.9	18.4,33.3	14.8,41.8	
path	15.8,47.6	13.1,52.8	9.8,54.9	
path	13.6,64.2	32.3,80.1	35.6,69.0
path	39.5,77.9	41.7,89.1	46.3,94.4
path	48.3,92.3	50.0,90.5	45.6,68.2
path	44.5,65.3	48.3,45.4	55.9,34.3
path	58.6,36.7	65.1,35.6	69.2,28.7
path	74.8,24.3	75.5,35.0	77.7,34.9	
path	79.8,17.9	82.3,17.8	85.3,21.4				
path	86.8,26.6	88.2,23.8	85.0,9.9				
#include "follow_path_mine"
skill Mining,600
step
label	"m_600"
'Congratulations, you are now a level 600 Miner!	
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Profession Guides\\Mining\\Mining with Smelting 500-600 Leveling Guide",[[
description This guide will walk you through leveling your Mining skill from 500-600.
author support@zygorguides.com
completion skill,Mining,600
condition suggested hasprof('Mining',500,600)	
step
title + Mining w/Smelting (500-600)
label 	"sm_500-600"
#include trainer_Mining
.skillmax Mining,600
.learn Smelt Ghost Iron##102165
step
#include "auctioneer"
.buy 300 Ghost Iron Ore##72092
step
label	"skill"
#include "maincity_anvil"
.create Smelt Ghost Iron##102165,Mining,150 total |n
.skill Mining,550
step
label	"farming"
map Krasarang Wilds
path	70.3,9.7	66.1,18.5	64.5,21.5
path	61.6,21.9	52.0,30.2	40.2,27.5	
path	38.0,28.1	33.4,32.1	33.0,28.9
path	28.2,37.9	18.4,33.3	14.8,41.8	
path	15.8,47.6	13.1,52.8	9.8,54.9	
path	13.6,64.2	32.3,80.1	35.6,69.0
path	39.5,77.9	41.7,89.1	46.3,94.4
path	48.3,92.3	50.0,90.5	45.6,68.2
path	44.5,65.3	48.3,45.4	55.9,34.3
path	58.6,36.7	65.1,35.6	69.2,28.7
path	74.8,24.3	75.5,35.0	77.7,34.9	
path	79.8,17.9	82.3,17.8	85.3,21.4				
path	86.8,26.6	88.2,23.8	85.0,9.9				
#include "follow_path_mine"
skill Mining,600
step
label	"sm_600"
'Congratulations, you are now a level 600 Miner!			
]])
