local ZygorGuidesViewer=ZygorGuidesViewer
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("PetBattleHorde") then return end
if not ZygorGuidesViewer then return end
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Battle Pet Questline",[[
author support@zygorguides.com
step
goto Orgrimmar 52.5,59.3
.talk 63626
..accept 31588
step
goto 52.5,59.3
.talk 63626
.learnspell Battle Pet Training##119467
step
goto Durotar 50.0,12.4
.' Find any critter and engage it in a pet battle.
.' Win a Pet Battle. |q 31588/1
step
goto Orgrimmar 52.5,59.3
.talk 63626
..turnin 31588
..accept 31589
step
goto 62.1,35.3
.talk 47764
.' Tell him you'd like to heal and revive your battle pets.
.' Battle Pets Healed. |q 31589/1
step
goto 52.5,59.3
.talk 63626
..turnin 31589
..accept 31827
step
' Find any critter and engage it in a pet battle. If your pet gets weak, find a stable master and ask them to heal your pets for you. You can also heal with the Revive Battle Pets ability you now have. Do this until you have a Battle Pet at level 3.
.' Raise a Battle Pet to level 3. |q 31827/1
step
.' Click the Quest Discovered! box on the right side of your screen.
..accept 32009
step
goto 52.5,59.3
.talk 63626
..turnin 32009
..accept 31812
..turnin 31827
..accept 31590
step
goto Durotar 47.5,12.8
.' Find a Creepy Crawly or Hare from around this area and challenge it to a battle.
.' When it reaches 35% health or lower use your Trap ability to capture it.
.' Catch a Pet. |q 31590/1 
step
goto Orgrimmar 52.5,59.3
.talk 63626
..turnin 31590
step
'Before challenging Zunta, it is suggested to have at least 2 Battle Pets at level 3 or higher. He has a Critter type Pet and a Beast type Pet. Beast type damage will defeat his critter easily and Mechanical type damage will defeat his beast.
|confirm
step
goto Durotar 43.9,28.7
.talk 66126
.' Let's fight!
.' Defeat Zunta |q 31812/1
step
goto Durotar 43.9,28.7
.talk 66126
..turnin 31812
..accept 31813
step
'Before fighting Dagra, you should have all three of your pet slots open and have a balanced team. Dagra has 2 Beast type Pets and 1 Critter type Pet. Mechanical damage will defeat the Beasts and Beast damage will defeat the Critter.
.' It is suggested that you train all of your pets to at least level 4 before attempting this fight.
|confirm
step
goto Northern Barrens 58.6,53.0
.talk 66135
.' Let's fight!
.' Defeat Dagra the Fierce |q 31813/1 
step
goto Northern Barrens 58.6,53.0
.talk 66135
..turnin 31813
..accept 31814
step
'Analynn has a Critter type who uses Aquatic attacks, an Aquatic type, and a Flying type. Use a Magic type Pet or Beast type attacks on the Critter, Flying type attacks on the Aquatic Pet, and Magic type attacks or a Dragonkin type Pet against her Flying Pet.
.' It is suggested that all of your Pets are at least level 6 when you fight Analynn.
|confirm
step
goto Ashenvale 20.2,29.5
.talk 66136
.' Let's fight!
.' Defeat Analynn |q 31814/1
step
goto 20.2,29.5
.talk 66136
..turnin 31814
..accept 31815
step
'Zonya has 2 Beast type Pets and 1 Critter type Pet. Mechanical type attacks work well against her Beasts and Beast type attacks work well against her Critter.
.' It is suggested that all of your pets are level 7 when you face Zonya. 
|confirm
step
goto Stonetalon Mountains 59.7,71.5
.talk 66137
.' Let's fight!
.' Defeat Zonya the Sadist |q 31815/1
step
goto 59.7,71.5
.talk 66137
..turnin 31815
..accept 31817
step
'Merda has a Critter type Pet, an Aquatic type Pet, and an Elemental type Pet. Use Beast type attacks against the Critter, Flying type attacks against the Aquatic, and Critter type attacks against the Elemental.
.' It is suggested that all of your pets are Level 12 before trying to fight Merda.
|confirm
step
goto Desolace 57.1,45.7
.talk 66372
.' Let's fight!
.' Defeat Merda Stronghoof |q 31817/1
step
goto 57.1,45.7
.talk 66372
..turnin 31817
..accept 31870
step
'Cassandra Kaboom has 3 Mechanical type Pets. Elemental pets are the best choice against Cassandra.
.' It is suggested that all of your Pets are Level 13 when you fight Cassandra.
|confirm 
step
goto Southern Barrens 39.6,79.1
.talk 66422
.' Let's fight! 
.' Defeat Cassandra Kaboom |q 31870/1
step
goto 39.6,79.1
.talk 66422
..turnin 31870
..accept 31918
step
goto Orgrimmar 52.5,59.3
.talk 63626
..turnin 31918
..accept 31891
..accept 31903
step
'Gluk has a Beast type Pet, a Critter type Pet, and a Dragonkin type Pet. Use Mechanical type attacks on the Beast Pet, Beast type attacks on the Critter Pet, and Humanoid type attacks on the Dragonkin Pet.
.'Gluk's pets are all around level 11 so your pet team should be able to defeat him easily. 
|confirm
step
goto Feralas 59.7,49.6
.talk 66352
|tip You will not be able to challenge Traitor Gluk if you have the "Pet Recovery" debuff, wait for it to fall off.
.' Let's fight!
.' Defeat Traitor Gluk |q 31891/1
step
'Grazzle has 3 Dragonkin type Pets. Use Humanoid type attacks on his pets.
.' Grazzle's pets are all around level 14 so your pet team should be able to defeat him easily. 
|confirm
step
goto Dustwallow Marsh 53.9,74.8
.talk 66436
|tip You will not be able to challenge Grazzle the Great if you have the "Pet Recovery" debuff, wait for it to fall off.
.' Let's fight!
.' Defeat Grazzle the Great |q 31891/2
step
'Kela has a Beast type Pet, and 2 Critter type Pets. Use Mechanical type attacks on the Beast Pet, Beast type attacks on the Critter Pets.
.' Kela's pets are all around level 15 so your pet team should be able to defeat her easily. 
|confirm
step
goto Thousand Needles 31.9,33.0
.talk 66452
|tip You will not be able to challenge Kela Grimtotem if you have the "Pet Recovery" debuff, wait for it to fall off.
.' Let's fight!
.' Defeat Kela Grimtotem |q 31891/3
step
'Zoltan has 1 Mechanical Pet and 2 Magic Pets. Use Critter type attacks against his Mechanical Pet and use Dragonkin type attacks against his Magic Pets. If you do not have any Dragonkin, use Mechanical type Pets.
.' Your pets should be at least level 16 before fighting Zoltan.
|confirm
step
goto Felwood 40.0,56.6
.talk 66442
|tip You will not be able to challenge Zoltan if you have the "Pet Recovery" debuff, wait for it to fall off.
.' Let's do it!
.' Defeat Zoltan |q 31891/4
step
'Elena has a Flying type Pet, a Magic type Pet, and a Dragonkin type Pet. Use Magic type attacks on the Flying Pet, Dragonkin type attacks on the Magic Pet, and Humanoid type attacks on the Dragonkin Pet.
.' Your pets should be at least level 17 before fighting Elena.
|confirm
step
goto Moonglade 46.1,60.3
.talk 66412
|tip You will not be able to challenge Elena if you have the "Pet Recovery" debuff, wait for it to fall off.
.' Let's fight!
.' Defeat Elena Flutterfly |q 31891/5
step
goto Moonglade 46.1,60.3
.talk 66412
..turnin 31891
..accept 31897
step
'Stone Cold Trixxy has a Flying type Pet, a Beast type Pet, and a Dragonkin type Pet. Use Magic type attacks on the Flying Pet, Mechanical type attacks on the Beast Pet, and Humanoid type attacks on the Dragonkin Pet.
.'Your pets should be at least level 19 before fighting Trixxy.
|confirm
step
goto Winterspring 65.7,64.5
.talk 66412
|tip You will not be able to challenge Trixxy if you have the "Pet Recovery" debuff, wait for it to fall off.
.' Let's fight!
.' Defeat Stone Cold Trixxy |q 31897/1
step
goto 65.7,64.5
.talk 66412
..turnin 31897
..accept 31977
step
goto Orgrimmar 52.5,59.3
.talk 63626
..turnin 31977
..accept 31921
step
'Everessa has a Flying type Pet, a Beast type Pet, and an Aquatic type Pet. Use Magic type attacks on the Flying Pet, Mechanical type attacks on the Beast Pet, and Flying type attacks on the Aquatic Pet.
.' Her pets are all level 16. You should be able to win with ease.
|confirm
step
goto Swamp of Sorrows 76.8,41.5
.talk 66518
|tip You will not be able to challenge Everessa if you have the "Pet Recovery" debuff, wait for it to fall off.
.' Let's fight!
.' Defeat Everessa |q 31903/4
step
'Durin has a Flying type Pet, a Critter type Pet, and an Elemental type Pet. Use Magic type attacks on the Flying Pet, Beast type attacks on the Critter Pet, and Aquatic type attacks on the Elemental Pet.
.' His pets are all level 17. You should be able to win with ease.
|confirm
step
goto Burning Steppes 25.5,47.4
.talk 66520
|tip You will not be able to challenge Durin if you have the "Pet Recovery" debuff, wait for it to fall off.
.' Let's fight!
.' Defeat Durin Darkhammer |q 31903/5
step
'Kortas has 3 Dragonkin type Pets. Use Humanoid type attacks on his pets.
.' His pets are all around level 15 so your pet team should be able to defeat him easily. 
|confirm
step
goto Searing Gorge 35.3,27.8
.talk 66515
|tip You will not be able to challenge Kortas if you have the "Pet Recovery" debuff, wait for it to fall off.
.' Let's fight!
.' Defeat Kortas Darkhammer |q 31903/3
step
'David has a Beast type Pet, a Critter type Pet, and an Magic type Pet. Use Mechanical type attacks on the Beast Pet, Beast type attacks on the Critter Pet, and Dragonkin type attacks on the Magic Pet.
.' His pets are all around level 13 so your pet team should be able to defeat him easily. 
|confirm
step
goto The Hinterlands 63.0,54.6
.talk 66478
|tip You will not be able to challenge David if you have the "Pet Recovery" debuff, wait for it to fall off.
.' Let's fight!
.' Defeat David Kosse |q 31903/1
step
'Deiza has 2 Beast type Pets and an Undead type Pet. Use Mechanical type attacks on the Beast Pets and Critter type attacks on the Undead Pet.
.' Her pets are all around level 14 so your pet team should be able to defeat her easily. 
|confirm
step
goto Eastern Plaguelands 67.0,52.4
.talk 66512
|tip You will not be able to challenge Deiza if you have the "Pet Recovery" debuff, wait for it to fall off.
.' Let's fight!
.' Defeat Deiza Plaguehorn |q 31903/2
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
'Nicky has 3 Mechanical type Pets. Use Elemental type attacks on her pets.
.' Her pets are all around level 20.
|confirm
step
goto Hellfire Peninsula 64.3,49.3
.talk 66550
|tip You will not be able to challenge Nicky if you have the "Pet Recovery" debuff, wait for it to fall off. 
.' Let's fight!
.' Defeat Nicky Tinytech |q 31921/1
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
..accept 31982
step
goto Orgrimmar 52.5,59.3
.talk 63626
..turnin 31982
..accept 31929
step
'Beegle Blastfuse has an Aquatic type Pet and 2 Flying type Pets. Use Flying type attacks on his Aquatic pet and Magic attacks on his Flying pets.
.' Your pets should all be around level 25 before fighting Beegle.
|confirm
step
goto Howling Fjord 28.6,33.9
.talk 66635
|tip You will not be able to challenge Beegle Blastfuse if you have the "Pet Recovery" debuff, wait for it to fall off. 
.' Let's fight!
.' Defeat Beegle Blastfuse |q 31929/1
step
'Okrut Dragonwaste has a Dragonkin type Pet and 2 Undead type Pets. Use Humanoid type attacks on his Dragonkin and Critter type attacks on his Undead.
.' Your pets should all be level 25 before fighting Okrut.
|confirm
step
goto Dragonblight 59.0,77.0
.talk 66638
|tip You will not be able to challenge Okrut Dragonwaste if you have the "Pet Recovery" debuff, wait for it to fall off. 
.' Let's fight!
.' Defeat Okrut Dragonwaste |q 31929/3
step
'Nearly Headless Jacob has 3 Undead type Pets. Critter type attacks will be the most useful against Jacob. You should also consider having an Aquatic pet or two. 
.' Your pets should all be level 25.
|confirm
step
goto Crystalsong Forest 50.1,59.0
.talk 66636
|tip You will not be able to challenge Nearly Headless Jacob if you have the "Pet Recovery" debuff, wait for it to fall off. 	
.' Let's fight!
.' Defeat Nearly Headless Jacob |q 31929/2
step
'Gutretch has 2 Beast type Pets and a Critter type Pet. Use Mechanical type attacks on his Beasts and Beast type attacks on his Critter.
.' Your pets should all be level 25.
|confirm
step
goto Zul'Drak 13.2,66.8
.talk 66639
|tip You will not be able to challenge Gutretch if you have the "Pet Recovery" debuff, wait for it to fall off. 	
.' Let's fight!
.' Defeat Gutretch |q 31929/4
step
.' Click the complete quest box on the right side of your screen.
..turnin 31929
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
.' Defeat Major Payne |q 31929/4
step
goto 77.4,19.6
.talk 66675
..turnin 31929
step
.' Click the Quest Discovered! box on the right side of your screen.
..accept 31983
step
goto Orgrimmar 52.5,59.3
.talk 63626
..turnin 31983
..accept 31967
step
'Brok has a Beast type Pet, a Critter type Pet, and a Magic type Pet. Use Mechanical type attacks on his Beast, Beast type attacks on his Critter, and Dragonkin type attacks on his Magic.
.' Your pets should all be level 25.
|confirm
step
goto Mount Hyjal 61.4,32.7
.talk 66819
|tip You will not be able to challenge Brok if you have the "Pet Recovery" debuff, wait for it to fall off. 	
.' Let's fight!
.' Defeat Brok |q 31967/1
step
'Bordin Steadyfist has a Critter type Pet and 2 Elemental type Pets. Use Beast type attacks on his Critter and Aquatic type attacks on his Elementals.
.' Your pets should all be level 25.
|confirm
step
goto Deepholm 49.9,57.0
.talk 66815
|tip You will not be able to challenge Bordin Steadyfist if you have the "Pet Recovery" debuff, wait for it to fall off. 	
.' Let's fight!
.' Defeat Bordin Steadyfist |q 31967/2
step
'Goz Banefury has a Beast type Pet, an Elemental type Pet, and a Magic type Pet. Use Mechanical type attacks on his Beast, Aquatic type attacks on his Elemental, and Dragonkin type attacks on his Magic.
.' Your pets should all be level 25.
|confirm
step
goto Twilight Highlands 56.6,56.8
.talk 66822
|tip You will not be able to challenge Goz Banefury if you have the "Pet Recovery" debuff, wait for it to fall off. 	
.' Let's fight!
.' Defeat Goz Banefury |q 31967/3
step
.' Click the complete quest box on the right side of your screen.
..turnin 31967
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
..accept 31986
step
goto Orgrimmar 52.5,59.3
.talk 63626
..turnin 31986
..accept 31952
step
.' From this point on, 
step
goto The Jade Forest 48.0,54.2
.talk 66730
.' Tell her let's do this!
.' Defeat Hyuna of the Shrines |q 31952/1
step
goto Valley of the Four Winds 46.0,43.7
.talk 66734
.' Tell her let's do this!
.' Defeat Farmer Nishi |q 31952/2
step
goto Krasarang Wilds 62.2,45.9
.talk 66733
.' Defeat Mo'ruk |q 31952/3
step
goto Kun-Lai Summit 35.8,73.8 
.talk 66738
.' Defeat Courageous Yon |q 31952/4
.' He can also be found at [44.7,52.4]
step
goto Townlong Steppes 36.3,52.2
.talk 66918
.' Defeat Seeker Zusshi |q 31952/5
step
goto Dread Wastes 55.1,37.6
.talk 66739
.' Defeat Wastewalker Shu |q 31952/6
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