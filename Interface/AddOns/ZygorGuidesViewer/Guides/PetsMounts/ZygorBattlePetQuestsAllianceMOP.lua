local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("PetBattleAlliance") then return end
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Battle Pet Questline",[[
step
goto Stormwind City 69.5,25.2
.talk 63596
..accept 31591
step
goto 69.5,25.2
.talk 63596
.learnspell Battle Pet Training##119467
step
.' Find any critter and engage it in a pet battle.
.' Win a Pet Battle. |q 31591/1
step
goto 69.5,25.2
.talk 63596
..turnin 31591
..accept 31592
step
goto 67.3,37.7
.talk 11069
.' Tell her you'd like to heal and revive your battle pets.
.' Battle Pets Healed |q 31592/1
step
goto 69.5,25.2
.talk 63596
..turnin 31592
..accept 31821
step
.' Find any critter and engage it in a pet battle. If your pet gets weak, find a stable master and ask them to heal your pets for you. Do this until you have a Battle Pet at level 3.
.' Raise a Battle Pet to level 3. |q 31821/1
step
.' Click the Quest Discovered! box on the right side of your screen.
..accept 31880
step
goto 69.5,25.2
.talk 63596
..turnin 31821
..accept 31593
..turnin 31880
..accept 31316
step
goto 53.6,19.3
.' Find a Stormwind Rat, a Rabbit, or a Squirrel from around this area and challenge it to a battle.
.' When it reaches 35% health or lower use your Trap ability to capture it.
.' Catch a Pet. |q 31593/1 
step
goto 69.5,25.2
.talk 63596
..turnin 31593
step
'Before challenging Julia Stevens, it is suggested to have at least 2 Battle Pets at level 3 or higher. She has 2 Beasts, the easiest way to counter this is either with a Mechanical or a Flying Battle Pet.
|confirm
step
goto Elwynn Forest 41.7,83.7
.talk 64330
.' Let's fight!
.' Defeat Julia Stevens |q 31316/1
step
goto Elwynn Forest 41.7,83.7
.talk 64330
..turnin 31316
..accept 31724
step
'Before fighting Old MacDonald, you should have at all three of your pet slows open and have a balanced team. He has a Flying Pet, a Mechanical Pet, and a Critter Pet. Flying Pets are easily countered by Magic types, Mechanical Pets are easily countered by Elemental types, and Critter Pets and easily countered by Beast types.
.' It is suggested that you train all of your pets to at least level 4 before attempting this fight.
|confirm
step
goto Westfall 60.9,18.5
.talk 65648
.' Let's fight!
.' Defeat Old MacDonald |q 31724/1 
step
goto Westfall 60.9,18.5
.talk 65648
..turnin 31724
..accept 31725
step
' Lindsay has a team full of Rabbits. Critters are easily killed by Beasts, have one or two Pets with Beast type attack and you will easily win.
|confirm
step
goto Redridge Mountains 33.3,52.6
.talk 65651
.' Let's fight!
.' Defeat Lindsay |q 31725/1
step
goto Redridge Mountains 33.3,52.6
.talk 65651
..turnin 31725
..accept 31726
step
'Eric Davidson has three Beast type Pets that attack with Undead type attacks. Use either Mechanical or Aquatic types to counter him.
.' Raise a pet to level 7.
|confirm
step
goto Duskwood 19.4,44.3
.talk 65655
.' Let's fight!
.' Defeat Eric Davidson |q 31726/1
step
goto Duskwood 19.4,44.3
.talk 65655
..turnin 31726
..accept 31729
step
'Steven Lisbane has a Magic type Pet, and two Beast type Pets. Magic types take increased damage from Dragonkin attacks. If you do not have a Dragonkin, use a Mechanical Pet for the next best match up. The Beasts are also easily killed by Mechanical Pets, if you don't have one or it is weak, use a Flying type Pet.
.' All three of your Pets should be 9 when you fight Steven.
|confirm
step
goto Northern Stranglethorn 46.0,40.4
.talk 63194
.' Let's fight!
.' Defeat Steven Lisbane |q 31729/1
step
goto Northern Stranglethorn 46.0,40.4
.talk 63194
..turnin 31729
..accept 31728
step
'Bill Buckler has two Flying type Pets and a Beast type Pet. These Flying types can be countered by Magic attacks. Flying types are also weak to Dragonkin if you have one.
.' Have at least three Level 9 pets when you fight Bill.
|confirm
step
goto The Cape of Stranglethorn 51.5,73.4
.talk 120
.' Let's fight!
.' Defeat Bill Buckler |q 31728/1
step
goto The Cape of Stranglethorn 51.5,73.4
.talk 120
..turnin 31728
..accept 31917
step
goto Stormwind City 69.5,25.2
.talk 63596
..turnin 31917
..accept 31902
step
'Everessa uses a flying, beast and critter for pets during battle.
.' Have at least 3 level 16 pets.
|confirm
step
goto Swamp of Sorrows 76.8,41.5
.talk 66518
|tip You will not be able to challenge Everessa if you have the "Pet Recovery" debuff, wait for it to fall off.
.' Let's fight!
.' Defeat Everessa |q 31902/4
step
'Durin has a Flying type Pet, a Critter type Pet, and an Elemental type Pet. Use Magic type attacks on the Flying Pet, Beast type attacks on the Critter Pet, and Aquatic type attacks on the Elemental Pet.
.' His pets are all level 17. You should be able to win with ease.
|confirm
step
goto Burning Steppes 25.5,47.4
.talk 66520
|tip You will not be able to challenge Durin if you have the "Pet Recovery" debuff, wait for it to fall off.
.' Let's fight!
.' Defeat Durin Darkhammer |q 31902/5
step
'Kortas has 3 Dragonkin type Pets. Use Humanoid type attacks on his pets.
.' His pets are all around level 15 so your pet team should be able to defeat him easily. 
|confirm
step
goto Searing Gorge 35.3,27.8
.talk 66515
|tip You will not be able to challenge Kortas if you have the "Pet Recovery" debuff, wait for it to fall off.
.' Let's fight!
.' Defeat Kortas Darkhammer |q 31902/3
step
'David has a Beast type Pet, a Critter type Pet, and an Magic type Pet. Use Mechanical type attacks on the Beast Pet, Beast type attacks on the Critter Pet, and Dragonkin type attacks on the Magic Pet.
.' His pets are all around level 13 so your pet team should be able to defeat him easily. 
|confirm
step
goto The Hinterlands 63.0,54.6
.talk 66478
|tip You will not be able to challenge David if you have the "Pet Recovery" debuff, wait for it to fall off.
.' Let's fight!
.' Defeat David Kosse |q 31902/1
step
'Deiza has 2 Beast type Pets and an Undead type Pet. Use Mechanical type attacks on the Beast Pets and Critter type attacks on the Undead Pet.
.' Her pets are all around level 14 so your pet team should be able to defeat her easily. 
|confirm
step
goto Eastern Plaguelands 67.0,52.4
.talk 66512
|tip You will not be able to challenge Deiza if you have the "Pet Recovery" debuff, wait for it to fall off.
.' Let's fight!
.' Defeat Deiza Plaguehorn |q 31902/2
step
.' Click the complete quest box on the right side of your screen.
..turnin 31903
..accept 31915
step
'Lydia has an Elemental type Pet and 2 Undead type Pets. Use Aquatic type attacks on the Elemental Pet and Critter type attacks on the Undead Pets.
.'Your pets should be at least level 19 before fighting Lydia.
|confirm
step
goto Deadwind Pass 40.1,76.4
.talk 66522
|tip You will not be able to challenge Lydia if you have the "Pet Recovery" debuff, wait for it to fall off.
.' Let's fight!
.' Defeat Lydia Accoste |q 31915/1
step
goto 65.7,64.5
.talk 66522
..turnin 31915
step
'Nicki has 3 Mechanical type Pets. Use Elemental type attacks on her pets.
.' Her pets are all around level 20.
|confirm
step
goto Hellfire Peninsula 64.3,49.3
.talk 66550
|tip You will not be able to challenge Nicky if you have the "Pet Recovery" debuff, wait for it to fall off. 
.' Let's fight!
.' Defeat Nicki Tinytech |q 31921/1
step
'Morulu has 3 Aquatic type Pets. Use Flying type attacks on his pets.
.' His pets are all around level 23.
|confirm
step
goto Shattrath City 58.8,70.1
.talk 66553
|tip You will not be able to challenge Morulu if you have the "Pet Recovery" debuff, wait for it to fall off. 
.' Let's fight!
.' Defeat Morulu The Elder |q 31921/4
step
'Narrok has an Aquatic type Pet, a Beast type Pet, and a Critter type Pet. Use Flying type attacks on his Aquatic pet, Mechanical type attacks on his Beast pet, and Beast type attacks on his Critter pet.
.' His pets are all around level 22.
|confirm
step
goto Nagrand 61.0,49.4
.talk 66552
|tip You will not be able to challenge Narrok if you have the "Pet Recovery" debuff, wait for it to fall off. 
.' Let's fight!
.' Defeat Narrok |q 31921/3
step
'Ras'an has a Flying type Pet, a Humanoid type Pet, and a Magic type Pet. Use Magic type attacks on his Flying pet, Undead type attacks on his Humanoid pet, and Dragonkin type attacks on his Magic pet.
.' His pets are all around level 21.
|confirm
step
goto Zangarmarsh 17.2,50.5
.talk 66551
|tip You will not be able to challenge Ras'an if you have the "Pet Recovery" debuff, wait for it to fall off. 
.' Let's fight!
.' Defeat Ras'an |q 31921/2
step
.' Click the complete quest box on the right side of your screen.
..turnin 31921 
..accept 31920
step
'Bloodknight Antari has an Elemental type Pet, a Dragonkin type Pet, and a Magic type Pet. Use Aquatic type attacks on his Elemental pet, Humanoid type attacks on his Dragonkin pet, and Dragonkin type attacks on his Magic pet.
.' Your pets should all be around level 24.
|confirm
step
goto Shadowmoon Valley 30.6,42.0
.talk 66557
|tip You will not be able to challenge Bloodknight Antari if you have the "Pet Recovery" debuff, wait for it to fall off. 
.' Let's fight!
.' Defeat Bloodknight Antari |q 31920/1
step
goto 30.6,42.0
.talk 66557
..turnin 31920
..accept 31981
step
goto Stormwind City 69.5,25.2
.talk 63596
..turnin 31981
..accept 31927
step
'Beegle Blastfuse has an Aquatic type Pet and 2 Flying type Pets. Use Flying type attacks on his Aquatic pet and Magic attacks on his Flying pets.
.' Your pets should all be around level 25 before fighting Beegle.
|confirm
step
goto Howling Fjord 28.6,33.9
.talk 66635
|tip You will not be able to challenge Beegle Blastfuse if you have the "Pet Recovery" debuff, wait for it to fall off. 
.' Let's fight!
.' Defeat Beegle Blastfuse |q 31927/1
step
'Okrut Dragonwaste has a Dragonkin type Pet and 2 Undead type Pets. Use Humanoid type attacks on his Dragonkin and Critter type attacks on his Undead.
.' Your pets should all be level 25 before fighting Okrut.
|confirm
step
goto Dragonblight 59.0,77.0
.talk 66638
|tip You will not be able to challenge Okrut Dragonwaste if you have the "Pet Recovery" debuff, wait for it to fall off. 
.' Let's fight!
.' Defeat Okrut Dragonwaste |q 31927/3
step
'Nearly Headless Jacob has 3 Undead type Pets. Critter type attacks will be the most useful against Jacob. You should also consider having an Aquatic pet or two. 
.' Your pets should all be level 25.
|confirm
step
goto Crystalsong Forest 50.1,59.0
.talk 66636
|tip You will not be able to challenge Nearly Headless Jacob if you have the "Pet Recovery" debuff, wait for it to fall off. 	
.' Let's fight!
.' Defeat Nearly Headless Jacob |q 31927/2
step
'Gutretch has 2 Beast type Pets and a Critter type Pet. Use Mechanical type attacks on his Beasts and Beast type attacks on his Critter.
.' Your pets should all be level 25.
|confirm
step
goto Zul'Drak 13.2,66.8
.talk 66639
|tip You will not be able to challenge Gutretch if you have the "Pet Recovery" debuff, wait for it to fall off. 	
.' Let's fight!
.' Defeat Gutretch |q 31927/4
step
.' Click the complete quest box on the right side of your screen.
..turnin 31927
..accept 31928
step
'Major Payne has a Beast type Pet, a Mechanical type Pet, and an Elemental type Pet. Use Mechanical type attacks on his Beast, Elemental type attacks on his Mechanical, and Aquatic type attacks on his Elemental.
.' Your pets should all be level 25.
|confirm
step
goto Icecrown 77.4,19.6
.talk 66675
|tip You will not be able to challenge Major Payne if you have the "Pet Recovery" debuff, wait for it to fall off. 	
.' Let's fight!
.' Defeat Major Payne |q 31927/4
step
goto 77.4,19.6
.talk 66675
..turnin 31929
step
.' Click the Quest Discovered! box on the right side of your screen.
..accept 31984
step
goto Stormwind City 69.5,25.2
.talk 63596
..turnin 31984
..accept 31966
step
'Brok has a Beast type Pet, a Critter type Pet, and a Magic type Pet. Use Mechanical type attacks on his Beast, Beast type attacks on his Critter, and Dragonkin type attacks on his Magic.
.' Your pets should all be level 25.
|confirm
step
goto Mount Hyjal 61.4,32.7
.talk 66819
|tip You will not be able to challenge Brok if you have the "Pet Recovery" debuff, wait for it to fall off. 	
.' Let's fight!
.' Defeat Brok |q 31966/1
step
'Bordin Steadyfist has a Critter type Pet and 2 Elemental type Pets. Use Beast type attacks on his Critter and Aquatic type attacks on his Elementals.
.' Your pets should all be level 25.
|confirm
step
goto Deepholm 49.9,57.0
.talk 66815
|tip You will not be able to challenge Bordin Steadyfist if you have the "Pet Recovery" debuff, wait for it to fall off. 	
.' Let's fight!
.' Defeat Bordin Steadyfist |q 31966/2
step
'Goz Banefury has a Beast type Pet, an Elemental type Pet, and a Magic type Pet. Use Mechanical type attacks on his Beast, Aquatic type attacks on his Elemental, and Dragonkin type attacks on his Magic.
.' Your pets should all be level 25.
|confirm
step
goto Twilight Highlands 56.6,56.8
.talk 66822
|tip You will not be able to challenge Goz Banefury if you have the "Pet Recovery" debuff, wait for it to fall off. 	
.' Let's fight!
.' Defeat Goz Banefury |q 31966/3
step
.' Click the complete quest box on the right side of your screen.
..turnin 31966
..accept 31970
step
'Obalis has a Beast type Pet, a Flying type Pet, and a Critter type Pet. Use Mechanical type attacks on his Beast, Magic type attacks on his Flyer, and Beast type attacks on his Critter.
.' Your pets should all be level 25.
|confirm
step
goto Uldum 56.5,42.0
.talk 66824
|tip You will not be able to challenge Obalis if you have the "Pet Recovery" debuff, wait for it to fall off. 	
.' Let's fight!
.' Defeat Obalis |q 31970/1
step
goto 56.5,42.0
.talk 66824
..turnin 31970
step
.' Click the Quest Discovered! box on the right side of your screen.
..accept 31985
step
goto Stormwind City 69.5,25.2
.talk 63596
..turnin 31985
..accept 31930
step
.' From this point on, 
step
goto The Jade Forest 48.0,54.2
.talk 66730
.' Tell her let's do this!
.' Defeat Hyuna of the Shrines |q 31930/1
step
goto Valley of the Four Winds 46.0,43.7
.talk 66734
.' Tell her let's do this!
.' Defeat Farmer Nishi |q 31930/2
step
goto Krasarang Wilds 62.2,45.9
.talk 66733
.' Defeat Mo'ruk |q 31930/3
step
goto Kun-Lai Summit 35.8,73.8 
.talk 66738
.' Defeat Courageous Yon |q 31930/4
.' He can also be found at [44.7,52.4]
step
goto Townlong Steppes 36.3,52.2
.talk 66918
.' Defeat Seeker Zusshi |q 31930/5
step
goto Dread Wastes 55.1,37.6
.talk 66739
.' Defeat Wastewalker Shu |q 31930/6
step
.' Click the Quest Complete! box on the right side of your screen.
..turnin 31952
..accept 31951
step
goto Vale of Eternal Blossoms 67.5,40.6
.talk 66741
.' Tell her let's go!
.' Defeat Aki the Chosen |q 31951/1
step
goto Vale of Eternal Blossoms 67.5,40.6
.talk 66741
..turnin 31951
]])