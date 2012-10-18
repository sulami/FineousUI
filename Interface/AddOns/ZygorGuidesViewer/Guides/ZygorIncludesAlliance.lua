if UnitFactionGroup("player")~="Alliance" then return end
local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if ZGV:DoMutex("IncludesA") then return end


--------------------------------------------------------------------------------------------------------------------------------------
-- Hearth
--------------------------------------------------------------------------------------------------------------------------------------

ZygorGuidesViewer:RegisterInclude("innkeeper_dwarven",[[
		goto Stormwind,64.9,31.9
		.talk Thaegra Tillstone##44235
]])

ZygorGuidesViewer:RegisterInclude("home_TradeDistrict",[[
		goto Stormwind City,60.4,75.3
		.talk Innkeeper Allison##6740
		.home Trade District
]])

ZygorGuidesViewer:RegisterInclude("home_DwarvenDistrict",[[
		goto Stormwind City,64.9,31.9
		.talk Thaegra Tillstone##44235
		.home Dwarven District
]])

ZygorGuidesViewer:RegisterInclude("home_OldTown",[[
		goto Stormwind City,75.7,54.1
		.talk Maegan Tillman##44237
		.home Old Town
]])

ZygorGuidesViewer:RegisterInclude("hearth_hub",[[
		'Hearth to the Trade District |goto Stormwind City |use Hearthstone##6948 |noway |c
]])

ZygorGuidesViewer:RegisterInclude("hearth_oldtown",[[
		'Hearth to Old Town, Stormwind  |goto Stormwind City |use Hearthstone##6948 |noway |c  //75.6,54.0
]])

ZygorGuidesViewer:RegisterInclude("hearth_dwarven",[[
		'Hearth to Dwarven District  |goto Stormwind City |use Hearthstone##6948 |noway |c
]])

ZygorGuidesViewer:RegisterInclude("hearth_dalaran",[[
		'Hearth to A Hero's Welcome, Dalaran  |goto Dalaran |use Hearthstone##6948 |noway |c  //44.4,62.7
]])
--------------------------------------------------------------------------------------------------------------------------------------
-- Portals
--------------------------------------------------------------------------------------------------------------------------------------

ZygorGuidesViewer:RegisterInclude("port_blastedlands",[[
		goto 49.0,87.3
		.' Click the Portal to Blasted Lands |tip It's a blue and purple swirling portal.
		.' Teleport to the Blasted Lands |goto Blasted Lands |noway |c
]])

ZygorGuidesViewer:RegisterInclude("darkportal",[[
		goto 49.0,87.3
		.' Click the Portal to Blasted Lands |tip It's a blue and purple swirling portal.
		.' Teleport to the Blasted Lands |goto Blasted Lands |noway |c
	step
		goto Blasted Lands,55.0,54.1 |n
		.' Enter the huge green portal
		.' Teleport to Hellfire Peninsula |goto Hellfire Peninsula |noway |c
]])

ZygorGuidesViewer:RegisterInclude("port_hyjal",[[
		goto Stormwind City,76.2,18.7
		.' Click the Portal to Hyjal |tip It's a swirling blue and green portal.
		.' Teleport to Mount Hyjal |goto Mount Hyjal |noway |c
]])

ZygorGuidesViewer:RegisterInclude("port_vashjir",[[
		goto Stormwind City,73.3,16.8
		.' Click the Portal to Vashj'ir |tip It's a big swirling portal.
		.' Teleport to Vashj'ir |goto Kelp'thar Forest |noway |c
]])

ZygorGuidesViewer:RegisterInclude("port_deepholm",[[
		goto Stormwind City,73.2,19.7
		.' Click the Portal to Deepholm |tip It's a pink and purple swirling portal.
		.' Teleport to Deepholm |goto Deepholm |noway |c
]])

ZygorGuidesViewer:RegisterInclude("port_twilight",[[
		goto Stormwind City,75.3,16.4
		.' Click the Portal to Twilight Highlands |tip It's a big swirling portal.
		.' Teleport to Twilight Highlands |goto Twilight Highlands |noway |c
]])

ZygorGuidesViewer:RegisterInclude("shatport_sw",[[
		goto Shattrath City,57.2,48.2
		.' Click the Portal to Stormwind |goto Stormwind City,49.6,86.5,0.5 |noway |c
]])

ZygorGuidesViewer:RegisterInclude("uldum_port",[[
		goto Stormwind City 75.2,20.5 |n
		.' Click the Portal to Uldum. |goto Uldum|noway|c
]])

--------------------------------------------------------------------------------------------------------------------------------------
-- Boats
--------------------------------------------------------------------------------------------------------------------------------------

ZygorGuidesViewer:RegisterInclude("rideto_ratchet",[[
		|fly Booty Bay //Stranglethorn
	step
		goto The Cape of Stranglethorn,39.0,67.0 |n
		.' Ride the boat to Ratchet, Northern Barrens |goto Northern Barrens |noway |c
]])

ZygorGuidesViewer:RegisterInclude("rideto_borean",[[
		goto Stormwind City,18.2,25.5 |n
		.' Ride the boat to Borean Tundra |goto Borean Tundra |noway |c
]])

ZygorGuidesViewer:RegisterInclude("rideto_howlingfjord",[[
		|fly Menethil Harbor
	step
		goto Wetlands,5.1,55.8 |n
		'Ride the boat to Howling Fjord|goto Howling Fjord |noway |c
]])

ZygorGuidesViewer:RegisterInclude("rideto_ruttheranvillage",[[
		goto Stormwind City,22.6,56.0 |n
		.' Ride the boat to Rut'theran Village |goto Teldrassil |noway |c
]])

ZygorGuidesViewer:RegisterInclude("rideto_darnassus",[[
		goto Stormwind City,22.6,56.0 |n
		.' Ride the boat to Rut'theran Village |goto Teldrassil |noway |c
	step
		 goto Teldrassil,55.1,88.3 |n
		 .' Go through the Pink portal to Darnassus |goto Darnassus |noway |c
]])

ZygorGuidesViewer:RegisterInclude("rideto_theramoreisle",[[
		|fly Menethil Harbor
	step
		goto Wetlands,6.5,62.1 |n
		.' Ride the boat to Theramore Isle, Dustwallow Marsh |goto Dustwallow Marsh |noway |c
]])

ZygorGuidesViewer:RegisterInclude("rideto_stormwind",[[
		goto Teldrassil,55.0,93.7 |n
		.' Ride the boat to Stormwind |goto Stormwind City |noway |c
]])
--------------------------------------------------------------------------------------------------------------------------------------
-- Reputations
--------------------------------------------------------------------------------------------------------------------------------------
ZygorGuidesViewer:RegisterInclude("A_Cenarion_Circle_Faction",[[
	step
	label	"menu"
		.' There are several ways to earn reputation with _Cenarion Circle_.  Earning Exalted with this Faction is half of the _Achievement Guardian of Cenarius_.
		.' You can _farm mobs and bosses_ in the _Ruins of Ahn'Qiraj_.  You would need at least 1 other person to form the raid.
		.' or
		.' There are a large number of _quests_ available _at Cenarion Hold_, but once those are completed you'll need to grind your way to Exalted. Click here to go to these quests |confirm always |next "quest"
		.' or
		.' The _only repeatable quest_ as of 4.2 is from Bor Wildmane at Cenarion Hold.  You will need to _collect 10 Encrypted Twilight Text_ per _turn in_. Click here to continue |confirm always |next "farm"
		|next "exalted" |only if rep('Cenarion Circle')==Exalted
	step
	label	"quest"
		#include "rideto_ratchet"
	step
		goto Silithus,54.9,36.0
		.talk Windcaller Proudhorn##15191
		..accept Securing the Supply Lines##8280
	step
		goto 55.0,36.0
		.' Click the Wanted Poster: Deathclasp |model 3053
		..accept Wanted - Deathclasp, Terror of the Sands##8283 |tip You must kill an elite mob for this quest, so you may need a partner if you cannot solo it.  You can skip this quest if you can't solo it and can't find a partner to help. 
	step
		goto 55.5,36.8
		.talk Calandrath##15174
		.home Cenarion Hold
	step
		goto 55.4,36.3
		.talk Beetix Ficklespragg##15189
		..accept Deadly Desert Venom##8277
	step
		goto 54.5,33.0
		.talk Rifleman Torrig##17082
		..accept Report to Marshal Bluewall##9415
	step
		goto 53.2,35.1
		.talk Bor Wildmane##15306
		..accept Secret Communication##8318
	step
		goto 53.2,35.1
		.talk Huum Wildmane##15270
		..accept Twilight Geolords##8320
	step
		goto 45.4,41.3
		.from Twilight Avenger##11880+, Twilight Stonecaller##11882+
		.get 10 Encrypted Twilight Text |q 8318/1
		.collect 20 Encrypted Twilight Text##20404 |q 8323 |future |tip You need 10 extra Encrypted Twighlight Text for a future quest.
		.kill 10 Twilight Geolord##11881+ |q 8320/1
	step
		goto 46.2,34.8
		.from Sand Skitterer##11738+
		.get 8 Sand Skitterer Fang |q 8277/2
		.from Stonelash Scorpid##11735+
		.get 8 Stonelash Scorpid Stinger |q 8277/1
		.kill 15 Dredge Striker##11740+ |q 8280/1
	step
		goto 55.4,36.3
		.talk Beetix Ficklespragg##15189
		..turnin Deadly Desert Venom##8277
		..accept Noggle's Last Hope##8278
	step
		goto 54.9,36.0
		.talk Windcaller Proudhorn##15191
		..turnin Securing the Supply Lines##8280
		..accept Stepping Up Security##8281
	step
		goto 52.7,35.6
		.talk Bor Wildmane##15306
		..turnin Secret Communication##8318
	step
		goto 52.7,35.7
		.talk Huum Wildmane##15270
		..turnin Twilight Geolords##8320
		..accept Vyral the Vile##8321
	step
		goto 70.2,16.1 |n
		.' Enter the cave |goto 70.2,16.1,0.5 |noway |c
	step
		goto 73.1,16.5
		.' Follow the path inside the cave
		.from Vyral the Vile##15202
		.get Vyral's Signet Ring |q 8321/1
	step
		goto 70.2,16.1 |n
		.' Leave the cave |goto 70.2,16.1,0.5 |noway |c
	step
		goto 52.7,35.6
		.talk Huum Wildmane##15270
		..turnin Vyral the Vile##8321
	step
		goto 53.6,35.3
		.talk Geologist Larksbane##15183
		..accept The Twilight Mystery##8284
	step
		goto 31.0,13.6
		.click Twilight Tablet Fragments##6419
		.get 8 Twilight Tablet Fragment |q 8284/1
	step
		goto 53.6,35.3
		.talk Geologist Larksbane##15183
		..turnin The Twilight Mystery##8284
		..accept The Deserter##8285
	step
		goto 53.2,32.5
		.talk Commander Mar'alith##15181
		..accept Dearest Natalia##8304
	step
		goto 68.7,63.0
		.talk Hermit Ortell##15194
		..turnin The Deserter##8285
		..accept The Twilight Lexicon##8279
	step
		goto 39.6,47.0
		.talk Marshal Bluewall##17080
		..turnin Report to Marshal Bluewall##9415
		..accept Scouring the Desert##9419
	step
		goto 50.0,49.9
		.click Silithyst Geyser##6862 
		.' Surround yourself in Silithyst Dust |havebuff Interface\Icons\Spell_Holiday_ToW_SpiceCloud |c |q 9419
		.' They spawn in various locations, you find more at:
		.' [53.2,41.6]
		.' [57.1,47.2]
		.' [60.0,41.1]
	step
		goto 39.1,46.9
		.' Stand inside the big blue-glowing metal machine
		.' Deliver Silithyst |q 9419/1
	step
		goto 39.6,47.0
		.talk Marshal Bluewall##17080
		..turnin Scouring the Desert##9419
	step
		goto 46.2,39.8
		.from Twilight Keeper Havunth##11804 |tip He walks around this area in a purple robe, so you may need to search for him.
		.get Twilight Lexicon - Chapter 3 |q 8279/3
	step
		goto 33.9,34.1
		.from Twilight Keeper Mayna##15200 |tip She walks around this area carrying a book, so you may need to search for her.
		.get Twilight Lexicon - Chapter 1 |q 8279/1	
	step
		goto 44.9,48.7
		.kill 20 Dredge Crusher##11741+ |q 8281/1
		.' You can find more Dredge Crushers around [Silithus,37.9,32.4]
	step
		goto 42.8,63.5
		.from Stonelash Flayer##11737+
		.get 3 Stonelash Flayer Stinger |q 8278/1
		.from Stonelash Pincer##11736+
		.get 3 Stonelash Pincer Stinger |q 8278/2
		.from Rock Stalker##11739+
		.get 3 Rock Stalker Fang |q 8278/3
	step
		goto 54.9,36.0
		.talk Windcaller Proudhorn##15191
		..turnin Stepping Up Security##8281
	step
		goto 55.4,36.3
		.talk Beetix Ficklespragg##15189
		..turnin Noggle's Last Hope##8278
	step
		goto 55.3,36.2
		.talk Noggle Ficklespragg##15190
		..accept Noggle's Lost Satchel##8282
	step
		goto 46.0,79.4
		.talk Frankal Stonebridge##15171
		..' Tell him you've heard he might have some information as to the weareabouts of Mistress Natalia Mar'alith
		.' Question Frankal |q 8304/1
	step
		goto 46.4,79.1
		.talk Rutgar Glyphshaper##15170
		..' Tell him the Commander has sent you here to gather some information about his missing wife
		.' Question Rutgar |q 8304/2
	step
		.' Click the Complete Quest box in the top right corner of your screen
		..turnin Dearest Natalia##8304
		..accept Into The Maw of Madness##8306
	step
		goto 47.4,81.1 |n
		.' Follow the path up |goto 47.4,81.1,0.5 |noway |c
	step
		goto 49.2,81.6
		.click Noggle's Satchel##323 |tip Be careful of Deathclasp, the elite scorpion that patrols this small area.
		.get Noggle's Satchel##20379 |q 8282/1
	step
		goto 49.5,81.3
		.from Deathclasp##15196 
		.get Deathclasp's Pincer |q 8283/1 |tip Deathclasp is an elite mob, so you may need a partner if you cannot solo him.  You can skip this quest if you can't solo it and can't find a partner to help.
	step
		goto 24.8,77.3
		.from Twilight Keeper Exeter##11803
		.get Twilight Lexicon - Chapter 2 |q 8279/2
	step
		'Hearth to Cenarion Hold |goto 55.5,36.8,0.5 |use Hearthstone##6948 |noway |c
	step
		goto 55.3,36.2
		.talk Noggle Ficklespragg##15190
		..turnin Noggle's Lost Satchel##8282
	step
		goto 54.3,34.0 |n
		.' Follow the path up |goto 54.3,34.0,0.5 |noway |c
	step
		goto 54.5,32.0
		.talk Vish Kozus##15182
		..turnin Wanted - Deathclasp, Terror of the Sands##8283
	step
		goto 46.0,79.4
		.talk Frankal Stonebridge##15171
		..accept Breaking the Code##8310
	step
		goto 46.4,79.1
		.talk Rutgar Glyphshaper##15170
		..accept Glyph Chasing##8309
	step
		goto 58.5,78.4 |n
		.' Enter the hive |goto 58.5,78.4,0.5 |noway |c
	step
		goto 57.2,79.2 |n
		.' Follow this path |goto 57.2,79.2,0.5 |noway |c
	step
		goto 56.4,83.0 |n
		.' Follow this path |goto 56.4,83.0,0.5 |noway |c
	step
		goto 56.1,87.8 |n
		.' Follow this path |goto 56.1,87.8,0.5 |noway |c
	step
		goto 55.6,90.6
		.from Mistress Natalia Mar'alith##15215
		.' Discover the Fate of Mistress Natalia Mar'alith |q 8306/1
	step
		goto 55.6,90.5
		.click the Hive'Regal Glyphed Crystal##6414 
		..' <Use the transcription device to gather a rubbing.>
		.get Hive'Regal Rubbing |q 8309/1
	step
		goto 56.1,87.8 |n
		.' Follow this path |goto 56.1,87.8,0.5 |noway |c
	step
		goto 56.4,83.0 |n
		.' Follow this path |goto 56.4,83.0,0.5 |noway |c
	step
		goto 57.2,79.2 |n
		.' Follow this path |goto 57.2,79.2,0.5 |noway |c
	step
		goto 58.5,78.4 |n
		.' Leave the hive |goto 58.5,78.4,0.5 |noway |c
	step
		goto 59.3,74.8
		.from Hive'Regal Ambusher##11730+, Hive'Regal Slavemaker##11733+, Hive'Regal Spitfire##11732+, Hive'Regal Hive Lord##11734+
		.get Hive'Regal Silithid Brain |q 8310/1
		.collect 1 Brann Bronzebeard's Lost Letter##20461 |n
		.' Click Brann Bronzebeard's Lost Letter |use Brann Bronzebeard's Lost Letter##20461
		..accept Brann Bronzebeard's Lost Letter##8308
	step
		goto 65.8,76.5 |n
		.' Follow the path up |goto 65.8,76.5,0.5 |noway |c
	step
		goto 68.7,63.0
		.talk Hermit Ortell##15194
		..turnin The Twilight Lexicon##8279
		..accept A Terrible Purpose##8287
		..accept True Believers##8323
	step
		goto 53.2,32.5
		.talk Commander Mar'alith##15181
		..turnin Into The Maw of Madness##8306
		..turnin A Terrible Purpose##8287
	step
		goto 45.4,41.3
		.from Twilight Avenger##11880+, Twilight Geolord##11881+, Twilight Stonecaller##11882+
		.get 10 Encrypted Twilight Text |q 8323/1
	step
		goto 46.0,79.4
		.talk Frankal Stonebridge##15171
		..turnin Breaking the Code##8310
	step
		goto 46.4,79.1
		.talk Rutgar Glyphshaper##15170
		..turnin Brann Bronzebeard's Lost Letter##8308
		..turnin Glyph Chasing##8309
		..accept Unraveling the Mystery##8314
	step
		goto 65.8,76.5 |n
		.' Follow the path up |goto 65.8,76.5,0.5 |noway |c
	step
		goto 68.7,63.0
		.talk Hermit Ortell##15194
		..turnin True Believers##8323
	step
		'Hearth to Cenarion Hold |goto 55.5,36.8,0.5 |use Hearthstone##6948 |noway |c
	step
		goto 53.6,35.3
		.talk Geologist Larksbane##15183
		..turnin Unraveling the Mystery##8314
		|next "menu"
	step
	label	"farm"
		#include "rideto_ratchet"
	step
	label	"farm_text"
		|fly Cenarion Hold
	step
		goto Silithus,45.6,40.1
		.from Twilight Avenger##11880+, Twilight Keeper Havunth##11804+, Twilight Stonecaller##11882+, Twilight Geolord##11881+
		.collect Encrypted Twilight Text##20404 |n
		.' More Twilight mobs can be found at [28.0,74.8] 
		.' Here [69.7,16.6] 
		.' Here [33.5,33.9]
		.' When you have a lot of Twilight Texts to turn in, click here |confirm
	step
		goto Silithus,53.2,35.1
		.talk Bor Wildmane##15306
		..accept Encrypted Twilight Texts##8319 |n
		.' You can click here to farm more Texts |confirm |next "farm_text"
		.' or
		.' Click here to do quests outside of Silithus for more rep |confirm
		|next "exalted" |only if rep('Cenarion Circle')==Exalted
	step
		#include "rideto_ratchet"
	step
		|fly Marshal's Stand
	step
		goto Un'Goro Crater,55.7,60.6
		.talk Zen'Aliri##38269
		..accept Finding Stormclaw##24854
	step
		goto 70.8,76.4
		.talk Garl Stormclaw##38274
		..turnin Finding Stormclaw##24854
		..accept Claws of White##24719
	step
		goto 67.4,72.3
		.from Ravasaur##6505+,Ravasaur Runner##6506+,Ravasaur Hunter##6507+,Venomhide Ravasaur##6508+
		..get 5 White Ravasaur Claw |q 24719/1
		.' More can be found around [Un'Goro Crater,69.1,57.1]
	step
		goto 70.6,76.8
		.talk Garl Stormclaw##38274
		..turnin Claws of White##24719
		..accept Carried on the Waves##24686
	step
		goto 73.5,60.2
		.' While traveling to the coordinates, look in the water for Bloodpetal Seeds |modelnpc 38202
		.' Catch the Bloodpetal Seeds with Garl's Net. |use Garl's Net##50441
		.get 4 Un'Goro Lasher Seed |q 24686/1
	step
		goto 70.6,75.9
		.talk Garl Stormclaw##38274
		..turnin Carried on the Waves##24686
		..accept Flowing to the North##24689
	step
		goto 76.4,48.3
		.talk Ithis Moonwarden##38263
		..turnin Flowing to the North##24689
		..accept Bouquets of Death##24687
	step
		goto 75.8,44.1
		.' Attack the Juvenile Bloodpetals in the area.
		..kill 6 Pack of Juvenile Bloodpetal##38213+ |q 24687/1
	step
		goto 76.4,48.3
		.talk Ithis Moonwarden##38263
		..turnin Bouquets of Death##24687
		..accept Aberrant Flora##24855
	step
		goto 69.9,34.1
		.kill 11 Bloodpetal##6512+ |q 24855/1
	step
		goto 76.4,48.3
		.talk Ithis Moonwarden##38263
		..turnin Aberrant Flora##24855
	step
		|fly Ratchet
	step
		goto Northern Barrens,70.1,73.3
		.' Ride the boat to Booty Bay 
		.' Go to Booty Bay |goto The Cape of Stranglethorn|noway |c
	step
		|fly The Menders' Stead
	step
		goto 48.9,54.8
		.talk Adrine Towhide##44456
		..accept Zen'Kiki, the Druid##26953
	step
		goto 48.5,54.9
		.talk Selyria Groenveld##44457
		..accept I Ain't Sayin' You a Gourd-Digger...##26956
	step
		goto 47.4,52.9
		.click Unhealthy-Looking Pumpkin##6326
		.from Thrashing Pumpkin##44487+
		.' Remove 3 Unhealthy-Looking Pumpkins |q 26956/3
	step
		goto 46.8,54.1
		.click Rotten Apple##9820+
		.from Pome Wraith##44488+
		.' Remove 4 Rotten Apples |q 26956/2
	step
		goto 45.8,53.4
		.click Bad Corn##9819
		.from Corn Stalker##44489+
		.' Remove 6 Bad Corn |q 26956/1
	step
		goto 50.3,59.6
		.from Plague Lurker##1824+, Venom Mist Lurker##1822+, Diseased Wolf##1817+, Hulking Plaguebear##44482+ |tip You must do this with the Troll Zen'Kiki next to you. If you lose him, return to the Menders' Stead and talk to him.
		.' Kill 20 Wildlife with Zen'Kiki |q 26953/1
	step
		goto 48.9,54.8
		.talk Adrine Towhide##44456
		..turnin Zen'Kiki, the Druid##26953
		..accept A Different Approach##26954
	step
		goto 48.5,54.9
		.talk Selyria Groenveld##44457
		..turnin I Ain't Sayin' You a Gourd-Digger...##26956
	step
		goto 53.9,53.7
		.' Click Zen'Kiki |tip He's the Troll that's following you around.  Keep clicking him to pull the Diseased Hawks down to you.
		.kill 7 Diseased Hawk##44481 |q 26954/1
	step
		goto 48.9,54.8
		.talk Adrine Towhide##44456
		..turnin A Different Approach##26954
	step
		goto 49.3,55.0
		.talk Field Agent Kaartish##44454
		..accept A New Era for the Plaguelands##26999
	step
		goto 46.0,48.7
		.from Hulking Plaguebear##44482+
		.get 4 Hulking Plaguebear Sample |q 26999/3
		.from Diseased Wolf##1817+
		.get 4 Diseased Wolf Sample |q 26999/4
	step
		goto 57.0,62.7
		.from Plague Lurker##1824+
		.get 4 Plague Lurker Sample |q 26999/1
		.from Venom Mist Lurker##1822+
		.get 4 Venom Mist Lurker Sample |q 26999/2
	step
		goto 49.3,55.0
		.talk Field Agent Kaartish##44454
		..turnin A New Era for the Plaguelands##26999
		..accept Northridge Lumber Mill##26935
	step
		goto 48.1,32.4
		.talk Nathaniel Dumah##11616
		..turnin Northridge Lumber Mill##26935
		..accept Learning the Ropes##27000
	step
		goto 47.7,31.7
		.clicknpc Hearthglen Mustang##44836
		.' Ride the Hearthglen Mustang |invehicle |c |q 27000
	step
		goto 47.4,35.0
		.' Use your Whinny ability on your hotbar near Northridge Spiders
		.' Frighten 25 Northridge Spiders |q 27000/1
		|modelnpc Northridge Spider##44284
	step
		'Click the red arrow on your hotbar to stop riding the Hearthglen Mustang |outvehicle |c |q 27000
	step
		goto 48.1,32.4
		.talk Nathaniel Dumah##11616
		..turnin Learning the Ropes##27000
		..accept This Means WAR (Wild Arachnid Roundup)##27001
	step
		goto 47.7,31.7
		.clicknpc Hearthglen Mustang##44836
		.' Ride the Hearthglen Mustang |invehicle |c |q 27001
	step
		goto 47.0,35.3
		.' Use your Whinny ability on your hotbar near Northridge Spiders
		.' Continuously scare the Northridge Spiders and try to make them run to [48.0,32.9]
		.' The Hearthglen Recruits will kill the Northridge Spiders
		.' Lure 10 Northridge Spiders to Lumber Mill |q 27001/1
	step
		'Click the red arrow on your hotbar to stop riding the Hearthglen Mustang |outvehicle |c |q 27001
	step
		goto 48.1,32.4
		.talk Nathaniel Dumah##11616
		..turnin This Means WAR (Wild Arachnid Roundup)##27001
		..accept An Audience with the Highlord##27002
	step
		goto 42.0,14.8
		.talk Highlord Tirion Fordring##44441
		..turnin An Audience with the Highlord##27002
	step
		goto 49.3,54.9
		.talk Field Agent Kaartish##44454
		..accept Gahrron's Withering Cauldron##27053
	step
		goto 62.7,58.9
		.from Cauldron Lord Soulwrath##11078
		.get Gahrron's Withering Cauldron Key |q 27053/1
	step
		goto 62.6,58.6
		.' Click the Scourge Cauldron |tip It's a huge shaking black pot with orange liquid in it on a stone platform.
		..turnin Gahrron's Withering Cauldron##27053
		..accept Return to the Stead##27057
	step
		goto 49.3,55.0
		.talk Field Agent Kaartish##44454
		..turnin Return to the Stead##27057
	step
		goto 48.9,54.8
		.talk Adrine Towhide##44456
		..accept Zen'Kiki and the Cultists##26955
	step
		goto 66.7,48.9
		.' Click Cultist Cages |tip They look like big yellow cages around this area. |model 01787
		.' Free and Heal 4 Captive Plaguebears |q 26955/1
	step
		goto 48.9,54.8
		.talk Adrine Towhide##44456
		..turnin Zen'Kiki and the Cultists##26955
	step
		|fly Crown Guard Tower
	step
		goto Eastern Plaguelands,35.6,68.9
		.talk Carlin Redpath##11063
		..accept Little Pamela##27383
	step
		goto Eastern Plaguelands,32.5,83.7
		.talk Pamela Redpath##10926
		..turnin Little Pamela##27383
		..accept Pamela's Doll##27384
	step
		goto 35.5,85.3
		.' You can find the doll parts in all of the buildings
		.click Pamela's Doll's Right Side##4233
		.collect Pamela's Doll's Right Side##12888 |q 27384
		.click Pamela's Doll's Left Side##4232
		.collect Pamela's Doll's Left Side##12887 |q 27384
		.click Pamela's Doll's Head##4231
		.collect Pamela's Doll's Head##12886 |q 27384
	step
		'Use Pamela's Doll's Head |use Pamela's Doll's Head##12886
		.get Pamela's Doll |q 27384/1
	step
		goto 32.4,83.7
		.talk Pamela Redpath##10926
		..turnin Pamela's Doll##27384
		..accept I'm Not Supposed to Tell You This##27392
	step
		goto 40.3,83.8
		.from The Lone Hunter##45450
		.get Joseph's Hunting Blade |q 27392/1
	step
		goto 32.5,83.6
		.talk Pamela Redpath##10926
		..turnin I'm Not Supposed to Tell You This##27392
		..accept Uncle Carlin##27385
	step
		goto 35.6,68.9
		.talk Carlin Redpath##11063
		..turnin Uncle Carlin##27385
		..accept A Strange Historian##27386
	step
		goto 35.3,68.1
		.talk Chromie##10667
		..turnin A Strange Historian##27386
	step
		goto Eastern Plaguelands,35.0,68.1
		.talk Urk Gagbaz##45500
		..accept Cenarion Tenacity##27544
	step
		goto 30.2,56.9
		.talk Rayne##16135
		..turnin Cenarion Tenacity##27544
		..accept Postponing the Inevitable##27420
		..accept Amidst Death, Life##27421
	step
		goto 33.7,44.4
		.' Go inside the necropolis
		.' Use Rayne's Seeds while standing on the platform above the green liquid |use Rayne's Seeds##61036
		.' Plant a Seed in the Western Necropolis |q 27421/2
	step
		goto 37.8,42.5
		.' Go inside the necropolis
		.' Use Rayne's Seeds while standing on the platform above the green liquid |use Rayne's Seeds##61036
		.' Plant a Seed in the Northeastern Necropolis |q 27421/3
	step
		goto 37.6,48.3
		.' Go inside the necropolis
		.' Use Rayne's Seeds while standing on the platform above the green liquid |use Rayne's Seeds##61036
		.' Plant a Seed in the Southeastern Necropolis |q 27421/1
	step
		goto 36.4,46.0
		.from Shadowmage##8550+, Dark Adept##8546+
		.collect Plague Disseminator Control Rune##61037 |n
		.' Use your Overcharged Mote when you have a Plague Disseminator Control Rune |use Overcharged Mote##61038
		.' Destroy 3 Plague Disseminators |q 27420/1
	step
		goto 30.2,56.9
		.talk Rayne##16135
		..turnin Postponing the Inevitable##27420
		..turnin Amidst Death, Life##27421
		|next "exalted" |only if rep('Cenarion Circle')==Exalted
	step
		.' This is the end of the questing 
		.' Click here to go back to the Silithus Reputation menu |confirm |next "menu"
	step
	label	"exalted"
		.' Congratulations, you are Exalted with Cenarion Expedition |only if rep('Cenarion Circle')==Exalted
]])
ZygorGuidesViewer:RegisterInclude("A_Cenarion_Expedition_Faction",[[
	step
		.' You will need to farm Cenarion Circle and Cenarion Expedition reputation.
		.' Farming rep in the dungeons Slave Pens and Underbog is a good way to gain reputation up to Honored.
		.' You can also kill naga or any mobs for Unidentified Plant Parts until friendly.
		.' You can also grind reputation from Heroic Coilfang Instances up to Exalted if you would rather do that.
		.' Coilfang Armaments drop in normal Steamvaults, as well as heroic Coilfang instances.
		|confirm always
	step
		goto Hellfire Peninsula,47.8,65.8
		.from Crust Burster##16844+ |tip They are under the jumping piles of rocks, they come up to fight when you get close to the jumping rocks.
		.collect Eroded Leather Case##23338 |n
		.' Click the Eroded Leather Case |use Eroded Leather Case##23338
		..accept Missing Missive##9373
	step
		goto 15.7,52
		.talk Thiah Redmane##16991
		..turnin Missing Missive##9373
		..accept Demonic Contamination##9372
	step
		goto 24.9,54.3
		.from Hulking Helboar##16880+
		.get 6 Helboar Blood Sample |q 9372/1
	step
		goto 15.7,52
		.talk Thiah Redmane##16991
		..turnin Demonic Contamination##9372
		..accept Testing the Antidote##10255
	step
		goto 15.7,52
		.talk Mahuram Stouthoof##16888
		..accept Keep Thornfang Hill Clear!##10159
	step
		goto 25,54
		.' Use the Cenarion Antidote on a Hulking Helboar |use Cenarion Antidote##23337
		.from Dreadtusk##16992
		.' Administer the Antidote |q 10255/1
	step
		goto 15.7,52
		.talk Thiah Redmane##16991
		..turnin Testing the Antidote##10255
	step
		goto 10.1,53.2
		.kill 8 Thornfang Ravager##19349+ |q 10159/1
		.kill 8 Thornfang Venomspitter##19350+ |q 10159/2
	step
		goto Hellfire Peninsula,15.7,52
		.talk Mahuram Stouthoof##16888
		..turnin Keep Thornfang Hill Clear!##10159
	step
		goto 15.6,52.0
		.talk Tola'thion##19293
		..accept Colossal Menace##10132
	step
		goto 14.7,44.6
		.kill 5 Raging Colossus##19188+ |q 10132/1
		.collect Crimson Crystal Shard##29476 |n
		.' Click the Crimson Crystal Shard in your bags |use Crimson Crystal Shard##29476
		..accept Crimson Crystal Clue##10134
	step
		goto 15.6,52.0
		.talk Tola'thion##19293
		..turnin Colossal Menace##10132
		..turnin Crimson Crystal Clue##10134
		..accept The Earthbinder##10349
	step
		goto 16.0,51.6
		.talk Earthbinder Galandria Nightbreeze##19294
		..turnin The Earthbinder##10349
		..accept Natural Remedies##10351
	step
		goto 13.6,39.1
		.' Use your Seed of Revitalization while standing on the Earthbinder's Circle |use Seed of Revitalization##29478 |tip It's a bright green symbol on the ground.
		.from Goliathon##19305
		.' Revitalize Fallen Sky Ridge |q 10351/1
	step
		goto 16.0,51.6
		.talk Earthbinder Galandria Nightbreeze##19294
		..turnin Natural Remedies##10351
	step
		goto Zangarmarsh,80.4,64.2
		.talk Lauranna Thar'well##17909
		..accept Plants of Zangarmarsh##9802
		.talk Ikeyen##17956
		..accept The Umbrafen Tribe##9747
	step
		goto 79.1,65.3
		.talk Warden Hamoot##17858
		..accept A Warm Welcome##9728
	step
		goto 78.5,63.1
		.talk Lethyn Moonfire##17834
		..accept The Dying Balance##9895
	step
		goto 78.4,62
		.talk Ysiel Windsinger##17841
		..turnin The Cenarion Expedition##9912
		..accept Disturbance at Umbrafen Lake##9716
	step
		goto 80.1,73.3
		'Kill all mobs in this area
		.get 10 Unidentified Plant Parts |q 9802/1
	step
		goto 81,72.2
		.kill Boglash##18281 |q 9895/1 |tip I found Boglash here. He is a tall alien looking thing with really long legs. Kill him, he's really easy, despite his elite status. He walks around in the water, so some searching may be necessary.
	step
		goto 80.4,64.2
		.talk Lauranna Thar'well##17909
		..turnin Plants of Zangarmarsh##9802
	step
		goto 78.5,63.1
		.talk Lethyn Moonfire##17834
		..turnin The Dying Balance##9895
	step
		goto 85.3,90.9
		.kill Kataru##18080 |q 9747/1 |tip In the big building, all the way at the top.
	step
		goto 83.1,85.2
		.kill 6 Umbrafen Oracle##18077+ |q 9747/2
		.kill 8 Umbrafen Seer##18079+ |q 9747/3
		.kill 6 Umbrafen Witchdoctor##20115+ |q 9747/4
	step
		goto 83.4,85.5
		.talk Kayra Longmane##17969
		..accept Escape from Umbrafen##9752
		.' Escort Kayra Longmane to safety |q 9752/1
	step
		goto 80.4,64.2
		.talk Ikeyen##17956
		..turnin The Umbrafen Tribe##9747
		..accept A Damp, Dark Place##9788
		.talk Lauranna Thar'well##17909
		..accept Saving the Sporeloks##10096
	step
		goto 80.4,64.7
		.talk Windcaller Blackhoof##18070
		..accept Safeguarding the Watchers##9894
	step
		goto 78.4,62
		.talk Ysiel Windsinger##17841
		..turnin Escape from Umbrafen##9752
	step
		goto 74.7,91.6|n
		.' The path to 'Ikeyen's Belongings' starts here |goto Zangarmarsh,74.7,91.6,0.3 |noway |c
	step
		'Go southwest inside the cave to 70.5,97.9 |goto 70.5,97.9
		.click Ikeyen's Belongings##318 
		.get Ikeyen's Belongings |q 9788/1
	step
		'Go northeast inside the cave to 72.5,94.0 |goto 72.5,94.0
		.kill Lord Klaq##18282 |q 9894/1 |tip On the bottom level of the cave, in the small round room all the way in the back.
	step
		goto 75.7,90.2
		.kill 10 Marsh Lurker##18136+ |q 10096/2
		.kill 10 Marsh Dredger##18137+ |q 10096/1
	step
		goto 70.9,82.1
		.' Stand here to Investigate Umbrafen Lake |q 9716/1
		.from Darkcrest Slaver##19946+,Darkcrest Sorceress##19947+
		.get 10 Unidentified Plant Parts|q 9802/1
		.get 30 Naga Claws|q 9728/1
		.' You can find more Naga at:
		.' [73.4,82.3] 
		.' [72.2,75.8]
	step
		goto 80.4,64.7
		.talk Windcaller Blackhoof##18070
		..turnin Safeguarding the Watchers##9894
	step
		goto 80.4,64.2
		.talk Ikeyen##17956
		..turnin A Damp, Dark Place##9788
		.talk Lauranna Thar'well##17909
		..turnin Saving the Sporeloks##10096
		.' Turn in any stacks of 10 Unidentified Plant Parts you have
		.' If you found an Uncatalogued Species, turn that in also
	step
		goto 79.1,65.3
		.talk Warden Hamoot##17858
		..turnin A Warm Welcome##9728
	step
		goto 78.5,63.1
		.talk Lethyn Moonfire##17834
		..accept What's Wrong at Cenarion Thicket?##9957
	step
		goto 78.4,62
		.talk Ysiel Windsinger##17841
		..turnin Disturbance at Umbrafen Lake##9716
		..accept As the Crow Flies##9718
	step
		'Use your Stormcrow Amulet |use Stormcrow Amulet##25465
		.' Watch yourself fly as a crow.
		.' Explore the Lakes of Zangarmarsh |q 9718/1
	step
		goto 78.4,62
		.talk Ysiel Windsinger##17841
		..turnin As the Crow Flies##9718
		..accept Balance Must Be Preserved##9720
	step
		goto 80.4,64.7
		.talk Windcaller Blackhoof##18070
		..accept Blessings of the Ancients##9785
	step
		goto 78.1,63.8
		.talk Keleth##17901
		.' Get the Mark of War |q 9785/2
	step
		goto 81.1,63.9
		.talk Ashyen##17900
		.' Get the Mark of Lore |q 9785/1
	step
		goto 80.4,64.7
		.talk Windcaller Blackhoof##18070
		..turnin Blessings of the Ancients##9785
	step
		goto 70.6,80.3
		.' Use your Ironvine Seeds on the Umbrafen Lake Pump Controls |use Ironvine Seeds##24355
		.' Disable the Umbrafen Lake Pump Controls |q 9720/1 |tip The pump controls look like a little box with some levers on it
	step
		goto 63.1,64.1
		.' Use your Ironvine Seeds on the Lagoon Pump Controls |use Ironvine Seeds##24355
		.' Disable the Lagoon Pump Controls |q 9720/4 |tip The pump controls look like a little box with some levers on it
	step
		goto 62,40.8
		.' Use your Ironvine Seeds on the Serpent Lake Controls |use Ironvine Seeds##24355 |tip The pump controls look like a little box with some levers on it
		.' Disable the Serpent Lake Controls |q 9720/3
		.from Steam Pump Overseer##18340+, Bloodscale Overseer##20088+, and Bloodscale Wavecaller##20089+
		.' Get a Drain Schematics
		.' Click the Drain Schematics in your bags |use Drain Schematics##24330
		..accept Drain Schematics##9731
	step
		goto 50.4,40.8
		.' Swim straight down into the big bubbling pipe opening below until you discover the drain
		.' Locate the drain in Serpent Lake |q 9731/1
	step
		goto 25.4,42.9
		.' Use your Ironvine Seeds on the Umbrafen Lake Pump Controls |use Ironvine Seeds##24355
		.' Disable the Umbrafen Lake Pump Controls |q 9720/2 |tip The pump controls look like a little box with some levers on it
	step
		goto 78.4,62
		.talk Ysiel Windsinger##17841
		..turnin Balance Must Be Preserved##9720
		..turnin Drain Schematics##9731
		..accept Warning the Cenarion Circle##9724
	step
		goto 78.5,63.1
		.talk Lethyn Moonfire##17834
		..accept What's Wrong at Cenarion Thicket?##9957
	step
		goto Hellfire Peninsula,16,52.2
		.talk Amythiel Mistwalker##16885
		..turnin Warning the Cenarion Circle##9724
		..accept Return to the Marsh##9732
	step
		goto Zangarmarsh,78.4,62
		.talk Ysiel Windsinger##17841
		.turnin Return to the Marsh##9732
		..accept Checking Up##29566
		..accept Storming the Steamvault##29616
	step
		goto Zangarmarsh,50.4,40.9 |n
		.' Swim down this drain to Coifang Reservoir |goto Zangarmarsh,50.4,40.9,0.5 |noway |c
	step
		goto 49.0,35.7|n
		.' Go through the swirling portal into The Slave Pens dungeon |goto The Slave Pens |noway |c
	step
		goto The Slave Pens 18.9,11.3
		.talk Watcher Jhang##54667
		..turnin Checking Up##29566
	step		
		goto The Slave Pens 18.9,11.3
		.talk Watcher Jhang##54667
		..accept Lost in Action##29563
		..accept The Heart of the Matter##29565
	step
		goto 17.9,12.1
		.talk Nahuud##54668
		..accept A Brother Betrayed##29564
	step
		goto 25.0,51.2 |n
		.' Follow the path and go straight through this main room |goto 25.0,51.2,1 |noway |c
	step
		goto 40.2,35.5 |n
		.' Follow this hallway |goto 40.2,35.5,0.5 |noway |c
	step
		goto 48.8,24.3
		.' You can either stand back and pull Mennu from the ramp, or clear the enemies first so they won't aggro.
		.kill Mennu the Betrayer##17941 |q 29564/1
	step
		goto 48.9,83.4
		.talk Weeder Greenthumb##17890
		.' Discover Weeder Greenthumb |q 29563/2
	step
		goto 57.3,45.4
		.from Rokmar the Crackler##17991+
		.get The Invader's Claw |q 29565/1
	step
		goto 74.9,51.4 |n
		.' Follow this path up |goto 74.9,51.4,1 |noway |c
	step
		goto 95.7,66.2
		.talk Naturalist Bite##17893
		.' Discover Naturalist Bite |q 29563/2
	step
		goto 95.7,66.2
		.' Be ready to fight a couple mobs
		.from Coilfang Champion##17957+, Coilfang Enchantress##17961+
		.talk Naturalist Bite##17893
		.' Tell him
		.' <Naturalist, please grant me your boon |havebuff Interface\Icons\Ability_Druid_FerociousBite
	step
		goto The Slave Pens 86.2,67.9
		.from Quagmirran##17942+
		.get The Slave Master's Eye |q 29565/2
	step
		goto The Slave Pens 17.9,12.2
		.talk Nahuud##54668
		..turnin A Brother Betrayed##29564
	step
		goto 18.8,11.3
		.talk Watcher Jhang##54667
		..turnin Lost in Action##29563
		..turnin The Heart of the Matter##29565
	step
		goto 21.1,13.7 |n
		.' Leave this instance |goto Zangarmarsh |noway |c
	step
		goto Zangarmarsh 54.2,34.4 |n
		.' Enter The Underbog |goto The Underbog |noway |c
	step
		goto The Underbog 29.5,64.7
		.talk Naturalist Bite##54678
		..accept A Necessary Evil##29568
	step
		goto 30.9,65.3
		.talk Watcher Jhang##54675
		..accept Rescuing the Expedition##29570
	step
		goto 31.5,65.5
		.talk T'shu##54674
		..accept Stalk the Stalker##29567
		..accept Bring Me A Shrubbery!##29691
	step
		'As you go through the dungeon, look for Sanguine Hibiscus
		.click Sanguine Hibiscus##5031
		.collect 5 Sanguine Hibiscus##24246 |n
		|confirm
	step
		goto 42.5,62.0 |n
		.' Keep following this straight path |goto 42.5,62.0,0.5 |noway |c
	step
		goto 57.4,82.9 |n
		.' Follow this path up and around |goto 57.4,82.9,0.5 |noway |c
	step
		goto 70.0,90.0
		.' He will summon mushrooms, these will explode to deal damage to player, and heal the boss.
		.' Keep moving him so that doesn't happen.
		.kill Hungarfen##17770 |q 29568/1
	step
		goto 77.2,43.8
		.' Follow the path around until you get here 
		.from Ghaz'an##18105
		|confirm
	step
		goto 78.9,24.5 |n
		.' Jump down in the water here  |goto 78.9,24.5,0.5 |noway |c
	step
		goto 79.6,15.2 |n
		.' Swim across the water and jump down here |goto 79.6,15.2,0.5 |noway |c
	step
		goto 67.4,21.3
		.talk Earthbinder Rayge##17885
		.' Discover Earthbinder Rayge |q 29570/1
	step
		goto 67.0,14.0 |n
		.' Follow this path down and to the right |goto 67.0,14.0,0.5 |noway |c
	step
		  goto 41.5,25.4
		.from Swamplord Musel'ek##17826, Claw##17827
		.' Talk to Windcaller Claw
		.' Discover Windcaller Claw |q 29570/2
	step
		goto The Underbog 25.9,45.5
		.from The Black Stalker##17882
		.get Black Stalker's Brain |q 29567/1
	step
		'Make sure you have picked up 5 Sanguine Hibiscus
		.click Sanguine Hibiscus##5031
		.get 5 Sanguine Hibiscus##24246 |q 29691/1
	step
		goto The Underbog 29.5,64.5
		.talk Naturalist Bite##54678
		..turnin A Necessary Evil##29568
	step
		goto 30.8,65.3
		.talk Watcher Jhang##54675
		..turnin Rescuing the Expedition##29570
	step
		goto 31.6,65.5
		.talk T'shu##54674
		..turnin Stalk the Stalker##29567
		..turnin Bring Me A Shrubbery!##29691
	step
		goto 28.7,69.8 |n
		.' Leave the Underbog |goto Zangarmarsh |noway |c
	step
		goto 50.3,33.3 |n
		.' Go through the portal to the Steamvaults. |goto The Steamvault |noway|c
	step
		goto The Steamvault 17.9,27.3
		.talk Watcher Jhang##54848
		..turnin Storming the Steamvault##29616
		..accept A Proper Fate##29613
	step
		goto 17.5,25.9
		.talk Naturalist Bite##54849
		..accept Containment is Key##29614
	step
		goto 18.9,27.8
		.talk Windcaller Claw##54851
		..accept Windcaller Claw and the Water Thief##29615
	step
		goto 33.7,22.7
		.kill 3 Bog Overlord##21694+|q 29614/1
	step
		goto The Steamvault 54.3,12.4
		.kill Hydromancer Thespia##17797 |q 29615/1
	step    
		goto 54.2,10.6
		.click Main Chambers Access Panel##7147
		.' You hear a faint echo...
		|confirm always
	step
		goto 42.1,32.9 |n
		.' Go through the opening on your left. |goto 42.1,32.9,0.5 |noway |c
	step
		goto 49.3,42.8 |n
		.' Go up the ramp |goto 49.3,42.8,0.5 |noway |c
	step
		goto 55.8,47.3 |n
		.' Go up to the bridge on the right side |goto 55.8,47.3,0.25 |noway |c
	step
		goto 39.7,69.0 |n
		.' Cross the bridge and go through the hallway |goto 39.7,69.0,0.5 |noway |c
	step
		goto The Steamvault 33.6,81.2
		.from Mekgineer Steamrigger##17796
		.get Irradiated Gear |q 29614/3
		.kill 6 Coilfang Leper##21338+ |q 29614/2
	step
		goto 31.8,84.0
		.click Main Chambers Access Panel##7147
		.' You hear a faint echo... and You hear a loud rumble of metal grinding on stone....
		|confirm always
	step
		goto 54.0,51.4 |n
		.' Follow the tunnel back to the bridge |goto 54.0,51.4,0.5 |noway |c
	step
		goto 69.8,43.4 |n
		.' Take a right after crossing the bridge, and go up a ramp |goto 69.8,43.4,0.5 |noway |c
	step
		goto 78.7,43.3 |n
		.kill Warlord Kalithresh##17798 |q 29613/1
	step
		goto 49.1,42.6 |n
		.' Follow the path down to the ramp |goto 49.1,42.6,0.5 |noway |c
	step
		goto 42.5,33.0 |n
		.' Enter this doorway |goto 42.5,33.0,0.5 |noway |c
	step
		goto 18.8,27.6
		.talk Windcaller Claw##54851
		..turnin Windcaller Claw and the Water Thief##29615
	step
		goto 18.0,27.2
		.talk Watcher Jhang##54848
		..turnin A Proper Fate##29613
	step
		goto 17.6,25.9
		.talk Naturalist Bite##54849
		..turnin Containment is Key##29614
	step
		goto 17.6,30.6 |n
		.' Leave The Steamvault |goto Zangarmarsh |noway |c
	step
		goto 51.9,38.2 |n
		.' Swim through the tunnel to the other side. |goto Zangarmarsh,50.4,40.9,0.5 |noway|c
	step
		goto 79.1,64.8
		.click Wanted Poster##15
		..accept Leader of the Darkcrest##9730
		..accept Leader of the Bloodscale##9817
	step
		goto Zangarmarsh 65.1,68.7
		.kill Rajah Haghazed##18046 |q 9730/1
	step
		goto Zangarmarsh 65.1,40.9
		.kill Rajis Fyashe##18044 |q 9817/1
	step
		goto 79.1,65.2
		.talk Warden Hamoot##17858
		..turnin Leader of the Darkcrest##9730
		..turnin Leader of the Bloodscale##9817
	step
		goto Terokkar Forest,44.3,26.3
		.talk Earthbinder Tavgren##18446
		..turnin What's Wrong at Cenarion Thicket?##9957
		..accept Strange Energy##9968
		..accept Clues in the Thicket##9971
	step
		goto 45,22.5
		.talk Warden Treelos##18424
		..accept It's Watching You!##9951
	step
		goto 45.1,21.8
		.click Strange Object##7214
		.' Examine the Strange Object |q 9971/1 |tip Inside the building, looks like a white ball on the floor next to a dead guy.
	step
		goto 43.4,22.1
		.kill Naphthal'ar |q 9951/1 |tip At the top of the big tower.
	step
		goto 45,22.5
		.talk Warden Treelos##18424
		..turnin It's Watching You!##9951
	step
		goto 44.3,26.3
		.talk Earthbinder Tavgren##18446
		..turnin Clues in the Thicket##9971
	step
		goto 44.1,23.8
		.from Vicious Teromoth##18437+
		.get 4 Vicious Teromoth Sample |q 9968/2
	step
		goto 45.8,29.8
		.from Teromoth##18468+
		.get 4 Teromoth Sample |q 9968/1
	step
		goto 44.3,26.3
		.talk Earthbinder Tavgren##18446
		..turnin Strange Energy##9968
		..accept By Any Means Necessary##9978
	step
		goto 47.1,27
		.talk Empoor##18482
		.' Fight Empoor until he's almost dead
		..turnin By Any Means Necessary##9978
		..accept Wind Trader Lathrai##9979
	step
		goto Shattrath City,72.2,30.7
		.talk Wind Trader Lathrai##18484
		..turnin Wind Trader Lathrai##9979
		..accept A Personal Favor##10112
	step
		goto Terokkar Forest 30.9,42.0
		.from Skithian Windripper##18453+
		.from Skithian Dreadhawk##18452+
		.get 5 Lathrai's Stolen Goods |q 10112/1
	step
		goto Shattrath City 72.3,30.9
		.talk Wind Trader Lathrai##18484
		..turnin A Personal Favor##10112
		..accept Investigate Tuurem##9990
	step
		goto Terokkar Forest 54.0,30.0
		.click Sealed Box##6881
		.get Sealed Box |q 9990/1
	step
		goto 44.4,26.3
		.talk Earthbinder Tavgren##18446
		..turnin Investigate Tuurem##9990
		..accept What Are These Things?##9994
	step
		goto 57.0,53.6
		.talk Jenai Starwhisper##18447
		..turnin What Are These Things?##9994
		..accept Report to Stonebreaker Camp##10444
	step
		goto 69.6,44.6
		.talk Lieutenant Meridian##21006
		..turnin Report to Stonebreaker Camp##10044
		..accept Attack on Firewing Point##9996
	step
		goto 70.5,37.4
		.kill 10 Firewing Defender##5355+ |q 9996/1
		.kill 10 Firewing Bloodwarder##1410+ |q 9996/2
		.kill 10 Firewing Warlock##16769+ |q 9996/3
	step
		goto 69.6,44.6
		.talk Sergeant Chawni##21006
		..turnin Attack on Firewing Point##9996
		..accept The Final Code##10446
	step
		goto 73.4,36.3 |n
		.' Enter this building |goto 73.4,36.3,0.5 |noway |c
	step
		goto 73.3,34.6
		.click Orb of Translocation##7161
		.' Run up the ramp to [73.9,35.8]
		.from Sharth Voldoun##18554+
		.collect The Final Code##29912
	step
		goto 74.2,36.5 |n
		.click Orb of Translocation##7161 
		.' Teleport to the bottom of the tower |goto 73.3,36.3,0.5 |noway |c
	step
		goto 71.3,37.4
		.click Mana Bomb##7213
		.' Activate Mana Bomb |q 10446/1
	step
		goto 57.0,53.6
		.talk Jenai Starwhisper##18459
		..turnin The Final Code##10446
		..accept Letting Earthbinder Tavgren Know##10005
	step
		goto Terokkar Forest,44.3,26.3
		.talk Earthbinder Tavgren##18446
		..turnin Letting Earthbinder Tavgren Know##10005
	step
		goto 37.9,51.7
		.talk Lakotae##22420
		..accept The Infested Protectors##10896
	step
		goto 35.2,48.8
		.from Infested Root-walker##22095+
		.' Kill the Wood Mites that come out of their corpses
		.kill 25 Wood Mite |q 10896/1
		.' You can find more Infested Root-walkers at [39.1,47.0]
	step
		goto 37.9,51.7
		.talk Lakotae##22420
		..turnin The Infested Protectors##10896
	step
		|fly Evergrove
	step
		goto 62.2,39.1
		.talk Timeon##21782
		..accept Creating the Pendant##10567
	step
		goto 62.0,39.5
		.talk Tree Warden Chawn##22007
		..accept A Time for Negotiation...##10682
	step
		goto 62.5,38.2
		.talk Faradrella##22133
		..accept Culling the Wild##10753
	step
		goto 61.3,38.4
		.talk Mosswood the Ancient##22053
		..accept From the Ashes##10771
		..accept Little Embers##10770
	step
		goto 58.8,39.1
		.talk Overseer Nuaar##21981 |tip He wanders around the Wyrmcult camps.
		.' Negotiate with Overseer Nuaar |q 10682/1
	step
		goto 62,39.5
		.talk Tree Warden Chawn##22007
		..turnin A Time for Negotiation...##10682
		..accept ...and a Time for Action##10713
	step
		goto 61.8,39.6
		.talk Samia Inkling##21983
		..accept Poaching from Poachers##10717
	step
		goto 59.9,37.8
		.kill 10 Wyrmcult Hewer##21810 |q 10713/1
		.from Wyrmcult Poacher##21809+
		.get 5 Wyrmcult Net |q 10717/1
		.collect 1 Meeting Note##31120 |n
		.' Click the Meeting Note in your bags |use Meeting Note##31120
		..accept Did You Get The Note?##10719
	step
		goto 63.9,31.5
		.from Ruuan'ok Ravenguard##19987+, Ruuan'ok Skyfury##19986+, Ruuan'ok Cloudgazer##19985+, Ruuan'ok Matriarch##20211+
		.collect 6 Ruuan'ok Claw##30704 |q 10567
	step
		goto 64.5,33.1
		.' Use the 6 Ruuan'ok Claws inside the glowing circle |use Ruuan'ok Claw##30704
		.from Harbinger of the Raven##21767 |tip On the little island in the pond.
		.get Harbinger's Pendant##30706 |q 10567/1
	step
		goto 62.2,39.1
		.talk Timeon##21782
		..turnin Creating the Pendant##10567
		..accept Whispers of the Raven God##10607
	step
		goto 62,39.5
		.talk Samia Inkling##21983
		..turnin Poaching from Poachers##10717
	step
		goto 62.0,39.6
		.talk Tree Warden Chawn##22007
		..turnin ...and a Time for Action##10713
		..turnin Did You Get The Note?##10719
		..accept Wyrmskull Watcher##10894
	step
		goto 49.9,35.9
		.talk Watcher Moonshade##22386
		..turnin Wyrmskull Watcher##10894
		..accept Longtail is the Lynchpin##10893
	step
		goto 46.7,32.9
		.kill Draaca Longtail##22396 |q 10893/1 |tip She walks near the Raven's Wood end of the cave.
	step
		goto 49.9,35.9
		.talk Watcher Moonshade##22386
		..turnin Longtail is the Lynchpin##10893
		..accept Meeting at the Blackwing Coven##10722
	step
		goto 42.2,25.1
		.from Grishna Scorncrow##19990+, Grishna Falconwing##19988+, Grishna Harbinger##19989+
		.' Get the Understanding Ravenspeech buff |havebuff Interface\Icons\Ability_Hunter_Pet_DragonHawk
		|tip Must be within melee range to receive the buff
		.' Anytime the buff wears off, kill Grishna mobs again to get it back
	step
		goto 40.7,18.7
		.' Stand next to the wooden totem with the Understanding Ravenspeech buff on you |tip On the ground, next to a pond with basilisks in it. 
		.' Receive the Third Prophecy |q 10607/3
		|model The Third Prophecy##7249
	step
		goto 39,17.2
		.' Stand next to the wooden totem with the Understanding Ravenspeech buff on you |tip Up the left ramp, then left across the hanging bridge. 
		.' Receive the First Prophecy |q 10607/1
		|model The First Prophecy##7249
	step
		goto 42.5,21.6
		.' Stand next to the wooden totem with the Understanding Ravenspeech buff on you |tip Up the right ramp, then go right across the hanging bridge, then down the stairs to the left. 
		.' Receive the Second Prophecy |q 10607/2
		|model The Second Prophecy##7249
	step
		goto 40.2,23
		.' Stand next to the wooden totem with the Understanding Ravenspeech buff on you |tip On the ground, in front of a hut.  
		.' Receive the Fourth Prophecy |q 10607/4 
		|model The Fourth Prophecy##7249
	step
		goto 32.3,34.9
		.' Go inside the cave
		.from Wyrmcult Scout##21637+, Wyrmcult Acolyte##21383+, Wyrmcult Zealot##21382+
		.collect 5 Costume Scraps##31121 |q 10722
	step
		goto 32.6,37.5
		.' Combine your 5 Costume Scraps to make an Overseer Disguise |use Costume Scraps##31121
		.' Put on the Overseer Disguise |havebuff Interface\Icons\INV_Chest_Wolf |q 10722 |use Overseer Disguise##31122
		.talk Kolphis Darkscale##22019
		.' Attend the meeting with Kolphis Darkscale |q 10722/1
	step
		goto 62.0,39.5
		.talk Tree Warden Chawn##22007
		..turnin Meeting at the Blackwing Coven##10722
		..accept Maxnar Must Die!##10748
	step
		'Go inside the cave |goto Blade's Edge Mountains,32.1,34.1,0.3
	step
		goto 33.9,35.4
		.kill Maxnar the Ashmaw##21389 |q 10748/1 |tip Follow the cave path until it dead ends into him.
	step
		'Leave the cave. |goto Blade's Edge Mountains,32.1,34.1,0.3
	step
		goto 62,39.5
		.talk Tree Warden Chawn##22007
		..turnin Maxnar Must Die!##10748
	step
		goto 62.2,39.1
		.talk Timeon##21782
		..turnin Whispers of the Raven God##10607
	step
		goto 68.9,35.6
		.kill 4 Felsworn Scalewing##21123+ |q 10753/1
		.kill 4 Felsworn Daggermaw##21124+ |q 10753/2
		.kill 2 Fel Corrupter##21300+ |q 10753/3
		.get Damaged Mask|n
		.' Click the Damaged Mask |use Damaged Mask##31384
		..accept Damaged Mask##10810	
	step
		goto 71.7,22.4
		.click Fertile Volcanic Soil##7297 
		.' Plant the Ironroot Seeds |q 10771/1
	step
		goto 71.6,20.3
		.click Fertile Volcanic Soil##7297 
		.' Plant the Ironroot Seeds|q 10771/2
	step
		goto 71.6,18.5
		.click Fertile Volcanic Soil##7297 
		.' Plant the Ironroot Seeds |q 10771/3
	step
		goto 70.7,20.2
		.kill 8 Scorch Imp##21021+ |q 10770/1
	step
		goto 62.7,40.4
		.talk O'Mally Zapnabber##22020
		..turnin Damaged Mask##10810
		..accept Mystery Mask##10812
	step
		goto 62.2,40.1
		.talk Wildlord Antelarion##22127
		..turnin Mystery Mask##10812
		..accept Felsworn Gas Mask##10819
	step
		goto 62.6,38.2
		.talk Faradrella##22133
		..turnin Culling the Wild##10753
	step
		goto 61.2,38.4
		.talk Mosswood the Ancient##22053
		..turnin Little Embers##10770
		..turnin From the Ashes##10771
	step
		'Make sure you have your Felsworn Gas Mask in your bags |collect Felsworn Gas Mask##31366 |q 10819
		.' It has a 60 minute timer on it
		.' If you need another one, talk to Wildlord Antelarion at [62.6,39.6]
		.' Click here to continue. |confirm always
	step
		goto 73.2,40
		'Put on your Felsworn Gas Mask |equipped Felswron Gas Mask##31366 |use Felsworn Gas Mask##31366 
		.click Legion Communicator##7091
		..turnin Felsworn Gas Mask##10819
		..accept Deceive thy Enemy##10820
	step
		goto 74.9,39.9
		.kill 4 Doomforge Attendant##19961+ |q 10820/1
		.kill 4 Doomforge Engineer##19960+ |q 10820/2
	step
		goto 73.2,40
		'Put on your Felsworn Gas Mask |equipped Felswron Gas Mask##31366 |use Felsworn Gas Mask##31366 
		.click Legion Communicator##7091
		..turnin Deceive thy Enemy##10820
	step
		goto 73.3,40.1 
		.' Use your Felsworn Gas Mask to equip it |use Felsworn Gas Mask##31366 
		.' Wear the Felsworn Gas Mask |havebuff Interface\Icons\INV_Helmet_31 |c |q 10819
		.click Legion Communicator##7091
		..accept You're Fired!##10821
	step
		goto 73.0,41.0
		.from Anger Guard##16952+
		.collect 5 Camp Anger Key##31536 |q 10821
	step
		goto 73.5,43.5
		.' Click the Legion Obelisk to activate it |tip It's a metal structure with a floating tall metal piece in the middle of it.
		.' Click here to proceed. |confirm always
	step
		goto 75.3,41.7
		.' Click the Legion Obelisk to activate it |tip It's a metal structure with a floating tall metal piece in the middle of it.
		.' Click here to proceed. |confirm always
	step
		goto 73.8,41.0
		.' Click the Legion Obelisk to activate it |tip It's a metal structure with a floating tall metal piece in the middle of it.
		.' Click here to proceed. |confirm always
	step
		goto 75.4,40.6
		.' Click the Legion Obelisk to activate it |tip It's a metal structure with a floating tall metal piece in the middle of it.
		.' Click here to proceed. |confirm always
	step
		goto 74.0,39.9
		.' Click the Legion Obelisk to activate it |tip It's a metal structure with a floating tall metal piece in the middle of it.
		.' Click here to proceed. |confirm always
	step
		goto 74.3,42.5
		.kill Doomcryer##19963 |q 10821/1
	step
		goto 62.4,38.4
		.talk Wildlord Antelarion##22127
		..turnin You're Fired!##10821
		..accept Death's Door##10910
	step
		goto 63.2,65.5
		.' Use your Druid Signal anywhere in Death's Door |use Druid Signal##31763
		.' Talk to Evergrove Druid
		..turnin Death's Door##10910
		..accept Harvesting the Fel Ammunition##10904
	step
		goto 63.8,66.5
		.from Death's Might##21519+, Deathforge Over-Smith##19978+, Death's Watch##21516+
		.get 5 Fel Cannonball |q 10904/1
	step
		'Use your Druid Signal anywhere in Death's Door |use Druid Signal##31763
		.' Talk to Evergrove Druid
		..turnin Harvesting the Fel Ammunition##10904
		..accept Fire At Will!##10911
	step
		goto 64.8,68.3
		.' Use your Naturalized Ammunition next to the Death's Door Fel Cannon |use Naturalized Ammunition##31807 |tip It looks like a big metal green-glowing bullet shaped machine.
		.' Use the Artillery on the Warp-Gate ability 7 times |cast Artillery on the Warp-Gate##39221
		.' Destroy the South Warp-Gate |q 10911/1
	step
		goto 62.0,60.3
		.' Use your Naturalized Ammunition next to the Death's Door Fel Cannon |use Naturalized Ammunition##31807 |tip It looks like a big metal green-glowing bullet shaped machine.
		.' Use the Artillery on the Warp-Gate ability 7 times |cast Artillery on the Warp-Gate##39221
		.' Destroy the North Warp-Gate |q 10911/2
	step
		'Use your Druid Signal anywhere in Death's Door |use Druid Signal##31763
		.' Talk to Evergrove Druid
		..turnin Fire At Will!##10911
		..accept The Hound-Master##10912
	step
		goto 63.6,59.1
		.kill Baelmon the Hound-Master##19747 |q 10912/1
	step
		goto 62.7,39.4
		.talk Wildlord Antelarion##22127
		..turnin The Hound-Master##10912
	step
		|fly The Stormspire
	step
		goto Netherstorm,42.3,32.6
		.talk Aurine Moonblaze##20871
		..accept Flora of the Eco-Domes##10426
	step
		goto 41.2,32.2
		.' Use Energy Field Modulator on Farahlon Lashers |use Energy Field Modulator##29818
		.from Mutated Farahlon Lasher##20774+
		.' Test Energy Modulator 10 times |q 10426/1
	step
		goto 42.3,32.6
		.talk Aurine Moonblaze##20871
		..turnin Flora of the Eco-Domes##10426
		..accept Creatures of the Eco-Domes##10427
	step
		goto 40.4,35.5
		.from Talbuk Doe##20610+, Talbuk Sire##20777
		.' Use the Talbuk Tagger on talbuks when they are below 20 percent health. |use Talbuk##29817
		.' Tag 12 Talbuk |q 10427/1
	step
		goto 42.3,32.6
		.talk Aurine Moonblaze##20871
		..turnin Creatures of the Eco-Domes##10427
		..accept When Nature Goes Too Far##10429
	step
		goto 44.3,28.5
		.from Markaru##20775+
		..get Hulking Hydra Heart |q 10429/1
	step
		goto 42.3,32.6
		.talk Aurine Moonblaze##20871
		..turnin When Nature Goes Too Far##10429
	step
		|fly Shattrath
	step
		goto Shattrath City,57.2,48.2
		.clicknpc Stormwind Portal##31640
		.' Teleport to Stormwind |goto Stormwind City |noway |c
	step
		#include "rideto_borean"
	step
		goto Borean Tundra,57,44.3
		.talk Arch Druid Lathorius##25809
		..accept A Mission Statement##11864 |instant
		..accept Ears of Our Enemies##11866
		..accept Help Those That Cannot Help Themselves##11876
	step
		goto 57.3,44.1
		.talk Hierophant Cenius##25810
		..accept Happy as a Clam##11869
	step
		goto 57,44
		.talk Killinger the Den Watcher##25812
		..accept Ned, Lord of Rhinos...##11884
	step
		goto 56.8,44
		.talk Zaza##25811
		..accept Unfit for Death##11865
	step
		goto 53.8,40.6
		.' Use your D.E.H.T.A. Trap Smasher while standing next to Trapped Mammoth Calves|use D.E.H.T.A. Trap Smasher##35228|tip They look like baby elephants laying on the ground in a trap.
		.' Free 8 Mammoth Calves |q 11876/1 |modelnpc 24613
	step
		goto 53.4,42.7
		.kill 10 Loot Crazed Diver##25836 |q 11869/1 
		.kill Loot Crazed Divers|n 
		.get 15 Nesingwary Lackey Ear |q 11866/1
	step
		goto 46.4,40
		.' Find and kill "Lunchbox"|kill "Lunchbox"|q 11884/2
		.kill Nedar, Lord of Rhinos##25801|q 11884/1|tip He walks around this area.  Kill 'Lunchbox' and then Nedar, Lord of Rhinos will jump off.
	step
		goto 56.2,50.5
		.' Stand inside the Caribou Traps on the ground|tip They look like metal spiked traps on the ground.
		.' Use your Pile of Fake Furs|use Pile of Fake Furs##35127
		.' Trap 8 Nesingwary Trappers |q 11865/1 |modelnpc 25835
	step
		goto 57,44.3
		.talk Arch Druid Lathorius##25809
		..turnin Ears of Our Enemies##11866
		..turnin Help Those That Cannot Help Themselves##11876
		..accept Khu'nok Will Know##11878
		.' After you turn in Ears of Our Enemies, you will get a repeatable quest called Can't Get Ear-nough...
	step
		goto 57.3,44.1
		.talk Hierophant Cenius##25810
		..turnin Happy as a Clam##11869
		..accept The Abandoned Reach##11870
	step
		goto 57,44
		.talk Killinger the Den Watcher##25812
		..turnin Ned, Lord of Rhinos...##11884
	step
		goto 56.8,44
		.talk Zaza##25811
		..turnin Unfit for Death##11865
		..accept The Culler Cometh##11868
	step
		goto 59.5,30.4
		.' Deliver the Orphaned Mammoth Calf to Khu'nok |q 11878/1
		'|from Mammoth Calf##24613, Khu'nok the Behemoth##25862
	step
		goto 59.5,30.4
		.talk Khu'nok the Behemoth##25862
		..turnin Khu'nok Will Know##11878
		..accept Kaw the Mammoth Destroyer##11879
	step
		'Ride around and find a Wooly Mammoth Bull|n |modelnpc 25743
		.' Click it to ride it|invehicle|c
	step
		'Go north on the Wooly Mammoth Bull to 53.7,23.9|goto 53.7,23.9
		.' Use the skills on your mammoth action bar to do the following:
		.from Kaw the Mammoth Destroyer##25802
		.' Click Kaw's War Halberd on the ground
		.get Kaw's War Halberd|q 11879/1
	step
		goto 57,44.3
		.talk Arch Druid Lathorius##25809
		..turnin Kaw the Mammoth Destroyer##11879
	step
		goto 57.3,56.5
		.kill Karen "I Don't Caribou" the Culler##25803 |q 11868/1|tip She walks around in this spot.  Be careful, she has 2 stealthed guards that come with her.
	step
		goto 57.8,55.1
		.talk Hierophant Liandra##25838
		..turnin The Abandoned Reach##11870
		..accept Not On Our Watch##11871
	step
		goto 59.1,55.9
		.kill Northsea Thugs##25843 |n
		.' Click the Shipment of Animal Parts containers on the ground|tip They look like brown bags and crates sitting on the ground around this area.
		.get 12 Shipment of Animal Parts|q 11871/1
	step
		goto 57.8,55.1
		.talk Hierophant Liandra##25838
		..turnin Not On Our Watch##11871
		..accept The Nefarious Clam Master...##11872
	step
		goto 61.5,66.5
		.kill 1 Clam Master K##25800 |q 11872/1 |tip He's walking around underwater.
	step
		goto 57.3,44.1
		.talk Hierophant Cenius##25810
		..turnin The Nefarious Clam Master...##11872
	step
		goto 56.8,44
		.talk Zaza##25811
		..turnin The Culler Cometh##11868
	step
		goto 43.5,14
		.talk King Mrgl-Mrgl##25197
		..accept Learning to Communicate##11571
	step
		'Go southwest underwater to 42.5,15.9|goto 42.5,15.9
		.kill Scalder##25226 |n |tip He is a water elemental that walks back and forth on the pink trench underwater.
		.' Use The King's Empty Conch on Scalder's corpse |use The King's Empty Conch##34598 
		.get The King's Filled Conch|q 11571/1 
	step
		goto 42.5,16.4
		.click Winterfin Clam##261
		.collect 5 Winterfin Clam##34597
	step
		goto 43.5,14
		.talk King Mrgl-Mrgl##25197
		..turnin Learning to Communicate##11571
		..accept Winterfin Commerce##11559
	step
		goto 43,13.8
		.talk Ahlurglgr##25206
		..turnin Winterfin Commerce##11559
	step
		goto 42.8,13.7
		.talk Brglmurgl##25199
		..accept Them!##11561
	step
		goto 43.5,14
		.talk King Mrgl-Mrgl##25197
		..accept Oh Noes, the Tadpoles!##11560
	step
		goto 40.6,17.5
		.kill 15 Winterfin murlocs|q 11561/1
		.click Cage##1787
		.' Rescue 20 Winterfin Tadpoles |q 11560/1
		' |from Winterfin Oracle##25216+, Winterfin Shorestriker##25215+, Winterfin Warrior##25217+
	step
		goto 42.8,13.7
		.talk Brglmurgl##25199
		..turnin Them!##11561
	step
		goto 43.5,14
		.talk King Mrgl-Mrgl##25197
		..turnin Oh Noes, the Tadpoles!##11560
		..accept I'm Being Blackmailed By My Cleaner##11562
	step
		goto 42,12.8
		.talk Mrmrglmr##25205
		..turnin I'm Being Blackmailed By My Cleaner##11562
		..accept Grmmurggll Mrllggrl Glrggl!!!##11563
	step
		goto 42,13.2
		.talk Cleaver Bmurglbrm##25211
		..accept Succulent Orca Stew##11564
	step
		goto 37.4,9.8
		.from Glrggl##25203
		.get Glrggl's Head |q 11563/1
	step
		goto 40.3,12.4
		.kill Glimmer Bay Orca##25204+ |n
		.get 7 Succulent Orca Blubber|q 11564/1
	step
		goto 42,12.8
		.talk Mrmrglmr##25205
		..turnin Grmmurggll Mrllggrl Glrggl!!!##11563
		..accept The Spare Suit##11565
	step
		goto 42,13.2
		.talk Cleaver Bmurglbrm##25211
		..turnin Succulent Orca Stew##11564
	step
		goto 43.5,14
		.talk King Mrgl-Mrgl##25197
		..turnin The Spare Suit##11565
		..accept Surrender... Not!##11566
	step
		'Go southwest to Winterfin Village|n
		.' Use King Mrgl-Mrgl's Spare Suit|havebuff INV_Misc_Head_Murloc_01|use King Mrgl-Mrgl's Spare Suit##34620
	step
		'Go inside the cave to [37.8,23.2]|goto 37.8,23.2
		.talk Glrglrglr##28375
		..accept Keymaster Urmgrgl##11569
	step
		'Go down the path and underneath you to [38.4,22.7]|goto 38.4,22.7
		.from Keymaster Urmgrgl##25210
		.get Urmgrgl's Key|q 11569/1
	step
		'Follow the path up and to the back of the cave to [37.6,27.4]|goto 37.6,27.4
		.from Claximus##25209
		.get Claw of Claximus|q 11566/1
	step
		'Go back up the path to [37.8,23.2]|goto 37.8,23.2
		.talk Glrglrglr##28375
		..turnin Keymaster Urmgrgl##11569
	step
		goto 37.8,23
		.talk Lurgglbr##25208
		..accept Escape from the Winterfin Caverns##11570
		.' Escort Lurgglbr to safety |q 11570/1
	step
		goto 43.5,14
		.talk King Mrgl-Mrgl##25197
		..turnin Surrender... Not!##11566
		..turnin Escape from the Winterfin Caverns##11570
	step
		.' If you are not Exalted with the Cenarion Expedition, you can turn in Lackey Ears for a repeatable quest, or run Heroic Dungeons.
		.' The Heroic Dungeons are Slave Pens, Underbog and Steamvault.
		.' Click here to do the repeatable quest |confirm
	step
	label ears
		goto Borean Tundra 60.9,63.4
		.from Northsea Mercenary##25839+, Northsea Thug##25843+
		.collect Nesingwary Lackey Ear##35188
		.' Collect Lackey Ears in stacks of 15.
		.' When you want to turn in Lackey Ears, click here. |next "turnin" |confirm
	step
	label turnin
		goto 57.1,44.3
		.talk Arch Druid Lathorius##25809
		..accept Can't Get Ear-Nough##11867 |n
		..' Click here to go back to farming ears. |next "ears" |confirm
		..' Keep repeating this quest until you are Exalted with the Cenarion Expedition |condition rep('Cenarion Expedition')==Exalted |next "exalted" 
	step
	label exalted
		'Congratulations, you are now Exalted with the Cenarion Expedition!'
]])
--------------------------------------------------------------------------------------------------------------------------------------
-- Leveling Kalimdor
--------------------------------------------------------------------------------------------------------------------------------------

-- DUSTWALLOW MARSH --
ZygorGuidesViewer:RegisterInclude("Dustwallow_Marsh",[[
	step
		goto Dustwallow Marsh,34.1,46.8 |n
		.' Follow the bridge across |goto Dustwallow Marsh,34.1,46.8,0.5 |noway |c
	step
		goto 65.1,47.1
		.talk Lieutenant Aden##23951
		..accept Mission to Mudsprocket##27248
	step
		goto 66.2,46.1
		.talk Guard Byron##4921
		..accept Tabetha's Farm##11212
		..accept They Call Him Smiling Jim##27251
	step
		goto 66.6,45.2
		.talk Innkeeper Janene##6272
		.home Theramore Isle
	step
		goto 68.3,48.7
		.talk Morgan Stern##4794
		..accept Mudrock Soup and Bugs##1204
	step
		goto 68.2,48.6
		.talk Captain Garran Vimes##4944
		..turnin Reinforcements From Theramore##26687
		..turnin They Call Him Smiling Jim##27251
		..accept Inspecting the Ruins##27249
	step
		goto 67.5,51.3
		.talk Baldruc##4321
		.fpath Theramore
	step
		goto 68.4,51.0
		.talk Calia Hastings##23566
		..accept Traitors Among Us##27210
	step
		goto 68.3,51.6
		.talk Sergeant Amelyn##23835
		..accept This Old Lighthouse##27216
	step
		goto 67.2,51.0
		.talk 5 Deserter Agitator##23602
		..' Tell them to spout their treasonous filth elsewhere!
		.' Expose 5 Deserter Agitators |q 27210/1
	step
		goto 68.4,51.0
		.talk Calia Hastings##23566
		..turnin Traitors Among Us##27210
		..accept Propaganda War##27211
	step
		goto 67.9,58.7
		.click the Deserter Propoganda##36
		.get Deserter Propaganda |q 27211/1
	step
		goto 68.4,51.0
		.talk Calia Hastings##23566
		..turnin Propaganda War##27211
		..accept Discrediting the Deserters##27212
	step
		goto 67.2,51.0
		.talk Theramore Guard##4979
		..' Tell them they look like intelligent people and ask them to read one of your leaflets and give it some thought
		.' Distribute 6 Leaflets |q 27212/1
	step
		goto 68.4,51.0
		.talk Calia Hastings##23566
		..turnin Discrediting the Deserters##27212
		..accept The End of the Deserters##27213
	step
		goto 76.2,57.0
		.from Gavis Greyshield##23941
		.' He will eventually surrender
		.' Capture Gavis Greyshield |q 27213/1
	step
		goto 68.4,51.0
		.talk Calia Hastings##23566
		..turnin The End of the Deserters##27213
	step
		goto 68.3,51.8
		.talk Sergeant Amelyn##23835
		..accept The Hermit of Swamplight Manor##27215
	step
		goto 72.1,47.0
		.talk Babs Fizzletorque##23892
		..turnin This Old Lighthouse##27216
		..accept Thresher Oil##27217
	step
		goto 71.9,49.7
		.from Young Murk Thresher##4388+
		.get 4 Thresher Oil |q 27217/1
	step
		goto 72.1,47.0
		.talk Babs Fizzletorque##23892
		..turnin Thresher Oil##27217
		..accept Dastardly Denizens of the Deep##27218
	step
		goto 69.1,52.1
		.talk "Dirty" Michael Crowe##23896
		..turnin Dastardly Denizens of the Deep##27218
		..accept Is it Real?##27219
	step
		goto 65.1,47.1
		.talk Lieutenant Aden##23951
		..accept A Disturbing Development##27214
	step
		goto 59.8,41.1
		.talk Captain Wymor##5086
		..turnin A Disturbing Development##27214
		..accept Defias in Dustwallow?##27234
	step
		goto 64.6,43.0 |n
		.' Go to the beach |goto 64.6,43.0,0.5 |noway |c
	step
		goto 64.7,41.3
		.' Walk north on the beach and in the water
		.from Mudrock Spikeshell##4397+
		.get 8 Forked Mudrock Tongue |q 1204/1
	step
		goto 63.8,28.9
		.from Garn Mathers##23679
		.get Defias Orders |q 27234/1
	step
		goto 64.6,43.0 |n
		.' Go to this spot on the beach |goto 64.6,43.0,0.5 |noway |c
	step
		goto 59.7,41.1
		.talk Captain Wymor##5086
		..turnin Defias in Dustwallow?##27234
		..accept Renn McGill##27235
	step
		ding 38
	step
		goto 64.6,43.0 |n
		.' Go to the beach |goto 64.6,43.0,0.5 |noway |c
	step
		goto 63.7,17.0
		.talk Renn McGill##23569
		..turnin Renn McGill##27235
		..accept Secondhand Diving Gear##27236
	step
		goto 63.0,18.6
		.click Tool Kit##1209
		.get Tool Kit |q 27236/2
	step
		goto 62.6,18.2
		.click Damaged Diving Gear##2350
		.get Damaged Diving Gear |q 27236/1
	step
		goto 63.7,17.0
		.talk Renn McGill##23569
		..turnin Secondhand Diving Gear##27236
		..accept Recover the Cargo!##27237
	step
		'Use Renn's Supplies |use Renn's Supplies##33045
		.collect Repaired Diving Gear##33040 |q 27237
		.collect Salvage Kit##33044 |q 27237
	step
		goto 65.6,20.3
		.' Use your Salvage Kit next to Shipwreck Debris |use Salvage Kit##33044 |tip They look like collections of junk floating around underwater around this area.
		.get Salvaged Strongbox |q 27237/1
	step
		goto 63.7,17.0
		.talk Renn McGill##23569
		..turnin Recover the Cargo!##27237
		..accept Jaina Must Know##27238
	step
		'Hearth to Theramore Isle |goto 66.6,45.2,0.5 |use Hearthstone##6948 |noway |c
	step
		goto 65.1,47.7 |n
		.' Follow the path up |goto 65.1,47.7,0.5 |noway |c
	step
		goto 66.3,49.0
		.' Go to the top of the tower
		.talk Lady Jaina Proudmoore##4968
		..turnin Jaina Must Know##27238
		..accept Survey Alcaz Island##27239
	step
		goto 68.3,48.7
		.talk Morgan Stern##4794
		..turnin Mudrock Soup and Bugs##1204
		..accept ... and Bugs##1258
	step
		goto 67.3,51.1
		.talk Cassa Crimsonwing##23704
		..' Tell her Lady Jaina told you to speak to her about using a gryphon to survey Alcaz Island
		.' Survey Alcaz Island |q 27239/1
	step
		goto 70.4,50.1
		.' Walk along the rocks on the outskirts of Theramore Isle
		.from Spiny Rock Crab##44390+
		.get 12 Pristine Crawler Leg |q 1258/1
	step
		goto 68.3,48.7
		.talk Morgan Stern##4794
		..turnin ... and Bugs##1258
	step
		goto 65.1,47.7 |n
		.' Follow the path up |goto 65.1,47.7,0.5 |noway |c
	step
		goto 66.3,49.0
		.' Go to the top of the tower
		.talk Lady Jaina Proudmoore##4968
		..turnin Survey Alcaz Island##27239
	step
		goto 55.4,26.3
		.talk "Swamp Eye" Jarl##4792
		..turnin The Hermit of Witch Hill##27215
		..accept Marsh Frog Legs##27183
	step
		goto 55.6,26.1
		.talk Mordant Grimsby##23843
		..accept What's Haunting Witch Hill?##27188
	step
		goto 55.4,25.9
		.click the Loose Dirt##498
		..accept The Orc Report##27246
	step
		'All around "Swamp Eye" Jarl's house:
		.from Giant Marsh Frog##23979+
		.get 10 Marsh Frog Leg |q 27183/1
	step
		goto 55.4,26.3
		.talk "Swamp Eye" Jarl##4792
		..turnin Marsh Frog Legs##27183
		..accept Jarl Needs Eyes##27184
	step
		goto 55.9,28.5
		.from Risen Husk##23555+, Risen Spirit##23554+
		.' Gather 10 Information |q 27188/1
	step
		goto 55.6,26.1
		.talk Mordant Grimsby##23843
		..turnin What's Haunting Witch Hill?##27188
		..accept The Witch's Bane##27189
	step
		goto 55.2,27.7
		.click Witchbane##7445+
		.get 9 Witchbane |q 27189/1
	step
		goto 55.6,26.1
		.talk Mordant Grimsby##23843
		..turnin The Witch's Bane##27189
		..accept Cleansing Witch Hill##27190
	step
		goto 55.2,26.7
		'Use your Witchbane Torch while standing at the end of the dock right outside |use Witchbane Torch##33113
		.from Zelfrax##23864
		.' Cleanse Witch Hill |q 27190/1
	step
		goto 55.6,26.1
		.talk Mordant Grimsby##23843
		..turnin Cleansing Witch Hill##27190
	step
		goto 46.7,23.1
		.talk Sergeant Lukas##23723
		..accept Raptor Captor##27242
	step
		goto 46.9,17.5
		.talk "Stinky" Ignatz##4880
		..accept Stinky's Escape##1222
		.' Escort "Stinky" Ignatz
		.' Help Stinky find Bogbean Leaves |q 1222/1
		.' Use your Sturdy Rope on any raptors you fight, when they are almost dead |use Sturdy Rope##33069
	step
		goto 47.3,18.9
		.from Bloodfen Raptor##4351+, Bloodfen Screecher##4352+ |tip Don't actually kill them.  When they are almost dead, capture them.
		.' Use your Sturdy Rope when the raptors are almost dead |use Sturdy Rope##33069
		.' Capture 6 Raptors |q 27242/1
	step
		goto 46.7,23.1
		.talk Sergeant Lukas##23723
		..turnin Raptor Captor##27242
		..accept Unleash the Raptors##27243
		..accept Prisoners of the Grimtotems##27245
	step
		ding 39
	step
		goto 41.6,12.1
		.' Use your Raptor Bait next to the windmill |use Raptor Bait##33070
		.' Release the Raptors |q 27243/1
	step
		goto 42.7,13.6
		.from Grimtotem Elder##23714+, Grimtotem Breaker##23592+, Grimtotem Spirit-Shifter##23593+
		.collect Grimtotem Key##33061 |n
		.click Blackhoof Cage##1787+
		.' Free 5 Theramore Prisoners |q 27245/1
	step
		goto 46.7,23.1
		.talk Sergeant Lukas##23723
		..turnin Unleash the Raptors##27243
		..turnin Prisoners of the Grimtotems##27245
	step
		goto Dustwallow Marsh,35.3,22.6
		.from Darkmist Silkspinner##4379+, Darkmist Spider##4376+, Darkmist Recluse##4378+
		.get 20 Unpopped Darkmist Eye |q 27184/1
	step
		goto 29.8,47.7
		.talk Inspector Tarem##23567
		..turnin Inspecting the Ruins##27249
	step
		goto 29.7,47.6
		.click Suspicious Hoofprint##520 
		..accept Suspicious Hoofprints##27262
	step
		goto 29.8,48.2
		.click Theramore Guard Badge##522
		..accept Lieutenant Paval Reethe##27263
	step
		goto 29.6,48.6
		.click Black Shield##58
		..accept The Black Shield##27252
	step
		goto 42.8,72.4
		.talk Dyslix Silvergrub##40358
		.fpath Mudsprocket
	step
		goto 42.3,72.9
		.talk Drazzit Dripvalve##23572
		..turnin Mission to Mudsprocket##27248
	step
		goto 41.8,73.1
		.click Wanted Poster##4371 
		..accept WANTED: Goreclaw the Ravenous##27412
	step
		goto 41.9,74.0
		.talk Brogg##23579
		..accept Bloodfen Feathers##27407
	step
		goto 41.9,74.2
		.talk Axle##23995
		.home Mudsprocket
	step
		goto 41.5,73.0
		.talk Gizzix Grimegurgle##23570
		..accept Catch a Dragon by the Tail##27413
	step
		goto 32.4,65.4
		.kill Goreclaw the Ravenous##23873 |q 27412/1 |tip He's a big green raptor standing at the entrance to the cave.
		.from Bloodfen Razormaw##4356+, Bloodfen Lashtail##4357+
		.get 5 Bloodfen Feather |q 27407/1
	step
		goto 42.3,72.9
		.talk Drazzit Dripvalve##23572
		..turnin WANTED: Goreclaw the Ravenous##27412
	step
		goto 41.9,74
		.talk Brogg##23579
		..turnin Bloodfen Feathers##27407
		..accept Banner of the Stonemaul##27408
		..accept The Essence of Enmity##27409
	step
		goto 38.5,65.9 |n
		.' Use Brogg's Totem on corpses of mobs you kill |use Brogg's Totem##33088
		.' The entrance to the cave is here |goto Dustwallow Marsh,38.5,65.9,0.5 |noway |c
	step
		goto 38.1,69.4
		.click the Stonemaul Banner##6957
		.get Stonemaul Banner |q 27408/1
		.' Use Brogg's Totem on corpses of mobs you kill |use Brogg's Totem##33088
	step
		goto 38.5,65.9 |n
		.' Use Brogg's Totem on corpses of mobs you kill |use Brogg's Totem##33088
		.' Leave the cave |goto Dustwallow Marsh,38.5,65.9,0.5 |noway |c
	step
		goto 39.4,66.6
		.from Firemane Scout##4329+, Firemane Ash Tail##4331+
		.' Use Brogg's Totem on their corpses |use Brogg's Totem##33088
		.get 10 Black Dragonkin Essence |q 27409/1
	step
		goto 46.1,57.4
		.talk Apprentice Morlann##23600
		..accept Direhorn Raiders##27340
		..accept The Zeppelin Crash##27346
	step
		goto 46.0,57.1
		.talk Tabetha##6546
		..turnin Tabetha's Farm##11212
		..accept Help for Mudsprocket##11211
	step
		goto 46.0,57.2
		.talk Apprentice Garion##23601
		..accept The Reagent Thief##27339
	step
		goto 41.5,52.9
		.from Darkfang Creeper##4412+, Noxious Shredder##4348+
		.get 6 Marsh Venom |q 27339/1
	step
		goto 46.6,49.1
		.from Grimtotem Destroyer##23594+, Grimtotem Earthbinder##23595+
		.' Kill 12 Direhorn Grimtotems |q 27340/1
	step
		goto 46.0,57.2
		.talk Apprentice Garion##23601
		..turnin The Reagent Thief##27339
	step
		goto 46.1,57.4
		.talk Apprentice Morlann##23600
		..turnin Direhorn Raiders##27340
	step
		goto 53.6,56.9
		.talk Moxie Steelgrille##23797
		..turnin The Zeppelin Crash##27346
		..accept Corrosion Prevention##27347
		..accept Secure the Cargo!##27348
	step
		goto 53.1,56.0
		.' Use your Ooze Buster on green and blue oozes while Energized! |use Ooze Buster##33108 |tip Stand next to the blue lightning structures to get the Energized! buff.
		.' Dissolve 10 Oozes |q 27347/1
		.click the Zeppelin Cargo##6606
		.get 8 Zeppelin Cargo |q 27348/1
	step
		goto 53.6,56.9
		.talk Moxie Steelgrille##23797
		..turnin Corrosion Prevention##27347
		..turnin Secure the Cargo!##27348
		..accept Delivery for Drazzit##11208
	step
		ding 40
	step
		goto 54.9,58.4 |n
		.' Follow the path down |goto Dustwallow Marsh,54.9,58.4,0.5 |noway |c
	step
		goto 58.8,60.2
		.talk Nat Pagle##12919
		..turnin Is it Real?##27219
		..accept Nat's Bargain##27220
	step
		'Use Pagle's Fish Paste, Extra Strength |use Pagle's Fish Paste, Extra Strength##33166
		.' Wear Pagle's Fish Paste |havebuff Interface\Icons\Spell_Nature_ElementalAbsorption |q 27220
	step
		goto 56.6,62.4
		.from Lurking Shark##23928
		.' Test the Fish Paste |q 27220/1
	step
		goto 58.8,60.2
		.talk Nat Pagle##12919
		..turnin Nat's Bargain##27220
		..accept Oh, It's Real##27221
	step
		goto 66.5,55.1 |n
		.' Swim across to shore |goto 66.5,55.1,0.5 |noway |c
	step
		goto 69.6,51.8
		.talk Major Mills##23905
		..turnin Oh, It's Real##27221
		..accept Take Down Tethyr!##27222
	step
		goto 69.6,51.8
		.' Run around the docks
		.click Cove Cannon##10475+
		.' Defend the Theramore Docks from Tethyr |q 27222/1
	step
		goto 69.6,51.8
		.talk Major Mills##23905
		..turnin Take Down Tethyr!##27222
	step
		goto 68.3,48.7
		.talk Morgan Stern##4794
		..turnin Stinky's Escape##1222
	step
		goto 68.2,48.6
		.talk Captain Garran Vimes##4944
		..turnin Suspicious Hoofprints##27262
		..turnin Lieutenant Paval Reethe##27263
		..accept Lieutenant Paval Reethe##27264
		..turnin The Black Shield##27252
		..accept The Black Shield##27284
	step
		goto 68.0,48.1
		.talk Adjutant Tesoran##4948
		..turnin Lieutenant Paval Reethe##27264
		..accept Daelin's Men##27286
	step
		goto 68.2,48.6
		.talk Captain Garran Vimes##4944
		..turnin Daelin's Men##27286
		..accept The Deserters##27287
	step
		goto 65.1,47.1
		.talk Lieutenant Aden##23951
		..turnin The Orc Report##27246
		..accept Captain Vimes##27247
	step
		goto 64.8,50.4
		.talk Caz Twosprocket##4941
		..turnin The Black Shield##27284
		..accept The Black Shield##27285
	step
		goto 68.2,48.6
		.talk Captain Garran Vimes##4944
		..turnin The Black Shield##27285
		..turnin Captain Vimes##27247
	step
		goto 55.4,26.3
		.talk "Swamp Eye" Jarl##4792
		..turnin Jarl Needs Eyes##27184
		..accept Hungry as an Ogre!##27191
		..accept Jarl Needs a Blade##27186
	step
		goto 57.8,19.6 |n
		.' The path down to Razorspine starts here |goto 57.8,19.6,0.5 |noway |c
	step
		goto 57.9,18.7
		.from Razorspine##23841 |tip He walks up and down this path.
		.get Razorspine's Sword |q 27186/1
	step
		goto 57.4,16.8
		.from Mirefin Coastrunner##4362+, Mirefin Murloc##4359+
		.get 8 Mirefin Head |q 27191/1
	step
		goto 57.9,18.4 |n
		.' The path up to "Swamp Eye" Jarl starts here |goto 57.9,18.4,0.5 |noway |c
	step
		goto 55.4,26.3
		.talk "Swamp Eye" Jarl##4792
		..turnin Hungry as an Ogre!##27191
		..turnin Jarl Needs a Blade##27186
	step
		'Hearth to Mudsprocket |goto 41.9,74.2,1.5 |use Hearthstone##6948 |noway |c
	step
		goto 41.9,74.0
		.talk Brogg##23579
		..turnin Banner of the Stonemaul##27408
		..turnin The Essence of Enmity##27409
		..accept Spirits of Stonemaul Hold##27410
	step
		goto 42.3,72.9
		.talk Drazzit Dripvalve##23572
		..turnin Help for Mudsprocket##11211
		..turnin Delivery for Drazzit##11208
	step
		goto 45.8,68.4
		.click Ogre Remains##7431
		.from Stonemaul Spirit##23786+
		.' Lay 10 Stonemaul Spirits to Rest |q 27410/1
	step
		goto 36.1,54.3
		.from Balos Jacken##5089
		.' Eventually he will surrender
		.talk Balos Jacken##5089
		..turnin The Deserters##27287
		..accept The Deserters##27288
	step
		goto 41.9,74.0
		.talk Brogg##23579
		..turnin Spirits of Stonemaul Hold##27410
		..accept Challenge to the Black Flight##27411
	step
		ding 41
	step
		goto 52.1,75.8
		.' Use your Stonemaul Banner at the foot of the stone ramp at the entrance to Onyxia's Lair |use Stonemaul Banner##33095
		.from Smolderwing##23789
		.' Avenge the Stonemaul Clan |q 27411/1
	step
		goto 50.5,75.3
		.click Wyrmtail##391+
		.get 8 Wyrmtail|q 27413/1
	step
		goto 41.5,73.0
		.talk Gizzix Grimegurgle##23570
		..turnin Catch a Dragon by the Tail##27413
	step
		goto 41.9,74.0
		.talk Brogg##23579
		..turnin Challenge to the Black Flight##27411
	step
		goto 42.8,72.4
		.talk Dyslix Silvergrub##40358
		.' Fly to Theramore, Dustwallow Marsh |goto 67.5,51.2,0.5 |noway |c
	step
		goto 68.2,48.6
		.talk Captain Garran Vimes##4944
		..turnin The Deserters##27288
	step
		goto 67.5,51.3
		.talk Baldruc##4321
		.' Fly to Mudsprocket, Dustwallow Marsh |goto 42.9,72.4,0.5 |noway |c
	step
		goto 41.8,73.9
		.talk Thyssiana##40345
		..accept To New Thalanaar##25479
	step
		goto 42.8,72.4
		.talk Dyslix Silvergrub##40358
		..' Tell him you need to get to New Thalanaar!
		.' Take a Hippogryph to New Thalanaar |q 25479/1
]])
ZygorGuidesViewer:RegisterInclude("A_Timbermaw_Faction",[[
	step
		#include "rideto_theramoreisle"
	step
		|fly Talonbranch Glade
	step
		goto Felwood,64.0,10.3
		.talk Nafien##15395
		..accept Deadwood of the North##28338
		..accept Disarming Bears##28366
	step
		goto 64.1,10.3
		.talk Ferli##48461
		..accept Stupid Drizle!##28362
	step
		goto 60.6,9.5
		.talk Drizle##47556
		.turnin Stupid Drizle!##28362
		.accept The Chieftain's Key##28364
	step
		goto 62.1,9.9
		.from Chieftain Bloodmaw##9462
		.get Drizle's Key##63695 |q 28364/1
	step
		goto 60.6,9.5
		.talk Drizle##47556
		.turnin The Chieftain's Key##28364
	step
		goto 62.0,12.8
		.from Deadwood Den Watcher##7156+, Deadwood Avenger##7157+, Deadwood Shaman##7158+
		.'Kill 15 Deadwood Furbolg |q 28338/1
		.click Deadwood Weapon Pile##10202
		.get 7 Deadwood Weapons |q 28366/1
		..collect 1 Deadwood Ritual Totem##20741 |n
		..accept Deadwood Ritual Totem##8470
		.' You can find more around [Felwood,59.7,9.8].
	step
		goto 64.0,10.3
		.talk Nafien##15395
		..turnin Deadwood of the North##28338
		..turnin Disarming Bears##28366
		..accept Speak to Salfa##28521
		.' You should be able to turn in Feathers for Nafien, a repeatable reputation quest.
	step
		goto 64.7,5.7
		.talk Kernda##11558
		.turnin Deadwood Ritual Totem##8470
		.' You should be friendly with Timbermaw after completing this quest.
		only if rep('Timbermaw Hold')>=Neutral
	step
		goto 64.9,5.2
		.talk Meilosh##11557
		.accept Runecloth##6031
		only if rep ('Timbermaw Hold')>=Friendly
	step
		goto Winterspring,21.1,46.2
		.talk Salfa##11556
		..turnin Speak to Salfa##28521
		..accept Delivery for Donova##28524
		..accept Winterfall Activity##28522
	step
		goto 25.1,58.5
		.talk Donova Snowden##9298
		..turnin Delivery for Donova##28524
		..accept Threat of the Winterfall##28460
		..accept Falling to Corruption##28464
	step
		goto 24.5,47.6
		.' Click the Winterfall Cauldron.
		..turnin Falling to Corruption##28464
		..accept Mystery Goo##28467
	step
		goto 24.5,47.6
		  .from Winterfall Totemic##7441+, Winterfall Den Watcher##7440+, Winterfall Runner##10916+
		.'Kill 15 Winterfall Furbolg |q 28460/1
		..get 10 Winterfall Spirit Beads |q 28522/1
		.' You can find more mobs around [Winterspring,27.3,49.3].
	step
		goto 25.1,58.5
		.talk Donova Snowden##9298
		..turnin Mystery Goo##28467
		..turnin Threat of the Winterfall##28460
		..accept Winterfall Runners##28469
		..accept Scalding Signs##28530
	step
		goto 29.3,54.8
		.from Winterfall Runner##10916
		.get Winterfall Crate |q 28469/1
		.' They walk along the road so some searching may be required.
	step
		goto 32.7,50.6
		.from Scalding Springsurge##48767+,Boiling Springbubble##48768+
		.get 7 Suspicious Green Sludge |q 28530/1
	step
		goto 25.1,58.5
		.talk Donova Snowden##9298
		..turnin Winterfall Runners##28469
		..turnin Scalding Signs##28530
		..accept High Chief Winterfall##28470
		.' You should be honored with Timbermaw Hold at this point.
	step
		goto 37.0,55.6
		.kill High Chief Winterfall##10738 |q 28470/1
	step
		goto 25.1,58.5
		.talk Donova Snowden##9298
		..turnin High Chief Winterfall##28470
	step
		goto 21.1,46.2
		.talk Salfa##11556
		..turnin Winterfall Activity##28522
		.' You should now be able to do the quest More Beads for Salfa.
	step
		goto 65.3,46.2
		.talk Burndl##48722
		.accept Bearzerker##28614
	step
		 goto 65.4,46.2
		.talk Tanrir##48723
		..accept Turning the Earth##28615
	step
		goto 67.0,47.7
		' Use Tanrir's Overcharged Totem to overload Winterfall Earth Totems. |use Tanrir's Overcharged Totem##64637
		.' Overload 4 Winterfall Earth Totems |q 28615/1
		|modelnpc Winterfall Earth Totem##49177
	step
		goto 69.3,50.6
		..kill Grolnar the Berserk##49178 |q 28614/1
	step
		goto Winterspring,65.4,46.2
		.talk Tanrir##48723
		..turnin Turning the Earth##28615
	step
		goto 65.3,46.2
		.talk Burndl##48722
		..turnin Bearzerker##28614
	step
	label	"the_grind"
		.' At this point, you can do two repeatable quests, as well as grind to earn rep.
		.' More Beads for Salfa requires that you grind in Winterspring.  You collect 5 Winterfall Spirit Beads, which are worth 2,000 Reputation per turn in.  Click here to farm at the Winterspring location. |confirm |next "winterfall"
		.' or
		.' Feathers for Nafien requires that you grind in Felwood. You collect 5 Deadwood Headdress Feathers, which are worth 2,000 Reputation per turn in.  Click here to farm at the Felwood location. |confirm |next "deadwood" |tip         
		.' Collecting 65 Beads/Feathers will get you from Honored to Exalted.
	step
	label	"winterfall"
		goto 67.5,49.8
		.from Winterfall Shaman##7439+,Winterfall Ursa##7438+
		..collect Winterfall Spirit Beads##21383 |n |tip You need to collect at least 5.
		.' 5 Winterfall Spirit Beads = 2,000 Reputation. You're aiming for at least 60 to 65 Winterfall Spirit Beads in total.
		.' More can be found at [Winterspring,35.6,56.3]
		.' Click here to turn in your beads |confirm
	step
		goto 21.1,46.2
		.talk Salfa##11556
		..accept More Beads for Salfa##28523 |n                                     
		.' Click here to go back to grinding. |next "the_grind" |only if rep('Timbermaw Hold')<=Revered |confirm     
		.' or           
		.' Exalted with Timbermaw Hold |next "exalted" |condition rep('Timbermaw Hold')==Exalted    
	step
	label	"deadwood"
		goto Felwood,61.9,12.3
		.from Deadwood Avenger##7157+,Deadwood Den Watcher##7156+,Deadwood Shaman##7158+
		..collect Deadwood Headdress Feather##21377 |n |tip You need to collect at least 5.
		.' 5 Feather Headresses = 2,000 Reputation.  You're aiming for at least 60 to 65 Feather Headresses in total.
		.' More can be found at [Felwood,59.6,8.9]
		.' Click here to turn in your feathers |confirm |next "turnin"
	step
	label	"turnin"
		goto 64.0,10.3
		.talk Nafien##15395
		 ..accept Feathers for Nafien##28395 |n
		.' Click here to go back to grinding. |next "the_grind" |only if rep('Timbermaw Hold')<=Revered |confirm     
		.' or           
		.' Exalted with Timbermaw Hold |next "exalted" |condition rep('Timbermaw Hold')==Exalted    
	step
	label	"exalted"
		.' Congratulations, you are now Exalted with Timbermaw Hold!
]])
--------------------------------------------------------------------------------------------------------------------------------------
-- Leveling Eastern Kingdoms
--------------------------------------------------------------------------------------------------------------------------------------
ZygorGuidesViewer:RegisterInclude("A_Eastern_Plaguelands_Argent_Dawn_Revered",[[
	step
		goto Eastern Plaguelands,9.0,66.5
		.talk Fiona##45417
		..turnin Into the Woods##27683 |only if havequest(27683)
		..accept Gidwin Goldbraids##27367
		..accept Tarenar Sunstrike##27370
	step
		goto 4.1,36.0
		.talk Gidwin Goldbraids##45428
		..turnin Gidwin Goldbraids##27367
		..accept Just Encased##27368
	step
		goto 4.7,35.6 |n
		.' Enter the tunnel |goto 4.7,35.6,0.5 |noway |c
	step
		goto 5.1,33.4
		.from Crypt Stalker##8555+,Crypt Horror##8557+, Crypt Walker##8556+, Crypt Slayer##8558+ |tip All inside this tunnel.
		.get 8 Crypt Bile |q 27368/1
	step
		goto 4.7,35.6 |n
		.' Leave the tunnel |goto 4.7,35.6,0.5 |noway |c
	step
		goto Eastern Plaguelands,4.1,36.0
		.talk Gidwin Goldbraids##45428
		..turnin Just Encased##27368
		..accept Greasing the Wheel##27369
	step
		goto 3.4,38.0
		.click Banshee's Bell##9889+ |tip They are located right along the edge of the water
		.get 10 Banshee's Bells |q 27369/1
	step
		goto 9.0,66.5
		.talk Fiona##45417
		..turnin Greasing the Wheel##27369
	step
		goto 18.4,74.8
		.talk Tarenar Sunstrike##45429
		..turnin Tarenar Sunstrike##27370
		..accept What I Do Best##27371
	step
		goto 18.6,76.9
		.kill 5 Death's Step Miscreation##45444+ |q 27371/1
		.' Click the Quest Complete box that displays on the right side of the screen under your minimap
		..turnin What I Do Best##27371
		..accept A Gift For Fiona##27372
	step
		goto 17.2,68.7
		.from Plaguehound Runt##8596+ |tip They share spawn locations with the Carrion Grubs.  So, if you are having trouble finding Plaguehound Runts, kill Carrion Grubs and more should spawn.
		.get 10 Plaguehound Blood |q 27372/1
		.' You can find more Plague Hound Runts around [Eastern Plaguelands,14.4,63.0].
	step
		goto 9.0,66.5
		.talk Fiona##45417
		..turnin A Gift For Fiona##27372
		..accept Onward, to Light's Hope Chapel##27373
	step
		goto 8.8,66.6
		.clicknpc Fiona's Caravan##10937
		..' Choose 1 of the 3 buffs you can choose from |tip All of the buffs only work while you're in Eastern Plaguelands.  Fiona's Lucky Charm gives you a chance to loot extra gold or items from enemies.  Gidwin's Weapon Oil gives you a chance to do extra Holy damage on melee and ranged attacks.  Tarenar's Talisman gives you a chance to do extra Holy damage on successful spell attacks.
		.' Click here to proceed. |confirm
	step
		goto 8.8,66.6
		.clicknpc Fiona's Caravan##45400
		..' Choose to go to the next destination
		.' Ride Fiona's Caravan |q 27373/1
	step
		goto 34.9,67.9
		.talk Janice Myers##44232
		.fpath Crown Guard Tower
	step
		goto 35.0,68.1
		.talk Urk Gagbaz##45500
		..accept Zaeldarr the Outcast##27432
	step
		goto 34.9,69.1
		.talk Fiona##45417
		..turnin Onward, to Light's Hope Chapel##27373
	step
		goto 35.3,68.8
		.talk Tarenar Sunstrike##45429
		..accept Traveling Companions##27381
	step
		goto 35.6,68.9
		.talk Carlin Redpath##11063
		..accept Little Pamela##27383
	step
		goto 35.9,69.3
		.' Go to the top of the tower
		.talk Argus Highbeacon##45451
		..' Ask him if he's interested in joining your caravan
		.' Find a traveling companion |q 27381/1
	step
		goto 35.9,69.3
		.talk Argus Highbeacon##45451
		..accept Rough Roads##27382
	step
		goto 35.3,68.9
		.talk Tarenar Sunstrike##45429
		..turnin Traveling Companions##27381
	step
		goto 32.4,83.7
		.talk Pamela Redpath##10926
		..turnin Little Pamela##27383
		..accept Pamela's Doll##27384
		..accept I'm Not Supposed to Tell You This##27392
	step
		goto 35.5,85.3
		.' You can find the doll parts in all of the buildings
		.click Pamela's Doll's Right Side##4233
		.collect Pamela's Doll's Right Side##12888 |q 27384
		.click Pamela's Doll's Left Side##4232
		.collect Pamela's Doll's Left Side##12887 |q 27384
		.click Pamela's Doll's Head##4231
		.collect Pamela's Doll's Head##12886 |q 27384
	step
		'Use Pamela's Doll's Head |use Pamela's Doll's Head##12886
		.get Pamela's Doll |q 27384/1
	step
		goto 40.3,83.8
		.from The Lone Hunter##45450
		.get Joseph's Hunting Blade |q 27392/1
	step
		goto 32.4,83.7
		.talk Pamela Redpath##10926
		..turnin Pamela's Doll##27384
		..turnin I'm Not Supposed to Tell You This##27392
		..accept Uncle Carlin##27385
	step
		ding 40
	step
		goto 35.6,68.9
		.talk Carlin Redpath##11063
		..turnin Uncle Carlin##27385
		..accept A Strange Historian##27386
	step
		goto 35.3,68.0
		.talk Chromie##10667
		..turnin A Strange Historian##27386
		..accept Villains of Darrowshire##27387
		..accept Heroes of Darrowshire##27388
		..accept Marauders of Darrowshire##27389
	step
		goto 35.0,68.1
		.talk Urk Gagbaz##45500
		..accept Cenarion Tenacity##27544
	step
		goto 35.6,68.9
		.talk Carlin Redpath##11063
		..' Ask him if he has the extended Annals of Darrowshire
		.get Extended Annals of Darrowshire |q 27388/1
	step
		goto 39.8,72.4
		.click Shattered Sword of Marduk##4175
		.get Shattered Sword of Marduk |q 27387/2
	step
		goto 39.6,72.1
		.kill 13 Plaguebat##8600+ |q 27382/1
	step
		goto 35.6,68.7
		.' Go to the top of the tower
		.talk Argus Highbeacon##45451
		..turnin Rough Roads##27382
	step
		goto 24.2,78.5 |n
		.' Enter the crypt |goto 24.2,78.5,0.5 |noway |c
	step
		goto 23.8,77.9
		.' Go to the bottom of the crypt
		.from Zaeldarr the Outcast##12250
		.get Zaeldarr's Head |q 27432/1
	step
		goto 22.1,68.2
		.click Redpath's Shield##4172
		.get Redpath's Shield |q 27388/3
	step
		goto 22.3,68.3
		.' Go upstairs
		.click Davil's Libram##430
		.get Davil's Libram |q 27388/2
	step
		goto 35.0,68.2
		.talk Urk Gagbaz##45500
		..turnin Zaeldarr the Outcast##27432
	step
		goto 35.2,68.1
		.talk Chromie##10667
		..turnin Heroes of Darrowshire##27388
	step
		goto 37.3,60.2
		.click Horgus' Skull##4173
		.get Skull of Horgus |q 27387/1
	step
		goto 30.2,56.9
		.talk Rayne##16135
		..turnin Cenarion Tenacity##27544
		..accept Postponing the Inevitable##27420
		..accept Amidst Death, Life##27421
	step
		goto 33.7,44.4
		.' Go inside the necropolis
		.' Use Rayne's Seeds while standing on the platform above the green liquid |use Rayne's Seeds##61036
		.' Plant a Seed in the Western Necropolis |q 27421/2
	step
		goto 37.8,42.5
		.' Go inside the necropolis
		.' Use Rayne's Seeds while standing on the platform above the green liquid |use Rayne's Seeds##61036
		.' Plant a Seed in the Northeastern Necropolis |q 27421/3
	step
		goto 37.6,48.3
		.' Go inside the necropolis
		.' Use Rayne's Seeds while standing on the platform above the green liquid |use Rayne's Seeds##61036
		.' Plant a Seed in the Southeastern Necropolis |q 27421/1
	step
		goto 36.4,46.0
		.from Scourge Champion##8529+
		.collect Fetid Skull##13157 |n
		.' Use your Mystic Crystal when you have a Fetid Skull |use Mystic Crystal##13156
		.get 5 Resonating Skull |q 27389/1
		.from Shadowmage##8550+, Dark Adept##8546+
		.collect Plague Disseminator Control Rune##61037 |n
		.' Use your Overcharged Mote when you have a Plague Disseminator Control Rune |use Overcharged Mote##61038
		.' Destroy 3 Plague Disseminators |q 27420/1
	step
		goto 30.2,56.9
		.talk Rayne##16135
		..turnin Postponing the Inevitable##27420
		..turnin Amidst Death, Life##27421
	step
		goto 35.3,68.1
		.talk Chromie##10667
		..turnin Villains of Darrowshire##27387
		..turnin Marauders of Darrowshire##27389
		..accept The Battle of Darrowshire##27390
	step
		goto 35.1,84.0
		.' Use your Relic Bundle |use Relic Bundle##15209
		.' Fight in the battle and follow the instructions that appear on your screen
		.from Redpath the Corrupted##10938
		.' Joseph Redpath will appear after the battle at [Eastern Plaguelands,35.1,84.0]
		.talk Joseph Redpath##10936
		.' Accept Redpath's Forgiveness |q 27390/1
	step
		goto 32.4,83.7
		.talk Pamela Redpath##10926
		..turnin The Battle of Darrowshire##27390
		..accept Hidden Treasures##27391
	step
		goto 32.2,83.4
		.click Joseph's Chest##318
		..turnin Hidden Treasures##27391
	step
		goto 34.9,69.2
		.talk Fiona##45417
		..accept The Trek Continues##27448
	step
		goto 35.0,69.3
		.clicknpc Fiona's Caravan##45400
		..' Choose to go to the next destination
		.' Ride in Fiona's Caravan |q 27448/1
	step
		goto 52.9,53.1
		.talk Fiona##45417
		..turnin The Trek Continues##27448
		..accept Boys Will Be Boys##27455
	step
		goto 53.0,53.1
		.clicknpc Fiona's Caravan##45400
		.' Complete the Argus' Journal quest |tip This will give you a 2% experience bonus while in Eastern Plaguelands, so will allow you to level faster.  // %
		|confirm
	step
		goto 53.2,54.6
		.talk Betina Bigglezink##11035
		..accept To Kill With Purpose##27451
		..accept Dark Garb##27452
	step
		goto 53.8,54.0
		.' Go to the top of the tower
		.talk Frederick Calston##45575
		..accept Frederick's Fish Fancy##27450
	step
		goto 52.8,51.4
		.talk Vex'tul##45574
		..accept Honor and Strength##27449
		.kill 3 Mossflayer Rogue##45579+ |q 27449/1
	step
		goto 52.8,51.4
		.talk Vex'tul##45574
		..turnin Honor and Strength##27449
	step
		ding 41
	step
		goto 50.2,61.3
		.clicknpc Plague Puffer##45650+
		.get 8 Plague Puffer |q 27450/1
		.clicknpc Infectis Incher##45655+
		.get 8 Infectis Incher |q 27450/2
		.clicknpc Infectis Scuttler##45657+
		.get 8 Infectis Scuttler |q 27450/3
	step
		goto 53.7,62.3
		.from Unseen Servant##8538+, Stitched Horror##8543+, Hate Shrieker##8541+, Dark Caster##8526+, Scourge Warder##8525+, Gibbering Ghoul##8531+
		.collect 7 Living Rot##15447 |n |tip These only last 10 minutes, so keep an eye on the timer and try to get them as fast as you can.
		.' Use Mortar and Pestle once you have 7 Living Rot |use Mortar and Pestle##15454
		.get Coagulated Rot |q 27451/1
		.' Click the Quest Complete box that displays on the right side of the screen under your minimap
		..turnin To Kill With Purpose##27451
	step
		goto 55.7,61.0
		.from Dark Summoner##8551+, Vile Tutor##8548+
		.get Death Cultist Headwear |q 27452/1
		.get Death Cultist Robes |q 27452/2
		.' Click the Quest Complete box that displays on the right side of the screen under your minimap
		..turnin Dark Garb##27452
		..accept Catalysm##27453
	step
		goto 57.6,72.6
		.' Use Betina's Flasks on Plague Ravagers and Blighted Surges underwater |use Betina's Flasks##61284
		.get 8 Active Liquid Plague Agent |q 27453/1
		.' Click the Quest Complete box that displays on the right side of the screen under your minimap
		..turnin Catalysm##27453
		..accept Just a Drop in the Bucket##27454
	step
		goto 61.7,75.5
		.' Use your Death Cultist Disguise |use Death Cultist Disguise##61283
		.' Wear your Death Cultist Disguise |havebuff INTERFACE\ICONS\inv_helmet_152 |q 27454
	step
		goto 62.4,76.4
		.click Mereldar Plague Cauldron##4331
		..' Choose to throw in an entire flask
		.' Disturb the Mereldar Plague Cauldron |q 27454/1
	step
		goto 53.2,54.6
		.talk Betina Bigglezink##11035
		..turnin Just a Drop in the Bucket##27454
	step
		goto 53.8,54.0
		.' Go to the top of the tower
		.talk Frederick Calston##45575
		..turnin Frederick's Fish Fancy##27450
	step
		goto 74.4,53.3
		.talk Gidwin Goldbraids##45431
		..turnin Boys Will Be Boys##27455
		..accept A Boyhood Dream##27463
	step
		goto 73.8,51.9
		.talk Rimblat Earthshatter##16134
		..accept Gathering Some Grub(s)##27456
	step
		goto 74.9,53.5
		.talk Smokey LaRue##11033
		..accept Smokey and the Bandage##27458
	step
		goto 75.6,52.4
		.talk Jessica Chambers##16256
		.home Light's Hope Chapel
	step
		goto 75.6,52.0
		.talk Leonid Barthalomew the Revered##11036
		..accept The Brotherhood of Light##27459
	step
		goto 75.9,52.0
		.talk Lord Maxwell Tyrosus##11034
		..turnin A Boyhood Dream##27463
		..accept Argent Call: The Trial of the Crypt##27464
	step
		goto 77.2,50.8 |n
		.' Enter the crypt |goto 77.2,50.8,0.5 |noway |c
	step
		goto 77.2,51.4
		.' Go to the bottom of the crypt
		.' Use your Argent Scroll |use Argent Scroll##61309
		.from Argent Warden##45698+
		.from Lord Raymond George##45707
		.' Complete the Trial of the Crypt |q 27464/1
	step
		goto 75.9,52.0
		.talk Lord Maxwell Tyrosus##11034
		..turnin Argent Call: The Trial of the Crypt##27464
		..accept Argent Call: The Noxious Glade##27465
	step
		goto 75.7,52.0
		.talk Master Craftsman Omarion##16365
		..accept Buried Blades##27467
	step
		goto 71.9,45.4
		.from Stephen Browman##46167
		.get Browman's Wrappings |q 27458/1
	step
		goto 72.1,41.6 |n
		.' Run up this path |goto 72.1,41.6,0.5 |noway |c
	step
		goto 77.4,37.3
		.kill 16 Noxious Glade Scourge |q 27465/1
		.kill 8 Noxious Glade Cultists |q 27465/2
		.clicknpc Slain Scourge Trooper##45695+
		.' Bury 10 Blades |q 27467/1
		' |from Diseased Flayer##8532+, Dread Weaver##8528+, Death Singer##8542+
		' |from Skullmage##45691+, Noxious Assassin##45692+
		|tip Be careful of the patrolling elite, Garginox, in this area.
		|modelnpc Garginox##45681
	step
		'Hearth to Light's Hope Chapel |goto 75.6,52.4,0.5 |use Hearthstone##6948 |noway |c
	step
		goto 75.7,52.0
		.talk Master Craftsman Omarion##16365
		..turnin Buried Blades##27467
	step
		goto 75.9,52.0
		.talk Lord Maxwell Tyrosus##11034
		..turnin Argent Call: The Noxious Glade##27465
	step
		goto 74.9,53.5
		.talk Smokey LaRue##11033
		..turnin Smokey and the Bandage##27458
	step
		goto 71.1,60.6
		.from Carrion Grub##8603+, Carrion Devourer##8605+
		.get 15 Slab of Carrion Worm Meat |q 27456/1
	step
		goto 72.6,74.8
		.talk Archmage Angela Dosantos##16116
		..turnin The Brotherhood of Light##27459
		..accept Soft Landing##27460
	step
		goto 73.6,74.8
		.kill 10 Tyr's Hand Scarlet Crusader |q 27460/1
		' |from Scarlet Enchanter##9452+, Scarlet Warder##9447+, Scarlet Cleric##9449+
	step
		goto 77.6,79.4
		.click Crusader's Flare##6543
		..turnin Soft Landing##27460
		..accept To Take the Abbey##27461
		..accept To Take the Barracks##27462
	step
		goto 75.3,76.2
		.talk Crusade Commander Korfax##16112
		..turnin To Take the Barracks##27462
		..accept Scarlet Salvage##27614
		..accept The Wrathcaster##27615
		..accept The Huntsman##27616
		..accept The Commander##27619
	step
		ding 42
	step
		goto 74.8,76.7
		.click Battered Chest##10
		.get Crimson Boar |q 27614/1
	step
		goto 74.2,78.3
		.click Battered Chest##10
		.get Lihanna's Strand |q 27614/2
	step
		goto 75.1,79.0
		.click Battered Chest##10
		.get Shroud of Uther |q 27614/3
	step
		goto 75.9,77.5
		.click Battered Chest##10
		.get Gavinrad's Sigil |q 27614/4
	step
		goto 75.0,78.3
		.' Go into the basement of the fortress
		.kill Mataus the Wrathcaster##46093 |q 27615/1
	step
		goto 74.9,78.3
		.' Go upstairs into the main room of the fortress
		.kill Scarlet Commander Marjhan##46092 |q 27619/1
	step
		goto 74.5,77.5
		.' Go down the hall and up more stairs
		.kill Huntsman Leopold##46094 |q 27616/1
	step
		goto 75.3,76.2
		.talk Crusade Commander Korfax##16112
		..turnin Scarlet Salvage##27614
		..turnin The Wrathcaster##27615
		..turnin The Huntsman##27616
		..turnin The Commander##27619
		..accept Argent Upheaval##27618
	step
		goto 76.1,75.3
		.talk Archmage Angela Dosantos##16116
		..turnin Argent Upheaval##27618
	step
		goto 76.7,73.1
		.talk Crusade Commander Eligor Dawnbringer##16115
		..turnin To Take the Abbey##27461
		..accept Victory From Within##27612
		..accept The Assassin##27613
	step
		goto 77.8,71.0
		.' Click the Argent Portal |tip It looks like a swirling portal in a room on the north side of the building.  Follow the stairs up in the Library Wing, not the big spiral stairs in the middle of the building.
		.' Open the Portal within the Library Wing |q 27612/2
	step
		goto 78.6,72.9
		.' Click the Argent Portal |tip It looks like a swirling portal in a room on the west side of the building.
		.' Open the Portal within the Hall of Arms |q 27612/1
	step
		goto 77.6,72.7
		.' Follow the big spiral stairs up to the top of the bell tower
		.kill Rohan the Assassin##46095 |q 27613/1
	step
		goto 76.7,73.1
		.talk Crusade Commander Eligor Dawnbringer##16115
		..turnin Victory From Within##27612
		..turnin The Assassin##27613
		..accept Befouled No More##27617
	step
		goto 76.1,75.3
		.talk Archmage Angela Dosantos##16116
		..turnin Befouled No More##27617
		..accept Like Rats##27620
	step
		goto 82.3,79.4
		.kill Crusader Lord Valdelmar##46096 |q 27620/1
	step
		goto 75.6,52.0
		.talk Leonid Barthalomew the Revered##11036
		..turnin Like Rats##27620
	step
		 goto Eastern Plaguelands,75.8,52.4
		.talk Tarenar Sunstrike##45729
		..accept Argent Call: Northdale##27466
	step
		goto 73.8,51.9
		.talk Rimblat Earthshatter##16134
		..turnin Gathering Some Grub(s)##27456
		..accept An Opportune Alliance##27457
	step
		goto 61.8,41.0
		.talk Vex'tul##45574
		..accept Out of the Ziggurat##27481
	step
		goto 61.0,43.7
		.talk Deacon Andaal##45736
		..accept Righteous Indignation##27479
	step
		goto 61.6,43.1
		.talk Gamella Cracklefizz##45735
		..accept The Corpulent One##27477
	step
		goto 61.5,42.7
		.talk Fiona##45417
		..turnin An Opportune Alliance##27457
		..turnin Argent Call: Northdale##27466
	step
		goto 61.6,43.2
		.talk Tarenar Sunstrike##45729
		..accept Ix'lar the Underlord##27487
	step
		goto 61.8,35.7
		.kill Ix'lar the Underlord##45744 |q 27487/1 |tip He's a big purple bug that walks around this area, so you may need to search for him.
		.kill 10 Ix'lar's minion |q 27487/2
		' |from Scourge Guard##8527+, Gangled Golem##8544+, Nerubian Sycophant##45743+
	step
		goto 56.7,27.9
		.kill Borelgore##11896 |q 27477/1 |tip He's a huge yellow grub that walks along in this big trench.
	step
		goto 58.9,20.4 |n
		.' Run up this path |goto 58.9,20.4,0.5 |noway |c
	step
		goto 66.8,9.9
		.' Don't walk over the dirt piles on the ground, they spawn more enemies
		.from Warlord Thresh'jin##10822 |tip Don't worry that he's elite, you can kill him easily
		.get Body of Warlord Thresh'jin |q 27481/1
		.' Click the Quest Complete box that displays on the right side of the screen under your minimap
		..turnin Out of the Ziggurat##27481
		..accept Into the Flames##27482
	step
		goto 67.4,9.0
		.' Use the Body of Warlordw Thresh'jin next to the Bonfire at the top of the temple |use Body of Warlord Thresh'jin##61316
		.' Burn Warlord Thresh'jin's Body |q 27482/1
		.' Click the Quest Complete box that displays on the right side of the screen under your minimap
		..turnin Into the Flames##27482
	step
		goto 64.5,13.7
		.' Don't walk over the dirt piles on the ground, they spawn more enemies
		.from Mossflayer Cannibal##8562+, Mossflayer Scout##8560+, Mossflayer Shadowhunter##8561+, Infected Mossflayer##12261+
		.get 30 Mossflayer Eye |q 27479/1
	step
		'Hearth to Light's Hope Chapel |goto 75.6,52.4,0.5 |use Hearthstone##6948 |noway |c
	step
		goto 75.9,53.4
		.talk Khaelyn Steelwing##12617
		.' Fly to Eastwall Tower, Eastern Plaguelands |goto 61.6,43.9,0.5 |noway |c
	step
		goto 61.3,44.5
		.talk Deacon Andaal##45736
		..turnin Righteous Indignation##27479
	step
		ding 43
	step
		goto 61.6,43.1
		.talk Gamella Cracklefizz##45735
		..turnin The Corpulent One##27477
	step
		goto 61.5,42.7
		.talk Fiona##45417
		..turnin Ix'lar the Underlord##27487
	step
		goto 61.6,43.2
		.talk Tarenar Sunstrike##45729
		..accept Impatience##27488
	step
		goto 65.5,24.4
		.click Open Prayer Book##254
		.get Gidwin's Prayer Book |q 27488/1
	step
		goto 61.6,43.2
		.talk Tarenar Sunstrike##45729
		..turnin Impatience##27488
		..accept Nobody to Blame but Myself##27489
	step
		goto 61.6,42.5
		.clicknpc Fiona's Caravan##45400
		..' Choose to go to the next destination
		.' Ride Fiona's Caravan to Northpass Tower |q 27489/1
	step
		goto 50.4,20.1
		.talk Tarenar Sunstrike##45729
		..turnin Nobody to Blame but Myself##27489
		..accept Beat it Out of Them##27522
	step
		goto 50.0,19.5
		.talk Kirkian Dawnshield##45826
		..accept Wretched Hive of Scum and Villainy##27521
	step
		goto 54.6,19.1
		.from Scourge Siege Engineer##17878+
		.' Beat 6 Scourge Siege Engineers |q 27522/1
		.' Discover Gidwin's Location |q 27522/2
		.' Discover Gidwin's Captor |q 27522/3
	step
		goto 47.0,17.4
		.kill 9 Quel'lithien Wretched |q 27521/1
		' |from Wretched Pathstrider##8565+, Wretched Woodsman##8563+, Wretched Ranger##8564+
	step
		goto 48.0,23.0
		.talk Corpseburner Tim##45816
		..accept Duskwing, Oh How I Hate Thee...##27523
	step
		goto 46.4,33.8
		.' Use The Corpseburner's Flare in this spot |use The Corpseburner's Flare##61334 |tip If you get a message that there are no valid targets, wait until Duskwing spawns.  He's a big gray bat that flies in the sky around this area.
		.from Duskwing##11897
		.get Patch of Duskwing's Fur |q 27523/1
	step
		goto 48.0,23.0
		.talk Corpseburner Tim##45816
		..turnin Duskwing, Oh How I Hate Thee...##27523
	step
		goto 50.5,20.2
		.talk Fiona##45417
		..turnin Beat it Out of Them##27522
		..accept Blind Fury##27524
	step
		goto 50.5,20.2
		.talk Argus Highbeacon##45451
		..accept The Plaguewood Tower##27532
	step
		goto 50.0,19.5
		.talk Kirkian Dawnshield##45826
		..turnin Wretched Hive of Scum and Villainy##27521
	step
		goto 27.6,21.2
		.talk Tarenar Sunstrike##45729
		..turnin Blind Fury##27524
		..accept Guardians of Stratholme##27525
	step
		goto 27.6,20.9
		.talk Crusader Kevin Frost##45831
		..accept Scourged Mass##27528
		..accept Defenders of Darrowshire##27529
		..accept Add 'em to the Pile##27539
	step
		goto 29.4,19.7
		.kill Karthis Darkrune##45868 |q 27525/2
		.collect The Baroness' Missive##61378 |n
		.' Click The Baroness' Missive in your bags |use The Baroness' Missive##61378
		..accept The Baroness' Missive##27551
	step
		goto 27.4,21.3
		.talk Tarenar Sunstrike##45729
		..turnin The Baroness' Missive##27551
		..accept Gidwin's Fate Revealed##27526
	step
		goto 29.1,26.2
		.' Enter this building and watch the cutscene
		.' Find Gidwin Goldbraids |q 27526/1
	step
		goto 28.4,25.9
		.talk Gidwin Goldbraids##45730
		..turnin Gidwin's Fate Revealed##27526
		..accept Journey's End##27527
	step
		goto 25.4,19.8
		.kill Omasum Blighthoof##45867 |q 27525/1
	step
		goto 31.4,20.3
		.' All around Plaguewood, do the following:
		.from Overstuffed Golem##45851+
		.' Use your Crusader's Torch on their corpses |use Crusader's Torch##61369
		.' Burn 8 Overstuffed Golem Corpses |q 27528/1
		.from Cursed Mage##8524+, Scourge Soldier##8523+
		.get 16 Stinking Skull |q 27539/1
		.from Cannibal Ghoul##8530+
		.talk Darrowshire Spirit##11064 |tip They spawn after you kill Cannibal Ghouls.
		.' Free 8 Darrowshire Spirits |q 27529/1
	step
		goto 28.5,25.9
		.talk Tarenar Sunstrike##45729
		..turnin Guardians of Stratholme##27525
	step
		goto 27.6,20.9
		.talk Crusader Kevin Frost##45831
		..turnin Scourged Mass##27528
		..turnin Defenders of Darrowshire##27529
		..turnin Add 'em to the Pile##27539
		..accept The Corpsebeasts##27530
	step
		ding 44
	step
		goto 28.3,32.3
		.' Use your Argent Lightwell Charm next to the big brown monster corpses |use Argent Lightwell Charm##61375 |tip You will have to put 3 around each corpse, and you can't put them too close together.
		.' Destroy 3 Corpsebeasts |q 27530/1
	step
		goto 27.6,20.9
		.talk Crusader Kevin Frost##45831
		..turnin The Corpsebeasts##27530
	step
		goto 17.7,28.0
		.talk Argent Apothecary Judkins##45828
		..turnin The Plaguewood Tower##27532
		..accept Counter-Plague Research##27531
		..accept Just a Little Touched##27535
	step
		goto 25.1,34.5
		.click Flesh Giant Foot##8077
		.get Flesh Giant Foot Scrapings |q 27531/3
	step
		goto 23.5,22.4
		.click Rotberry Bush##28+
		.get 20 Rotberry |q 27531/1
		.click Disembodied Arm##8373+
		.get 5 Disembodied Arm |q 27531/2
	step
		goto 17.7,28.0
		.talk Argent Apothecary Judkins##45828
		..turnin Counter-Plague Research##27531
	step
		goto 11.3,28.6
		.talk Augustus the Touched##12384
		..turnin Just a Little Touched##27535
		..accept A Fate Worse Than Butchery##27533
		..accept Augustus' Receipt Book##27534
	step
		goto 14.2,26.3
		.click Augustus' Receipt Book##4872
		.get Augustus' Receipt Book |q 27534/1
	step
		goto 14.4,28.5
		.kill 9 Plagued Swine##16117+ |q 27533/1
	step
		goto 11.3,28.6
		.talk Augustus the Touched##12384
		..turnin A Fate Worse Than Butchery##27533
		..turnin Augustus' Receipt Book##27534
	step
		'Use Gidwin's Hearthstone |use Gidwin's Hearthstone##61379
		.' Teleport to Light's Hope Chapel |goto 75.6,52.4,0.5 |noway |c
	step
		goto 73.7,52.1
		.talk Fiona##45417
		..turnin Journey's End##27527
	step //89
	label	"Annals"
		goto 76.1,51.0
		.talk Lord Raymond George##49856
		|tip These are dungeon quests. If you are not high level, you will need to get a group to continue.
		..accept Annals of the Silver Hand##28755 |repeatable
	step //90
		goto 27.8,11.6
		.' Enter Stratholme through this portal
		.' Teleport to Stratholme |goto Stratholme |noway |c
	step //91
		goto Stratholme,32.1,34.6
		.click The Bastion Door##444
		.' Enter the hallway |goto Stratholme,30.5,35.8,0.5 |c
	step //92
		goto Stratholme,22.4,56.6
		.click Hall of the High Command Door##444
		.' Enter the Hallway and turn left |goto 20.1,59.5,0.5 |noway |c
	step //93
		goto Stratholme,27.5,74.7
		.click Annals of the Silver Hand##8133
		.get Annals of the Silver Hand |q 28755/1
	step //95
		goto Eastern Plaguelands,76.2,51.0
		.talk Lord Raymond George##49856
		..turnin Annals of the Silver Hand##28755 |repeatable |next "Annals" |only if rep('Argent Dawn')<=Exalted |tip If you do not reset your instance then you will only be forced to clear mobs one time.
		.' Earn Exalted reputation with the Argent Dawn |condition rep('Argent Dawn')==Exalted |next "exalted" |only if rep('Argent Dawn')==Exalted
	step //96
	label exalted
		.' Congratulations, you are now Exalted with the _Argent Dawn_!
]])

--------------------------------------------------------------------------------------------------------------------------------------
-- Leveling Outland
--------------------------------------------------------------------------------------------------------------------------------------
ZygorGuidesViewer:RegisterInclude("Hellfire_Peninsula",[[
	step
		goto Blasted Lands,59.4,14.9
		.talk Bernie Heisten##3546
		.buy 1 Nethergarde Bitter##23848 |q 9563 |future
	step
		goto 54.7,50.5
		.talk Watch Commander Relthorn Netherwane##16841
		..accept Through the Dark Portal##10119
	step
		goto 55.0,54.0 |n
		.' Go into the big green portal to the Outlands |goto Hellfire Peninsula |noway |c
	step
		goto Hellfire Peninsula,87.3,50.7
		.talk Commander Duron##19229
		..turnin Through the Dark Portal##10119
		..accept Arrival in Outland##10288
	step
		goto 87.4,52.4
		.talk Amish Wildhammer##18931
		..turnin Arrival in Outland##10288
		..accept Journey to Honor Hold##10140
	step
		|fly Honor Hold
	step
		goto 54.5,62.8
		.talk Marshal Isildor##19308
		..turnin Journey to Honor Hold##10140
		..accept Force Commander Danath##10254
	step
		goto 54.2,63.6
		.talk Sid Limbardi##16826
		.home Honor Hold
	step
		goto 56.6,66.7
		.talk Force Commander Danath Trollbane##16819
		..turnin Force Commander Danath##10254
		..accept The Legion Reborn##10141
		..accept Know your Enemy##10160
	step
		goto 51.2,60
		.talk Dumphry##21209
		..accept Waste Not, Want Not##10055
	step
		goto 50.9,60.2
		.talk Lieutenant Amadi##16820
		..turnin Know your Enemy##10160
		..accept Fel Orc Scavengers##10482
	step
		goto 61.7,60.8
		.talk Sergeant Altumus##19309
		..turnin The Legion Reborn##10141
		..accept The Path of Anguish##10142
	step
		goto 60.4,52.1
		.' Click the Salvaged Metal and Wood|They are scraps on the ground around this area.
		.get 8 Salvaged Metal##182797 |q 10055/1
		.get 8 Salvaged Wood##182799 |q 10055/2
		.kill 20 Bonechewer Orcs |q 10482/1
		'|from Bonechewer Evoker##19701, Bonechewer Raider##16925, Bonechewer Mutant##16876, Bonechewer Scavenger##18952
		|model Salvageable Wood##6481
		|model Salvageable Metal##6999
	step
		goto 65.8,54.1
		.' Be on the lookout for the giant Fel Reaver
		.kill 1 Dreadcaller##19434 |q 10142/1
		.kill 4 Flamewaker Imp##19136+ |q 10142/2
		.kill 6 Infernal Warbringer##19261+ |q 10142/3
	step
		goto 61.7,60.8
		.talk Sergeant Altumus##19309
		..turnin The Path of Anguish##10142
		..accept Expedition Point##10143
	step
		goto 51.2,60
		.talk Dumphry##21209
		..turnin Waste Not, Want Not##10055
		..accept Laying Waste to the Unwanted##10078
	step
		goto 50.9,60.2
		.talk Lieutenant Amadi##16820
		..turnin Fel Orc Scavengers##10482
		..accept Ill Omens##10483
	step
		goto 71.3,62.8
		.talk Forward Commander Kingston##19310
		..turnin Expedition Point##10143
		..accept Disrupt Their Reinforcements##10144
	step
		goto 72.0,59.6
		.kill the demons here|n
		.collect 4 Demonic Rune Stone##28513|q 10144
		'|from Wrathguard##18975, Doomwhisperer##18981
	step
		goto 72.7,59
		.' Stand inside the portal and click it to destroy it |q 10144/2
	step
		goto 71.7,56.4
		.kill the demons here|n
		.collect 4 Demonic Rune Stone##28513|q 10144
		'|from Wrathguard##18975, Doomwhisperer##18981
	step
		goto 71.4,55.2
		.' Stand inside the portal and click it to destroy it |q 10144/1
	step
		goto 71.3,62.8
		.talk Forward Commander Kingston##19310
		..turnin Disrupt Their Reinforcements##10144
		..accept Mission: The Murketh and Shaadraz Gateways##10146
	step
		goto 71.4,62.5
		.talk Wing Commander Dabir'ee##19409
		.' Take the flight
		.' Click the bomb in your bags, bomb Gateway Shaadraz |q 10146/2|use Seaforium PU-36 Explosive Nether Modulator##28038
		.' Click the bomb in your bags, bomb Gateway Murketh |q 10146/1|use Seaforium PU-36 Explosive Nether Modulator##28038
	step
		goto 71.4,62.7
		.talk Forward Commander Kingston##19310
		..turnin Mission: The Murketh and Shaadraz Gateways##10146
		..accept Shatter Point##10340
	step
		goto 71.4,62.5
		.talk Wing Commander Dabir'ee##19409
		..'Fly to Shatter Point|goto Hellfire Peninsula,78.5,35.1,1|noway|c
	step
		goto 78.4,34.9
		.talk Runetog Wildhammer##20234
		.fpath Shatter Point
	step
		goto 78.4,34.9
		.talk Runetog Wildhammer##20234
		..turnin Shatter Point##10340
		..accept Wing Commander Gryphongar##10344
	step
		goto 79.3,33.9
		.talk Wing Commander Gryphongar##20232
		..turnin Wing Commander Gryphongar##10344
		..accept Mission: The Abyssal Shelf##10163
	step
		goto 78.3,34.5
		.talk Gryphoneer Windbellow##20235
		.' Take a flight to the Abyssal Shelf
		.' Use the Area 52 Special bomb in your bags to bomb the mobs|use Area 52 Special##28132|tip If you don't complete this in the first run, you can keep flying until it's done.
		.kill 20 Gan'arg Peon##19398+ |q 10163/1
		.kill 5 Mo'arg Overseer##19397+ |q 10163/2
		.' Destroy 5 Fel Cannons |q 10163/3
		|modelnpc Fel Cannons##19399
	step
		goto 79.3,33.9
		.talk Wing Commander Gryphongar##20232
		..turnin Mission: The Abyssal Shelf##10163
		..accept Go to the Front##10382
	step
		goto 78.3,34.5|n
		.talk Gryphoneer Windbellow##20235 |tip Right next to an Armored Gryphon Destroyer.
		..'Fly to Honor Point|goto Hellfire Peninsula,68.7,28.2,1|noway|c
	step
		goto 68.3,28.6
		.talk Field Marshal Brock##20793
		..turnin Go to the Front##10382
	step
		'Hearth to Honor Hold|goto Hellfire Peninsula,54.3,63.6,0.5|use Hearthstone##6948|noway|c
	step
		goto 54.3,63.6
		.talk Father Malgor Devidicus##16825
		..accept An Old Gift##10058
	step
		goto 54.3,63.6
		.talk Sid Limbardi##16826
		..accept The Longbeards##9558
	step
		goto 56.7,66.5
		.talk Warp-Scryer Kryv##16839
		..accept The Path of Glory##10047
	step
		goto 50.9,60.2
		.talk Honor Guard Wesilow##16827
		..accept Unyielding Souls##10050
	step
		goto 52,62.6
		.talk Foreman Biggums##16837
		..accept A Job for an Intelligent Man##9355
		..accept When This Mine's a-Rockin'##10079
	step
		'Go inside the mine to 54.9,62.9|goto 54.9,62.9
		.kill 12 Gan'arg Sapper##18827+ |q 10079/1
	step
		'Go outside the mine to 52,62.6|goto 52,62.6
		.talk Foreman Biggums##16837
		..turnin When This Mine's a-Rockin'##10079
		..accept The Mastermind##10099
	step
		'Go inside the mine to 56.3,61.4|goto 56.3,61.4
		.kill Z'kral##18974 |q 10099/1|tip He is all the way at the bottom of the mine
	step
		'Go outside the cave to 52,62.6|goto 52,62.6
		.talk Foreman Biggums##16837
		..turnin The Mastermind##10099
	step
		goto 66.1,48.8
		.click Trampled Skeletons |tip They are very easy to miss, but once you find one you will find them really fast.
		.' Cleanse 8 Trampled Skeletons |q 10047/1
	step
		goto 58.7,47
		.' Use your Flaming Torch on the Eastern Thrower to burn it |q 10078/1|use Flaming Torch##26002|tip It's a big catapult.
	step
		goto 55.9,46.7
		.' Use your Flaming Torch on the Central Eastern Thrower to burn it |q 10078/2|use Flaming Torch##26002|tip It's a big catapult.
	step
		goto 53.5,47.2
		.' Use your Flaming Torch on the Central Western Thrower to burn it |q 10078/3|use Flaming Torch##26002|tip It's a big catapult.
	step
		goto 52.8,47.1
		.' Use your Flaming Torch on the Western Thrower to burn it |q 10078/4|use Flaming Torch##26002|tip It's a big catapult.
	step
		goto 65.8,67.2
		.kill Bleeding Hollow orcs|n
		.get Cursed Talisman|q 10483/1
		'|from Bleeding Hollow Tormentor##19424+, Bleeding Hollow Peon##16907+,Bleeding Hollow Grunt##16871+
	step
		goto 71,63.4
		.talk Corporal Ironridge##21133
		..turnin Ill Omens##10483
		..accept Cursed Talismans##10484
	step
		goto 55,86.8
		.click Mysteries of the Light##6845
		.get Mysteries of the Light |q 10058/1
	step
		goto 58,79
		.kill 10 Unyielding Sorcerer##16905+ |q 10050/2
		.kill 5 Unyielding Knight##16906+ |q 10050/3
		.kill 12 Unyielding Footman##16904+ |q 10050/1
	step
		goto 49.2,74.8
		.talk "Screaming" Screed Luckheed##19367
		..accept In Case of Emergency...##10161
		.talk Legassi##19344
		..accept Ravager Egg Roundup##9349
	step
		goto 41.2,84.4
		.click Ravager Egg##1867
		.from Razorfury Ravagers##16933 
		.get 12 Ravager Egg |q 9349/1
	step
		goto 49.2,74.8
		.talk Legassi##19344
		..turnin Ravager Egg Roundup##9349
		..accept Helboar, the Other White Meat##9361
	step
		goto 50.2,74.8
		.from Deranged Helboar##16863
		.get Tainted Helboar Meat|n
		.' Use your Purification Mixture on the Tainted Helboar Meat|use Purification Mixture##23268|tip The meat won't become purified every time, it can become toxic as well.
		.get 8 Purified Helboar Meat|q 9361/1
	step
		goto 49.2,74.8
		.talk Legassi##19344
		..turnin Helboar, the Other White Meat##9361
		..accept Smooth as Butter##9356
	step
		goto 58.1,71.3
		.from Bonestripper Buzzard##16972+
		.get 12 Plump Buzzard Wing |q 9356/1
		.click Zeppelin Debris##7000
		.get 30 Zeppelin Debris |q 10161/1
	step
		goto 49.2,74.8
		.talk "Screaming" Screed Luckheed##19367
		..turnin In Case of Emergency...##10161
		..accept Voidwalkers Gone Wild##9351
		.talk Legassi##19344
		..turnin Smooth as Butter##9356
	step
		goto 47.8,65.8
		.kill 15 Marauding Crust Burster##16857+ |q 9355/1|tip They are under the jumping piles of rocks, they come up to fight when you get close to the jumping rocks.
		.get Eroded Leather Case|n
		.' Click the Eroded Leather Case |use Eroded Leather Case##23338
		..accept Missing Missive##9373
	step
		goto 52,62.6
		.talk Foreman Biggums##16837
		..turnin A Job for an Intelligent Man##9355
	step
		goto 51.2,60
		.talk Dumphry##21209
		..turnin Laying Waste to the Unwanted##10078
	step
		goto 50.9,60.2
		.talk Honor Guard Wesilow##16827
		..turnin Unyielding Souls##10050
		..accept Looking to the Leadership##10057
	step
		goto 54.3,63.4
		.talk Father Malgor Devidicus##16825
		..turnin An Old Gift##10058
	step
		goto 56.7,66.5
		.talk Warp-Scryer Kryv##16839
		..turnin The Path of Glory##10047
		..accept The Temple of Telhamat##10093
	step
		ding 61
	step
		goto 23.1,40.3
		.talk Anchorite Obadei##16834
		..accept In Search of Sedai##9390
		.talk Ikan##16799
		..accept Cruel Taskmasters##9399
	step
		goto 23.4,39.7
		.talk Scout Vanura##16797
		..accept Deadly Predators##9398
	step
		goto 23.4,36.5
		.talk Amaan the Wise##16796
		..turnin The Temple of Telhamat##10093
		..accept The Pools of Aggonar##9426
	step
		goto 23.4,36.4
		.talk Caregiver Ophera Windfury##18906
		.home Temple of Telhamat
	step
		goto 26.9,37.4
		.clicknpc Sedai's Corpse##16852
		..turnin In Search of Sedai##9390
		..accept Return to Obadei##9423
	step
		goto 23.1,40.3
		.talk Anchorite Obadei##16834
		..turnin Return to Obadei##9423
		.talk Makuru##16833
		..accept Makuru's Vengeance##9424
	step
		goto 36.3,34.6
		.from Mag'har Grunts##16846+, Debilitated Mag'har Grunt##16847+
		.get 10 Mag'har Ancestral Beads|q 9424/1
	step
		goto 40.2,34.2
		.kill 6 Terrorfiend##16951 |q 9426/1
		.kill 6 Blistering Rot##16901 |q 9426/2
	step
		goto 23.1,40.3
		.talk Makuru##16833
		..turnin Makuru's Vengeance##9424
		.talk Anchorite Obadei##16834
		..accept Atonement##9543
	step
		goto 23.4,36.5
		.talk Amaan the Wise##16796
		..turnin Atonement##9543
		..accept Sha'naar Relics##9430
		..turnin The Pools of Aggonar##9426
		..accept Cleansing the Waters##9427
		..accept Helping the Cenarion Post##10443
	step
		goto 23.2,36.7
		.talk Elsaana##17006
		..accept An Ambitious Plan##9383
	step
		goto 40.3,30.9
		.' Get close to the ribcage of the skeleton and next to the poisoned water
		.' Empty your Cleansing Vial in this spot|use Cleansing Vial##23361
		.kill Aggonis##17000 |q 9427/1
	step
		goto 23.4,36.5
		.talk Amaan the Wise##16796
		..turnin Cleansing the Waters##9427
	step
		goto 15.7,52
		.talk Thiah Redmane##16991
		..turnin Missing Missive##9373
		..turnin Helping the Cenarion Post##10443
		..accept Demonic Contamination##9372
	step
		goto 18.4,54.7
		.from Hulking Helboar##16880+
		.get 6 Helboar Blood Sample |q 9372/1
	step
		goto 15.7,52
		.talk Thiah Redmane##16991
		..turnin Demonic Contamination##9372
		..accept Testing the Antidote##10255
	step
		goto 25,54
		.' Use the Cenarion Antidote on a Hulking Helboar |use Cenarion Antidote##23337
		.' Administer the Antidote |q 10255/1
		|modelnpc Hulking Helboar##16880
		|modelnpc Dreaktusk##16992
	step
		goto 15.7,52
		.talk Thiah Redmane##16991
		..turnin Testing the Antidote##10255
	step
		goto 15.6,58.8
		.talk Akoru the Firecaller##20678
		..accept Naladu##10403
	step
		goto 16.3,65.1
		.talk Naladu##19361
		..turnin Naladu##10403
		..accept A Traitor Among Us##10367
	step
		goto 14.3,63.5
		.click Metal Coffer##10
		.get Sha'naar Key|q 10367/1
	step
		goto 16.3,65.1
		.talk Naladu##19361
		..turnin A Traitor Among Us##10367
		..accept The Dreghood Elders##10368
	step
		goto 15.6,58.8
		.talk Akoru the Firecaller##20678
		.' Tell the elder to walk free |q 10368/2
	step
		goto 13,58.4
		.talk Aylaan the Waterwaker##20679
		.' Tell the elder to walk free |q 10368/3
	step
		goto 13.1,61
		.talk Morod the Windstirrer##20677
		.' Tell the elder to walk free |q 10368/1
	step
		goto 16.3,65.1
		.talk Naladu##19361
		..turnin The Dreghood Elders##10368
		..accept Arzeth's Demise##10369
	step
		goto 14.4,62.3
		.' Wait until Arzeth the Merciless is up top of the stairs by himself
		.' Use the Staff of the Dreghood Elders on Arzeth the Merciless|use Staff of the Dreghood Elders##29513
		.kill Arzeth the Powerless##20680 |q 10369/1
	step
		goto 16.3,65.1
		.talk Naladu##19361
		..turnin Arzeth's Demise##10369
	step
		goto 15.0,58.3
		.kill 4 Illidari Taskmaster##17058+ |q 9399/1 |tip If you kill the taskmaster first, his slaves leave you alone.
		.click Sha'naar Relic##6840+
		.get Sha-naar Relic |q 9430/1 
	step
		goto 24,72.1
		.talk Gremni Longbeard##16850
		..turnin The Longbeards##9558
		..accept The Arakkoa Threat##9417
		..accept Rampaging Ravagers##9385
	step
		goto 24.0,72.3
		.talk Mirren Longbeard##16851
		..accept Gaining Mirren's Trust##9563
		..turnin Gaining Mirren's Trust##9563
		..accept The Finest Down##9420
	step
		goto 26.1,75.9
		.kill 4 Haal'eshi Windwalker##16966+ |q 9417/1
		.kill 6 Haal'eshi Talonguard##16967+  |q 9417/2
		.click Kaliri Nest##7143+
		.from Male Kaliri Hatchling##17039+, Kaliri Swooper##17053+, Female Kaliri Hatchling##17034+, Kaliri Matriarch##17035+
		.get 8 Kaliri Feather|q 9420/1
	step
		goto 26.1,77.1|n
		.' The path up to Avruu starts here|goto Hellfire Peninsula,26.1,77.1,0.5|noway|c
	step
		goto 25.7,75.1
		.from Avruu##17084
		.collect 1 Avruu's Orb
		.' Click Avruu's Orb |use Avruu's Orb##23580
		..accept Avruu's Orb##9418
	step
		goto 29,81.5
		.click Haal'eshi Altar##6964
		.' Place Avruu's Orb on the Altar
		.' Fight Aeranas until he's almost dead
		.talk Aeranas##17085
		..turnin Avruu's Orb##9418
	step
		goto 24,72.1
		.talk Gremni Longbeard##16850
		..turnin The Arakkoa Threat##9417
		.talk Mirren Longbeard##16851
		..turnin The Finest Down##9420
	step
		goto 23.7,69.2
		.from 10 Quillfang Ravager##16934+, Quillfang Skitterer##19189 |q 9385/1
	step
		goto 24,72.1
		.talk Gremni Longbeard##16850
		..turnin Rampaging Ravagers##9385
	step
		goto 30.3,61.2
		.kill 8 Stonescythe Whelp##16927+ |q 9398/2
	step
		goto 32.1,59.3
		.kill 4 Stonescythe Alpha##16929+ |q 9398/1
		.' You can find 2 more Stonescythe Alphas at [Hellfire Peninsula,33.7,62.1]
	step
		goto 49.5,81.8
		.from Rogue Voidwalker##16974+, Uncontrolled Voidwalker##16975+
		.get 10 Condensed Voidwalker Essence|q 9351/1
		.' Use your Sanctified Crystal on an Uncontrolled Voidwalker when it's almost dead|use Sanctified Crystal##23417
		.click glowing Crystal##327
		.get Glowing Sanctified Crystal|q 9383/1
	step
		goto 53.6,81.1
		.kill Arch Mage Xintor##16977 |q 10057/1
	step
		goto 54.7,83.7
		.kill Lieutenant Commander Thalvos##16978 |q 10057/2
	step
		goto 49.2,74.8
		.talk "Screaming" Screed Luckheed##19367
		..turnin Voidwalkers Gone Wild##9351
	step
		'Hearth to the Temple of Telhamat|goto Hellfire Peninsula,23.4,37.2,3|use Hearthstone##6948|noway|c
	step
		goto 23.4,36.5
		.talk Amaan the Wise##16796
		..turnin Sha'naar Relics##9430
		..accept The Seer's Relic##9545
		.talk Elsaana##17006
		..turnin An Ambitious Plan##9383
	step
		goto 23.4,39.7
		.talk Scout Vanura##16797
		..turnin Deadly Predators##9398
	step
		goto 23.1,40.3
		.talk Ikan##16799
		..turnin Cruel Taskmasters##9399
	step
		goto 26.9,37.4
		.' Use the Seer's Relic on Sedai's Corpse |use Seer's Relic##23645
		.' See the vision |q 9545/1
		|modelnpc Sedai's Corpse##16852
	step
		goto 23.4,36.5
		.talk Amaan the Wise##16796
		..turnin The Seer's Relic##9545
	step
		|fly Honor Hold
	step
		goto 50.9,60.2
		.talk Honor Guard Wesilow##16827
		..turnin Looking to the Leadership##10057
	step
		goto 67.9,73.2
		.from Bleeding Hollow Peon##16907+, Bleeding Hollow Grunt##16871+, Bleeding Hollow Dark Shaman##16873+, Bleeding Hollow Necrolyte##19422+,  Bleeding Hollow Tormentor##19424+
		.get 12 Cursed Talisman |q 10484/1
	step
		ding 62
	step
		goto 71,63.4
		.talk Corporal Ironridge##21133
		..turnin Cursed Talismans##10484
		..accept Warlord of the Bleeding Hollow##10485
	step
		goto 71.3,62.8
		.talk Wing Commander Dabir'ee##19409
		..accept Zeth'Gor Must Burn!##10895
	step
		goto 70.1,69.1
		.' Use your Smoke Beacon under the tower|use Smoke Beacon##31739
		.' Mark the Forge Tower|q 10895/3
	step
		goto 70.9,71.3
		.' Use your Smoke Beacon under the tower|use Smoke Beacon##31739
		.' Mark the Foothill Tower |q 10895/4
	step
		goto 70.1,76.9
		.from Warlord Morkh##16964
		.get Morkh's Shattered Armor|q 10485/1
	step
		goto 66.4,76.6
		.' Use your Smoke Beacon under the tower|use Smoke Beacon##31739
		.' Mark the Southern Tower |q 10895/2
	step
		goto 67.9,67
		.' Use your Smoke Beacon under the tower|use Smoke Beacon##31739
		.' Mark the Northern Tower |q 10895/1
	step
		goto 71,63.4
		.talk Corporal Ironridge##21133
		..turnin Warlord of the Bleeding Hollow##10485
		..accept Return to Honor Hold##10903
	step
		goto 71.3,62.8
		.talk Wing Commander Dabir'ee##19409
		..turnin Zeth'Gor Must Burn!##10895
	step
		goto 54.3,63.6
		.talk Assistant Klatu##22430
		..turnin Return to Honor Hold##10903
		..accept Fel Spirits##10909
		..accept Digging for Prayer Beads##10916
	step
		goto 54.2,63.3
		.click Fei Fei's Cache##20
		.get Draenei Prayer Beads|q 10916/1
	step
		goto 45,75
		.' Use the Anchorite Relic in your bags |use Anchorite Relic##31772
		.' Pull orcs to the relic
		.' Kill the orcs and a Fel Spirit will spawn
		.from Fel Spirit##22454+
		.' Jules Avenged |q 10909/1
		|modelnpc Shattered Hand Berserker##16878
	step
		goto 54.3,63.6
		.talk Assistant Klatu##22430
		..turnin Fel Spirits##10909
		..turnin Digging for Prayer Beads##10916
		..accept The Exorcism of Colonel Jules##10935
	step
		goto 54.0,63.5
		.talk Anchorite Barada##22431
		..'Click 'I am ready...'
		..'Target the purple skulls and oozes
		..'Use the Ritual Prayer Beads when enemies are in the room |use Ritual Prayer Beads##31828
		..'After the exorcism is done, talk to Colonel Jules on the bed to save him |q 10935/1
		|modelnpc Colonel Jules##22432
		|modelnpc Darkness Released##22507
		|modelnpc Foul Purge##22506
	step
		goto 54.3,63.6
		.talk Assistant Klatu##22430
		..turnin The Exorcism of Colonel Jules##10935
		..accept Trollbane is Looking for You##10936
	step
		goto 56.6,66.7
		.talk Force Commander Danath Trollbane##16819
		..turnin Trollbane is Looking for You##10936
	step
		'Hearth to the Temple of Telhamat|goto Hellfire Peninsula,23.4,36.4,0.5|use Hearthstone##6948|noway|c
	step
		goto 16.0,52.2
		.talk Amythiel Mistwalker##16885
		..accept The Cenarion Expedition##9912
		.talk Mahuram Stouthoof##16888
		..accept Keep Thornfang Hill Clear!##10159
	step
		goto 10.1,53.2
		.kill 8 Thornfang Ravager##19349+ |q 10159/1
		.kill 8 Thornfang Venomspitter##19350+ |q 10159/2
	step
		goto 15.7,52
		.talk Mahuram Stouthoof##16888
		..turnin Keep Thornfang Hill Clear!##10159
]])
ZygorGuidesViewer:RegisterInclude("A_Sporeggar_Faction",[[
		author support@zygorguides.com
	step
		goto Zangarmarsh,19.1,64.2
		.talk Fahssn##17923
		.accept The Sporelings' Plight##9739
		.accept Natural Enemies##9743
		.' turn in these two quests 4 times to go from unfriend to friendly.
		|only if rep('Sporeggar')<=Neutral
	step
		goto 16.0,60.3
		.from Starving Fungal Giant##18125+, Starving Bog Lord##19519+
		.get 6 Bog Lord Tendril##24291 |q  9743/1
		.click Mature Spore Sac##6911+
		.get 10 Mature Spore Sac##24290 |q 9739/1 |tip They are on the ground throughout the area.
		|only if rep('Sporeggar')<=Neutral
	step
		goto Zangarmarsh,19.1,64.2
		.talk Fahssn##17923
		.turnin The Sporelings' Plight##9739 |repeatable
		..turnin Natural Enemies##9743 |repeatable
		|only if rep('Sporeggar')<=Neutral
	step
		goto 16.0,60.3
		.from Starving Fungal Giant##18125+, Starving Bog Lord##19519+
		.collect 6 Bog Lord Tendril##24291+ |n
		.click Mature Spore Sac##6911+
		.collect 10 Mature Spore Sac##24290 |n |tip They are on the ground throughout the area.
		.' Turn in 10 Spore Sacs or 6 Bog Lord Tendrils at a time here: [19.0,63.3]
		.' Reach Friendly with Sporeggar |condition rep('Sporeggar')>=Friendly
	step
		goto Zangarmarsh,19.1,64.2
		.talk Fahssn##17923
		..accept Sporeggar##9919
	step
		goto 19.7,52.0
		.talk Msshi'fn##17924
		..turnin Sporeggar##9919
	step
		.' Once you have reached friendly, you can farm the quest Now That We're Friends... and Bring Me A Shrubbery!  Grinding mobs at The Spawning Glen no longer will give you reputation.
		.' Collecting 265 Sanguine Hibiscus from The Underbog will give you enough 
		.' Click here if you want to grind out Sanguine Hibiscus. |confirm always |next "hibiscus_1"
		.' or
		.' Click here if you want to grind Naga mobs.|confirm always |next "grind_1"
	step
	label	"hibiscus_1"
		goto 50.3,40.9 |n
		.' Swim down through the pipe underwater to the other side. |goto 51.9,38.1,1 |c
	step
		goto Zangarmarsh,54.2,34.4 |n
		.' Enter the Underbog |goto Zangarmarsh,54.2,34.4,0.5 |noway |c
	step
		goto The Underbog 31.6,65.4
		.talk T'shu##54674
		..accept Bring Me A Shrubbery!##29691
		..accept Stalk the Stalker##29567
	step
	label	"hibiscus"
		.' You can find the Sanguine Hibiscus on the ground scattered through out the instance.
		.' You can also get Sanguine Hibiscus from Underbat, Underbog Lurkers, Underbog Shamblers, Bog Overlords, Bog Giants and Underbog Lords.
		.collect Sanguine Hibiscus##24246 |n
		.' You need 5 Sanguine Hibiscus for 750 Reputation.
		.' 40 Sanguine Hibiscus = 6,000 Reputation.
		.' 80 Sanguine Hibiscus = 12,000 Reputation.
		.' Click when you are ready to turn in |confirm always
	step
		goto The Underbog 25.7,44.1
		.from The Black Stalker##17882+
		.get Brain of the Black Stalker |q 29567/1
	step
		goto The Underbog 31.6,65.4
		.talk T'shu##54674
		..turnin Bring Me A Shrubbery!##29691
		..turnin Stalk the Stalker##29567
	step
	label	"hibiscus_r"
		goto The Underbog 31.6,65.4
		.talk T'shu##54674
		.accept Bring Me Another Shrubbery!##9714 |instant |repeatable |or
		.' or
		.' Click here to go farming for more _Sanguine Hibiscus_ |confirm always |next "hibiscus" |or
		.' or
		.' Click here if you would like to farm Naga for more reputation |confirm always |next "grind_1" |or
	step
		goto 19.5,50.0
		.talk Gzhun'tt##17856
		.turnin Bring Me A Shrubbery!##9715
		|next "hibiscus_r" |only if rep('Sporeggar')<=Revered
		|next "exalted" |only if rep('Sporeggar')==Exalted
		|only if havequest(9715)
	step
		goto 19.5,50.0
		.talk Gzhun'tt##17856
		.turnin Bring Me Another Shrubbery!##9714
		|next "hibiscus_r" |only if rep('Sporeggar')<=Revered
		|next "exalted" |only if rep('Sporeggar')==Exalted
		|only if havequest(9714)
	step
	label	"grind_1"
		goto Zangarmarsh 19.5,50.0
		.talk Gzhun'tt##17856
		.accept Now That We're Friends...##9726
		|only if rep('Sporeggar')>=Friendly
		|next "grind_2"
	step
	label	"grind_r"
		goto 19.5,50.0
		.talk Gzhun'tt##17856
		..accept Now That We're Still Friends...##9727 |repeatable |next "grind"|or
		.' or 
		.' Click here to go farming for _Sanguine Hibiscus_ |confirm |next "hibiscus_1" |or 
		|only if rep('Sporeggar')>=Friendly
	step
	label	"grind_2"
		goto Zangarmarsh,26.9,41.7
		.kill 12 Bloodscale Slavedriver##18089+ |q 9726/1
		.kill 6 Bloodscale Enchantress##18088+ |q 9726/2
		|only if havequest(9726)
		|next "grind_3"
	step
	label	"grind"
		goto Zangarmarsh,26.9,41.7
		.kill 12 Bloodscale Slavedriver##18089+ |q 9727/1 |repeatable
		.kill 6 Bloodscale Enchantress##18088+ |q 9727/2 |repeatable
		|only if havequest(9727)
		|next "grind_4"
	step
	label	"grind_3"
		goto 19.5,50.0
		.talk Gzhun'tt##17856
		.turnin Now That We're Friends...##9726
		|next "grind_r" |only if rep('Sporeggar')<=Revered
		|next "exalted" |only if rep('Sporeggar')==Exalted
		|only if havequest(9726)
	step
	label	"grind_4"
		goto 19.5,50.0
		.talk Gzhun'tt##17856
		.turnin Now That We're Still Friends...##9727
		|next "grind_r" |only if rep('Sporeggar')<=Revered
		|next "exalted" |only if rep('Sporeggar')==Exalted
		|only if havequest(9727)
	step
	label	"exalted"
		.' Congratulations, you are now exalted with Sporeggar!
]])
ZygorGuidesViewer:RegisterInclude("A_Kurenai_Faction",[[
		author support@zygorguides.com
	step
		goto Zangarmarsh,41.9,27.2
		.talk Ikuti##18008
		..accept Ango'rosh Encroachment##9835
		..accept Daggerfen Deviance##10115
	step
		goto 41.7,27.3
		.click Wanted Poster##6901
		..accept Wanted: Chieftain Mummaki##10116
	step
		goto 26.4,22.8
		.click Daggerfen Poison Vial |tip Little clear bottle with white liquid in it, sitting on the ground next to a hut.
		.get Daggerfen Poison Vial |q 9848/2
		.' It can also be at [25.4,25.0]
	step
		goto 24.4,27.0
		.click Daggerfen Poison Manual |tip At the top of the big tower, to the right as you reach the top, on the floor.
		.get Daggerfen Poison Manual|q 9848/1
	step
		goto 23.8,26.8
		.from Chieftain Mummaki##19174
		.get Chieftain Mummaki's Totem|q 10116/1
	step
		goto 28.2,22.1
		.kill 3 Daggerfen Assassin##18116 |q 10115/1
		.kill 15 Daggerfen Muckdweller##18115 |q 10115/2
	step
		goto 34.6,29.7
		.kill 5 Ango'rosh Shaman##18118 |q 9835/1
		.kill 10 Ango'rosh Ogre##18117 |q 9835/2
	step
		goto 42.0,27.2
		.talk Ikuti##18008
		..turnin Wanted: Chieftain Mummaki##10116
		..turnin Ango'rosh Encroachment##9835
		..turnin Daggerfen Deviance##10115
		..accept Overlord Gorefist##9839
	step
		goto 40.8,28.7
		.talk Puluu##18009
		..accept Stinger Venom##9830
		..accept Lines of Communication##9833
		..accept The Terror of Marshlight Lake##9902
	step
		goto 41.6,27.3
		.talk Maktu##18010
		..accept Natural Armor##9834
	step
		goto 48.1,38.4
		.from Fenclaw Thrasher##18214
		.get 8 Fenclaw Hide##24486 |q 9834/1
	step
		goto 50.4,40.8
		.' Locate the drain in Serpent Lake |q 9731/1 |tip Swim straight down at this spot.
	step
		goto 35.9,58.6
		.kill 12 Marshfang Slicer##18131 |q 9833/1
	step
		goto 22.4,46.1
		.kill Terrorclaw##20477 |q 9902/1 |tip On a little island.
	step
		goto 17.3,38.4
		.from Marshlight Bleeder##18133 |tip They are all around this area on the land, to the north and south.
		.get 6 Marshlight Bleeder Venom |q 9830/1
		.' You'll be able to find more around [Zangarmarsh,19.6,33.3]
	step
		goto 17.3,10.2
		.kill 10 Ango'rosh Mauler##18120 |q 9839/2
		.' Click the brown crates and kill ogres around this area
	step
		goto 18.3,7.7
		.kill Overlord Gorefist##18160 |q 9839/1 |tip Follow the path up the hill. Overlord Gorefist is inside the small house on the left.
	step
		goto 40.8,28.7
		.talk Puluu##18009
		..turnin Stinger Venom##9830
		..turnin Lines of Communication##9833
		..turnin The Terror of Marshlight Lake##9902
	step
		goto 41.6,27.3
		.talk Maktu##18010
		..turnin Natural Armor##9834
		..accept Maktu's Revenge##9905
	step
		goto 42.2,41.4
		.kill Mragesh##18286 |q 9905/1
	step
		goto 41.6,27.3
		.talk Maktu##18010
		..turnin Maktu's Revenge##9905
	step
		goto 54.2,70.0
		.talk Huntress Kima##18416
		..accept The Ravaged Caravan##9956
	step
		goto 55.5,68.8
		.talk Elementalist Ioki##18233
		..accept The Throne of the Elements##9869
	step
		goto 55,70.5
		.talk Huntress Bintook##18353
		..accept Do My Eyes Deceive Me##9917
	step
		goto 54.6,70.7
		.click Telaar Bulletin Board##6901
		..accept Wanted: Giselda the Crone##9936
		..accept Wanted: Zorbo the Advisor##9940
	step
		goto 54.7,70.9
		.talk Warden Moi'bff Jill##18408
		..accept Fierce Enemies##10476
	step
		goto 54.5,72.1
		.talk Otonbu the Sage##18222
		..accept Stopping the Spread##9874
	step
		goto 54.5,72.3
		.talk Poli'lukluk the Wiser##18224
		..accept Solving the Problem##9878
	step
		goto 63.1,73.2
		.from Boulderfist Hunter##18352+
		.get Boulderfist Plans|q 9917/1
	step
		goto 71.1,82.4
		.kill Giselda the Crone##18391 |q 9936/1
	step
		goto 67.9,79.3
		.from Kil'sorrow Deathsworn##17148+, Kil'sorrow Spellbinder##17146+, Kil'sorrow Cultist##17147+
		. Kill 10 Kil'sorrow Agents|q 9936/2
	step
		goto 72.6,70.7
		.talk Corki##18369
		..accept HELP!##9923
		.from Boulderfist Crusher##17134+, Boulderfist Mystic##17135+
		.collect 1 Boulderfist Key##25490 |q 9923 |sticky
		.click Corki's Prison##1787
		.' Free Corki |q 9923/1
	step
		goto 60.7,22.1
		.talk Elementalist Sharvak##18072
		..turnin The Throne of the Elements##9869
	step
		goto 48.3,21.5
		.kill 5 Warmaul Shaman##18064+ |q 9940/2
		.kill 5 Warmaul Reaver##17138+ |q 9940/3
		.get 10 Obsidian Warbeads|q 10476/1
	step
		goto 46.5,18.2
		.kill Zorbo the Advisor##18413|q 9940/1
	step
		goto 27.9,29.7
		.click Telaar Supply Crate##6881
		.get 10 Telaar Supply Crate |q 9956/1 
	step
		goto 29.5,43.5
		.kill 10 Murkblood Scavenger##18207+ |q 9878/1
		.kill 5 Murkblood Raider##18203+ |q 9878/2
		.' Use the Torch of Liquid Fire on Sunspring Villager Corpses in the water and the village |use Torch of Liquid Fire##24560
		.' Burn 10 Sunspring Villager Corpses |q 9874/1
		|modelnpc Sunspring Villager##18240+
	step
		goto 54.5,72.3
		.talk Poli'lukluk the Wiser##18224
		..turnin Solving the Problem##9878
	step
		goto 54.5,72.1
		.talk Otonbu the Sage##18222
		..turnin Stopping the Spread##9874
	step
		goto 54.2,70
		.talk Huntress Kima##18416
		..turnin The Ravaged Caravan##9956
	step
		goto 55.5,68.8
		.talk Arechron##18183
		..turnin HELP!##9923
		..accept Corki's Gone Missing Again!##9924
	step
		goto 55,70.5
		.talk Huntress Bintook##18353
		..turnin Do My Eyes Deceive Me##9917
		..accept Not On My Watch!##9918
	step
		goto 54.8,71
		.talk Warden Moi'bff Jill##18408
		..turnin Wanted: Giselda the Crone##9936
		..turnin Wanted: Zorbo the Advisor##9940
		..turnin Fierce Enemies##10476
	step
		goto 62.7,71.4
		.' Fight Lump until he's almost dead |tip Sleeping on the hill.
		.'Talk to Lump and tell him you need answers! |q 9918/1
		|modelnpc Lump##18351
	step
		goto 55,70.5
		.talk Huntress Bintook##18353
		..turnin Not On My Watch!##9918
		..accept Mo'mor the Breaker##9920
	step
		goto 54.6,72.2
		.talk Mo'mor the Breaker##18223
		..turnin Mo'mor the Breaker##9920
		..accept The Ruins of Burning Blade##9921
	step
		goto 72.9,69.8
		.kill 8 Boulderfist Crusher##17134+ |q 9921/1
		.kill 8 Boulderfist Mystic##17135+ |q 9921/2
	step
		goto 54.6,72.2
		.talk Mo'mor the Breaker##18223
		..turnin The Ruins of Burning Blade##9921
		..accept The Twin Clefts of Nagrand##9922
	step
		goto 40.7,35.6
		.kill 10 Boulderfist Warrior##17136+ |q 9922/1
		.kill 10 Boulderfist Mage##17137+ |q 9922/2
		.collect 1 Northwind Cleft Key##25509 |q 9924 |sticky 
	step
		goto 39.3,27.5
		.click Corki's Prison##1787
		.' Free Corki inside the cave |q 9924/1 |tip Inside the cave, way in the back.
	step
		'Go outside to 54.5,72.2|goto 54.6,72.2
		.talk Mo'mor the Breaker##18223
		..turnin The Twin Clefts of Nagrand##9922
		..accept Diplomatic Measures##10108
	step
		goto 55.5,68.8
		.talk Arechron##18183
		..turnin Corki's Gone Missing Again!##9924
	step
		goto 73.8,68.1|n
		'The path up to Lantresor of the Blade starts here|goto Nagrand,73.8,68.1,0.5|noway|c
	step
		goto 73.8,62.6
		.talk Lantressor of the Blade##18261
		..'Listen to his story
		..turnin Diplomatic Measures##10108
		..accept Armaments for Deception##9928
		..accept Ruthless Cunning##9927
	step
		goto 71.4,79.4
		.click Kil'sorrow Armament##6959+
		.get 10 Kil'sorrow Armaments |q 9928/1
		.from Kil'sorrow Deathsworn##17148+, Kil'sorrow Spellbinder##17146+, Kil'sorrow Cultist##17147+
		.' Use your Warmaul Ogre Banners on their corpses |use Warmaul Ogre Banner##25552
		.' Plant 10 Warmaul Ogre Banners|q 9927/1
	step
		goto 73.8,62.6
		.talk Lantresor of the Blade##18261
		..turnin Armaments for Deception##9928
		..turnin Ruthless Cunning##9927
		..accept Returning the Favor##9931
		..accept Body of Evidence##9932
	step
		goto 46.5,24.3
		.from Warmaul Shaman##18064+,Warmaul Reaver##17138+
		.' Use your Kil'sorrow Banners on their corpses |use Kil'sorrow Banner##25555
		.' Plant 10 Kil'sorrow Banners |q 9931/1
		.' Use the Damp Woolen Blanket on the Blazing Warmaul Pyre |use Damp Woolen Blanket##25658
		.' Defend the Boulderfist Saboteurs that appear until they are done placing the corpses |q 9932/1
		|modelnpc Boulderfist Saboteur##18396
	step
		goto 73.8,62.6
		.talk Lantresor of the Blade##18261
		..turnin Returning the Favor##9931
		..turnin Body of Evidence##9932
		..accept Message to Telaar##9933
	step
		goto 55.5,68.8
		.talk Arechron##18183
		..turnin Message to Telaar##9933
	step
		goto 55.5,68.7
		.talk Arechron##18183
		..accept Corki's Ransom##9954
	step
		goto 54.7,70.9
		.talk Warden Moi'bff Jill##18408
		..accept Wanted: Durn the Hungerer##9938
	step
		goto Nagrand,54.8,70.5
		.talk Huntress Kima##18416
		..accept He Called Himself Altruis...##9982
	step
		.' The next few quests are meant to be _group quests_. If you are not high level, you may need at least _3 people_ for these quests.
		.' Click here to proceed |confirm
	step
		map Nagrand
		path follow loose;loop;ants curved
		path	46.7,63.7	40.8,63.5	37.4,62.1
		path	34.0,62.7	31.7,65.4	30.5,71.3
		path	32.0,75.9	35.5,78.5	39.8,78.7
		path	42.4,75.5	46.0,70.2
		.' Follow the path around this are to look for _Durn the Hungerer_
		.kill Durn the Hungerer##18411 |q 9938/1
	step
		goto 27.3,43.1
		.talk Altruis the Sufferer##18417
		..turnin He Called Himself Altruis...##9982 
		..accept Survey the Land##9991 |tip You will fly around on a drake to view The Twilight Ridge.
		..turnin Survey the Land##9991
		..accept Buying Time##9999
	step
		goto 25.2,38.3
		.kill 2 Felguard Legionnaire##17152+ |q 9999/1
		.kill 3 Mo'arg Engineer##16945+ |q 9999/2
		.kill 8 Gan'arg Tinkerer##17151+ |q 9999/3
	step
		goto 27.3,43.1
		.talk Altruis the Sufferer##18417
		..turnin Buying Time##9999
		..accept The Master Planner##10001
	step
		goto 23.6,34.6
		.from Mo'arg Master Planner##18567
		.get The Master Planner's Blueprints |q 10001/1
	step
		goto 27.3,43.1
		.talk Altruis the Sufferer##18417
		..turnin The Master Planner##10001
		..accept Patience and Understanding##10004
	step
		goto 27.0,23.7 |n
		.' Enter the Cave here |goto 27.0,23.7,0.5 |noway |c
	step
		goto 29.5,26.1
		.talk Corki##18445 |tip You may have to fight the 65 Elite standing next to the cage.
		..turnin Corki's Ransom##9954
		..accept Cho'war the Pillager##9955
	step
		goto 27.0,23.7 |n
		.' Leave the cave |goto 27.0,23.7,0.5 |noway |c
	step
		goto 27.2,18.7 |n
		.' Enter the Cave here |goto 27.2,18.7,0.5 |noway |c
	step
		goto Nagrand,25.8,13.8
		.' Follow the path up and around 
		.from Cho'war the Pillager##18423+
		.collect Cho'war's Key##25648 |q 9955
	step
		goto 27.2,18.7 |n
		.' Leave the Cave here |goto 27.2,18.7,0.5 |noway |c
	step
		goto 27.0,23.7 |n
		.' Enter the cave |goto 27.0,23.7,0.5 |noway |c
	step
		goto 29.5,26.1
		.' Click _Corki's_ cage to unlock it
		.' Free Corki |q 9955/1 |tip You may have to fight the 65 Elite standing next to the cage.
	step
		goto 27.0,23.7 |n
		.' Leave the cave |goto 27.0,23.7,0.5 |noway |c
	step
		goto 54.7,70.9
		.talk Warden Moi'bff Jill##18408
		..turnin Wanted: Durn the Hungerer##9938
	step
		goto 55.5,68.7
		.talk Arechron##18183
		..turnin Cho'war the Pillager##9955
	step
		goto Shattrath City,77.3,34.9
		.talk Sal'salabim##18584
		.' Tell him "Altruis sent me. He said that you could help me." |tip He will immediately start attacking you!
		.' Persuad Sal'salabim |q 10004/1
	step
		goto Shattrath City,77.3,34.9
		.talk Sal'salabim##18584
		..turnin Patience and Understanding##10004
		..accept Crackin' Some Skulls##10009
	step
		goto 75.0,31.5
		.talk Raliq the Drunk##18585
		.' Tell him you are here to collect a dept, pay up or you're going to have to hurt him. |tip He will immediately start attacking you!
		.' Collect Raliq's Debt |q 10009/1
	step
		goto Zangarmarsh,80.9,91.1
		.talk Coosh'coosh##18586
		.' Tell him you are here to collect a dept, pay up or you're going to have to hurt him. |tip He will immediately start attacking you!
		.' Collect Coosh'coosh's Debt |q 10009/2
	step
		goto Terokkar Forest,27.2,58.1
		.talk Floon##18588
		.' Tell him you are here to collect a dept, pay up or you're going to have to hurt him. |tip He will immediately start attacking you!
		.' Collect Floon's Debt |q 10009/3
	step
		goto 77.3,34.9
		.talk Sal'salabim##18584
		..turnin Crackin' Some Skulls##10009
		..accept It's Just That Easy?##10010
	step
		goto Nagrand,27.3,43.1
		.talk Altruis the Sufferer##18417
		..turnin It's Just That Easy?##10010
		..accept Forge Camp: Annihilated##10011
	step
		goto Nagrand,25.0,36.1
		.from Demos\,\ Overseer of Hate##18535
		.collect Fel Cannon Activator##25770 |n
		.' Use the Fel Cannon Activator in your bags |use Fel Cannon Activator##25770
		.' Destroy Forge Camp: Hate |q 10011/1
	step
		goto 19.6,51.1
		.from Xirkos\,\ Overseer of Fear##18536
		.collect Fel Cannon Activator##25771 |n
		.' Use the Fel Cannon Activator in your bags |use Fel Cannon Activator##25771
		.' Destoy Forge Camp: Fear |q 10011/2
	step
		goto 27.3,43.1
		.talk Altruis the Sufferer##18417
		..turnin Forge Camp: Annihilated##10011
	step
		.' Once you have completed the above quests, you will have to grind your way to Exalted.
		.' Click to proceed. |confirm
	step
	label	"bead_grind"
		goto Nagrand,48.9,22.7
		.from Warmaul Reaver##17138+, Warmaul Shaman##18064+
		..collect Obsidian Warbeads##25433 |n
		.' If you are fresh into revered, you will need 420 beads to get 21,000 reputation points.
		.' Collect beads in sets of 10.
		.' Click here when you're ready to turn in. |confirm
	step
	label	"turn_in"
		goto Nagrand,54.7,70.9
		.talk Warden Moi'bff Jill##18408
		..accept More Warbeads##10477 |n
		.' or
		.' Click here to go back to farming. |next "bead_grind" |confirm
		'Earn Exalted reputation with the Kurenai. |condition rep("Kurenai")==Exalted |next "exalted" 
	step
	label exalted
		.' Congratulations, you are now Exalted with The Kurenai! |condition rep("Kurenai")==Exalted 
]])
--------------------------------------------------------------------------------------------------------------------------------------
-- Leveling Northrend
--------------------------------------------------------------------------------------------------------------------------------------
ZygorGuidesViewer:RegisterInclude("A_Icecrown_Argent_Crusade_Rep",[[
	step
		goto Icecrown,87.8,78.1
		.talk Aedan Moran##30433
		..fpath The Argent Vanguard
	step
		goto 87.5,75.8
		.talk Highlord Tirion Fordring##28179
		..accept Honor Above All Else##13036
	step
		goto 87.1,75.8
		.talk Crusade Commander Entari##30223
		..turnin Honor Above All Else##13036
		..accept Scourge Tactics##13008
	step
		goto 86.8,76.7
		.talk Father Gustav##30226
		..accept Curing The Incurable##13040
	step
		goto 86.1,75.8
		.talk Crusade Lord Dalfors##30224
		..accept Defending The Vanguard##13039
	step
		goto 84.4,74.3
		.from Carrion Fleshstripper##30206+, Forgotten Depths Acolyte##30205+
		.kill 15 Forgotten Depths Nerubian |q 13039/1
		.get 10 Forgotten Depths Venom Sac|q 13040/1
		.' Kill the white spider wrappings around this area.
		|modelnpc Webbed Crusader##17680
		.' Free 8 Webbed Crusaders |q 13008/1
	step
		goto 86.1,75.8
		.talk Crusade Lord Dalfors##30224
		..turnin Defending The Vanguard##13039
	step
		goto 86.8,76.7
		.talk Father Gustav##30226
		..turnin Curing The Incurable##13040
	step
		goto 87.1,75.8
		.talk Crusade Commander Entari##30223
		..turnin Scourge Tactics##13008
		..accept If There Are Survivors...##13044
	step
		goto 87.0,79.0
		.talk Penumbrius##30227
		..turnin If There Are Survivors...##13044
		..accept Into The Wild Green Yonder##13045
	step
		goto 87.1,79.1
		'Click the Argent Skytalon to ride it |modelnpc Argent Skytalon##30500 |invehicle |c |q 13045
	step
		goto 79.0,67.4
		.' Use the Grab Captured Crusader ability near Captured Crusaders to pick them up |petaction Grab Captured Crusader
		.' Once you pick up a Captured Crusader, fly to [86.9,76.5]|n
		.' Use the Drop Off Captured Crusader ability near the tents to drop off the crusaders
		.' Repeat this process 2 more times
		.' Rescue 3 Captured Crusaders |q 13045/1
	step
		.' Click the red arrow on your vehicle hot bar to stop riding the dragon |outvehicle
	step
		goto 87.5,75.8
		.talk Highlord Tirion Fordring##28179
		..turnin Into The Wild Green Yonder##13045
		..accept A Cold Front Approaches##13070
	step
		goto 85.6,76.0
		.talk Siegemaster Fezzik##30657
		..turnin A Cold Front Approaches##13070
		..accept The Last Line Of Defense##13086
	step
		goto 85.3,75.9
		'Click the Argent Cannon to get on it |modelnpc Argent Cannon##30236 |invehicle |c |q 13086
	step
		'Use the skills on your hotbar to kill scourge mobs and dragons
		.kill 100 Scourge Attacker |q 13086/1
		.kill 3 Frostbrood Destroyer |q 13086/2
		'|from Forgotten Depths Slayer##30593, Frostbrood Destroyer##30575
	step
		.' Click the red arrow on your vehicle hot bar to stop using the cannon |outvehicle |c
	step
		goto 85.6,76.0
		.talk Siegemaster Fezzik##30657
		..turnin The Last Line Of Defense##13086 
	step
		goto 86.0,75.8
		.talk Highlord Tirion Fordring##28179
		..accept Once More Unto The Breach, Hero##13105 |only DeathKnight
		..accept Once More Unto The Breach, Hero##13104 |only !DeathKnight
	step
		goto 83.0,72.9
		.talk The Ebon Watcher##30596
		..turnin Once More Unto The Breach, Hero##13105 |only DeathKnight
		..turnin Once More Unto The Breach, Hero##13104 |only !DeathKnight
		..accept The Purging Of Scourgeholme##13118
		..accept The Scourgestone##13122
	step
		goto 83.0,73.1
		.talk Crusade Architect Silas##30686
		..accept The Stone That Started A Revolution##13130
	step
		goto 83.0,73.1
		.talk Crusade Engineer Spitzpatrick##30714
		..accept It Could Kill Us All##13135
	step
		goto 82.9,72.8
		.talk Father Gustav##30683
		..accept The Restless Dead##13110
	step
		goto 80.4,68.2
		.from 8 Reanimated Crusader##31043+ |q 13118/3
		.from 3 Forgotten Depths Underking##31039+ |q 13118/2
		.get 15 Scourgestone |q 13122/1
		.' Use your Holy Water on Reanimated Crusader corpses |use Holy Water##43153
		.' Free 10 Restless Souls |q 13110/1
	step
		goto 78.7,60.2
		.kill 3 Forgotten Depths High Priest##31037+ |q 13118/1
		.' You can find another Forgotten Depths High Priest at [76.2,61.0] |n
	step
		goto 82.9,72.8
		.talk Father Gustav##30683
		..turnin The Restless Dead##13110
	step
		goto 83.0,72.9
		.talk The Ebon Watcher##30596
		..turnin The Purging Of Scourgeholme##13118
		..turnin The Scourgestone##13122
		..accept The Air Stands Still##13125
	step
		goto 77.6,62.2
		.' Use your War Horn of Acherus on Salranax the Flesh Render |use War Horn of Acherus##43206 |tip A Death Knight is summoned to help you, but make sure you get the first hit on Salranax the Flesh Render, or else you won't get credit for the kill.
		.kill Salranax the Flesh Render##30829 |q 13125/1
	step
		goto 79.7,60.9
		.' Use your War Horn of Acherus on High Priest Yath'amon |use War Horn of Acherus##43206 |tip A Death Knight is summoned to help you, but make sure you get the first hit on High Priest Yath'amon, or else you won't get credit for the kill.
		.kill High Priest Yath'amon##30831 |q 13125/3
	step
		goto 76.6,54.1
		.' Use your War Horn of Acherus on Underking Talonox |use War Horn of Acherus##43206 |tip A Death Knight is summoned to help you, but make sure you get the first hit on Underking Talonox, or else you won't get credit for the kill.
		.kill Underking Talonox##30830 |q 13125/2
	step
		'Click the dark portal that spawns after you kill Underking Talonox to return to the Valley of Echoes |goto Icecrown,83.0,72.6,0.5 |noway |c
	step
		goto 83.0,72.9
		.talk The Ebon Watcher##30596
		..turnin The Air Stands Still##13125
	step
		goto Crystalsong Forest,59.9,57.2
		.from Unbound Ent##30862+, Unbound Dryad##30860+
		.get 8 Crystallized Energy |q 13135/1
		.click Crystalline Heartwood##8439
		.get 10 Crystalline Heartwood |q 13130/1
	step
		goto 73.6,64.0
		.click Ancient Elven Masonry##8356 
		.get 10 Ancient Elven Masonry |q 13130/2
		.' You can find more Ancient Elven Masonry around [79.6,61.3] |n
	step
		goto Icecrown,83.0,73.1
		.talk Crusade Architect Silas##30686
		..turnin The Stone That Started A Revolution##13130
	step
		goto 83.0,73.1
		.talk Crusade Engineer Spitzpatrick##30714
		..turnin It Could Kill Us All##13135
	step
		goto 82.9,72.8
		.talk Father Gustav##30683
		..accept Into The Frozen Heart Of Northrend##13139
	step
		goto 86.0,75.8
		.talk Highlord Tirion Fordring##28179
		..turnin Into The Frozen Heart Of Northrend##13139
		..accept The Battle For Crusaders' Pinnacle##13141
	step
		goto 80.1,72.0
		.' Stand next to the Pile of Crusader Skulls
		.' Use your Blessed Banner of the Crusade |use Blessed Banner of the Crusade##43243
		.' Defend the Banner of the Crusade against oncoming attackers
		.' Complete the Battle for Crusaders' Pinnacle |q 13141/1
	step
		goto 82.9,72.8
		.talk Father Gustav##30683
		..turnin The Battle For Crusaders' Pinnacle##13141
		..accept The Crusaders' Pinnacle##13157
	step
		goto 79.8,71.8
		.talk Highlord Tirion Fordring##28179
		..turnin The Crusaders' Pinnacle##13157
		..accept A Tale of Valor##13068
	step
		goto 79.4,72.9
		.talk Marshal Ivalius##31241
		..accept The Skybreaker##13225
	step
		goto 79.8,30.8
		.talk Crusader Bridenbrad##30562
		..turnin A Tale of Valor##13068
		..accept A Hero Remains##13072
	step
		goto 79.8,71.8
		.talk Highlord Tirion Fordring##28179
		..turnin A Hero Remains##13072
		..accept The Keeper's Favor##13073
	step
		goto 87.1,77.0
		.talk Arch Druid Lilliandra##30630
		..' Ask her for a portal to Moonglade
		..' Click the Moonglade Portal that appears next to you|goto Moonglade|noway|c
	step
		goto Moonglade,36.2,41.8
		.talk Keeper Remulos##11832
		..turnin The Keeper's Favor##13073
		..accept Hope Within the Emerald Nightmare##13074
	step
		goto 33.7,44.1
		.click Emerald Acorn##424
		.get 3 Emerald Acorn|q 13074/1
	step
		'Right click your Fitfull Dream buff to awaken from the nightmare|nobuff Spell_Nature_Sleep|q 13074|tip The Fitfull Dream buff icon looks like a closed eye.
	step
		goto 36.2,41.8
		.talk Keeper Remulos##11832
		..turnin Hope Within the Emerald Nightmare##13074
		..accept The Boon of Remulos##13075
	step
		goto 36.2,41.8
		.talk Keeper Remulos##11832
		..' Tell him you wish to return to Arch Druid Lilliandra.
		..' Click the Moonglade Return Portal |goto Icecrown|noway|c
	step
		goto 79.8,30.8
		.talk Crusader Bridenbrad##30562
		..turnin The Boon of Remulos##13075
		..accept Time Yet Remains##13076
	step
		goto 79.8,71.8
		.talk Highlord Tirion Fordring##28179
		..turnin Time Yet Remains##13076
		..accept The Touch of an Aspect##13077
	step
		goto Dragonblight,57.9,54.2|n
		.talk Tariolstrasz##26443
		..'Tell him you need to go to the top of the temple|goto Dragonblight,59.7,53.1,0.1|noway|c
	step
		goto 59.8,54.7
		.talk Alexstrasza the Life-Binder##26917
		..turnin The Touch of an Aspect##13077
		..accept Dahlia's Tears##13078
	step
		goto 59.5,53.3|n
		.talk Torastrasza##26949
		..'Tell him you want to go to the ground level of the temple|goto Dragonblight,58.0,55.2,0.1|noway|c
	step
		goto 43.2,51.7
		.' There should be a fight happening, so just wait around until the fight is over|tip If there isn't fight happening, just wait until the fighters spawn again, and there should be some red dragon Ruby Watchers flying above the fight.
		.' At the end of the fight, a Ruby Watcher will blow alot of fire on the ground and the Dahlia's Tears will spawn
		.click Dahlia's Tears##8329 
		.get Dahlia's Tears|q 13078/1
	step
		goto 57.9,54.2|n
		.talk Tariolstrasz##26443
		..'Tell him you need to go to the top of the temple|goto Dragonblight,59.7,53.1,0.1|noway|c
	step
		goto 59.8,54.7
		.talk Alexstrasza the Life-Binder##26917
		..turnin Dahlia's Tears##13078
		..accept The Boon of Alexstrasza##13079
	step
		goto 59.5,53.3|n
		.talk Torastrasza##26949
		..'Tell him you want to go to the ground level of the temple|goto Dragonblight,58.0,55.2,0.1|noway|c
	step
		goto 79.8,30.8
		.talk Crusader Bridenbrad##30562
		..turnin The Boon of Alexstrasza##13079
		..accept Hope Yet Remains##13080
	step
		goto 79.8,71.8
		.talk Highlord Tirion Fordring##28179
		..turnin Hope Yet Remains##13080
		..accept The Will of the Naaru##13081
	step
		'Click the Portal to Shattrath that appears near you|goto Shattrath City|noway|c
	step
		goto Shattrath City,54,44.8
		.talk A'dal##18481
		..turnin The Will of the Naaru##13081
		..accept The Boon of A'dal##13082
	step
		goto Icecrown,79.8,30.8
		.talk Crusader Bridenbrad##30562
		..turnin The Boon of A'dal##13082
	step
		goto 79.8,30.8
		.click Bridenbrad's Possessions##1 
		..accept Light Within the Darkness##13083
	step
		'You should now be above Honored with the _Argent Crusade_.
		.' The fastest way to continue to earn reputation with _Argent Crusade_ is to buy a tabard and run any dungeon that gives experience. 
		|confirm
	step
		goto Icecrown,87.5,75.6
		.talk Veteran Crusader Aliocha Segard##30431
		.buy 1 Tabard of the Argent Crusade##43154
	step
		.' Equip this Tabard in your bags |equipped Tabard of the Argent Crusade##43154 |use Tabard of the Argent Crusade##43154
		.' You can run any dungeon that grants experience to gain reputation for the Argent Crusade.
		.' Friendly with Argent Crusade |condition rep('Argent Crusade')>=Friendly
		.' Honored with Argent Crusade |condition rep('Argent Crusade')>=Honored
		.' Revered with Argent Crusade |condition rep('Argent Crusade')>=Revered
		.' Become Exalted with Argent Crusade |condition rep('Argent Crusade')==Exalted
	step
		'Congratulations! You are now Exalted with the _Argent Crusade_!
]])

--------------------------------------------------------------------------------------------------------------------------------------
-- Leveling Cataclysm
--------------------------------------------------------------------------------------------------------------------------------------
ZygorGuidesViewer:RegisterInclude("A_Mount_Hyjal_Leveling",[[
	step
		goto Stormwind City,62.9,71.6
		.click Hero's Call Board##10016
		..accept Hero's Call: Mount Hyjal!##27726
	step
		'When you enter Stormwind City:
		.' You will automatically accept a quest
		..accept A Personal Summons##28825		
	step
		goto Stormwind City,74.5,19.0
		.talk Naraat the Earthspeaker##45226
		..turnin A Personal Summons##28825
		..accept Eye of the Storm##28826
	step
		goto 74.4,19.5
		.click Waters of Farseeing##445
		.' Peer into the Waters of Farseeing |q 28826/1
	step
		goto 74.5,19.0
		.talk Naraat the Earthspeaker##45226
		..turnin Eye of the Storm##28826
	step
		goto 82.6,28.2
		.talk Cenarion Emissary Jademoon##15187
		..' Ask her to send you to Moonglade
		.' Teleport to Moonglade |goto Moonglade |noway |c
	step
		goto Moonglade,45.5,44.9
		.talk Emissary Windsong##39865
		..turnin Hero's Call: Mount Hyjal!##27726
		..accept As Hyjal Burns##25316
	step
		goto 46.1,45.6
		.clicknpc Aronus##39140
		.' You will fly to Mount Hyjal |goto Mount Hyjal |noway |c
	step
		goto 63.1,24.1
		.talk Sebelia##40843
		.home Nordrassil
	step
		goto Mount Hyjal,62.0,24.9
		.talk Ysera##40928
		..turnin As Hyjal Burns##25316
		..accept Protect the World Tree##25317
	step
		goto 62.1,21.6
		.talk Fayran Elthas##41861
		.fpath Nordrassil
	step
		goto 64.0,22.7
		.talk Anren Shadowseeker##39925
		..accept The Earth Rises##25460
	step
		goto 64.1,22.5
		.talk Tholo Whitehoof##40278
		..accept Inciting the Elements##25370
	step
		goto 67.1,22.6
		.kill 8 Scalding Rock Elemental##40229 |q 25460/1
		.click Juniper Berry##28+
		.collect 4 Juniper Berries##53009 |n
		.' Use your Juniper Berries on Faerie Dragons |use Juniper Berries##53009
		.' Follow the Faerie Dragons to find Twilight Inciters
		.kill 4 Twilight Inciter##39926 |q 25370/1
		|modelnpc Faerie Dragon##39921
	step
		goto 64.1,22.5
		.talk Tholo Whitehoof##40278
		..turnin Inciting the Elements##25370
		..accept Flames from Above##25574
	step
		goto 64.0,22.7
		.talk Anren Shadowseeker##39925
		..turnin The Earth Rises##25460
	step
		goto 55.7,15.9
		.' Stand in this spot
		.' Use Tholo's Horn to call for an emerald dragon |use Tholo's Horn##55122
		.' Burn the Infiltrators' Encampment |q 25574/1
	step
		goto 64.1,22.5
		.talk Tholo Whitehoof##40278
		..turnin Flames from Above##25574
	step
		goto 47.7,35.5
		.talk Malfurion Stormrage##54173
		..turnin Protect the World Tree##25317
		..accept War on the Twilight's Hammer##25319
	step
		goto 47.6,35.5
		.talk Windspeaker Tamila##39869
		..accept The Flameseer's Staff##25472
	step
		goto 48.4,29.3
		.click Charred Staff Fragment##758+
		.get 8 Charred Staff Fragment |q 25472/1
		.' You can find more fragments at [44.7,33.3]
	step
		goto 47.2,25.6
		.kill 4 Twilight Flamecaller##38926+ |q 25319/1
		.kill 10 Twilight Vanquisher##38913+ |q 25319/2
	step
		goto 47.7,35.5
		.talk Malfurion Stormrage##15362
		..turnin War on the Twilight's Hammer##25319
		..turnin The Flameseer's Staff##25472
		..accept Flamebreaker##25323
	step
		goto 44.5,33.4
		.' Use your Flameseer's Staff on Blazebound Elementals |use Flameseer's Staff##53107 |modelnpc Blazebound Elemental##38896
		.kill 30 Unbound Flame Spirit##33838+ |q 25323/1
	step
		goto 47.7,35.5
		.talk Malfurion Stormrage##54173
		..turnin Flamebreaker##25323
		..accept The Return of Baron Geddon##25464
	step
		goto 44.0,26.9
		.' Use your Flameseer's Staff on Baron Geddon |use Flameseer's Staff##54463 |tip He's a big fire elemental standing in the middle of this crater.
		.' Weaken Baron Geddon 20 Times |q 25464/1 |tip Run away when you see Galrond of the Claw yell "Look out!".
		' |modelnpc 40147
	step
		goto 47.7,35.5
		.talk Malfurion Stormrage##54173
		..turnin The Return of Baron Geddon##25464
	step
		goto 47.6,35.5
		.talk Windspeaker Tamila##39869
		..accept Emerald Allies##25430
	step
		goto 48.4,18.9
		.talk Alysra##38917
		..turnin Emerald Allies##25430
		..accept The Captured Scout##25320
	step
		goto 44.5,18.9
		.talk Scout Larandia##40096
		..turnin The Captured Scout##25320
		..accept Twilight Captivity##25321
	step
		goto 44.5,21.5
		.from Twilight Overseer##40123
		.get Twilight Overseer's Key |q 25321/1
	step
		goto 44.5,18.9
		.talk Scout Larandia##40096
		..turnin Twilight Captivity##25321
		..accept Return to Alysra##25424
	step
		goto 48.4,18.9
		.talk Alysra##38917
		..turnin Return to Alysra##25424
		..accept A Prisoner of Interest##25324
	step
		goto 52.5,17.3 |n
		.' Enter the cave |goto 52.5,17.3,0.5 |noway |c
	step
		goto 56.8,18.8
		.talk Captain Saynna Stormrunner##40139
		..turnin A Prisoner of Interest##25324
		..accept Through the Dream##25325
	step
		goto 52.5,17.3 |n
		.' Leave the cave |goto 52.5,17.3,0.5 |noway |c |tip Follow the path up.
	step
		goto 52.2,17.4
		.talk Alysra##38917
		..turnin Through the Dream##25325
		..accept Return to Nordrassil##25578
	step
		goto 62.0,24.9
		.talk Ysera##40928
		..turnin Return to Nordrassil##25578
		..accept The Return of the Ancients##25584
	step
		goto 35.7,19.4
		.talk Oomla Whitehorn##39429
		..turnin The Return of the Ancients##25584
		..accept Harrying the Hunters##25255
	step
		goto 35.7,19.7
		.talk Jadi Falaryn##39427
		..accept End of the Supply Line##25233
		..accept In the Rear With the Gear##25234
	step
		goto 38.1,23.0
		.kill 6 Twilight Hunter##39437+ |q 25255/1
		.kill 4 Twilight Proveditor##39436+ |q 25233/1
		.click Twilight Supplies##9379+ |tip The slaves will drop them after you kill the Twilight Slavedriver.
		.get 36 Twilight Supplies |q 25234/1
	step
		goto 35.7,19.7
		.talk Jadi Falaryn##39427
		..turnin End of the Supply Line##25233
		..turnin In the Rear With the Gear##25234
		..accept The Voice of Goldrinn##25268
	step
		goto 35.7,19.4
		.talk Oomla Whitehorn##39429
		..turnin Harrying the Hunters##25255
	step
		goto 30.1,31.3
		.talk Ian Duran##39433
		..turnin The Voice of Goldrinn##25268
		..accept Goldrinn's Ferocity##25271
	step
		goto 29.3,30.3
		.from Lycanthoth Vandal##39445+
		.get 6 Polluted Incense |q 25271/1
	step
		goto 30.1,31.3
		.talk Ian Duran##39433
		..turnin Goldrinn's Ferocity##25271
		..accept Lycanthoth the Corruptor##25273
	step
		goto 32.4,37.3
		.' Use Lycanthoth's Incense next to Lycanthoth's Altar |use Lycanthoth's Incense##52682 |tip Inside the cave.
		.kill Lycanthoth##39446 |q 25273/1
	step
		goto 32.3,37.0
		.talk Spirit of Goldrinn##39627
		..turnin Lycanthoth the Corruptor##25273
	step
		goto 29.6,29.3
		.talk Spirit of Goldrinn##39627
		..accept The Shrine Reclaimed##25280
	step
		goto 28.2,29.8
		.talk Ian Duran##39433
		..turnin The Shrine Reclaimed##25280
		..accept Cleaning House##25278
	step
		goto 28.2,29.9
		.talk Rio Duran##39434
		..accept From the Mouth of Madness##25297
	step
		goto 28.6,30.2
		.talk Royce Duskwhisper##39435
		..accept The Eye of Twilight##25300
	step
		goto 28.9,32.2
		.click Bitterblossom##7444
		.get Bitterblossom |q 25297/2
	step
		goto 27.6,34.2
		.click Stonebloom##9386
		.get Stonebloom |q 25297/1
	step
		goto 27.2,35.2
		.click Eye of Twilight##7011
		..turnin The Eye of Twilight##25300
		..accept Mastering Puppets##25301
	step
		goto 28.4,35.8
		.click Darkflame Ember##9569 |tip Inside the brazier
		.get Darkflame Ember |q 25297/3
	step
		goto 28.4,36.4
		.click Twilight Cauldron##9387
		..turnin From the Mouth of Madness##25297
		..accept Free Your Mind, the Rest Follows##25298
	step
		goto 27.0,36.0 |n
		.' Enter the cave |goto 27.0,36.0,0.5 |noway |c
	step
		goto 27.2,40.8
		.talk Kristoff Manheim##39797
		..accept Gar'gol's Gotta Go##25328 |tip This quest is currently bugged, so some players are able to accept the quest while others cannot.
	step
		goto 26.5,38.5
		.click Gar'gol's Personal Treasure Chest##10
		.get Rusted Skull Key |q 25328/1
	step
		goto 25.8,41.7
		.click The Twilight Apocrypha##470
		..turnin Mastering Puppets##25301
		..accept Elementary!##25303
	step
		goto 26.0,41.8
		.clicknpc Crucible of Fire##39730
		.' Activate the Crucible of Fire |q 25303/3
	step
		goto 25.7,41.7
		.clicknpc Crucible of Earth##39737
		.' Activate the Crucible of Earth |q 25303/1
	step
		goto 25.8,41.9
		.clicknpc Crucible of Air##39736
		.' Activate the Crucible of Air |q 25303/2
	step
		goto 26.0,41.6
		.clicknpc Crucible of Water##39738
		.' Activate the Crucible of Water |q 25303/4
	step
		goto 25.8,41.7
		.click Twilight Apocrypha##470
		..turnin Elementary!##25303
		..accept Return to Duskwhisper##25312
	step
		.' While inside the cave do the following:
		.from Hovel Brute##39642+, Hovel Shadowcaster##39643+
		.kill 8 Minion of Gar'gol |q 25278/1
		.talk Twilight Servitor##39644
		..' Administor the drought
		.' Free 8 Twilight Servitors |q 25298/1
	step
		goto 27.2,40.8
		.talk Kristoff Manheim##39797
		..turnin Gar'gol's Gotta Go##25328
		..accept Get Me Outta Here!##25332
	step
		goto 27.1,36.0 |n
		.' Leave the cave |goto 27.1,36.0,0.5 |noway |c
		.' Escort Kristoff Out |q 25332/1
	step
		goto 28.6,30.2
		.talk Royce Duskwhisper##39435
		..turnin Return to Duskwhisper##25312
		..turnin Get Me Outta Here!##25332
	step
		goto 28.2,29.8
		.talk Ian Duran##39433
		..turnin Cleaning House##25278
		..accept Sweeping the Shelf##25352
		..accept Lightning in a Bottle##25353
	step
		goto 28.2,29.9
		.talk Rio Duran##39434
		..turnin Free Your Mind, the Rest Follows##25298
	step
		goto 27.4,39.2
		.kill 8 Twilight Stormcaller##39843+ |q 25352/1
		.kill 5 Howling Riftdweller##39844+ |q 25352/2
		.click Lightning Channel##9816
		.get Charged Condenser Jar |q 25353/1
	step
		'Use your Totem of Goldrinn |use Totem of Goldrinn##52853
		.talk Spirit of Goldrinn##39627
		..turnin Lightning in a Bottle##25353
		..accept Into the Maw!##25618
	step
		goto 26.2,41.0 |n
		.' Go inside the blue portal |goto 26.2,41.0,0.5 |noway |c
	step
		goto 26.3,41.9
		.talk Jordan Olafson##40834
		..turnin Into the Maw!##25618
		..accept Forged of Shadow and Flame##25575
		..accept Crushing the Cores##25577
	step
		goto 26.3,42.0
		.talk Yargra Blackscar##40837
		..accept Rage of the Wolf Ancient##25576
	step
		.' Do the following in the Firelands Forgeworks
		.kill 12 Dark Iron Laborer##40838+ |q 25576/1
		.from Searing Guardian##40841+
		.collect 8 Smoldering Core##55123 |n
		.' Use your Smoldering Cores next to Twilight Anvils |use Smoldering Core##55123 |tip They are small anvils sitting on the ground around this area.
		.' Destroy 8 Smoldering Cores |q 25577/1
		.click Twilight Arms Crate##9393+
		.' Destroy 10 Twilight Arms Crates |q 25575/1
	step
		goto 26.3,42.0
		.talk Yargra Blackscar##40837
		..turnin Rage of the Wolf Ancient##25576
	step
		goto 26.3,41.9
		.talk Jordan Olafson##40834
		..turnin Forged of Shadow and Flame##25575
		..turnin Crushing the Cores##25577
		..accept Cindermaul, the Portal Master##25599
	step
		goto 30.7,41.7
		.kill Cindermaul##40844 |q 25599/1
		.click Battered Stone Chest##1387
		.get Tome of Openings |q 25599/2
	step
		goto 26.3,41.9
		.talk Jordan Olafson##40834
		..turnin Cindermaul, the Portal Master##25599
		..accept Forgemaster Pyrendius##25600
	step
		goto 31.6,46.0
		.' Click the Portal Runes |tip They are brown metal plates on the ground on this small circular island in the lava.
		.' Lure Forgemaster Pyrendius onto the activated Portal Runes |tip This will weaken him and allow you to kill him.
		.kill Forgemaster Pyrendius##40845 |q 25600/1
	step
		goto 26.3,41.9
		.talk Jordan Olafson##40834
		..turnin Forgemaster Pyrendius##25600
		..accept Return from the Firelands##25611
	step
		goto 25.9,40.9 |n
		.' Go inside the blue portal |goto 25.9,40.9,0.1 |noway |c
	step
		goto 28.2,29.8
		.talk Ian Duran##39433
		..turnin Sweeping the Shelf##25352
		..turnin Return from the Firelands##25611
	step
		goto Mount Hyjal,28.3,29.7
		.talk Vision of Ysera##46987
		..accept Avian's Legacy##27874 |tip Skip if you have completed Wings Over Mount Hyjal
	step
		goto 28.2,29.9
		.talk Rio Duran##39434
		..accept The Fires of Mt. Hyjal##25630
	step
		goto 19.0,40.9
		.talk Laina Nightsky##39927
		..turnin The Fires of Mt. Hyjal##25630
		..accept Fighting Fire With ... Anything##25381
		..accept Disrupting the Rituals##25382
	step
		goto 19.2,37.9
		.talk Mylune##39930
		..accept Save the Wee Animals##25385
	step
		goto 19.0,37.0
		.talk Matoclaw##39928
		..accept If You're Not Against Us...##25404
	step
		goto 19.6,36.4
		.talk Elizil Wintermoth##41860
		.fpath Grove of Aessina
	step
		goto 22.3,44.9
		.talk Tyrus Blackhorn##39933
		..' Tell him you've been sent to request his aid, then tell him he could be destroyed, then ask him if he will help you
		.' Persuade Blackhorn |q 25404/1
	step
		goto 22.3,44.9
		.talk Tyrus Blackhorn##39933
		..turnin If You're Not Against Us...##25404
		..accept Seeds of Their Demise##25408
	step
		goto 21.8,43.7
		.from Wailing Weed##40066+
		.get 8 Bileberry |q 25408/1
	step
		goto 22.3,44.9
		.talk Tyrus Blackhorn##39933
		..turnin Seeds of Their Demise##25408
		..accept A New Master##25411
	step
		goto 14.4,45.4
		.from Twilight Inferno Lord##39974
		.' Use your Bottled Bileberry Brew on the corpse of a Twilight Inferno Lord |use Bottled Bileberry Brew##53120
		.' Subjugate a Twilight Inferno Lord |q 25411/1
		.talk Subjugated Inferno Lord##40093
		..turnin A New Master##25411
		..accept The Name Never Spoken##25412
	step
		goto 14.3,45.4
		.click Southern Firestone##9407
		.' Examine the Southern Firestone |q 25412/3
	step
		goto 11.6,41.5
		.click Central Firestone##9407
		.' Examine the Central Firestone |q 25412/2
	step
		goto 9.6,36.5
		.click Northern Firestone##9407
		.' Examine the Northern Firestone |q 25412/1
	step
		goto 13.3,41.4
		.kill 10 Raging Firestorm##39939 |q 25381/1
		.kill 6 Twilight Inferno Lord##39974 |q 25382/1		
		.' Click Panicked Bunnies and Terrified Squirrels
		.get 10 Frightened Animal |q 25385/1
		' |modelnpc 39997
		' |modelnpc 39998
	step
		goto 19.0,40.9
		.talk Laina Nightsky##39927
		..turnin Fighting Fire With ... Anything##25381
		..turnin Disrupting the Rituals##25382
	step
		goto 19.2,37.9
		.talk Mylune##39930
		..turnin Save the Wee Animals##25385
		..accept Oh, Deer!##25392
	step
		goto 22.3,44.9
		.talk Tyrus Blackhorn##39933
		..turnin The Name Never Spoken##25412
		..accept Black Heart of Flame##25428
	step
		goto 12.9,41.4
		.' Use your Charred Branch while in the burning forest area |use Charred Branch##53464
		.from Thol'embaar##40107
		.get Black Heart of Thol'embaar |q 25428/1
	step
		goto 14.5,40.8
		.clicknpc 3 Injured Fawn##39999+
		.' Lead the Injured Fawns back to Mylune at [19.2,37.9]
		.' Escort 3 Injured Fawns Home |q 25392/1
	step
		goto 19.2,37.9
		.talk Mylune##39930
		..turnin Oh, Deer!##25392
	step
		goto 22.3,44.9
		.talk Tyrus Blackhorn##39933
		..turnin Black Heart of Flame##25428
	step
		goto 19.0,40.9
		.talk Laina Nightsky##39927
		..accept Last Stand at Whistling Grove##25940
	step
		goto 13.6,32.8
		.talk Keeper Taldros##39932
		..turnin Last Stand at Whistling Grove##25940
		..accept The Bears Up There##25462
	step
		 goto 14.2,32.1
		.' Click the ladder at the base of the tree
		.clicknpc Hyjal Bear Cub##40240
		.' Use your Climb Up ability to climb to the top of the tree
		.' Use your Chuck-a-bear ability to throw the cubs down |tip Aim the yellow arrow at the bearskin trampoline on the ground.
		.' Rescue 6 Hyjal Bear Cubs |q 25462/1
	step
		goto 13.6,32.8
		.talk Keeper Taldros##39932
		..turnin The Bears Up There##25462
		..accept Smashing Through Ashes##25490
	step
		goto 21.6,59.1
		.kill 8 Charbringer##40336 |q 25490/1
	step
		 goto 27.1,62.6
		.talk Arch Druid Hamuul Runetotem##39858
		..turnin Smashing Through Ashes##25490
		..accept Durable Seeds##25491
		..accept Fresh Bait##25493
	step
		goto 27.1,63.0
		.talk Rayne Feathersong##40331
		..accept Firebreak##25492
	step
		goto 27.8,63.4
		.talk Ranela Featherglen##54392
		.fpath Sanctuary of Malorne
	step
		goto 36.2,58.6
		.kill 10 Lava Surger##46911+ |q 25492/1
		.from Core Hound##46910+
		.get 4 Core Hound Entrails |q 25493/1
		.click Scorched Soil##768+
		.get 10 Hyjal Seedling |q 25491/1
	step
		 goto 27.1,62.6
		.talk Arch Druid Hamuul Runetotem##39858
		..turnin Durable Seeds##25491
		..turnin Fresh Bait##25493
		..accept Hell's Shells##25507
	step
		goto 27.1,63.0
		.talk Rayne Feathersong##40331
		..turnin Firebreak##25492
		..accept Prepping the Soil##25502
	step
		ding 81
	step
		goto 33.0,64.6
		.' Click the Flameward |tip It's a floating stone in a golden claw stand.
		.' Activate the Flameward |q 25502/1
		.' Defend the Flameward |q 25502/2
	step
		goto 39.3,54.1
		.' Use your Heap of Core Hound Innards near Nemesis |use Heap of Core Hound Innards##54744 |tip Nemesis is a huge turtle that walks all around The Flamewake area, so you may need to search for him.
		.clicknpc Nemesis##40340
		.get Nemesis Shell Fragment |q 25507/1
	step
		goto 27.1,62.6
		.talk Arch Druid Hamuul Runetotem##39858
		..turnin Hell's Shells##25507
		..accept Tortolla Speaks##25510
	step
		goto 27.1,63.0
		.talk Rayne Feathersong##40331
		..turnin Prepping the Soil##25502
	step
		goto 24.7,55.7
		.talk Tortolla##41504
		..turnin Tortolla Speaks##25510
		..accept Breaking the Bonds##25514
		..accept Children of Tortolla##25519
	step
		goto 23.8,56.0
		.click Rod of Subjugation##9469
		.' Disable Rod of Subjugation 1 |q 25514/1
	step
		goto 25.3,54.8
		.click Rod of Subjugation##9469
		.' Disable Rod of Subjugation 2 |q 25514/2
	step
		goto 24.7,55.7
		.talk Tortolla##41504
		..turnin Breaking the Bonds##25514
	step
		goto 24.4,57.4
		.from Deep Corruptor##40561+ |tip They are found underwater
		.' Save 6 Tortolla's Eggs |q 25519/1
	step
		goto 24.7,55.7
		.talk Tortolla##41504
		..turnin Children of Tortolla##25519
		..accept An Ancient Awakens##25520
	step
		goto 27.1,62.6
		.talk Arch Druid Hamuul Runetotem##39858
		..turnin An Ancient Awakens##25520
	step
		goto 44.4,46.2
		.talk Choluna##41005
		..turnin Aviana's Legacy##27874
		..accept An Offering for Aviana##25663
	step
		goto 42.2,45.5
		.talk Thisalee Crow##41006
		..accept The Wormwing Problem##25655
		..accept Scrambling for Eggs##25656
	step
		goto 41.2,42.6
		.talk Dinorae Swiftfeather##43481
		.fpath Shrine of Aviana
	step
		goto 40.3,44.3
		.' Use your Sacred Nectar next to Aviana's Burial Circle |use Sacred Nectar##55208 |model Aviana's Burial Circle##439
		.' Offer the Nectar |q 25663/1
		.talk Mysterious Winged Spirit##41068
		..turnin An Offering for Aviana##25663
		..accept A Plea From Beyond##25665
	step
		goto 38.5,43.0
		.from Wormwing Screecher##41027+, Wormwing Swifttalon##41028+
		.' Kill 10 Wormwing Harpies |q 25655/1
		.click Stolen Hyjal Egg##1867+
		.get 8 Hyjal Egg |q 25656/1
	step
		goto 42.2,45.5
		.talk Thisalee Crow##41006
		..turnin The Wormwing Problem##25655
		..turnin Scrambling for Eggs##25656
		..accept A Bird in Hand##25731
	step
		goto 44.4,46.2
		.talk Choluna##41005
		..turnin A Plea From Beyond##25665
		..accept A Prayer and a Wing##25664
	step
		goto 38.3,44.2
		.click Harpy Signal Fire##7290
		.' Fight Marion Wormwing until she gets captured |q 25731/1
		.talk Marion Wormwing##41112
		..' Ask her why she is stealing eggs, then tell Thisalee to kill her
		.' Interrogate Marion Wormwing |q 25731/2
	step
		goto 35.7,42.3
		.' Use your Enormous Bird Call in Blaithe's Roost |use Enormous Bird Call##55211 |tip It's a huge bird nest sitting on top of this mountain peak.
		.from Blaithe##41084
		.get Ancient Feather |q 25664/1
	step
		goto 42.2,45.5
		.talk Thisalee Crow##41006
		..turnin A Bird in Hand##25731
	step
		goto 44.4,46.2
		.talk Choluna##41005
		..turnin A Prayer and a Wing##25664
	step
		goto 43.5,45.9
		.talk Skylord Omnuron##40997
		..accept Fact-Finding Mission##25740
	step
		 goto 32.8,70.8
		.talk Thisalee Crow##41006
		..turnin Fact-Finding Mission##25740
		..accept Sethria's Brood##25746
		..accept A Gap in Their Armor##25758
	step
		goto 31.3,77.1
		.click the Codex of Shadows##470
		..accept The Codex of Shadows##25763
	step
		goto 30.9,76.9
		.from Twilight Dragonkin##41029+, Twilight Dragonkin Armorers##41030+
		.' Slay 12 Sethria's Minions |q 25746/1
		.click Twilight Armor Plate##7041+
		.get 8 Twilight Armor Plate |q 25758/1
	step
		goto 32.8,70.8
		.talk Thisalee Crow##41006
		..turnin Sethria's Brood##25746
		..turnin A Gap in Their Armor##25758
		..accept Disassembly##25761
		..turnin The Codex of Shadows##25763
		..accept Egg Hunt##25764
	step
		goto 31.6,75.8
		.' Use Thisalee's Shiv on Twilight Juggernauts |use Thisalee's Shiv##55883 |tip Use Thisalee's Shiv 5 times to remove the Twilight Juggernauts' Armor Plating completely.
		.kill 3 Twilight Juggernaut##41031 |q 25761/1
		.click Shadow Cloak Generator##9532+ |tip It may not be in the first one, so keep searching.
		.' Unveil and Defend Aviana's Egg |q 25764/1
	step
		goto 32.8,70.8
		.talk Thisalee Crow##41006
		..turnin Disassembly##25761
		..turnin Egg Hunt##25764
		..accept Sethria's Demise##25776
	step
		goto 35.5,98.0
		.' Fight Sethria
		.' Use Thisalee's Signal Rocket when Sethria turns into a dragon |use Thisalee's Signal Rocket##56003
		.kill Sethria##41255 |q 25776/1
	step
		goto 32.8,70.8
		.talk Thisalee Crow##41006
		..turnin Sethria's Demise##25776
		..accept Return to the Shrine##25795
	step
		goto 44.4,46.2
		.talk Choluna##41005
		..turnin Return to the Shrine##25795
		..accept An Ancient Reborn##25807
	step
		goto 44.3,48.0
		.' Use Herald's Incense next to Aviana's Egg |use Herald's Incense##56016 |tip Aviana's Egg is in the tree tower, in a side room. |modelnpc Aviana's Egg##41224
		.' Burn Herald's Incense |q 25807/1
	step
		goto 44.2,47.8
		.talk Aviana##41308
		..turnin An Ancient Reborn##25807
	step
		goto 44.1,45.9
		.talk Morthis Whisperwing##41003
		..accept The Hatchery Must Burn##25810
	step
		goto 43.8,46.0
		.talk Vision of Ysera##47002
		..accept The Last Living Lorekeeper##25830
		.' If you cannot pick up the quest, go here to get it: [62.0,24.9]
	step
		goto 39.1,58.3 |n
		.' Go inside the blue portal |goto 38.77,58.01 <0.3 |noway |c
	step
		goto 37.2,56.2
		.talk Farden Talonshrike##40578
		..turnin The Hatchery Must Burn##25810
		..accept Flight in the Firelands##25523
	step
		goto 37.2,56.1
		.click the Twilight Weapon Rack##130
		.collect Twilight Firelance##52716 |q 25523
	step
		 goto 37.4,56.0
		.' Equip the Twilight Firelance |equipped Twilight Firelance##52716 |use Twilight Firelance##52716 
		.clicknpc Aviana's Guardian##40723 
		.' Ride Aviana's Guardian |invehicle |c |q 25523
	step
		goto 36.6,53.4
		.' Use your Flap ability on your hotbar repeatedly to fly to this green flag
		.' Land next to the Guardian Flag
		.' Visit the Guardian Flag |q 25523/1
		' |model 9475
	step
		goto 37.2,56.2
		.' Use your Flap ability on your hotbar repeatedly to fly to this spot
		.talk Farden Talonshrike##40578
		..turnin Flight in the Firelands##25523
		..accept Wave One##25525
	step
		goto 35.4,51.7
		.' Use your Flap ability on your hotbar repeatedly to fly around this area
		.' Fly into Twilight Buzzards to joust them
		.' Kill 10 Twilight Knight Riders |q 25525/1 |modelnpc Twilight Buzzard##39833+ |tip The knights are riding buzzards.
	step
		goto 37.2,56.2
		.' Use your Flap ability on your hotbar repeatedly to fly to this spot
		.talk Farden Talonshrike##40578
		..turnin Wave One##25525
		..accept Wave Two##25544
	step
		goto 35.4,51.7
		.' Use your Flap ability on your hotbar repeatedly to fly around this area
		.' Fly into Twilight Firebirds to joust them |tip Be careful, don't let the burning Falling Boulders hit you.
		.' Kill 10 Twilight Lancers|q 25544/1 |modelnpc Twilight Firebird##40650+ |tip The lancers are riding buzzards.
	step
		goto 37.2,56.2
		.' Use your Flap ability on your hotbar repeatedly to fly to this spot
		.talk Farden Talonshrike##40578
		..turnin Wave Two##25544
		..accept Egg Wave##25560
	step
		goto 36.6,53.3
		.' Use your Flap ability on your hotbar repeatedly to fly around this area
		.' Run over Firelands Eggs |tip They look like blue eggs on the ground around this area.
		.' Destroy 40 Firelands Eggs |q 25560/1
		.' You can find more Firelands Eggs at [39.3,54.1]
		' |modelnpc 40762
	step
		goto 37.2,56.2
		.' Use your Flap ability on your hotbar repeatedly to fly to this spot
		.talk Farden Talonshrike##40578
		..turnin Egg Wave##25560
		..accept Return to Aviana##25832
	step
		goto 39.1,57.6 
		.' Don't forget to equip your real weapon again
		.' Go inside the blue glowing orb |goto 39.1,57.6,0.5 |noway |c
	step
		goto 44.3,48.0
		.talk Aviana##41308
		..turnin Return to Aviana##25832
	step
		goto 27.4,55.6
		.talk Nordu##41381
		..turnin The Last Living Lorekeeper##25830
		..accept Firefight##25842
	step
		goto 27.1,54.5
		.kill 5 Fiery Tormentor##41396 |q 25842/1
	step
		goto 27.4,55.6
		.talk Nordu##41381
		..turnin Firefight##25842
		..accept Aessina's Miracle##25372
	step
		goto 19.5,37.8
		.talk Arch Druid Hamuul Runetotem##39858
		..turnin Aessina's Miracle##25372
		..accept Tortolla's Revenge##25843
	step
		goto 41.9,60.7
		.talk Tortolla##41504
		..turnin Tortolla's Revenge##25843
		..accept The Hammer and the Key##25904
	step
		goto 42.3,60.6
		.talk Niden##41507
		..accept Lost Wardens##25881
		..accept Breakthrough##25899
	step
		goto 46.8,58.7
		.from Twilight Field Captain##41502
		.get Glyph of Opening |q 25904/1
		.kill 10 Twilight Scorchlord##41500 |q 25899/1
		.talk Lost Warden##41499
		..' Tell them to get on their feet
		.' Rescue 8 Lost Wardens |q 25881/1
	step
		goto 41.9,60.7
		.talk Tortolla##41504
		..turnin The Hammer and the Key##25904
		..accept The Third Flamegate##25906
	step
		goto 57.1,56.0
		.talk Captain Irontree##41492
		..turnin Lost Wardens##25881
		..accept Pressing the Advantage##25886
		..turnin Breakthrough##25899
	step
		goto 56.8,56.0
		.talk Logram##41497
		..accept Hyjal Recycling Program##25901
	step
		goto 56.3,57.2
		.click Warden's Arrows##8094
		.get 15 Warden's Arrow |q 25901/1
	step
		goto 49.0,54.0
		.kill 4 Twilight Field Captain##41502+ |q 25886/1 |tip They are uncommon, so you may need to search for them.
	step
		goto 56.8,56.0
		.talk Logram##41497
		..turnin Hyjal Recycling Program##25901
	step
		goto 57.1,56.0
		.talk Captain Irontree##41492
		..turnin Pressing the Advantage##25886
	step
		goto 64.9,54.1 |n
		.' Go inside the blue portal |goto 64.53,53.54,0.3 |noway |c
	step
		goto 64.3,53.6
		.talk Garunda Mountainpeak##41498
		..turnin The Third Flamegate##25906
		..accept The Time for Mercy has Passed##25910
		..accept The Strength of Tortolla##25915
	step
		goto 65.9,58.2
		.' Follow the path down
		.' Stand next to a Nemesis Crystal with your Child of Tortolla turtle next to you
		.' Examine the Nemesis Crystal |q 25915/1
		' |model Nemesis Crystal##7989
	step
		goto 61.8,56.8
		.kill 4 Shadowflame Master##41563 |q 25910/1
		.kill 10 Molten Tormentor##41565 |q 25910/2
	step
		goto 64.3,53.6
		.talk Garunda Mountainpeak##41498
		..turnin The Time for Mercy has Passed##25910
		..turnin The Strength of Tortolla##25915
		..accept Finish Nemesis##25923
	step
		goto 63.2,62.2
		.' Follow the path down
		.' Fight Nemesis 
		.' Use your Totem of Tortolla when Nemesis is about to finish casting Molten Fury |use Totem of Tortolla##56207
		.kill Nemesis##40340 |q 25923/1
	step
		goto 64.3,53.6
		.talk Garunda Mountainpeak##41498
		..turnin Finish Nemesis##25923
		..accept Tortolla's Triumph##25928
	step
		goto 64.8,53.6 |n
		.' Go inside the blue portal |goto 64.8,53.6,0.3 |noway |c
	step
		goto 41.9,60.7
		.talk Tortolla##41504
		..turnin Tortolla's Triumph##25928
		..accept The Ancients are With Us##25653
	step
		'Hearth to Nordrassil |goto 63.1,24.1,0.3 |use Hearthstone##6948 |noway |c
	step
		goto 62.0,24.9
		.talk Ysera##40928
		..turnin The Ancients are With Us##25653
		..accept Commander Jarod Shadowsong##25597
	step
		goto 71.9,58.1
		.talk Elementalist Ortell##39621
		..turnin Commander Jarod Shadowsong##25597
		..accept Signed in Blood##25274
	step
		goto 73.5,60.5
		.talk Twilight Recruit##39619
		.' Lure the Twilight Recruit away from the group to [72.3,58.9]
		.' Use your Blackjack on the Twilight Recruit |use Blackjack##52683
		.from Twilight Recruit
		.get Twilight Recruitment Papers |q 25274/1
	step
		goto 71.9,58.1
		.talk Elementalist Ortell##39621
		..turnin Signed in Blood##25274
		..accept Your New Identity##25276
	step
		goto 76.9,62.0
		.talk Condenna the Pitiless##39442
		..turnin Your New Identity##25276
		..accept Trial By Fire##25223
		..accept In Bloom##25224
	step
		goto 77.0,62.1
		.talk Instructor Cargall##39451
		..accept Waste of Flesh##25330
	step
		goto 83.6,62.8
		.kill 8 Fiery Instructor##40564 |q 25223/1
		.click Flame Blossom##2312+
		.get 5 Flame Blossom |q 25224/1
		.' Use your Frostgale Crystal on an Immolated Supplicant |tip They are on fire running around this area.  They must be alive for you to be able to save them.  You may need to search for one of them, since they aren't very common. |use Frostgale Crystal##52819
		.' Save an Immolated Supplicant |q 25330/1
		' |modelnpc 39453
	step
		goto 77.0,62.1
		.talk Instructor Cargall##39451
		..turnin Waste of Flesh##25330
	step
		goto 76.9,62.0
		.talk Condenna the Pitiless##39442
		..turnin Trial By Fire##25223
		..turnin In Bloom##25224
		..accept Twilight Training##25291
	step
		goto 89.6,59.1
		.talk Instructor Mylva##39413
		..turnin Twilight Training##25291
		..accept Physical Training: Forced Labor##25509
	step
		goto 88.3,58.6
		.click Outhouse Hideout##3332 
		..accept Gather the Intelligence##25296
	step
		goto 90.2,56.4
		.talk Instructor Devoran##39406
		..accept Walking the Dog##25294
	step
		goto 89.5,55.5
		.click Crate of Scrolls##8704
		.get Twilight Communique |q 25296/1
	step
		goto 92.0,51.5
		.click Hyjal Battleplans##222
		.get Hyjal Battleplans |q 25296/2
	step
		goto 87.3,52.7
		.from Spinescale Basilisk##39658+
		.collect 5 Charred Basilisk Meat##52708 |q 25294
		.click Darkwhisper Lodestone##2571+
		.' Break 5 Darkwhisper Lodestones |q 25509/1
	step
		'Use your Fiery Leash |use Fiery Leash##52717
		.' You will summon the Spawn of Smolderos
		.' Use your 5 Charred Basilisk Meat |use Charred Basilisk Meat##52708
		.' Feed the Spawn of Smolderos 5 Times |q 25294/1
		' |modelnpc Spawn of Smolderos##39659
	step
		goto 88.3,58.6
		.click Outhouse Hideout##3332
		..turnin Gather the Intelligence##25296
		..accept Seeds of Discord##25308
	step
		goto 89.6,59.1
		.talk Instructor Mylva##39413
		..turnin Physical Training: Forced Labor##25509
		..accept Agility Training: Run Like Hell!##25499
	step
		goto 89.2,58.0
		.' Run around the circular structure in the middle of the camp while the Blazing Trainer fire elemental chases you
		.' Run away from the Blazing Trainer for 1 minute
		.' Complete your Physical Training |q 25499/1
		|modelnpc Blazing Trainer##40434
	step
		goto 89.6,59.1
		.talk Instructor Mylva##39413
		..turnin Agility Training: Run Like Hell!##25499
		..accept Mental Training: Speaking the Truth to Power##25299
	step
		'Use your Orb of Ascension |use Orb of Ascension##52828
		.' Use the abilities on your action bar to answer Yes or No as the Orb of Ascenion asks questions
		.' You must answer 10 questions correct.
		.' Complete your Mental Training |q 25299/1
		|modelnpc Orb of Ascension##39601
	step
		goto 89.6,59.1
		.talk Instructor Mylva##39413
		..turnin Mental Training: Speaking the Truth to Power##25299
		..accept Spiritual Training: Mercy is for the Weak##25309
	step
		goto 90.2,56.4
		.talk Instructor Devoran##39406
		..turnin Walking the Dog##25294
		..accept A Champion's Collar##25494
	step
		goto 92.1,48.9
		.kill 5 Failed Supplicant##39752 |q 25309/1
	step
		goto 84.9,47.0
		.from Spinescale Matriarch##40403
		.get Spiked Basilisk Hide |q 25494/1
	step
		goto 77.5,48.1
		.' Use your Ogre Disguise next to the Ogre Outhouse |use Ogre Disguise##55137
		.' Put on your Ogre Disguise |havebuff Interface\Icons\inv_misc_ogrepinata |q 25308
		|model Ogre Outhouse##3332
	step
		goto 76.5,49.1
		.talk Karr'gonn##40489
		..' Tell him one of the boys is causing some trouble outside
		.kill High Cultist Azennios##40491 |q 25308/1
	step
		'Right-click the Seeds of Discord buff next to your minimap to take off your Ogre Disguise |nobuff Interface\Icons\inv_misc_ogrepinata |q 25308
	step
		goto 88.3,58.6
		.click Outhouse Hideout##3332 
		..turnin Seeds of Discord##25308
	step
		goto 89.6,59.1
		.talk Instructor Mylva##39413
		..turnin Spiritual Training: Mercy is for the Weak##25309
	step
		goto 90.2,56.4
		.talk Instructor Devoran##39406
		..turnin A Champion's Collar##25494
		..accept Grudge Match##25496
	step
		goto 77.8,51.4
		.talk Gromm'ko##40409
		..' Tell him Instructor Devoran sends a contender against his raptor
		.' Wait until your Spawn of Smolderos kills his raptor, Butcher
		.from Gromm'ko
		.' Complete the Grudge Match |q 25496/1
	step
		goto 90.2,56.4
		.talk Instructor Devoran##39406
		..turnin Grudge Match##25496
	step
		goto 89.6,59.1
		.talk Instructor Mylva##39413
		..accept The Greater of Two Evils##25310
		..accept Twilight Territory##25311
	step
		goto 65.3,65.1
		.' Use your Talisman of Flame Ascendancy |use Talisman of Flame Ascendancy##54814
		.' Use the abilities on your hotbar to fight Garnoth, Fist of the Legion
		.kill Garnoth, Fist of the Legion##39726 |q 25310/1
	step
		goto 66.6,66.9
		.kill 10 Horrorguard##48725 |q 25311/1
	step
		goto 89.6,59.1
		.talk Instructor Mylva##39413
		..turnin The Greater of Two Evils##25310
		..turnin Twilight Territory##25311
	step
		goto 88.3,58.6
		.click Outhouse Hideout##3332
		..accept Speech Writing for Dummies##25314
	step
		goto 78.8,56.4
		.kill Okrog##40922 |q 25314/1 |tip You will find him walking up this road from the south.
	step
		goto 88.3,58.6
		.click Outhouse Hideout##3332
		..turnin Speech Writing for Dummies##25314
		..accept Head of the Class##25601
	step
		goto 89.6,59.1
		.talk Instructor Mylva##39413
		..turnin Head of the Class##25601
		..accept Graduation Speech##25315
	step
		goto 95.2,51.3
		.click Initiation Podium##9481
		.' Use the abilities on your hotbar to respond to what the crowd says |tip If the crowd says something angry, use your Incite! ability.  If the crowd says something crazy, use your Pander! ability.  If the crowd says something to make it seem like they are bored or unsure, use your Inspire! ability.
		.' Please the crowd 10 times
		.' Give your Graduation Speech |q 25315/1
	step
		'Use the Step Down ability on your action bar to stop standing at the podium |nobuff INTERFACE\ICONS\achievement_dungeon_bastion of twilight_twilightascendantcouncil |q 25315
	step
		goto 95.3,51.3
		.talk Commander Jarod Shadowsong##40619
		..turnin Graduation Speech##25315
		..accept Twilight Riot##25531
	step
		goto 72.2,74.7
		.talk Commander Jarod Shadowsong##41025
		..turnin Twilight Riot##25531
		..accept Slash and Burn##25608
	step
		goto 71.9,75.2
		.clicknpc Emerald Drake##40780 
		.' Ride the Emerald Drake |invehicle |noway |c |q 25608
	step
		goto 77.9,61.2
		.' Use your Aerial Swipe ability on Twilight Stormwakers
		.kill 5 Twilight Stormwaker##40573+ |q 25608/1
		.' Use your Acid Blast ability on Fiery Instructors and Twilight Initiates on the ground
		.' Kill 40 Twilight's Hammer Units |q 25608/2
	step
		.' Click the red arrow on your hotbar to stop riding on the Emerald Drake |outvehicle
	step
  		goto 72.2,74.7
		.talk Commander Jarod Shadowsong##41025
		..turnin Slash and Burn##25608
	step
		goto 72.1,74.0
		.talk Commander Jarod Shadowsong##40772
		..accept Might of the Firelord##25548
	step
		goto 71.9,74.1
		.talk Cenarius##41631
		..accept Secrets of the Flame##25554
	step
		goto 71.6,75.3
		.talk Althera##43549
		.fpath Gates of Sothann	
	step
		goto 59.7,80.8
		.click Burning Litanies##7693
		.get The Burning Litanies |q 25554/2
	step
		goto 58.1,78.9
		.click Tome of Flame##6894
		.get Tome of Flame |q 25554/3
	step
		goto 56.8,83.8
		.click Ascendant's Codex##6893
		.get Ascendant's Codex |q 25554/1
	step
		goto 59.1,83.9
		.click Pure Twilight Egg##9455
		..accept The Twilight Egg##25644
	step
		goto 58.6,81.3
		.kill 4 Flame Ascendant##40709+ |q 25548/1
		.kill 5 Twilight Subjugator##40463+ |q 25548/2
	step
		goto 71.9,74.1
		.talk Cenarius##41631
		..turnin Secrets of the Flame##25554
		..accept The Gatekeeper##25555
	step
  		goto 72.1,74.0
		.talk Commander Jarod Shadowsong##41025
		..turnin Might of the Firelord##25548
		..accept The Sanctum of the Prophets##25549
	step
		goto 72.3,74.0
		.talk Aronus##40816
		..turnin The Twilight Egg##25644
		..accept Brood of Evil##25552
	step
		goto 59.1,78.5
		.from Young Twilight Drake##40687
		.get Young Twilight Drake Skull |q 25552/1
	step
		goto 57.4,68.0
		.' Use your Horn of Cenarius |use Horn of Cenarius##55153
		.kill Azralon the Gatekeeper##40814 |q 25555/1
	step
		goto 57.0,69.4
		.kill 4 Twilight Augur##40713+ |q 25549/1
		.kill 4 Twilight Retainer##40767+ |q 25549/2
		.kill 1 Emissary of Flame##40755 |q 25549/3
		.' The Emissary of Flame patrols between the below locations:
		.' [54.7,67.0]
		.' [60.7,72.6]
	step
		goto 72.3,74.0
		.talk Aronus##40816
		..turnin Brood of Evil##25552
		..accept Death to the Broodmother##25553
	step
		goto 72.1,74.0
		.talk Commander Jarod Shadowsong##41025
		..turnin The Sanctum of the Prophets##25549
		..accept Magma Monarch##25550
	step
		goto 71.9,74.1
		.talk Cenarius##41631
		..turnin The Gatekeeper##25555
	step
		goto 54.4,85.8
		.' Use your Young Twilight Drake Skull |use Young Twilight Drake Skull##55173
		.kill Desperiona##40974 |q 25553/1
	step
		goto 43.5,83.6
		.' Use your Drums of the Turtle God |use Drums of the Turtle God##55179
		.kill King Moltron##40998 |q 25550/1
	step
		goto 72.1,74.0
		.talk Commander Jarod Shadowsong##41025
		..turnin Magma Monarch##25550
	step
		goto 72.3,74.0
		.talk Aronus##40816
		..turnin Death to the Broodmother##25553
	step
		goto 71.9,74.1
		.talk Cenarius##40773
		..accept The Firelord##25551
	step
		goto 55.5,66.3 |n
		.' Go through the blue portal |goto 55.5,66.3 |noway |c
	step
		goto 44.7,79.2
		.talk Cenarius##41631
		.' Tell him you're ready.
		.kill Ragnaros##41634 |q 25551/1
		.' Wait for Hamuul to open a portal back to Hyjal
		.' Click the portal to Hyjal |goto Mount Hyjal,72.2,74.8 |noway |c
	step
		goto 72.1,74.0
		.talk Commander Jarod Shadowsong##40772
		..turnin The Firelord##25551
		..accept The Battle Is Won, The War Goes On##27398
	step
		ding 82
	step
		goto Stormwind City,74.5,19.0
		.talk Naraat the Earthspeaker##45226
		..turnin The Battle Is Won, The War Goes On##27398
]])

ZygorGuidesViewer:RegisterInclude("A_Deepholm_Leveling",[[
	step
		goto Stormwind City,62.9,71.6
		.click Hero's Call Board##10016
		..accept Hero's Call: Deepholm!##27727
	step
		goto 74.5,19.0
		.talk Naraat the Earthspeaker##45226
		..turnin Hero's Call: Deepholm!##27727
		..accept The Maelstrom##27203
	step
		goto 74.5,18.4
		.' Click the Portal to the Maelstrom |tip It looks like a swirling green portal.
		.' Teleport to The Maelstrom |goto The Maelstrom |noway |c
	step
		goto The Maelstrom,33.4,50.2
		.talk Thrall##45042
		..turnin The Maelstrom##27203
		..accept Deepholm, Realm of Earth##27123
	step
		goto 32.5,52.0
		.clicknpc Wyvern##45005
		.' You will fly into Deepholm |goto Deepholm,49.9,54.7,0.5 |noway |c
	step
		goto Deepholm,49.6,53.0
		.talk Maruut Stonebinder##43065
		..turnin Deepholm, Realm of Earth##27123
		..accept Gunship Down##26245
	step
		goto 49.7,52.9
		.talk Seer Kormo##43397
		..accept Elemental Energy##27136
		..accept The Earth Claims All##26244
	step
		goto 49.5,53.3
		.talk Earthcaller Yevaa##42573
		..accept Where's Goldmine?##26409
	step
		goto 49.2,51.9
		.talk Caretaker Nuunwa##45300
		.home Temple of Earth
	step
		goto 46.5,57.3
		.talk Initiate Goldmine##42574
		..turnin Where's Goldmine?##26409
		..accept Explosive Bonding Compound##26410
		..accept Something that Burns##27135
	step
		goto 45.5,57.9
		.from Rockslice Flayer##42606+, Rockslice Ripper##42607+
		.get 5 Quartzite Resin |q 26410/1
		.' You can find more Rockslice Flayers around [42.5,55.6]
	step
		goto 51.1,61.6
		.' Use your Depleted Totem |use Depleted Totem##60835
		.from Lodestone Elemental##43258+, Energized Geode##43254+ |tip Kill them next to your Depleted Totems.
		.' Energize the Totem 8 Times |q 27136/1
	step
		goto 52.0,58.9
		.' Use Goldmine's Fire Totem in the red lava spot |use Goldmines's Fire Totem##60834
		.from Magmatooth##45099
		.get The Burning Heart |q 27135/1
	step
		goto 46.5,57.3
		.talk Initiate Goldmine##42574
		..turnin Explosive Bonding Compound##26410
		..turnin Something that Burns##27135
		..accept Apply and Flash Dry##26411
	step
		goto 46.6,57.2
		.' Use your Explosive Bonding Compound on Flint Oremantle |use Explosive Bonding Compound##58502 |modelnpc Flint Oremantle##43036+
		.' Apply the Explosive Bonding Compound |q 26411/1
	step
		goto 46.5,57.3
		.talk Initiate Goldmine##42574
		..turnin Apply and Flash Dry##26411
		..accept Take Him to the Earthcaller##26413
	step
		goto 49.5,53.3
		.' Introduce Flint Oremantle to Earthcaller Yevaa |q 26413/1
	step
		goto 49.5,53.3
		.talk Earthcaller Yevaa##42573
		..turnin Take Him to the Earthcaller##26413
		..accept To Stonehearth's Aid##26484
	step
		goto 49.7,52.9
		.talk Seer Kormo##43397
		..turnin Elemental Energy##27136
	step
		goto 56.1,74.2
		.clicknpc Slain Cannoneer##43032
		.' Receive the Second Clue |q 26245/2
	step
		goto 53.5,73.8
		.clicknpc Captain Skullshatter##43048 
		.' Receive the First Clue |q 26245/1
	step
		goto 53.6,73.8
		.click Captain's Log##6891
		..accept Captain's Log##26246
	step
		goto 56.7,76.4
		.clicknpc Unexploded Artillery Shell##43044 
		.' Receive the Third Clue |q 26245/3
	step
		goto 55.9,74.9
		.kill 5 Deepstone Elemental##43026+ |q 26244/1
	step
		goto 49.6,52.9
		.talk Maruut Stonebinder##43065
		..turnin Gunship Down##26245
		..turnin Captain's Log##26246
	step
		goto 49.7,52.9
		.talk Seer Kormo##43397
		..turnin The Earth Claims All##26244
	step
		goto 49.6,53.0
		.talk Maruut Stonebinder##43065
		..accept Diplomacy First##26247
	step
		goto 62.4,52.6
		.talk Stormcaller Mylra##42684
		..turnin Diplomacy First##26247
		..accept All Our Friends Are Dead##26248
		..accept The Admiral's Cabin##26249
	step
		'All around on this air ship:
		.' Use your Spirit Totem on Slain Crew Members |use Spirit Totem##58167
		.' Receive 6 Slain Crew Member Information |q 26248/1
		|modelnpc Slain Crew Member##42681+
	step
		'Enter the doorway on the main deck of the air ship:
		.talk First Mate Moody##43082
		..turnin The Admiral's Cabin##26249
		..accept Without a Captain or Crew##26427
	step
		'Leave through the doorway and immediately turn right:
		.click Bottle of Whiskey##9712 |tip Located on the life boat.
		.get Bottle of Whiskey |q 26427/1
	step
		'All around on the deck of the air ship:
		.click Spool of Rope##7538
		.get Spool of Rope |q 26427/2
	step
		'Enter the doorway on the main deck of the air ship:
		.talk First Mate Moody##43082
		..turnin Without a Captain or Crew##26427
	step
		'Go to the very top of the air ship:
		.talk Stormcaller Mylra##42684
		..turnin All Our Friends Are Dead##26248
		..accept Take No Prisoners##26251
		..accept On Second Thought, Take One Prisoner##26250
	step
		'Go onto the main deck of the ship and go down the stairs to the deck below:
		.' Fight Mor'norokk the Hateful until he surrenders |tip He's downstairs in the airship, in the very back of the first level you come to.
		.talk Mor'norokk the Hateful##42801
		.' Subdue Mor'norokk the Hateful |q 26250/1
	step
		'All around on this lower deck of the air ship:
		.kill 6 Twilight Saboteur##42885 |q 26251/1
	step
		'Go to the very top of the air ship:
		.talk Stormcaller Mylra##42684
		..turnin Take No Prisoners##26251
		..turnin On Second Thought, Take One Prisoner##26250
		..accept Some Spraining to Do##26254
	step
		Next to Stormcaller Mylra:
		.clicknpc Stormbeak##42887
		.' Interrogate Mok'norrok |q 26254/1
	step
		'When you land on the air ship again:
		.talk Stormcaller Mylra##42684
		..turnin Some Spraining to Do##26254
		..accept Return to the Temple of Earth##26255
	step
		'Hearth to Temple of Earth |goto 49.2,51.9,50 |use Hearthstone##6948 |noway |c
	step
		goto 49.6,53.0
		.talk Maruut Stonebinder##43065
		..turnin Return to the Temple of Earth##26255
		..accept Deathwing's Fall##26258
	step
		goto 49.7,52.9
		.talk Seer Kormo##43397
		..accept Blood of the Earthwarder##26259
	step
		goto 59.4,58.2
		.' Go to this spot
		.' Reach Deathwing's Fall |q 26258/1
		.' Click the Quest Complete box that displays on the right side of the screen under your minimap
		..turnin Deathwing's Fall##26258
		..accept Bleed the Bloodshaper##26256
	step
		goto 61.5,60.6
		.from Twilight Bloodshaper##43218+
		.get Twilight Orders |q 26256/1
		.' Click the Quest Complete box that displays on the right side of the screen under your minimap
		..turnin Bleed the Bloodshaper##26256
		..accept Question the Slaves##26261
	step
		goto 62.8,59.5
		.click Slavemaster's Coffer##41
		.collect 1 Twilight Slaver's Key##60739 |q 26261
	step
		goto 61.2,60.1
		.from Living Blood##43123+
		.get 5 Blood of Neltharion |q 26259/1
	step
		goto 64.5,65.5
		.click Ball and Chain##181+
		.' Free 6 Enslaved Miners |q 26261/1
		.' Click the Quest Complete box that displays on the right side of the screen under your minimap
		..turnin Question the Slaves##26261
		..accept The Forgemaster's Log##26260
	step
		goto 63.7,55.4
		.click Forgemaster's Log##6891
		..turnin The Forgemaster's Log##26260
		..accept Silvermarsh Rendezvous##27007
	step
		goto 70.6,61.2
		.' Go to this spot
		.' Reach Upper Silvermarsh |q 27007/1
		.' Click the Quest Complete box that displays on the right side of the screen under your minimap
		..turnin Silvermarsh Rendezvous##27007
		..accept Quicksilver Submersion##27010
	step
		goto 71.8,64.3
		.click Trogg Crate##9855
		.collect Trogg Crate##60809 |q 27010
		.from Murkstone Trogg##44936
		.collect 1 Maziel's Research##60816 |n
		.' Click Maziel's Research in your bags |use Maziel's Research##60816
		..accept Twilight Research##27100
	step
		goto 74.9,64.8
		.' Use your Trogg Crate in the water and swim to this spot |use Trogg Crate##60809
		.' Watch the dialogue
		.' Uncover the World Pillar Fragment Clue |q 27010/1
		.' Click the Quest Complete box that displays on the right side of the screen under your minimap
		..turnin Quicksilver Submersion##27010
		..accept The Twilight Overlook##27061
	step
		goto 72.5,65.2
		.from Mercurial Ooze##43158+
		.get 4 Twilight Research Notes |q 27100/1
		.' Click the Quest Complete box that displays on the right side of the screen under your minimap
		..turnin Twilight Research##27100
		..accept Maziel's Revelation##27101
	step
		goto 67.2,70.2
		.click Maziel's Journal##2530
		..turnin Maziel's Revelation##27101
		..accept Maziel's Ascendancy##27102
	step
		goto 69.5,68.0 |n
		.' Enter the cave |goto 69.5,68.0,0.5 |noway |c
	step
		goto 72.8,62.0
		.kill Maziel##44967 |q 27102/1
		.' Click the Quest Complete box that displays on the right side of the screen under your minimap
		..turnin Maziel's Ascendancy##27102
	step
		goto 69.5,68.0 |n
		.' Leave the cave |goto 69.5,68.0,0.5 |noway |c
	step
		goto 64.5,82.1
		.talk Stormcaller Mylra##44010
		..turnin The Twilight Overlook##27061
		..accept Big Game, Big Bait##26766
		..accept To Catch a Dragon##26768
	step
		goto 58.0,84.8
		.from Jadecrest Basilisk##43981+
		.' Use Mylra's Knife on Jadecrest Basilisk corpses |use Mylra's Knife##60382
		.get 5 Side of Basilisk Meat |q 26766/1 
		.from Twilight Dragonstalker##43992+
		.get Twilight Snare |q 26768/1
	step
		goto 64.5,82.1
		.talk Stormcaller Mylra##44010
		..turnin Big Game, Big Bait##26766
		..turnin To Catch a Dragon##26768
		..accept Testing the Trap##26771
	step
		goto 50.9,85.3
		.' Use your Trapped Basilisk Meat |use Trapped Basilisk Meat##60773
		.kill Stonescale Matriarch##44148 |q 26771/1
	step
		goto 64.5,82.1
		.talk Stormcaller Mylra##44010
		..turnin Testing the Trap##26771
		..accept Abyssion's Minions##26857
	step
		goto 64.6,82.2
		.talk Seer Galekk##44222
		..accept Block the Gates##26861
	step
		goto 68.7,75.0
		.' Use your Stormstone next to the swirling blue portal |use Stormstone##60501
		.' Disrupt the Twilight Gate |q 26861/1
	step
		goto 71.2,75.1
		.' Use your Stormstone next to the structure with the floating yellow crystal |use Stormstone##60501
		.' Disrupt the Elemental Gate |q 26861/2
	step
		goto 69.9,76.7
		.from Scalesworn Cultist##44221+, Twilight Scalesister##43967+, Twilight Dragonspawn##43966+
		.' Defeat 8 Abyssion's Underlings |q 26857/1
	step
		goto 64.6,82.2
		.talk Seer Galekk##44222
		..turnin Block the Gates##26861
	step
		goto 64.5,82.2
		.talk Stormcaller Mylra##44010
		..turnin Abyssion's Minions##26857
		..accept The World Pillar Fragment##26876
	step
		goto 69.9,76.9
		.' Use your Earthen Ring Banner |use Earthen Ring Banner##60810
		.from Abyssion##44289
		.click The First Fragment of the World Pillar##9779
		.get The Upper World Pillar Fragment |q 26876/1
	step
		'Hearth to Temple of Earth |goto 49.2,51.9,0.5 |use Hearthstone##6948 |noway |c
	step
		goto 49.6,53.0
		.talk Maruut Stonebinder##43065
		..turnin The World Pillar Fragment##26876
	step
		goto 49.7,52.9
		.talk Seer Kormo##43397
		..turnin Blood of the Earthwarder##26259
	step
		goto 27.9,68.7
		.talk Crag Rockcrusher##43071
		..turnin To Stonehearth's Aid##26484
		..accept The Quaking Fields##27931
	step
		goto 30.6,77.7
		.talk Slate Quicksand##47195
		..turnin The Quaking Fields##27931
		..accept The Axe of Earthly Sundering##27932
		..accept Elemental Ore##27933
	step
		goto 32.2,79.1
		.' Use The Axe of Earthly Sundering on Emerald Colossi |use The Ace of Earthly Sundering##60490
		.kill 5 Sundered Emerald Colossus##44229 |q 27932/1 
		.from Jade Rager##44220+
		.get 6 Elemental Ore |q 27933/1
	step
		goto 30.6,77.7
		.talk Slate Quicksand##47195
		..turnin The Axe of Earthly Sundering##27932
		..turnin Elemental Ore##27933
		..accept One With the Ground##27934
	step
		goto 30.6,77.7
		.talk Slate Quicksand##47195
		..' Tell him you are ready for the ritual
		.' Complete the One With the Ground Ritual |q 27934/1
		.' Click the Quest Complete box that displays on the right side of the screen under your minimap
		..turnin One With the Ground##27934
		..accept Bring Down the Avalanche##27935
	step
		goto 46.9,89.1
		.kill Avalanchion##44372 |q 27935/1
	step
		goto 43.4,82.0 |n
		.' Leave the cave |goto 43.4,82.0,0.5 |noway |c
	step
		goto 27.9,68.7
		.talk Crag Rockcrusher##43071
		..turnin Bring Down the Avalanche##27935
		..accept Stonefather's Boon##26499
	step
		goto 28.2,69.6
		.talk Earthbreaker Dolomite##43160
		..accept We're Surrounded##26500
	step
		goto 29.7,68.8
		.kill 12 Stone Trogg Ambusher##43134+ |q 26500/1
		.' Use Stonefather's Banner next to Stone Hearth Defenders |use Stonefather's Banner##58884 |modelnpc Stonehearth Defender##43138+
		.' Grant the Stonefather's Boon 12 times |q 26499/1
	step
		goto 28.2,69.6
		.talk Earthbreaker Dolomite##43160
		..turnin We're Surrounded##26500
		..accept Thunder Stones##26502
	step
		goto 27.9,68.7
		.talk Crag Rockcrusher##43071
		..turnin Stonefather's Boon##26499
		..accept Sealing the Way##26501
	step
		goto 27.3,67.8
		.' Use your Rockslide Reagent on the Earthen Geomancer |use Rockslide Reagent##58885 |modelnpc Earthen Geomancer##43170+
		.' Seal the Shrine |q 26501/4
	step
		goto 26.0,68.8
		.' Use your Rockslide Reagent on the Earthen Geomancer |use Rockslide Reagent##58885 |modelnpc Earthen Geomancer##43170+
		.' Seal the Barracks |q 26501/3
	step
		goto 26.2,69.8
		.' Use your Rockslide Reagent on the Earthen Geomancer |use Rockslide Reagent##58885 |modelnpc Earthen Geomancer##43170+
		.' Seal the Inn |q 26501/2
	step
		goto 27.3,70.1
		.' Use your Rockslide Reagent on the Earthen Geomancer |use Rockslide Reagent##58885 |modelnpc Earthen Geomancer##43170+
		.' Seal the Armory |q 26501/1
		.click Thunder Stone##9722+
		.get 12 Thunder Stone |q 26502/1 
	step
		goto 24.5,62.4
		.talk Gravel Longslab##43168
		..turnin Sealing the Way##26501
		..accept Shatter Them!##26537
	step
		goto 24.8,62.2
		.talk Clay Mudaxle##43169
		..turnin Thunder Stones##26502
		..accept Fixer Upper##26564
	step
		goto 24.6,62.2
		.talk Earthmender Deepvein##43319
		..accept Battlefront Triage##26591
	step
		goto 23.9,60.3
		.' Use Deepvein's Patch Kit on Injured Earthens |use Deepvein's Patch Kit##58965 |modelnpc Injured Earthen##43233
		.' Patch up 10 Injured Earthen |q 26591/1
		.' Click Catapult Parts |tip They look kind of like big metal parts laying on the ground around this area.
		.get 6 Catapult Part |q 26564/1 
		.from Stone Trogg Berserker##43228+, Stone Trogg Geomancer##43234+, Needlerock Rider##43250+
		.kill 12 Fractured Battlefront stone troggs |q 26537/1
		.' You can also look around 23.1,53.9 for more
	step
		goto 24.5,62.4
		.talk Gravel Longslab##43168
		..turnin Shatter Them!##26537
	step
		goto 24.6,62.2
		.talk Earthmender Deepvein##43319
		..turnin Battlefront Triage##26591
	step
		goto 24.8,62.2
		.talk Clay Mudaxle##43169
		..turnin Fixer Upper##26564
	step
		goto 24.5,62.4
		.talk Gravel Longslab##43168
		..accept Troggzor the Earthinator##26625
	step
		goto 22.6,56.9
		.from Troggzor the Earthinator##43456
		.get The Earthinator's Cudgel |q 26625/1
	step
		goto 24.5,62.4
		.talk Gravel Longslab##43168
		..turnin Troggzor the Earthinator##26625
	step
		goto 24.8,62.2
		.talk Clay Mudaxle##43169
		..accept Rush Delivery##27126
	step
		goto 20.7,61.6
		.talk Peak Grindstone##45043
		..turnin Rush Delivery##27126
		..accept Close Escort##26632
	step
		goto 20.7,61.6
		.talk Peak Grindstone##45043
		..' Tell him you're ready to escort the catapult |tip You need to be near the catapult or it will stop
		.' Safely Escort the Earthen Catapult |q 26632/1
		|modelnpc Earthen Catapult##43509+
	step
		goto 22.7,52.0
		.talk Pyrium Lodestone##43897
		..turnin Close Escort##26632
		..accept Keep Them off the Front##26755
	step
		goto 22.4,52.0
		.clicknpc Earthen Catapult##43509
		.' Use your Fire Catapult ability on your hotbar on the Stone Trogg and Fungal mobs
		.' Bombard 30 Reinforcements |q 26755/1
	step
		goto 22.7,52.0
		.talk Pyrium Lodestone##43897
		..turnin Keep Them off the Front##26755
		..accept Reactivate the Constructs##26762
	step
		goto 22.8,52.1
		.talk Flint Oremantle##43898
		..accept Mystic Masters##26770
	step
		goto 22.6,47.6
		.clicknpc Deactivated War Construct##43984
		.' Reactivate 5 Deactivated War Constructs |q 26762/1
		.kill 5 Needlerock Mystic |q 26770/1
		.'|tip Activate the golems before attacking mystics.
	step
		goto 22.8,52.1
		.talk Flint Oremantle##43898
		..turnin Mystic Masters##26770
	step
		goto 22.7,52.0
		.talk Pyrium Lodestone##43897
		..turnin Reactivate the Constructs##26762
		..accept Down Into the Chasm##26834
	step
		goto 27.6,44.8
		.talk Slate Quicksand##44143
		..turnin Down Into the Chasm##26834
		..accept Sprout No More##26791
		..accept Fungal Monstrosities##26792
	step
		goto 27.6,44.7
		.clicknpc War Guardian##44126
		.' Obtain a War Guardian for the Sprout No More quest |q 26791/1
		.' Obtain a War Guardian for the Fungal Monstrosities quest |q 26792/1
	step
		goto 26.8,41.8
		.kill 5 Fungal Monstrosity##44035+ |q 26792/2
		.clicknpc Giant Mushroom##44049+
		.' Destroy 5 Giant Mushrooms |q 26791/2
	step
		goto 27.6,44.8
		.talk Slate Quicksand##44143
		..turnin Sprout No More##26791
		..turnin Fungal Monstrosities##26792
		..accept A Slight Problem##26835
	step
		goto 22.7,52.0
		.talk Pyrium Lodestone##43897
		..turnin A Slight Problem##26835
		..accept Rescue the Stonefather... and Flint##26836
	step
		goto 24.5,31.1
		.from Bouldergut##44151
		.' Rescue Stonefather Oremantle |q 26836/1
	step
		goto 22.7,52.0
		.talk Pyrium Lodestone##43897
		..turnin Rescue the Stonefather... and Flint##26836
		..accept The Hero Returns##27937
	step
		goto 28.0,68.6
		.talk Stonefather Oremantle##44204
		..turnin The Hero Returns##27937
		..accept The Middle Fragment##27938
	step
		goto 28.0,68.7
		.click The Stonefather's Safe##7608
		.get The Middle Fragment of the World Pillar |q 27938/1
	step
		'Hearth to Temple of Earth |goto 49.2,51.9,0.5 |use Hearthstone##6948 |noway |c
	step
		goto 49.5,53.3
		.talk Earthcaller Yevaa##42573
		..turnin The Middle Fragment##27938
	step
		goto 49.6,53.0
		.talk Maruut Stonebinder##43065
		..accept The Very Earth Beneath Our Feet##26326
	step
		goto 46.1,45.6
		.talk Earthcaller Torunscar##42730
		..turnin The Very Earth Beneath Our Feet##26326
		..accept Crumbling Defenses##26312
		..accept On Even Ground##26314
	step
		goto 46.2,45.7
		.talk Earthmender Norsala##42731
		..accept Core of Our Troubles##26313
	step
		goto 44.3,43.7
		.from Irestone Rumbler##42780+
		.get Irestone Core##58168 |q 26313/1 |n
		.' Use your Elementium Grapple Line on Servants of Therazane |use Elementium Grapple Line##58169 |tip Run away from the Servants of Therazane to bring them down.
		.' Relieve Stormcaller Mylra |q 26312/2
		|modelnpc Servant of Therazane##42781+
	step
		goto 44.5,41.3
		.from Irestone Rumbler##42780+
		.get Irestone Core##58168 |q 26313/1 |n
		.' Use your Elementium Grapple Line on Servants of Therazane |use Elementium Grapple Line##58169 |tip Run away from the Servants of Therazane to bring them down.
		.' Relieve Tawn Winterbluff |q 26312/1
		|modelnpc Servant of Therazane##42781+
	step
		goto 47.6,42.8
		.from Irestone Rumbler##42780+
		.get Irestone Core##58168 |q 26313/1 |n
		.' Use your Elementium Grapple Line on Servants of Therazane |use Elementium Grapple Line##58169 |tip Run away from the Servants of Therazane to bring them down.
		.' Relieve Hargoth Dimblaze |q 26312/3
		|modelnpc Servant of Therazane##42781+
	step
		goto 46.2,42.2
		.from Irestone Rumbler##42780+
		.get 6 Irestone Core |q 26313/1
		.' Use your Elementium Grapple Line on Servants of Therazane |use Elementium Grapple Line##58169 |tip Run away from the Servants of Therazane to bring them down.
		.' Bring down 3 Servants of Therazane |q 26314/1
		|modelnpc Servant of Therazane##42781+
	step
		goto 46.2,45.7
		.talk Earthmender Norsala##42731
		..turnin Core of Our Troubles##26313
	step
		goto 46.1,45.6
		.talk Earthcaller Torunscar##42730
		..turnin Crumbling Defenses##26312
		..turnin On Even Ground##26314
	step
		goto 46.2,45.7
		.talk Earthmender Norsala##42731
		..accept Imposing Confrontation##26315
	step
		goto 49.2,40.1
		.' Use your Earthen Ring Proclamation on Boden the Imposing |use Earthen Ring Proclamation##58177 |tip He's a huge rock giant that walks around this area.
		.' Seek Peace with Boden the Imposing |q 26315/1
		|modelnpc Boden the Imposing##42471+
	step
		goto 46.2,45.7
		.talk Earthmender Norsala##42731
		..turnin Imposing Confrontation##26315
		..accept Rocky Relations##26328
	step
		goto 56.5,42.7
		.talk Diamant the Patient##42467
		..turnin Rocky Relations##26328
		..accept Hatred Runs Deep##26376
		..accept Unsolid Ground##26377
	step
		goto 56.5,41.0
		.talk Quartz Stonetender##42899
		..accept Loose Stones##26375
	step
		goto 60.2,39.4
		.kill Dragul Giantbutcher##42921 |q 26376/1
	step
		goto 59.5,41.5
		.click Jade Crystal Cluster##9694+
		.collect 6 Jade Crystal Cluster##58500 |q 26377
		.' Use your Delicate Chain Smasher next to Quartz Rocklings |use Delicate Chain Smasher##58254 |tip They look like small rock giants around this area.
		.' Release 6 Quartz Rocklings |q 26375/1
		|modelnpc Quartz Rockling##42900+
	step
		'Use the Jade Crystal Clusters |use Jade Crystal Cluster##58500
		.collect Jade Crystal Composite##58783 |q 26377
	step
		goto 59.6,41.4
		.' Use your Jade Crystal Composite |use Jade Crystal Composite##58783
		.' Lure an Agitated Tunneler |q 26377/1
	step
		goto 59.3,40.6
		.from Twilight Laborer##42924+, Twilight Priestess##42823+, Twilight Duskwarden##42917+
		.kill 12 Lorthuna's Gate Cultists |q 26376/2
	step
		goto 56.5,41.0
		.talk Quartz Stonetender##42899
		..turnin Loose Stones##26375
	step
		goto 56.5,42.7
		.talk Diamant the Patient##42467
		..turnin Hatred Runs Deep##26376
		..turnin Unsolid Ground##26377
		..accept Violent Gale##26426
	step
		goto 51.7,31.6
		.' Get next to Felsen the Enduring
		.' Find Felsen the Enduring |q 26426/1
		' |modelnpc 43805
	step
		goto 58.4,25.7
		.' Fly to the mouth of this cave
		.' Find the entrance to the Crumbling Depths |q 26426/2
		.' Click the Quest Complete box that displays on the right side of the screen under your minimap
		..turnin Violent Gale##26426
		..accept Depth of the Depths##26869
	step
		goto 64.5,21.7 |n
		.' Follow the path |goto 64.5,21.7,0.5 |noway |c
	step
		goto 65.3,18.4 |n
		.' Follow the path |goto 65.3,18.4,0.5 |noway |c
	step
		goto 66.4,20.6
		.click Gigantic Painite Cluster##9815
		..turnin Depth of the Depths##26869
		..accept A Rock Amongst Many##26871
	step
		goto 64.3,23.5
		.' Follow the path to this spot, then jump down |goto 64.3,23.5,0.5 |noway |c
	step
		goto 58.3,25.5 |n
		.' Leave the cave |goto 58.3,25.5,0.5 |noway |c
	step
		goto 56.5,42.7
		.talk Diamant the Patient##42467
		..turnin A Rock Amongst Many##26871
		..accept Entrenched##26436
	step
		goto 34.3,34.3
		.talk Kor the Immovable##42469
		..turnin Entrenched##26436
		..accept Intervention##26438
		..accept Making Things Crystal Clear##26437
	step
		goto 34.1,35.2
		.talk Berracite##43344
		..accept Putting the Pieces Together##26439
	step
		goto 30.5,46.8
		.from Jaspertip Borer##42524+, Jaspertip Swarmer##42521+, Jaspertip Ravager##42525+
		.kill 12 Jaspertip flayers |q 26438/1
		.click Chalky Crystal Formation##9715+
		.get 8 Chalky Crystal Formation |q 26437/1 
		.clicknpc Dormant Stonebound Elemental##43115
		.' Reform 6 Stonebound Elementals |q 26439/1
	step
		goto 34.3,34.3
		.talk Kor the Immovable##42469
		..turnin Intervention##26438
		..turnin Making Things Crystal Clear##26437
	step
		goto 34.1,35.2
		.talk Berracite##43344
		..turnin Putting the Pieces Together##26439
	step
		'Next to you:
		.talk Pebble##43116
		..accept Clingy##26440
	step
		goto 30.1,47.7
		.' Get next to the huge green crystals
		.' Bring Pebble to the crystal formation |q 26440/1
	step
		'Next to you:
		.talk Pebble##43116
		..turnin Clingy##26440
		..accept So Big, So Round...##26441
	step
		goto 34.3,34.3
		.talk Kor the Immovable##42469
		..turnin So Big, So Round...##26441
		..accept Petrified Delicacies##26507
		..accept Rock Bottom##26575
	step
		goto 47.6,26.8
		.kill Gorgonite##43339 |q 26575/1
	step
		goto 47.5,26.8
		.clicknpc Petrified Stone Bat##43182+
		.get 12 Petrified Stone Bat |q 26507/1
	step
		'Next to you:
		.talk Pebble##43116
		..turnin Petrified Delicacies##26507
	step
		goto 34.3,34.3
		.talk Kor the Immovable##42469
		..turnin Rock Bottom##26575
		..accept Steady Hand##26576
		..accept Rocky Upheaval##26577
	step
		goto 39.9,19.4
		.talk Terrath the Steady##42466
		..turnin Steady Hand##26576
		..accept Don't. Stop. Moving.##26656
	step
		goto 39.9,19.4
		.talk Terrath the Steady##42466
		..' Tell him you are ready to escort a group of elementals across the open.
		.' Speak to Terrath the Steady |q 26656/1
	step
		goto 51.1,14.7
		.' Go to this spot
		.' Escort 5 Opalescent Guardians to safety |q 26656/2 |tip Run on the ground with your mount, don't fly or you the rock elementals will disappear when you get too far away from them.
		' |modelnpc 43591
	step
		goto 39.9,19.4
		.talk Terrath the Steady##42466
		..turnin Don't. Stop. Moving.##26656
		..accept Hard Falls##26657
		..accept Fragile Values##26658
	step
		goto 35.4,22.5
		.from Stone Trogg Beast Tamer##43598 |tip He moves all around this area capturing basilisks, so you may need to look around a bit for him.
		.get Stonework Mallet |q 26658/1
	step
		goto 36.5,18.8
		.kill 6 Stone Drake##42522 |q 26657/1 |tip They will fall to the ground with half health, so you can kill them, even though they are elite.
	step
		goto 40.0,19.4
		.talk Terrath the Steady##42466
		..turnin Hard Falls##26657
		..turnin Fragile Values##26658
		..accept Resonating Blow##26659
	step
		goto 32.7,24.3
		.' Use your Stonework Mallet next to the Pale Resonating Crystal |use Stonework Mallet##60266 
		.' Strike the Pale Resonating Crystal |q 26659/1
		.from Aeosera##43641 |tip Click the Boulder Platforms to jump from rock to rock while fighting Aeosera.  When she is casting her Searing Breath ability, jump to another rock and attack her while she is breathing fire to the other rock.  Repeat this until she surrenders.
		.' Defeat Aeosera |q 26659/2
		|model Pale Resonating Crystal##6415
	step
		goto 33.1,24.1
		.talk Terrath the Steady##42466
		..turnin Resonating Blow##26659
		.' If Terrath the Steady doesn't spawn at the appropriate spot, go to [40.0,19.4]
	step
		goto 72.2,54.0
		.talk Gorsik the Tumultuous##42472
		..turnin Rocky Upheaval##26577
		..accept Doomshrooms##26578
		..accept Gone Soft##26579
		..accept Familiar Intruders##26580
	step
		goto 71.8,47.6
		.talk Windspeaker Lorvarius##43395
		..turnin Familiar Intruders##26580
		..accept A Head Full of Wind##26581
	step
		goto 73.6,40.8
		.kill 8 Fungal Behemoth##42475+ |q 26579/1
		.from Doomshroom##43388+
		.' Destroy 10 Doomshrooms |q 26578/1
		.' Gather a sample of the red mist |q 26581/1 |tip There are small clouds of red mist that float around on the ground around this area.  Walk into one of them to gather a sample.
		.' You will be able to find more Fungal Behemoths and Doomshrooms around [76.6,44.4]
	step
		goto 71.8,47.6
		.talk Windspeaker Lorvarius##43395
		..turnin A Head Full of Wind##26581
		..accept Unnatural Causes##26582
	step
		goto 72.2,54.0
		.talk Gorsik the Tumultuous##42472
		..turnin Doomshrooms##26578
		..turnin Gone Soft##26579
		..turnin Unnatural Causes##26582
		..accept Shaken and Stirred##26584
		..accept Corruption Destruction##26585
	step
		goto 68.5,26.4
		.talk Ruberick##43442
		..accept Wrath of the Fungalmancer##26583
	step
		goto 68.6,29.1 |n
		.' Enter the cave |goto 68.6,29.1,0.5 |noway |c
	step
		goto 69.8,31.9
		.talk Earthmender Norsala##43503
		..' Tell her you're ready when she is |q 26583/1
		.kill Fungalmancer Glop##43372 |q 26583/2 |tip Follow him each time he runs away.  Avoid the mushrooms as you walk, they will give you a debuff.  While fighting Fungalmancer Glop, avoid the Boomshrooms he creates.
	step
		goto 70.2,33.8 |n
		.' Follow the path up |goto 70.2,33.8,0.5 |noway |c
	step
		goto 68.6,29.1 |n
		.' Leave the cave |goto 68.6,29.1,0.5 |noway |c
	step
		goto 68.5,26.3
		.talk Ruberick##43442
		..turnin Wrath of the Fungalmancer##26583
	step
		goto 69.4,24.8
		.kill 8 Verlok Pillartumbler##43513+ |q 26584/1
		.click Verlok Miracle-Grow##6895
		.get 8 Verlok Miracle-Grow |q 26585/1
	step
		goto 72.2,54.0
		.talk Gorsik the Tumultuous##42472
		..turnin Shaken and Stirred##26584
		..turnin Corruption Destruction##26585
		..accept At the Stonemother's Call##26750
	step
		goto 56.3,12.2
		.talk Therazane##42465
		..turnin At the Stonemother's Call##26750
		..accept Audience with the Stonemother##26752
	step
		'Watch the dialogue
		.' Attend the Stonemother's Audience |q 26752/1
	step
		goto 56.1,13.5
		.talk Earthcaller Torunscar##43809
		..turnin Audience with the Stonemother##26752
		..accept Rallying the Earthen Ring##26827
	step
		ding 83
	step
		'Hearth to the Temple of Earth |goto 49.2,51.9,0.5 |use Hearthstone##6948 |noway |c
	step
		goto 47.3,51.4
		.talk Explorer Mowi##44799
		..accept The Twilight Plot##27004
	step
		goto 47.3,51.4
		.talk Prospector Brewer##44802
		..accept Fly Over##27006
	step
		goto 39.0,74.2
		.' Go to this spot next to the big white portal
		.' Investigate the Master's Gate |q 27006/1
	step
		goto 40.1,72.2
		.from Twilight Cryptomancer##44855+, Twilight Crusher##44849+, Twilight Armsman##44847+
		.get Masters' Gate Plans |q 27004/1
	step
		goto 47.3,51.4
		.talk Explorer Mowi##44799
		..turnin The Twilight Plot##27004
	step
		goto 47.3,51.4
		.talk Prospector Brewer##44802
		..turnin Fly Over##27006
		..accept Fight Fire and Water and Air with...##27042
	step
		goto 47.3,51.4
		.talk Explorer Mowi##44799
		..accept Decryption Made Easy##27040
	step
		goto 40.8,66.3
		.from Bound Water Elemental##44886
		.' Acquire the Water Ward |q 27042/2
	step
		goto 36.0,67.4
		.from Bound Fire Elemental##44887
		.' Acquire the Fire Ward |q 27042/1
	step
		goto 40.5,72.4
		.from Bound Air Elemental##44885
		.' Acquire the Air Ward |q 27042/3
	step
		goto 40.2,67.5
		.click One-Time Decryption Engine##9842+
		.' Decrypt 6 Plans |q 27040/1
		.' Click the Quest Complete box that displays on the right side of the screen under your minimap
		..turnin Decryption Made Easy##27040
		..accept The Wrong Sequence##27058
	step
		goto 39.1,73.9
		.click the Waygate Controller##9849
		.' Destroy the Waygate |q 27058/1
	step
		goto 39.9,62.2
		.kill Haethen Kaul##44835 |q 27042/4 |tip He's up on a huge floating rock.
	step
		goto 47.3,51.4
		.talk Explorer Mowi##44799
		..turnin The Wrong Sequence##27058
		..accept That's No Pyramid!##28292
	step
		goto 47.3,51.4
		.talk Prospector Brewer##44802
		..turnin Fight Fire and Water and Air with...##27042
	step
		goto 48.0,53.7
		.' Talk with Windspeaker Lorvarius, Yuldris Smolderfury, Tawn Winterbluff, Earthcaller Yevaa and Tharm Wildfire at the below locations:
		.' [48.5,50.1]
		.' [47.4,50.9]
		.' [48.1,49.9]
		..' Tell them you are joining an assault on Lorthuna's Gate and they are needed.
		.' Rally 5 Earthen Ring |q 26827/1
		' |modelnpc Windspeaker Lorvarius##43836+
		' |modelnpc Yuldris Smolderfury##45034+
		' |modelnpc Earthcaller Yevaa##44646+
		' |modelnpc Tawn Winterbluff##44634+
		' |modelnpc Tharm Wildfire##44631+
	step
		goto 49.6,53.0
		.talk Maruut Stonebinder##43065
		..turnin Rallying the Earthen Ring##26827
		..accept Our Part of the Bargain##26828
	step
		goto 63.3,25.0
		.talk Therazane##44025
		..turnin Our Part of the Bargain##26828
		..accept The Stone March##26829
		..accept Therazane's Mercy##26832
	step
		goto 62.6,26.9
		.talk Boden the Imposing##44080
		..accept The Twilight Flight##26831
	step
		goto 62.4,31.8
		.from High Priestess Lorthuna##42914 |tip She is in a small room on the top of this building.  She is elite, but you can still kill her.  She will run away when she is almost dead.
		.' Defeat High Priestess Lorthuna |q 26832/2
	step
		goto 58.9,32.9
		.from Boldrich Stonerender##42923
		.' Defeat Boldrich Stonerender |q 26832/1
	step
		goto 63.1,38.1
		.from Zoltrik Drakebane##42918 |tip You will eventually get on a stone drake and fly after Zoltrik Drakebane.  You can use your Jump ability to jump onto his drake, if you are a melee class.  Either way, you will land on a rock with him and kill him there.
		.' Defeat Zoltrik Drakebane |q 26831/1
	step
		goto 64.1,36.9
		.talk Terrath the Steady##42614
		..turnin The Twilight Flight##26831
	step
		goto 60.3,33.2
		.from Defaced Earthrager##44076+, Twilight Soulreaper##42916+, Twilight Priestess##42823+
		.kill 15 Twilight Precipice Cultists |q 26829/1
	step
		goto 63.3,25.0
		.talk Therazane##44025
		..turnin The Stone March##26829
		..turnin Therazane's Mercy##26832
		..accept Word In Stone##26833
	step
		goto 49.6,53.0
		.talk Maruut Stonebinder##43818
		..turnin Word In Stone##26833
		..accept Undying Twilight##26875
	step
		goto 50.7,49.6
		.kill 12 Twilight Invaders |q 26875/1
		.kill Desecrated Earthrager##44683 |q 26875/2
		.' Click the Quest Complete box that displays on the right side of the screen under your minimap
		..turnin Undying Twilight##26875
		..accept The Binding##26971
		' |modelnpc 44681
	step
		goto 49.6,52.9
		.kill High Priestess Lorthuna##43837 |q 26971/1 
	step
		goto 49.6,52.9
		.talk Earthcaller Torunscar##43835
		..turnin The Binding##26971
]])

ZygorGuidesViewer:RegisterInclude("A_Vashj'ir_Leveling",[[
	step
		goto Stormwind City,62.9,71.6
		.click Hero's Call Board##10016
		..accept Hero's Call Vashj'ir##27724
	step
		'When you enter Stormwind City:
		.' You will automatically accept a quest
		..accept A Personal Summons##28825		
	step
		goto Stormwind City,74.5,19.0
		.talk Naraat the Earthspeaker##45226
		..turnin A Personal Summons##28825
		..accept Eye of the Storm##28826
	step
		goto 74.4,19.5
		.click Waters of Farseeing##445
		.' Peer into the Waters of Farseeing |q 28826/1
	step
		goto 74.5,19.0
		.talk Naraat the Earthspeaker##45226
		..turnin Eye of the Storm##28826
	step
		goto 27.4,24.1
		.talk Recruiter Burns##36799
		..turnin Hero's Call Vashj'ir##27724
		..accept Call of Duty##14482
	step
		 goto 18.5,25.4 |n
		.' Ride the mercenary ship to Vashj'ir |q 14482/1 |tip Wait on the docks, it could take a little while for the boat to finally show up.
	step
		goto Kelp'thar Forest,45.2,23.4
		.talk Erunak Stonespeaker##36915
		..turnin Call of Duty##14482
		..accept Sea Legs##24432
	step
		goto 44.5,25.0
		.click Saltwater Stars##9991
		.get 3 Saltwater Starfish |q 24432/1
		.click Conch Shell##9440
		.get Conch Shell |q 24432/2
	step
		goto 45.2,23.4
		.talk Erunak Stonespeaker##36915
		..turnin Sea Legs##24432
		..accept Pay It Forward##25281
	step
		goto 44.3,27.6
		.' Use your Enchanted Conch on Drowning Warriors |use Enchanted Conch##52710 
		.' Rescue 6 Drowning Soldiers |q 25281/1
		'|modelnpc Drowning Soldier##39663
	step
		goto 45.2,23.4
		.talk Erunak Stonespeaker##36915
		..turnin Pay It Forward##25281
		..accept Rest For the Weary##25405
	step
		goto 45.2,23.4
		.talk Erunak Stonespeaker##36915
		.home The Briny Cutter
	step
		goto 44.7,22.6
		.talk Captain Taylor##39887
		..turnin Rest For the Weary##25405
		..accept Buy Us Some Time##25357
		..accept Traveling on Our Stomachs##25546
	step
		 goto 43.7,25.6
		.from Splitclaw Skitterer##40685+
		.get 10 Succulent Crab Meat |q 25546/1
	step
		goto 48.7,27.4
		.kill 8 Zin'jatar Raider##39313+ |q 25357/1
	step
		goto 44.7,22.6
		.talk Captain Taylor##39887
		..turnin Buy Us Some Time##25357
		..turnin Traveling on Our Stomachs##25546
		..accept To Arms!##25545
		..accept Stormwind Elite Aquatic and Land Forces##25564
	step
		goto 49.1,21.4
		.from Slitherfin Eel##40855
		..accept Once More, With Eeling##27729 |tip This quest will automatically be accepted after you kill an eel.
	step
		goto 48.0,20.9
		.click Stormwind Breastplates##4074
		.get 5 Stormwind Breastplate |q 25545/1
		.click Stormwind Helm##9486
		.get 5 Stormwind Helm |q 25545/2
		.click Stormwind Spear##9494
		.get 5 Stormwind Spear |q 25545/3
		.from Gilblin Scavenger##40811+
		.get 5 Stormwind Shield |q 25545/4
		.click the Stormwind S.E.A.L. Equipment##9280
		.get 6 Stormwind S.E.A.L. Equipment |q 25564/1
		.from Slitherfin Eel##40855+
		.' Justifiably Slay 8 Disgusting Eels |q 27729/1
	step
		'Click the Quest Completion box that pops up
		..turnin Once More, With Eeling##27729
	step
		goto 44.7,22.6
		.talk Captain Taylor##39887
		..turnin To Arms!##25545
		..turnin Stormwind Elite Aquatic and Land Forces##25564
		..accept On Our Own Terms##25547
	step
		goto 45.0,23.5
		.talk Captain Taylor##40690
		..turnin On Our Own Terms##25547
		..accept All or Nothing##25558
	step
		goto 44.4,24.6
		.' Follow the troops out and help them defend the Briny Cutter from the waves of nagas
		.' Swim over to [46.4,46.5] after you get kidnapped
		.' Defense of The Briny Gutter Complete |q 25558/1
	step
		goto 46.3,46.9
		.talk Erunak Stonespear##40105
		..turnin All or Nothing##25558
	step
		goto 46.0,46.9
		.talk Moanah Stormhoof##41248
		..accept Better Late Than Dead##25477
	step
		goto 54.2,53.0
		.' Use Moanah's Baitstick on a Speckled Sea Turtle |use Moanah's Baitstick##54462 |modelnpc Speckled Sea Turtle##40223
		.' Start swimming back to Moanah Stormhoof at [46.0,46.9]
		.' Mount the Sea Turtle |q 25477/1
	step
		goto 46.0,46.9
		.talk Moanah Stormhoof##41248
		..turnin Better Late Than Dead##25477
		..accept The Abyssal Ride##25371
	step
		goto 45.4,46.6
		.click Braided Rope##7548
		..' Tie your lure off and let it loose
		.' Tie off the Seahorse lure |q 25371/1
		.clicknpc Abyssal Seahorse##39629 |invehicle 
	step
		'Use the abilities on your action bar and follow the on screen instructions to hold onto the seahorse
		.' Subdue an Abyssal Seahorse |q 25371/2
	step
		goto 46.0,46.9
		.talk Moanah Stormhoof##41248
		..turnin The Abyssal Ride##25371
	step
		.learnmount Subdued Abyssal Seahorse##75207 |use Subdued Abyssal Seahorse##54465
	step
		goto 46.6,46.8
		.talk Rendel Firetongue##41252
		..accept Good Deed Left Undone##27685
	step
		goto 53.5,43.0
		.talk Adarrah##39667
		..turnin Good Deed Left Undone##27685
		..accept Gimme Shelter!##25587
	step
		goto 54.4,33.7 |n
		.' Enter the cave |goto 54.4,33.7,0.5 |noway |c
	step
		goto 56.8,29.8
		.' Go to this spot
		.' Scout Smuggler's Hole |q 25587/1
	step
		goto 54.4,33.7 |n
		.' Leave the cave |goto 54.4,33.7,0.5 |noway |c
	step
		goto 54.0,34.6
		.' Go to this spot
		.' Signal Adarrah |q 25587/2
	step
		goto 54.4,33.7 |n
		.' Enter the cave |goto 54.4,33.7,0.5 |noway |c
	step
		goto 57.1,28.8
		.talk Adarrah##39883
		..turnin Gimme Shelter!##25587
		..accept Ain't Too Proud to Beg##25598
	step
		goto 54.4,33.7 |n
		.' Leave the cave |goto 54.4,33.7,0.5 |noway |c
	step
		goto 48.3,39.6
		.talk Captain Samir##39669
		..' Tell him to make for that cave to the west
		.' Rescue Mack and Samir |q 25598/1
	step
		goto 49.7,40.9
		.click Sunken Crate##336
		..accept A Case of Crabs##25388
	step
		goto 54.4,33.7 |n
		.' Enter the cave |goto 54.4,33.7,0.5 |noway |c |travelfor 2
	step
		goto 57.1,28.8
		.talk Adarrah##39883
		..turnin Ain't Too Proud to Beg##25598
		..turnin A Case of Crabs##25388
		..accept A Girl's Best Friend##25390
		..accept A Taste For Tail##25389
	step
		goto 57.3,28.9
		.talk Captain Samir##39884
		..accept Can't Start a Fire Without a Spark##25602
	step
		goto 54.4,33.7 |n
		.' Leave the cave |goto 54.4,33.7,0.5 |noway |c
	step
		goto 49.7,38.4
		.from Clacksnap Pincer##39918+
		.get 4 Clacksnap Tail |q 25389/1
		.collect Tattered Treasure Map##53053 |n
		.' Use your Tattered Treasure Map in your bags |use Tattered Treasure Map##53053
		..accept The Horde's Hoard##25377
		.click Adarrah's Jewelry Boxe##1+
		.get 6 Adarrah's Keepsake |q 25390/1
	step
		goto 55.5,38.8
		.click Keg of Gunpowder##472
		.get Keg of Gunpowder |q 25602/1
	step
		goto 57.2,37.8
		.from Akasha##39964
		.get Horde Chest Key |q 25377/1
	step
		goto 57.8,35.2
		.click Sunken Horde Chest##9281
		..turnin The Horde's Hoard##25377
	step
		goto 54.4,33.7 |n
		.' Enter the cave |goto 54.4,33.7,0.5 |noway |c
	step
		goto 57.1,28.8
		.talk Adarrah##39883
		..turnin A Girl's Best Friend##25390
		..turnin A Taste For Tail##25389
	step
		goto 57.3,28.9
		.talk Captain Samir##39884
		..turnin Can't Start a Fire Without a Spark##25602
	step
		goto 57.1,28.8
		.talk Adarrah##39883
		..accept Ophidophobia##25459
	step
		goto 57.3,29.3
		.talk Mack Fearsen##40983
		..accept Nerve Tonic##25358
	step
		goto 54.4,33.7 |n
		.' Leave the cave |goto 54.4,33.7,0.5 |noway |c
	step
		goto 55.3,38.9
		.talk Budd##46338
		..accept Oh, the Insanity!##25651	
	step
		goto 56.8,36.3
		.from Brinescale Serpent##39948+
		.' Slay 4 Brinescale Serpent |q 25459/1
		.click Sunken Cargo##7539
		.get 5 Sunken Cargo |q 25358/1
	step
		goto 52.1,51.5
		.from Gilblin Hoarder##41016+
		.click Pilfered Cannonball##4177+
		.collect 50 Pilfered Cannonball##55185 |n
		.' Use your Pilfered Cannonballs |use Pilfered Cannonball##55185
		.get Barrel of Gunpowder |q 25651/1
	step
		goto 55.3,38.9
		.talk Budd##46338
		..turnin Oh, the Insanity!##25651
		..accept Dah, Nunt.. Dah, Nunt..##25657
	step
		goto 54.4,33.7 |n
		.' Enter the cave |goto 54.4,33.7,0.5 |noway |c
	step
		goto 57.3,29.3
		.talk Mack Fearsen##40983
		..turnin Nerve Tonic##25358
	step
		goto 57.1,28.8
		.talk Adarrah##39883
		..turnin Ophidophobia##25459
	step
		goto 56.4,30.1
		.click Broken Bottle##238
		..accept A Desperate Plea##25638
	step
		goto 54.4,33.7 |n
		.' Leave the cave |goto 54.4,33.7,0.5 |noway |c
	step
		goto 46.3,46.9
		.talk Erunak Stonespeaker##40105
		..turnin A Desperate Plea##25638
		..accept Undersea Sanctuary##25794
	step
		'Use Erunak's Scrying Orb |use Erunak's Scrying Orb##56020 |q 25794/1
	step
		goto 46.3,46.9
		.talk Erunak Stonespeaker##40105
		..turnin Undersea Sanctuary##25794
		..accept Spelunking##25812
	step
		goto 58.3,48.8
		.' Use your Booby-Trapped Bait next to the Rusty Harpoon Gun |use Booby-Trapped Bait##55190
		.' Feed the Explosive Grub to Gnaws |q 25657/1
		.' Click the Quest Complete box that displays on the right side of the screen under your minimap
		..turnin Dah, Nunt... Dah, Nunt...##25657
		..accept Shark Weak##27699
	step
		goto 58.4,50.1
		.click Gnaws' Tooth##9517
		.get 5 Gnaws' Tooth |q 27699/1
	step
		goto 55.3,38.9
		.talk Budd##46338
		..turnin Shark Weak##27699
		..accept DUN-dun-DUN-dun-DUN-dun##25670
	step
		goto 58.3,48.8
		.' Use your Budd's Chain next to the Rusty Harpoon Gun |use Budd's Chain##55220 
		.' While in Gnaws' mouth, spam the ability on your hotbar |tip A huge harpoon will eventually shoot into Gnaws.  Once that happens, you can stop spamming the ability.
		.' Slay Gnaws |q 25670/1
	step
		goto 61.5,63.4 |n
		.' Enter the cave |goto 61.5,63.4,0.5 |noway |c
	step
		goto 64.0,59.8
		.talk Private Pollard##41324
		..turnin Spelunking##25812
	step
		goto 63.9,59.9
		.talk Erunak Stonespeaker##41341
		..accept Debriefing##25824
	step
		goto 64.0,59.8
		.talk Private Pollard##41340
		..' Ask him who he is
		.' Debrief Private Pollard |q 25824/1
	step
		goto 63.9,59.9
		.talk Erunak Stonespeaker##41341
		..turnin Debriefing##25824
		..accept Wake of Destruction##25887
	step
		goto 58.4,48.7
		.talk Budd##46458
		..turnin DUN-dun-DUN-dun-DUN-dun##25670
		..accept A Bone to Pick##25732
	step
		goto 53.6,58.0
		.from King Gurboggle##41018
		.get The Pewter Pounder |q 25732/1
	step
		goto 58.4,48.7
		.talk Budd##46458
		..turnin A Bone to Pick##25732
		..accept Decisions, Decisions##25743
	step
		'Use The Pewter Pounder |use The Pewter Pounder##55806
		.' Destroy The Pewter Prophet |q 25743/1
	step
		goto 58.4,48.6
		.talk Budd##46463
		..turnin Decisions, Decisions##25743
	step
		goto 58.7,72.4
		.' Use your Orb of Suggestion on a Famished Great Shark |use Orb of Suggestion##56576
		.' Take control of a Famished Great Shark |invehicle |q 25887
	step
		goto 57.5,72.4
		.' Use the Eat Naga ability on your hotbar repeatedly near Zin'jatar Guardians |tip They are nagas all around this area.
		.' Eat 10 Zin'jatar Guardians Alive |q 25887/1
		.' Use the Return to Safety ability on your hotbar
		.' Go back to the Deepmist Grotto |outvehicle |q 25887
		' |modelnpc 41481
	step
		goto 61.1,63.9 |n
		.' Enter the cave |goto 61.1,63.9,0.5 |noway |c
	step
		goto 63.9,59.9
		.talk Erunak Stonespeaker##41341
		..turnin Wake of Destruction##25887
	step
		goto 63.9,59.9
		.talk Erunak Stonespeaker##41341
		.home Deepmist Grotto
	step
		goto 64.0,59.8
		.talk Private Pollard##41340
		..accept What? What? In My Gut...?##25885
	step
		goto 63.9,59.4
		.talk Moanah Stormhoof##41347
		..accept Decompression##25888
	step
		goto 64.2,59.9
		.talk Rendel Firetongue##41344
		..accept Come Hell or High Water##25884
	step
		goto 61.1,63.9 |n
		.' Leave the cave |goto 61.1,63.9,0.5 |noway |c
	step
		goto 60.3,69.9
		.click Naga Tridents##9552+
		..accept How Disarming##25883
	step
		goto 57.7,75.4
		.' Swim around on all 3 layers of the naga Holding Pens
		.from Zin'jatar Guardian##41996+, Zin'jatar Pearlbinder##41477+, Zin'jatar Overseer##41549+, Zin'jatar Warden##41530
		.' Slay 12 Zin'jatar Naga |q 25884/1
		.get 7 Wiggleweed Sprout |q 25885/1 
		.' Use your Breathstone on Imprisoned Soldiers |use Breathstone##56169 |tip They looks like dead humans in big balls of light all around on the naga Holding Pens.
		.' Release 10 Imprisoned Soldiers |q 25888/1
		.click Naga Tridents##9552
		.' Destroy 6 Naga Weapons |q 25883/1
	step
		'Click the Quest Complete box that pops up
		..turnin Come Hell or High Water##25884
		..accept The Warden's Time##27708
	step
		'Click the Quest Complete box that displays on the right side of the screen under your minimap
		..turnin How Disarming##25883
	step
		goto 60.1,81.2
		.kill Zin'jatar Warden##41530 |q 27708/1
	step
		'Hearth to Deepmist Grotto |goto 63.8,59.8,0.5 |use Hearthstone##6948 |noway |c
	step
		goto 63.9,59.9
		.talk Erunak Stonespeaker##41341
		..turnin The Warden's Time##27708
		..accept Across the Great Divide##25471
	step
		goto 64.0,59.8
		.talk Private Pollard##41340
		..turnin What? What? In My Gut...?##25885
	step
		goto 63.9,59.4
		.talk Moanah Stormhoof##41347
		..turnin Decompression##25888
	step
		goto 48.3,72.5 |n
		.' Enter the cave |goto 48.3,72.5,0.5 |noway |c
	step
		goto Shimmering Expanse,56.0,13.7
		.talk Farseer Gadra##39226
		..turnin Across the Great Divide##25471
		..accept The Looming Threat##25334
	step
		goto 56.0,13.7
		.talk Farseer Gadra##39226
		..' Tell him you are ready to join him in the vision
		.' Share in Farseer Gadra's Spirit Vision |q 25334/1
	step
		goto Abyssal Depths,72.9,37.4
		.talk Spirit of Farseer Gadra##40398
		..turnin The Looming Threat##25334
	step
		goto Shimmering Expanse,56.0,13.7
		.talk Farseer Gadra##39226
		..accept Backed Into a Corner##25164
	step
		goto 56.0,13.7
		.from Zin'jatar Fathom-Stalker##40162+
		.' Fend Off the Naga Attack |q 25164/1 |tip You have to kill 50 nagas.
		.kill Fathom-Lord Zin'jatar##40510 |q 25164/2
	step
		goto 56.0,13.7
		.talk Farseer Gadra##39226
		..turnin Backed Into a Corner##25164
	step
		goto 55.5,12.5
		.talk Toshe Chaosrender##39877
		..accept Rundown##25221
	step
		goto 54.0,23.4
		.' Follow the path outside the cave
		.' Use Toshe's Hunting Spears near Fleeing Zin'jatar Fathom-Stalkers |use Toshe's Hunting Spears##54466
		.kill 20 Fleeing Zin'jatar Fathom-Stalker##40174 |q 25221/1
	step
		goto 53.3,33.1
		.talk Toshe Chaosrender##39877
		..turnin Rundown##25221
		..accept Silver Tide Hollow##25222
	step
		goto 50.1,39.1 |n
		.' Enter the cave |goto 50.1,39.1,0.5 |noway |c
	step
		goto 49.5,42.4
		.talk Felora Firewreath##39876
		..turnin Silver Tide Hollow##25222
		..accept A Distracting Scent##25215
		..accept The Great Sambino##25216
	step
		goto 49.2,42.6
		.talk Earthmender Duarn##39875
		..accept Don't be Shellfish##25219
	step
		goto 49.1,42.0
		.talk Caretaker Movra##39878
		..accept Slippery Threat##25220
	step
		goto 49.1,42.0
		.talk Caretaker Movra##39878
		.home Silver Tide Hollow
	step
		goto 50.3,41.1
		.clicknpc Dead Zin'jatar Raider##39911+
		.' Bring them to [50.8,45.9] |tip You have to drag them one at a time.
		.' Dispose of 3 Dead Zin'jatar Raiders |q 25215/1
	step
		goto 59.6,40.1
		.kill 12 Spiketooth Eel##40237+ |q 25220/1
		.clicknpc Coilshell Sifter##39422+
		.get 10 Coilshell Sifter |q 25219/1
	step
		goto 50.1,39.1 |n
		.' Enter the cave |goto 50.1,39.1,0.5 |noway |c
	step
		goto 49.5,42.4
		.talk Felora Firewreath##39876
		..turnin A Distracting Scent##25215
	step
		goto 49.2,42.6
		.talk Earthmender Duarn##39875
		..turnin Don't be Shellfish##25219
	step
		goto 49.1,42.0
		.talk Caretaker Movra##39878
		..turnin Slippery Threat##25220
	step
		goto 41.3,34.2
		.talk The Great Sambino##39882
		..turnin The Great Sambino##25216
		..accept Undersea Inflation##25218
	step
		goto 41.1,34.2
		.talk Felice##40227
		..accept Crabby Patrons##25360
	step
		goto 40.5,35.5
		.' Use Sambino's Air Balloon next to the bubbling objects |use Sambino's Air Balloon##54608 |tip They look like green bubbling watermelon looking plants with a holes in the tops of them, and big blue bubbling snail shells.  You'll have to do this 10 times.
		.' Fill Sambino's Air Balloon |q 25218/1
		.kill 10 Green Sand Crab##40238 |q 25360/1
		.get Sambino's Air Valve |q 25218/2
		' |modelnpc 40399
	step
		goto 41.3,34.2
		.talk The Great Sambino##39882
		..turnin Undersea Inflation##25218
		..accept Totem Modification##25217
	step
		goto 41.2,34.2
		.talk Felice##40227
		..turnin Crabby Patrons##25360
	step
		goto 42.7,34.0
		.' Use one of Sambino's Modified Totems while standing on an orange spot on the ground: |tip You will only get one of the four totems to use, it's random.
		.' Use Sambino's Modified Stoneclaw Totem |use Sambino's Modified Stoneclaw Totem##54214
		.' Use Sambino's Modified Earthbind Totem |use Sambino's Modified Earthbind Totem##53052
		.' Use Sambino's Modified Stoneskin Totem |use Sambino's Modified Stoneskin Totem##54217
		.' Use Sambino's Modified Strength of Earth Totem |use Sambino's Modified Strength of Earth Totem##54216
		.' Defend Sambino's Modified Totem
		.' Take a Drill Sample |q 25217/1
	step
		goto 41.3,34.2
		.talk The Great Sambino##39882
		..turnin Totem Modification##25217
		..accept Back in One Piece##25456
	step
		goto 50.1,39.0 |n
		.' Enter Silver Tide Hollow |goto 50.1,39.0,0.5 |noway |c
	step
		goto 49.6,42.1
		.talk Felora Firewreath##39876
		..turnin Back in One Piece##25456
		..accept Toshe's Vengeance##25359
	step
		goto 64.1,42.3
		.talk Toshe Chaosrender##40221
		..turnin Toshe's Vengeance##25359
		..accept Vengeful Heart##25439
		..accept Vortex##25441
	step
		goto 65.8,43.1
		.' Use your Globes of Tumultuous Water near Swarming Serpents |use Globes of Tumultuous Water##54785
		.' Trap 30 Swarming Serpents |q 25441/1
		.kill 10 Zin'jatar Ravager##40275+ |q 25439/1
		' |modelnpc 40280
	step
		goto 64.1,42.3
		.talk Toshe Chaosrender##40221
		..turnin Vengeful Heart##25439
		..accept Fathom-Lord Zin'jatar##25440
		..turnin Vortex##25441
	step
		goto 67.3,49.7
		.kill Fathom-Lord Zin'jatar##40510 |q 25440/1
		.collect 1 Luminescent Pearl##54614 |n
		.' Click the Luminescent Pearl in your bags |use Luminescent Pearl##54614
		..accept A Pearl of Wisdom##25442
	step
		goto 64.1,42.3
		.talk Toshe Chaosrender##40221
		..turnin Fathom-Lord Zin'jatar##25440
	step
		'Hearth to Silver Tide Hollow |goto 49.1,42.0,0.5 |use Hearthstone##6948 |noway |c
	step
		goto 49.2,42.6
		.talk Earthmender Duarn##39875
		..turnin A Pearl of Wisdom##25442
		..accept Nespirah##25890
	step
		goto 50.4,41.1 |n
		.' Leave the cave |goto 50.4,41.1,0.5 |noway |c
	step
		goto 51.8,48.6 |n
		.' Enter Nespirah |goto 51.8,48.6,0.5 |noway |c
	step
		'Run up the spiral ramp and follow Earthmender Duarn around after he spawns: |modelnpc Earthmender Duarn##41532
		.' Find a way to communicate with Nespirah |q 25890/1
	step
		goto 51.6,52.2
		.talk Earthmender Duarn##41531
		..turnin Nespirah##25890
		..accept Making Contact##25900
	step
		goto 51.6,52.2
		.talk Earthmender Duarn##41531
		..' Tell him whenever he's ready
		.' Observe as Earthmender Duarn attempts to communicate with Nespirah |q 25900/1
	step
		goto 51.6,52.2
		.talk Earthmender Duarn##41531
		..turnin Making Contact##25900
		..accept Slave Labor##25907
		..accept Stick it to Them##25908
	step
		goto 54.6,50.6
		.kill 7 Idra'kess Sentinel##41466 |q 25908/1
		.kill 7 Idra'kess Enchantress##41467 |q 25908/2
		.' Use Duarn's Rope near Enslaved Alliance and Horde Pearl Miners |use Duarn's Rope##56178 |tip They are in the trenches with the huge pearls.
		.' Rescue 8 Pearl Miners |q 25907/1
		|modelnpc Enslaved Alliance Pearl Miner##41494
		|modelnpc Enslaved Horde Pearl Miner##41495
	step
		goto 51.6,52.2
		.talk Earthmender Duarn##41531
		..turnin Slave Labor##25907
		..turnin Stick it to Them##25908
		..accept Capture the Crab##25909
	step
		 goto 54.7,62.2
		.' Use Duarn's Net on the Deepseeker Crab |use Duarn's Net##56184 |tip The Deepseeker Crab is the pet of the Idra'kess Harpooner.
		.clicknpc the Deepseeker Crab##41520
		.get Deepseeker Crab |q 25909/1
	step
		goto 51.6,52.2
		.talk Earthmender Duarn##41531
		..turnin Capture the Crab##25909
		..accept Breaking Through##25916
	step
		goto 51.6,52.2
		.talk Earthmender Duarn##41531
		..' Tell him let's speak with Nespirah
		.' Speak with Earthmender Duarn |q 25916/1
	step
		goto 51.6,52.2
		.talk Earthmender Duarn##41531
		..turnin Breaking Through##25916
		..accept We Are Not Alone##25917
	step
		goto 62.7,49.9
		.talk Captain Taylor##41540
		..turnin We Are Not Alone##25917
		..accept Body Blows##25919
	step
		goto 62.7,50.0
		.talk Admiral Dvorek##41541
		..accept Hopelessly Gearless##25918
	step
		goto 62.7,50.5
		.talk Wavespeaker Tulra##41802
		..accept Still Valuable##25920
	step
		goto 62.6,54.2
		.from Idra'kess Warlord##41607+, Idra'kess Prophet##41608+
		.get 5 Mysterious Pearl |q 25920/1
		.click Idra'kess Weapon Rack##9557 +
		.get 4 Purloined Polearm |q 25918/1
		.' Attack 7 Nespirah Abscesses |q 25919/1
		' |model Nespirah Abcess##9547
	step
		goto 62.7,49.9
		.talk Captain Taylor##41540
		..turnin Body Blows##25919
	step
		goto 62.7,50.0
		.talk Admiral Dvorek##41541
		..turnin Hopelessly Gearless##25918
	step
		goto 62.7,50.5
		.talk Wavespeaker Tulra##41802
		..turnin Still Valuable##25920
	step
		goto 62.7,49.9
		.talk Captain Taylor##41540
		..accept Overseer Idra'kess##25921
	step
		goto 62.9,56.8 |n
		.' Follow the path up |goto 62.9,56.8,0.5 |noway |c
	step
		goto 57.4,56.3
		.kill Overseer Idra'kess##41731 |q 25921/1 |tip Kill the Idra'kess Mistresses when instructed to.
		|modelnpc Idra'kess Mistress##41795
	step
		goto 60.2,52.8 |n
		.' Follow the path down |goto 60.2,52.8,0.5 |noway |c
	step
		goto 51.6,52.2
		.talk Earthmender Duarn##41531
		..turnin Overseer Idra'kess##25921
		..accept Waking the Beast##25922
		.' Listen as Duarn speaks to Nespirah |q 25922/1
	step
		goto 50.3,55.4
		.' Follow Erunak Stonespeaker when he runs away
		.clicknpc Swiftfin Seahorse##41776
		.' Escape on Erunak's Seahorse |q 25922/2
	step
		goto 49.2,57.0
		.talk Captain Taylor##40642
		..turnin Waking the Beast##25922
		..accept Cold Welcome##25536
	step
		goto 49.5,57.6
		.talk Wavespeaker Valoren##39881
		..accept A Powerful Need To Eat##25535
	step
		goto 49.7,57.4
		.talk Anissa Matherly##42873
		.home Tranquil Wash
	step
		goto 46.9,57.5 |n
		.' Leave the cave |goto 46.9,57.5,0.5 |noway |c
	step
		goto 49.0,49.1
		.talk Divemaster Birmingham##40641
		..turnin A Powerful Need To Eat##25535
		..accept Clamming Up##25539
	step
		goto 49.0,49.2
		.talk Engineer Hexascrub##40639
		..accept Art of Attraction##25537
	step
		goto 43.8,47.9
		.kill 10 Glimmerdeep Tidehunter##39664+ |q 25536/1
		.click Glimmerdeep Clam##261
		.get 16 Glimmerdeep Clam |q 25539/1
		.' Use the Anenmone Chemical Extraction Device on the Anemones |use Anenmone Chemical Extraction Device##54840 |tip They look like huge brown spiked flower shaped plants that leak red mist on the walls around this area.
		.' Gather 8 Anemone Chemicals |q 25537/1
	step
		goto 49.0,49.1
		.talk Divemaster Birmingham##40641
		..turnin Clamming Up##25539
	step
		goto 49.0,49.2
		.talk Engineer Hexascrub##40639
		..turnin Art of Attraction##25537
		..accept Odor Coater##25538
	step
		goto 49.0,52.9
		.' Use Anemone Chemical Application Device on Clam Divers |use Anemone Chemical Application Device##54851
		.' Odorify 8 Clam Divers |q 25538/1
	step
		goto 49.0,49.2
		.talk Engineer Hexascrub##40639
		..turnin Odor Coater##25538
	step
		goto 49.0,49.1
		.talk Divemaster Birmingham##40641
		..accept Bellies Await##25540
	step
		goto 46.9,57.5
		.' Swim down under the big stone slab and into the small cove
		.' Enter the cave |goto 46.9,57.5,0.5 |noway |c
	step
		goto 49.2,57.0
		.talk Captain Taylor##40642
		..turnin Cold Welcome##25536
	step
		goto 49.5,57.6
		.talk Wavespeaker Valoren##39881
		..turnin Bellies Await##25540
	step
		goto 49.7,57.1
		.talk Levla Dreamwaker##40644
		..accept An Occupation of Time##25581
	step
		goto 49.2,57.0
		.talk Admiral Dvorek##40643
		..accept A Better Vantage##25582
		..accept Caught Off-Guard##25579
	step
		goto 49.2,57.0
		.talk Captain Taylor##40642
		..accept Swift Approach##25580
	step
		goto 46.9,57.5 |n
		.' Leave the cave |goto 46.9,57.5,0.5 |noway |c
	step
		goto 40.5,74.4
		.' Go to this spot in the ruins
		.' Scout the Structures South of Quel'Dormir Gardens |q 25582/3
	step
		goto 40.5,75.5
		.click Enormous Skull##9394
		..accept Upon the Scene of Battle##25583
	step
		goto 39.7,67.7
		.click Ranger Valarian##3412
		.' Read the Ranger Valarian Statue |q 25581/3
	step
		goto 38.5,66.0
		.click High Priestess Siralen##3412
		.' Read the High Priestess Siralen Statue |q 25581/4
	step
		goto 35.5,62.9
		.' Go to this spot in the ruins
		.' Scout the Tunnel West of Quel'Dormir Gardens |q 25582/2
	step
		goto 38.6,59.0
		.click the Queen Azshara##3412
		.' Read the Queen Azshara Statue |q 25581/2
	step
		goto 39.7,59.0
		.click the Lestharia Vashj##3412
		.' Read the Lestharia Vashj Statue |q 25581/1
	step
		goto 39.2,57.9
		.' Go to this spot in the ruins
		.' Scout the Northern Quel'Dormir Gardens |q 25582/1
	step
		goto 41.6,61.9
		.from Azsh'ir Monitor##40877+
		.' Destroy 8 Azsh'ir Monitor |q 25580/1
		.kill 12 Azsh'ir Patroller##39638 |q 25579/1
		.collect 1 Ancient Elven Etching##62281 |n |tip You will need to kill the Azsh'ir Mobs until you get this to drop.
		.' Click the Ancient Elven Etching in your bags |use Ancient Elven Etching##62281
		..accept Piece of the Past##27716
	step
		'Hearth to Tranquil Wash |goto 49.7,57.4,0.5 |use Hearthstone##6948 |noway |c
	step
		goto 49.7,57.1
		.talk Levla Dreamwaker##40644
		..turnin An Occupation of Time##25581
		..turnin Piece of the Past##27716
	step
		goto 49.2,57.0
		.talk Captain Taylor##40642
		..turnin Swift Approach##25580
	step
		goto 49.2,57.0
		.talk Admiral Dvorek##40643
		..turnin A Better Vantage##25582
		..turnin Caught Off-Guard##25579
		..turnin Upon the Scene of Battle##25583
	step
		goto 49.2,57.0
		.talk Wavespeaker Valoren##39881
		..accept Visions of the Past: The Invasion of Vashj'ir##25760
	step
		goto 46.9,57.5 |n
		.' Leave the cave |goto 46.9,57.5,0.5 |noway |c
	step
		goto 40.5,75.5
		.' Use your Blade of the Naz'jar Battlemaiden next to the Vision of the Battlemaiden |use Blade of the Naz'jar Battlemaiden##55171 |tip It's a bright flashing light on the ground in the ruins.
		.' Become a Naz'jar Battlemaiden
		.talk Fathom-Stalker Azjentus##40978
		..accept Reoccupation##25619
	step
		goto 40.5,73.5
		.' Use the abilities on your hotbar
		.from Kvaldir Deepwalker##41107+, Kvaldir Marauder##39602+
		.' Slay 10 Kvaldir Defenders |q 25619/1
	step
		goto 40.6,75.3
		.talk Fathom-Stalker Azjentus##40978
		..turnin Reoccupation##25619
		..accept The Revered Lady##25620
	step
		goto 39.4,59.0
		.talk Lady Naz'jar##40640
		..turnin The Revered Lady##25620
		..accept To the Fathom-Lord's Call##25637
	step
		goto 39.0,58.6
		.talk Sira'kess Tide Priestess##41050
		..accept Built to Last##25658
	step
		goto 35.5,67.5
		.' Go to the top level of the ruins
		.from Kvaldir Pillager##41102+, Kvladir Plunderer##41108+, Kvaldir Wasteroamer##41106+
		.' Slay 16 Kvladir Invaders on the Terrace |q 25637/1
		.click Nar'shola Ward##6913+
		.' Activate 6 Nar'shola Wards |q 25658/1
	step
		goto 39.0,58.6
		.talk Sira'kess Tide Priestess##41050
		..turnin Built to Last##25658
	step
		goto 36.4,78.7
		.talk Fathom-Lord Zin'jatar##41049
		..turnin To the Fathom-Lord's Call##25637
		..accept Not Soon Forgotten##25659
	step
		goto 28.6,78.6
		.kill Varkul the Unrelenting##41115 |q 25659/1
		.' Click the Quest Complete box that displays on the right side of the screen under your minimap
		..turnin Not Soon Forgotten##25659
	step
		goto 40.6,75.1
		.talk Wavespeaker Valoren##39881
		..turnin Visions of the Past: The Invasion of Vashj'ir##25760
		..accept Looking Forward##25747
	step
		goto 40.6,75.0
		.clicknpc Tamed Seahorse##48836
		.' You will ride to the Ruins of Vashj'ir |goto 33.1,68.9,0.5 |noway |c
	step
		goto 33.0,67.9
		.talk Admiral Dvorek##40643
		..turnin Looking Forward##25747
		..accept Clear Goals##25748
	step
		goto 33.2,68.4
		.talk Captain Taylor##40642
		..accept Not Entirely Unprepared##25749
	step
		goto 32.9,69.2
		.talk Engineer Hexascrub##40639
		..accept Properly Inspired##25751
	step
		goto 33.0,74.2
		.' Use your Box of Crossbow Bolts on Alliance Lookouts |use Box of Crossbow Bolts##56247 |tip They look like Alliance mobs either standing or on sea horses around this area with crossbows.
		.' Restock 8 Alliance Lookouts |q 25749/1
		.click Bloated Kelp Bulb##9535
		.get 8 Bloated Kelp Bulb |q 25751/1	
		|modelnpc Alliance Lookout##46470
	step
		goto 27.0,79.0
		.from Azsh'ir Abyss Priestess##42453+, Azsh'ir Infantry##41227+, Naz'jar Serpent Guard##41228+
		.' Slay 10 Southern Naga Forces |q 25748/1
	step
		goto 32.9,69.2
		.talk Engineer Hexascrub##40639
		..turnin Properly Inspired##25751
	step
		goto 33.2,68.4
		.talk Captain Taylor##40642
		..turnin Not Entirely Unprepared##25749
	step
		goto 33.0,67.9
		.talk Admiral Dvorek##40643
		..turnin Clear Goals##25748
		..accept Swift Action##25752
	step
		goto 32.9,69.2
		.talk Engineer Hexascrub##40639
		..' Tell him you're ready to begin the assault on the terrace
		.' Use the Improvised Explosives ability on your hotbar on the nagas on the ground as you ride the seahorse
		.kill 100 Azsh'ir Solider##41249+ |q 25752/2
		.kill 20 Wave Screamer##41250+ |q 25752/3
		.kill 12 Azsh'ir Archaean##42549+ |q 25752/4
	step
		goto 39.1,78.7
		.talk Admiral Dvorek##40643
		..turnin Swift Action##25752
		..accept Gauging Success##25754
	step
		goto 39.1,78.5
		.talk Captain Taylor##40642
		..accept Fallen But Not Forgotten##25753
	step
		goto 33.3,67.6
		.' Go to this spot at the entrance of the tunnel
		.' Scout the Tunnel to the North |q 25754/1
	step
		goto 30.2,75.1
		.' Go to this spot at the entrance of the tunnel
		.' Scout the Northwestern Terrace |q 25754/2
	step
		goto 32.9,78.7
		.talk Injured Assault Volunteer##41281
		..' Tell them they should get moving.
		.' Rescue 6 Injured Assault Volunteers |q 25753/1
	step
		goto 39.1,78.7
		.talk Admiral Dvorek##40643
		..turnin Gauging Success##25754
	step
		goto 39.1,78.5
		.talk Captain Taylor##40642
		..turnin Fallen But Not Forgotten##25753
	step
		goto 39.2,78.6
		.talk Wavespeaker Valoren##39881
		..accept Visions of the Past: The Slaughter of Beth'mora##25755
	step
		goto 28.9,78.7
		.' Use your Blade of the Naz'jar Battlemaiden next to the Vision of the Battlemaiden |use Blade of the Naz'jar Battlemaiden##55171 |tip It's a bright flashing light on the ground on the stone terrace.
		.talk Lady Naz'jar##42076
		..accept By Her Lady's Word##25858
	step
		goto 34.4,78.7
		.talk Fathom-Lord Zin'jatar##42072
		..' Tell him you are to hunt the Crucible of Nazsharin
		.' Speak to Fathom-Lord Zin'jatar |q 25858/1
	step
		goto 36.8,79.7
		.talk Overseer Idra'kess##41455
		..' Tell him you are to hunt the Crucible of Nazsharin
		.' Speak to Overseer Idra'kess |q 25858/3
	step
		goto 39.2,78.0
		.talk Lady Sira'kess##42071
		..' Tell her you are to hunt the Crucible of Nazsharin
		.' Speak to Lady Sira'kess |q 25858/2
	step
		goto 46.2,79.6
		.talk Fathom-Stalker Azjentus##42074
		..turnin By Her Lady's Word##25858
		..accept No Trespass Forgiven##25859
	step
		goto 46.3,78.6
		.talk Naz'jar Honor Guard##41476
		..accept Stolen Property##25862
	step
		goto 57.2,89.9
		.click Crucible of Nazsharin##9565
		..turnin Stolen Property##25862
		..accept Chosen Burden##25863
	step
		goto 57.2,85.2
		.talk Executioner Verathress##41457
		..accept Setting An Example##25861
	step
		goto 55.6,86.3
		.' Aggro a Kvaldir High-Shaman, but don't kill him
		.' Lure the Kvaldir High-Shaman back to Executioner Verathress at [57.2,85.2]
		.' Bring Kvaldir High-Shaman to the executioner |q 25861/1
		' |modelnpc 41537
	step
		goto 57.2,85.3
		.talk Executioner Verathress##41457
		..turnin Setting An Example##25861
	step
		goto 57.1,88.3
		.' Use the abilities on your hotbar to do the following:
		.kill 20 Vrykul Ledge Kvaldir |q 25859/1
		' |modelnpc 41537
		' |modelnpc 41451
	step
		goto 46.4,79.0
		.talk Lady Naz'jar##42076
		..turnin Chosen Burden##25863
	step
		goto 46.5,79.3
		.talk Fathom-Stalker Azjentus##42074
		..turnin No Trespass Forgiven##25859
	step
		goto 46.4,79.0
		.talk Lady Naz'jar##42076
		..accept The Culmination of Our Efforts##26191 |instant
		.' Witness the Continuing Story of the Battlemaiden |q 25755/1
	step
		goto 29.6,78.9
		.talk Wavespeaker Valoren##39881
		..turnin Visions of the Past: The Slaughter of Beth'mora##25755
		..accept Losing Ground##25892
	step
		goto 29.5,79.0
		.clicknpc Tamed Seahorse##48901
		.' You will ride to Tranquil Wash |goto 48.4,57.4,0.5 |noway |c
	step
		goto 49.2,57.0
		.talk Captain Taylor##40642
		..turnin Losing Ground##25892
		..accept Desperate Plan##25893
	step
		goto 47.1,57.5 |n
		.' Leave the cave |goto 47.1,57.5,0.5 |noway |c
	step
		goto 56.9,80.5
		.talk Engineer Hexascrub##41535
		..turnin Desperate Plan##25893
		..accept Come Prepared##25895
		..accept Unfurling Plan##25897
	step
		goto 57.0,80.5
		.talk Jorlan Trueblade##40645
		..accept Hostile Waters##25894
	step
		goto 61.4,86.2
		.click Alliance Survival Kit##7539
		.get Alliance Survival Kit |q 25895/1
	step
		goto 60.8,85.3
		.kill 10 Muckskin Scrounger##41566 |q 25894/1
	step
		goto 56.7,87.2
		.from Kvaldir Fleshcarver##41569+, Kvaldir Seahorror##41606+ 
		.click Coils of Kvaldir Rope##7548
		.get 8 Coil of Kvaldir Rope |q 25897/1
	step
		goto 56.9,80.5
		.talk Engineer Hexascrub##41535
		..turnin Come Prepared##25895
		..turnin Unfurling Plan##25897
		..turnin Hostile Waters##25894
		..accept Honor and Privilege##25898
	step
		goto 56.6,80.3
		.' Swim up to the rescue balloon on the surface |q 25898/1
		.click Survival Kit Remains##7539
		.collect 1 Rescue Flare##56188 |n
		.' Use the Rescue Flare in your bags |use Rescue Flare##56188
		.' Fire a rescue flare towards the Horde ships |q 25898/2
	step
		goto 56.6,80.3
		.talk Jorlan Trueblade##40645
		..turnin Honor and Privilege##25898
		..accept Welcome News##25911
	step
		'Hearth to Tranquil Wash |goto 49.6,57.4,0.5 |use Hearthstone##6948 |noway |c
	step
		goto 49.2,57.0
		.talk Captain Taylor##40642
		..turnin Welcome News##25911
	step
		goto 49.5,57.6
		.talk Wavespeaker Valoren##39881
		..accept Visions of the Past: Rise from the Deep##25626
	step
		goto 47.1,57.5 |n
		.' Leave the cave |goto 47.1,57.5,0.5 |noway |c
	step
		goto 33.1,77.9
		.' Go to the very top of the Naga terrace and into the dome temple
		.' Infiltrate the Quel'Dormir Temple |q 25626/1
	step
		goto 33.1,77.8
		.' Swim up to the second floor of the temple
		.' Use your Blade of the Naz'jar Battlemaiden next to the Vision of the Battlemaiden |use Blade of the Naz'jar Battlemaiden##55171 |tip It looks like a bright flashing light inside the temple.
		.talk Lady Sira'kess##41456
		..accept Devout Assembly##25896
	step
		goto 33.1,75.9
		.talk Lady Naz'jar##42077
		..accept Her Lady's Hand##25629
	step
		goto 33.1,61.0
		.talk Fathom-Caller Azrajar##41980
		..' Tell him the mistress awaits
		.' Gather Fathom-Caller Azrajar |q 25896/2
	step
		goto 33.1,73.0
		.talk Sira'kess Tide Priestess##41985
		..' Tell them they are needed for the ritual
		.' Gather 6 Sira'kess Tide Priestesses |q 25896/1
		.' Kill all the Kvaldir mobs attacking Naz'jar Honor Guards around this area
		.' Relieve 8 Naz'jar Honor Guards |q 25629/1
	step
		goto 33.1,75.9
		.talk Lady Naz'jar##42077
		..turnin Her Lady's Hand##25629
	step
		goto 33.1,77.9
		.talk Lady Sira'kess##41456
		..turnin Devout Assembly##25896
		..accept At All Costs##25860
	step
		goto 33.1,76.9
		.' Use the abilities on your hotbar
		.from Kvladir Sandreaper##42058+, Kvaldir Bonesnapper##42057+
		.kill 20 Attacking Kvaldir |q 25860/1
	step
		goto 33.1,77.9
		.talk Lady Sira'kess##41456
		..turnin At All Costs##25860
		..accept Final Judgement##25951
	step
		goto 37.9,78.5
		.' Use the abilities on your hotbar
		.from Kvaldir Skinflayer##42060+, Kvaldir Fearweaver##42062+
		.' Hold the eastern end of Quel'Dormir Terrace |q 25951/1
	step
		goto 41.9,78.6
		.' Use the abilities on your hotbar
		.from Hagrim Hopebreaker##42063 |tip He spawns when the naga allies arrive
		.' Push the Kvaldir back across the bridge |q 25951/2
	step
		goto 42.5,78.6
		.talk Lady Naz'jar##42077
		..turnin Final Judgement##25951
		.' Witness the Concluding Story of the Battlemaiden |q 25626/2
	step
		goto 46.9,57.5
		.' Swim down under the big stone slab and into the small cove
		.' Enter the cave |goto 46.9,57.5,0.5 |noway |c
	step
		goto 49.5,57.6
		.talk Wavespeaker Valoren##39881
		..turnin Visions of the Past: Rise from the Deep##25626
		..accept A Breath of Fresh Air##26005
	step
		goto 57.1,75.2
		.' Use your Boom Boots to get to the water surface quickly |use Boom Boots##57412
		.talk Swift Seahorse##43289
		.fpath Voldrin's Hold
	step
		goto 57.1,75.5 |n
		.click Rope Ladder##9094 |tip It's hanging off the side of the boat.
		.' Jump up onto the boat |goto 57.1,75.5,0.5 |noway |c
	step
		goto Vashj'ir,69.6,75.3
		.talk Captain Taylor##42411
		..turnin A Breath of Fresh Air##26005
		..accept Full Circle##26219
	step
		goto 69.5,75.3
		.talk Salty McTavish##43295
		.fpath Voldrin's Hold
	step
		goto 69.8,75.6
		.' Board the Pincher once it arrives |q 26219/1 |tip It's a boat, so you may have a to wait a few minutes for it.
	step
		'Ride the boat
		.' Secure Darkbreak Cove |q 26219/2
	step
		goto  Abyssal Depths 54.4,72.9
		.talk Captain Glovaal##41662
		..turnin Full Circle##26219
	step
		goto 54.7,72.2
		.talk Barracks Officer Milson##42963
		.home Darkbreak Cove
	step
		goto 55.5,72.9
		.talk Engineer Hexascrub##41666
		..accept Bio-Fuel##26103
	step
		goto 60.0,78.5 |n
		.' Leave the cave |goto 53.5,73.8,-310 |noway |c
	step
		goto 52.5,74.4
		.' Swim up above the cave
		.from Seabrush Terrapin##42108+, Scourgut Remora##42112+, Spinescale Hammerhead##42113+ 
		.' Use your Oil Extrusion Pump on their corpses |use Oil Extrusion Pump##56821
		.get 4 Terrapin Oil |q 26103/1
		.get 4 Remora Oil |q 26103/2
		.get 4 Hammerhead Oil |q 26103/3
	step
		goto 60.0,78.5 |n
		.' Swim down into the cave |goto 60.0,78.5,1.0 |noway |c
	step
		goto 55.5,72.9
		.talk Engineer Hexascrub##41666
		..turnin Bio-Fuel##26103
		..accept Fuel-ology 101##26106
	step
		goto 55.8,72.5
		.click Fuel Sampling Station##3491
		..' Click "Let's get started!"
		.' Choose the Hammerhead Oil Sample 3 Times
		.' Choose the Remora Oil Sample 2 Times
		.' Mix the samples together!
		.collect Promising Fuel Sample##56833 |q 26106
	step
		goto 55.5,72.9
		.talk Engineer Hexascrub##41666
		..' Tell him you made a Promising Fuel Sample
		.' Create the perfect bio-fuel |q 26106/1
	step
		goto 55.5,72.9
		.talk Engineer Hexascrub##41666
		..turnin Fuel-ology 101##26106
	step
		goto 54.4,72.9
		.talk Captain Glovaal##41662
		..accept The Brother's Digsong##26014
	step
		goto 60.0,78.5 |n
		.' Leave the cave |goto 60.0,78.5,1.0 |noway |c
	step
		goto 47.4,49.7
		.talk Humphrey Digsong##41907
		..turnin The Brothers Digsong##26014
		..accept Phosphora Hunting##26015
	step
		goto 45.1,53.6
		.from Luxscale Grouper##41923+, Pyreshell Scuttler##41922+
		.get 6 Underlight Phosphora |q 26015/1
	step
		goto 47.4,49.7
		.talk Humphrey Digsong##41907
		..turnin Phosphora Hunting##26015
		..accept A Lure##26017
		..accept Coldlights Out##26018
	step
		goto 45.9,51.7
		.kill 4 Coldlight Hunter##41925+ |q 26018/1
		.kill 4 Coldlight Oracle##41926+ |q 26018/2
		.collect 1 Enormous Eel Egg##56571 |n
		.' Click the Enormous Eel Egg in your bags |use Enormous Eel Egg##56571
		..accept I Brought You This Egg##26019
		.' Get near Coldlight Nibblers |tip Having friendly nameplates active is very useful in finding them. Shift+V will bring them up
		.get 30 Coldlight Nibbler |q 26017/1
		|modelnpc Underlight Nibbler##41916+
	step
		goto 47.4,49.7
		.talk Humphrey Digsong##41907
		..turnin A Lure##26017
		..turnin Coldlights Out##26018
		..turnin I Brought You This Egg##26019
		..accept The Brothers Digsong 2: Eel-Egg-Trick Boogaloo##26021
		..accept One Last Favor##26080
	step
		goto 44.4,53.7
		.' Use your Eel-Splosive Device in the path of a Devious Great-Eel |use Eel-Splosive Device##56808 |tip They look like big blue eels that swim around this area.  Place the device in their path, so they swim into it.
		.from Weakened Great-Eel##41927
		.' Avenge Oskar Digsong |q 26021/2
	step
		goto 47.4,49.7
		.talk Humphrey Digsong##41907
		..turnin The Brothers Digsong 2: Eel-Egg-Trick Boogaloo##26021
	step
		'Hearth to Darkbreak Cove |goto 54.7,72.1,0.5 |use Hearthstone##6948 |noway |c
	step
		goto 54.4,72.9
		.talk Captain Glovaal##41662
		..turnin One Last Favor##26080
	step
		goto 55.5,73.0
		.talk Lieutenant "Foxy" Topper##41667
		..accept Sira'kess Slaying##25950
		..accept A Standard Day for Azrajar##25977
	step
		goto 55.5,72.9
		.talk Engineer Hexascrub##41666
		..accept Those Aren't Masks##25981
	step
		goto 55.6,73.0
		.talk Jorlan Trueblade##41665
		..accept Treasure Reclamation##25975
	step
		goto 60.0,78.5 |n
		.' Leave the cave |goto 60.0,78.5,1.0 |noway |c
	step
		goto 52.5,21.3
		.from Fathom-Caller Azrajar##41590
		.' Use your Alliance Standard on Fathom-Caller Azrajar's corpse |use Alliance Standard##56250
		.' Plant a banner in Fathom-Caller Azrajar's corpse |q 25977/1
	step
		goto 43.7,16.7
		.click Deepfin Plunder##259+
		.get 6 Deepfin Plunder |q 25975/1
	step
		goto 50.2,18.2
		.from Sira'kess Guardian##41586+, Sira'kess Tide Priestess##41589+, Sira'kess Sea Witch##41588+
		.kill 10 Sira'kess naga |q 25950/1
		.kill Taken Gilbin##41729 |n |tip Click the Merciless Ones after the Gilbin is dead
		.from Merciless One##41601
		.get 6 Merciless Head |q 25981/1
	step
		goto 60.0,78.5 |n
		.' Enter the cave |goto 60.0,78.5,1.0 |noway |c
	step
		goto 55.6,73.0
		.talk Jorlan Trueblade##41665
		..turnin Treasure Reclamation##25975
	step
		goto 55.5,72.9
		.talk Engineer Hexascrub##41666
		..turnin Those Aren't Masks##25981
		..accept Put It On##25987
		.' Wear the Mindless One |q 25987/1
	step
		goto 55.5,72.9
		.talk Engineer Hexascrub##41666
		..turnin Put It On##25987
		..accept Promontory Point##25983
	step
		goto 55.5,73.0
		.talk Lieutenant "Foxy" Topper##41667
		..turnin Sira'kess Slaying##25950
		..turnin A Standard Day for Azrajar##25977
	step
		goto 60.0,78.5 |n
		.' Leave the cave |goto 60.0,78.5,1.0 |noway |c
	step
		goto 42.8,38.0
		.talk Captain Taylor##41598
		..turnin Promontory Point##25983
		..accept Clearing the Corrupted##26070
		..accept The Wavespeaker##26056
	step
		goto 42.7,37.9
		.talk Wavespeaker Tulra##41639
		..accept Scalding Shrooms##26096
	step
		goto 42.7,37.9
		.talk Erunak Stonespeaker##41600
		..accept Into the Totem##26072
	step
		goto 42.7,32.2
		.' Swim down to the ground
		.' Use Erunak's Confinement Totem |use Erunak's Confinement Totem##56801
		.from Faceless Defilers##41644+ |tip Kill them next to Erunak's Confinement Totem you put down.
		.' Confine 5 Corrupting Faceless Energies |q 26072/1
		.from Crushing Eel##41646+, Chasm Stalker##41645+, Deep Remora##41647+
		.kill 8 Defiled Scalding Chasm wildlife |q 26070/1
		.click Scalding Shroom##10057+
		.get 5 Scalding Shroom |q 26096/1
	step
		goto 42.8,38.0
		.talk Captain Taylor##41598
		..turnin Clearing the Corrupted##26070
	step
		goto 42.7,37.9
		.talk Wavespeaker Tulra##41639
		..turnin Scalding Shrooms##26096
	step
		goto 42.7,37.9
		.talk Erunak Stonespeaker##41600
		..turnin Into the Totem##26072
		..accept ... It Will Come##26111
	step
		goto 47.0,28.0
		.click Stonespeaker's Luring Totem##9575
		.from Ick'thys the Unfathomable##41648
		.get The Brain of the Unfathomable |q 26111/1
	step
		goto 52.6,27.8
		.talk Wavespeaker Valoren##41640
		..turnin The Wavespeaker##26056
		..accept Free Wil'hai##26065
	step
		goto 54.4,27.8
		.' Use Valoren's Shrinkage Totem next to a Tentacle Horror |use Valoren's Shrinkage Totem##57409
		.from Shrunken Tentacle Horror##41641+
		.' Kill all the Shrunken Tentacle Horrors attacking Wil'hai
		.' Free Wil'hai |q 26065/1
	step
		goto 52.6,27.8
		.talk Wavespeaker Valoren##41640
		..turnin Free Wil'hai##26065
	step
		goto 42.7,37.9
		.talk Erunak Stonespeaker##41600
		..turnin ... It Will Come##26111
		..accept Unplug L'ghorek##26130
	step
		goto 42.8,38.0
		.talk Captain Taylor##41598
		..accept Fiends from the Netherworld##26132
	step
		goto 36.3,47.0
		.' Swim down into the cave
		.kill Ur'Goz##41654 |q 26130/1
	step
		goto 34.6,54.6
		.kill Sku'Bu##41655 |q 26130/2
	step
		goto 29.6,53.0
		.kill Neph'Lahim##41656 |q 26130/3
	step
		goto 31.9,51.3
		.kill 8 Nether Fiend##41650 |q 26132/1
	step
		goto 42.8,38.0
		.talk Captain Taylor##41598
		..turnin Fiends from the Netherworld##26132
	step
		goto 42.7,37.9
		.talk Erunak Stonespeaker##41600
		..turnin Unplug L'ghorek##26130
		..accept Communing with the Ancient##26140
	step
		goto 36.6,42.1 |n
		.' Enter L'ghorek |goto 36.6,42.1,0.5 |noway |c
	step
		goto 38.5,45.3
		.' Talk to L'ghorek
		..turnin Communing with the Ancient##26140
		..accept Runestones of Binding##26141
		..accept Ascend No More!##26142
	step
		goto 27.0,54.0
		.from Twilight Champion##41652+, Twilight Candidate##41657+
		.collect 1 Twilight Cage Key##57102 |n
		.' Click the Twilight Cage Key in your bags |use Twilight Cage Key##57102
		..accept Prisoners##26144
	step
		goto 27.5,55.7
		.click Ancient Conduit##9639+
		.' Destroy 5 Ancient Conduits |q 26142/1
		.from Twilight Candidate##41657+
		.get 7 Runestone of Binding |q 26141/1
		.' Click the Cages |tip They looks like metal cages around this area.
		.' Rescue 5 Alliance Prisoners |q 26144/1
		.' Click the Quest Complete box that pops up
		..turnin Prisoners##26144
	step
		goto 38.5,45.3
		.' Talk to L'ghorek
		..turnin Runestones of Binding##26141
		..turnin Ascend No More!##26142
		..accept Twilight Extermination##26154
	step
		goto 34.9,54.0
		.' Use your Attuned Runestone of Binding on a Bound Torrent |use Attuned Runestone of Binding##57172 |tip You can run through the groups of mobs, they won't attack you, even though they are red.
		.' Possess a Bound Torrent |q 26154/1
	step
		goto 36.3,52.8
		.' Use the abilities on your hotbar on Twilight Devotees and Faceless Overseers
		.kill 50 Twilight Devotee##42281+ |q 26154/2
		.kill 10 Faceless Overseer##42285+ |q 26154/3
		.' Click the Quest Complete box that displays on the right side of the screen under your minimap
		..turnin Twilight Extermination##26154
	step
		goto 38.5,45.3
		.' Talk to L'ghorek
		..accept All that Rises##26143
	step
		goto 33.1,55.8
		.' Keep controlling the elemental. Subdue it again if needed.
		.' Use the abilities on your hotbar on Hallazeal the Ascended
		.kill Hallazeal the Ascended##41659 |q 26143/1
	step
		goto 38.5,45.3
		.' Talk to L'ghorek
		..turnin All that Rises##26143
		..accept Back to Darkbreak Cove##26181
	step
		'Hearth to Darkbreak Cove |goto 54.7,72.2,0.5 |use Hearthstone##6948 |noway |c
	step
		goto 55.7,73.0
		.talk Erunak Stonespeaker##41600
		..turnin Back to Darkbreak Cove##26181
		..accept Defending the Rift##26193
	step
		goto 55.7,73.0
		.talk Erunak Stonespeaker##41600
		..' Tell him you are prepared
		.' Ride the boat until it stops |tip When the boat stops make sure you follow Erunak
		.' Fight in the Battle for Abyssal Breach |q 26193/1
	step
		goto 69.8,34.4
		.talk Captain Taylor##44490
		..turnin Defending the Rift##26193
]])

ZygorGuidesViewer:RegisterInclude("A_Uldum_Leveling",[[
	step
		goto Stormwind City,85.8,25.9
		.talk Harrison Jones##44238
		..turnin That's No Pyramid!##28292
	step
		goto 62.9,71.6
		.click Hero's Call Board##10016
		..accept Hero's Call: Uldum!##28558
	step
		goto 22.5,55.8 |n
		.' Ride the boat to Rut'theran Village |goto Teldrassil |noway |c
	step
		|fly Gunstan's Dig
	step
		goto Tanaris,30.5,65.5
		.talk Adarrah##44833
		..turnin Hero's Call: Uldum!##28558
		..accept Easy Money##27003
	step
		goto 30.5,65.7
		.clicknpc Lady Humps##46517
		.' Watch the cutscene
		.' Escort the Caravan |q 27003/1
	step
		goto Uldum,59.7,71.8
		.talk Adarrah##46873
		..turnin Easy Money##27003
	step
		goto 59.6,72.0
		.talk Prince Nadun##46872
		..accept Traitors!##27922
	step
		goto 61.7,71.1
		.click Neferset Frond##10097
		.' Watch the cutscene
		.' Uncover the Neferset Secret |q 27922/1
	step
		goto 59.6,72.0
		.talk Prince Nadun##46872
		..turnin Traitors!##27922
		..accept Smoke in Their Eyes##27923
		..accept Kavem the Callous##28105
	step
		goto 59.7,72.0
		.talk Budd##46875
		..accept Budd's Plan##27924
	step
		goto 60.0,74.0
		.from Kavem the Callous##47567
		.get Neferset Key |q 28105/1
	step
		goto 60.8,73.9
		.from Neferset Denizen##48267+, Neferset Sentinel##47306+
		.click Neferset Armor##10100
		.get 6 Neferset Armor |q 27924/1
		.' Use your Brazier Torch next to Bales of Hay |use Brazier Torch##63027 |tip They look like bundles of yellow straw sitting on the ground around this area.
		.' Burn 5 Bales of Hay |q 27923/1
		' |model Bale of Hay##8701
	step
		goto 59.7,72.0
		.talk Budd##46875
		..turnin Budd's Plan##27924
	step
		goto 59.6,72.0
		.talk Prince Nadun##46872
		..turnin Smoke in Their Eyes##27923
		..turnin Kavem the Callous##28105
		..accept Escape From the Lost City##28112
	step
		goto 54.9,32.7
		.talk King Phaoris##47684
		..turnin Escape From the Lost City##28112
		..accept Impending Retribution##28134
	step
		goto 54.7,32.9
		.talk Kazemde##48886
		.home Ramkahen
	step
		goto 53.0,27.7
		.talk Sun Priest Asaris##47715
		..' Tell him you might be able to help
		.' Speak with Sun Priest Asaris |q 28134/2
	step
		goto 53.0,27.7
		.talk Sun Priest Asaris##47715
		..accept Relics of the Sun King##28141
		..accept Venomblood Antidote##28145
	step
		goto 46.3,21.0
		.from Wastewander Outrider##45905+
		.get 4 Relic of the Sun King |q 28141/1
		.from Venomblood Scorpid##45859+
		.' Use your Antidote Vial on Venomblood Scorpid corpses |use Antidote Vial##63086
		.' Drain 8 Venomblood Scorpids |q 28145/1
		.' You can find more Venomblood Scorpid and Wastewander Outriders around [49.9,24.0]
	step
		goto 53.0,27.7
		.talk Sun Priest Asaris##47715
		..turnin Relics of the Sun King##28141
		..turnin Venomblood Antidote##28145
		..accept The Bandit Warlord##28502
	step
		goto 45.7,16.2
		.kill Warlord Ihsenn##47755 |q 28502/1
	step
		goto 53.0,27.7
		.talk Sun Priest Asaris##47715
		..turnin The Bandit Warlord##28502
	step
		goto 49.7,39.2
		.talk Asaq##47930
		..' Tell him the king wishes to be informed about recent Neferset activity
		.' Speak with Asaq |q 28134/3
	step
		goto 49.7,39.1
		.talk Mack##47318
		..accept Take it to 'Em!##27993
	step
		goto 60.3,38.3
		.talk Nomarch Teneth##46603
		..' Tell him King Phaoris sent you to ask him about Neferset activity
		.' Speak with Nomarch Teneth |q 28134/1
	step
		goto 60.3,38.3
		.talk Nomarch Teneth##46603
		..accept Thieving Little Pluckers##28250
	step
		goto 59.1,38.4
		.' Use your Tahret Dynasty Mallet next to stacks of Pygmies |use Tahret Dynasty Mallet##63351 |tip They are sitting on each other's shoulders trying to steal fruit out of trees around this area.
		.from Pygmy Scout##48041+, Pygmy Oaf##48040+, Pygmy Thief##48043+
		.' Smash 30 Thieving Pluckers |q 28250/1
	step
		goto 60.3,38.3
		.talk Nomarch Teneth##46603
		..turnin Thieving Little Pluckers##28250
	step
		goto 64.4,22.3
		.' Go to this spot
		.' Investigate Khartut's Tomb |q 27993/1
	step
		goto 64.4,22.3
		.talk Harrison Jones##44860
		..turnin Take it to 'Em!##27993
		..accept Premature Explosionation##27141
	step
		goto 64.3,22.2
		.click Powder Keg##472
		.' Watch the cutscene
		.' Assist Harrison at Khartut's Tomb |q 27141/1
	step
		goto 64.6,28.6
		.talk Harrison Jones##45180
		..turnin Premature Explosionation##27141
	step
		goto 64.6,28.7
		.talk Sand Pygmy Corpse##45186
		..accept Field Work##27179
	step
		goto 64.8,29.6
		.click the Elaborate Disc##8342
		..accept Just the Tip##27176
	step
		goto 66.1,29.0
		.from Mangy Hyena##45202
		.' You will accept a quest
		..accept Do the World a Favor##27187
	step
		goto 68.2,31.5
		.from Skarf##45204
		.from Sultan Oogah##45205
		.collect Sultan's Staff##60865 |q 27176
	step
		'Use your Elaborate Disc |use Elaborate Disc##60859
		.get Shaft of the Stars |q 27176/1
	step
		goto 66.1,29.0
		.from Sand Pygmy##45190+
		.click Ornate Tablet Fragment##6420+
		.get 10 Ornate Tablet Fragment |q 27179/1
		.from Mangy Hyena##45202+
		.' Eradicate 12 Mangy Hyenas |q 27187/1
		.' Click the Quest Complete box that displays on the right side of the screen under your minimap
		..turnin Do the World a Favor##27187
	step
		goto 64.6,28.6
		.talk Harrison Jones##45180
		..turnin Field Work##27179
		..turnin Just the Tip##27176
		..accept On to Something##27196
	step
		goto 64.6,28.6
		.talk Harrison Jones##45180
		..' Tell him you're ready!
		.' Follow Harrison Jones |tip When he jumps down, use your flying mount to go down into the Chamber of Stars.
		.' Accompany Harrison Jones to the Chamber of the Stars |q 27196/1
	step
		goto 64.5,28.0
		.talk Harrison Jones##45296
		..turnin On to Something##27196
		..accept The Thrill of Discovery##27511
	step
		goto 65.7,25.8
		.' Go to this spot
		.' Examine the Northern Hieroglyphs |q 27511/2
	step
		goto 64.4,29.9
		.' Go to this spot
		.' Examine the Ancient Mechanism |q 27511/1
	step
		goto 63.4,32.5
		.talk Schnottz Scout##45874
		..accept Lessons From the Past##27541
	step
		goto 63.4,32.5
		.talk Schnottz Scout##45874
		..' Take the scout's spectacles.
		.get Broken Spectacles |q 27541/1
	step
		goto 63.4,33.9
		.' Go to this spot
		.' Examine the Southern Hieroglyphs |q 27511/3
		.' Click the Quest Complete box that displays on the right side of the screen under your minimap
		..turnin The Thrill of Discovery##27511
	step
		goto 64.5,28.0
		.talk Harrison Jones##45296
		..turnin Lessons From the Past##27541
		..accept By the Light of the Stars##27549
		..accept Be Prepared##27517
	step
		goto 63.3,28.0
		.click Suspended Starlight##9933
		.get 7 Suspended Starlight |q 27549/1
		.' Walk near the skeletons laying on the ground around this area
		.from Tormented Tomb-Robber##45765+
		.get 6 Piece of Rope |q 28602/1
	step
		goto 64.5,28.0
		.talk Harrison Jones##45296
		..turnin By the Light of the Stars##27549
	step
		goto 64.5,28.0
		.talk Harrison Jones##45296
		..turnin Be Prepared##27517
		..accept Tipping the Balance##27431
	step
		goto 64.5,28.0
		.talk Harrison Jones##45296
		..' Ask him what you can do to help
		.' Watch the cutscene
		.' Stay Out of Harrison's Way |q 27431/1
	step
		goto 64.5,28.0
		.talk Harrison Jones##45296
		..turnin Tipping the Balance##27431
		..accept After the Fall##27624
	step
		goto 64.0,26.4
		.click Watcher Head##10079
		.get Orb of the Morning Star |q 27624/1
	step
		goto 66.8,28.1
		.click Watcher Head##10079
		.get Orb of the Evening Star |q 27624/2
	step
		goto 65.3,32.6
		.click Watcher Head##10079
		.get Orb of the Shooting Star |q 27624/4
	step
		goto 62.5,32.0
		.click Watcher Head##10079
		.get Orb of the North Star |q 27624/3
	step
		goto 64.5,28.0
		.talk Harrison Jones##45296
		..turnin After the Fall##27624
		..accept Do the Honors##27669
	step
		goto 64.5,28.7
		.' Use your Orbs of the Stars |use Orbs of the Stars##62054
		.' Watch the cutscene
		.' Reactivate the Obelisk of the Stars |q 27669/1
	step
		goto 63.9,33.9
		.talk Harrison Jones##48034
		..turnin Do the Honors##27669
	step
		goto 54.9,32.7
		.talk King Phaoris##47684
		..turnin Impending Retribution##28134
		..accept Al'Akir's Vengeance##28135
	step
		goto 54.3,35.3
		.talk Adarrah##47005
		..accept That Gleam in his Eye##27899
	step
		goto 45.2,38.0
		.talk Prince Nadun##45799
		..turnin Al'Akir's Vengeance##28135
		..accept Minions of Al'Akir##27520
	step
		goto 45.3,37.8
		.talk General Ammantep##45772
		..accept Under the Choking Sands##27519
		..accept The Prophet Hadassi##27595
	step
		goto 40.0,40.5
		.talk Prophet Hadassi##46003
		..turnin The Prophet Hadassi##27595
		..accept The Prophet's Dying Words##27602
	step
		goto 39.6,45.4
		.click Sand-Covered Hieroglyphs##5992
		..turnin The Prophet's Dying Words##27602
		..accept Colossal Guardians##27623
	step
		goto 39.6,40.9
		.clicknpc Colossus of the Sun##46041
		.from Colossus of the Sun
		.get Stone of the Sun |q 27623/2
	step
		goto 41.2,37.6
		.clicknpc Colossus of the Moon##46042
		.from Colossus of the Moon
		.get Stone of the Moon |q 27623/1
	step
		goto 40.7,40.2
		.kill 6 Scion of Al'Akir##45755+ |q 27520/1
		.clicknpc Orsis Survivor##45715+
		.' Rescue 8 Orsis Survivors |q 27519/1
	step
		goto 39.6,45.4
		.click Sand-Covered Hieroglyphs##5992
		..turnin Colossal Guardians##27623
		..accept The Scepter of Orsis##27706
	step
		goto 39.6,45.4
		.click Sacred Receptacle##6502
		.get The Scepter of Orsis |q 27706/1
	step
		goto 44.0,57.1
		.talk Harrison Jones##46978
		..turnin That Gleam in his Eye##27899
		..accept I've Got This Guy##27900
		..accept They Don't Know What They've Got Here##27901
	step
		goto 44.3,58.2
		.from Schnottz Air Officer##46993
		.collect Efficient Excavations##62768 |n
		.' Click the Efficient Excavations in your bags |use Efficient Excavations##62768
		..accept Efficient Excavations##28132
	step
		goto 46.7,58.4
		.from Schnottz Air Trooper##46979+
		.' Slay 10 Schnottz Air Troopers |q 27900/1
		.from Schnottz Air Officer##46993+
		.collect Uldum Chest Key Code##62608 |n
		.click Obelisk of the Sun Coffer##8685+
		.collect 6 Titan Device Component##62610 |q 27901
	step
		'Use your Titan Device Components |use Titan Device Component##62610
		.get Titan Activation Device |q 27901/1
	step
		goto 44.0,57.1
		.talk Harrison Jones##46978
		..turnin I've Got This Guy##27900
		..turnin They Don't Know What They've Got Here##27901
		..accept Ignition##27903
	step
		goto 45.2,58.8 |n
		.' Follow the path down |goto 45.2,58.8,0.5 |noway |c
	step
		goto 47.1,58.8
		.' Use your Titan Activation Device next to the huge statue |use Titan Activation Device##62611
		.from Titanic Guardian##47032 |tip While fighting the Titanic Guardian, click the big lava meteors that appear on the ground to do massive to the Titanic Guardian, making him much easier to kill.
		.get Lens of the Sun |q 27903/1
	step
		goto 45.6,57.8
		.' Fly up onto the middle platform inside this cave
		.' Click the Titan Mechanism
		..turnin Ignition##27903
	step
		goto 44.0,57.1
		.talk Harrison Jones##46978
		..accept Tailgunner!##27905
		.' Use the abilities on your hotbar to shoot down the airplanes that chase you
		.' Escape the Obelisk of the Sun |q 27905/1
	step
		goto 54.6,41.8
		.talk Harrison Jones##48082
		..turnin Tailgunner!##27905
	step
		goto 45.2,38.0
		.talk Prince Nadun##45799
		..turnin Minions of Al'Akir##27520
	step
		goto 45.3,37.8
		.talk General Ammantep##45772
		..turnin Under the Choking Sands##27519
		..turnin The Scepter of Orsis##27706
	step
		goto 45.2,38.0
		.talk Prince Nadun##45799
		..accept Send Word to Phaoris##27628
	step
		'Hearth to Ramkahen |goto 54.7,32.9,0.5 |use Hearthstone##6948 |noway |c
	step
		goto 54.9,32.7
		.talk King Phaoris##47684
		..turnin Send Word to Phaoris##27628
	step
		goto 55.0,34.0
		.talk Prince Nadun##47959
		..accept The High Priest's Vote##27630
		..accept The Vizier's Vote##27629
		..accept The High Commander's Vote##27631
	step
		goto 52.9,45.3 |n
		.' Enter the dam |goto 52.9,45.3,0.5 |noway |c
	step
		goto 54.2,41.9
		.talk High Priest Amet##46135
		..turnin The High Priest's Vote##27630
		..accept Stopping the Spread##27836
		..accept Trespassers in the Water##27837
	step
		goto 52.9,45.3 |n
		.' Leave the dam |goto 52.9,45.3,0.5 |noway |c
	step
		goto 52.9,40.8
		.kill 8 Stillwater Slitherer##46868+ |q 27837/1
		.click Slitherer Egg##7803+
		.' Destroy 6 Slitherer Eggs |q 27836/1
	step
		goto 52.9,45.3 |n
		.' Enter the dam |goto 52.9,45.3,0.5 |noway |c
	step
		goto 54.2,41.9
		.talk High Priest Amet##46135
		..turnin Stopping the Spread##27836
		..turnin Trespassers in the Water##27837
		..accept The Defilers' Ritual##28611
	step
		goto 52.9,45.3 |n
		.' Leave the dam |goto 52.9,45.3,0.5 |noway |c
	step
		goto 51.8,40.1 |n
		.' Enter the underwater cave |goto 51.8,40.1,0.5 |noway |c
	step
		goto 49.9,40.1
		.from Dark Ritualist Zakahn##49148
		.' Stop the Neferset Ritual |q 28611/1
	step
		goto 51.8,40.1 |n
		.' Leave the underwater cave |goto 51.8,40.1,0.5 |noway |c
	step
		goto 52.9,45.3 |n
		.' Enter the dam |goto 52.9,45.3,0.5 |noway |c
	step
		goto 54.2,41.9
		.talk High Priest Amet##46135
		..turnin The Defilers' Ritual##28611
		..accept The Root of the Corruption##27838
	step
		goto 52.9,45.3 |n
		.' Leave the dam |goto 52.9,45.3,0.5 |noway |c
	step
		goto 58.9,46.1
		.talk High Commander Kamses##46134
		..turnin The High Commander's Vote##27631
		..accept The Weakest Link##28198
		..accept Ploughshares to Swords##28201
	step
		goto 59.0,46.1
		.talk Sergeant Mehat##48012
		..accept The Element of Supplies##28200
	step
		goto 59.6,47.3
		.talk Salhet##46883
		..turnin The Weakest Link##28198
		..accept Shaping Up##28210
	step
		goto 56.3,53.5
		.talk Vizier Tanotep##46136
		..turnin The Vizier's Vote##27629
		..accept Tanotep's Son##27632
	step
		goto 55.6,53.7
		.talk Ramkahen Laborer##46333
		.' Recruit 8 Ramkahen Laborers |q 28201/1
	step
		goto 56.7,48.5
		.from Riverbed Crocolisk##45321+ |tip They are all along and in this big river.
		.get 20 Hardened Crocolisk Hide |q 28200/1
	step
		goto 59.0,46.1
		.talk Sergeant Mehat##48012
		..turnin The Element of Supplies##28200
	step
		goto 58.9,46.1
		.talk High Commander Kamses##46134
		..turnin Ploughshares to Swords##28201
		..accept Ancient Weapons##27839
	step
		goto 60.4,57.5
		.' Use your Horn of Ramkahen |use Horn of Ramkahen##62534
		.' When the cat men run in to attack the smugglers, go to [60.5,58.7]
		.click Ancient Tol'vir Weapon##10071+
		.get Ancient Tol'vir Armaments |q 27839/1
	step
		goto 58.1,60.8
		.from Neferset Guard##46340+
		.get Vir'Naal Delta Map |q 27632/1
		.' Click the Quest Complete box that displays on the right side of the screen under your minimap
		..turnin Tanotep's Son##27632
		..accept Neferset Prison##27707
	step
		goto 55.5,59.5
		.from Bloodsnarl Hyena##45353+
		.' Help Salhet defeat 8 Bloodsnarl Hyenas |q 28210/1
		.' You can find more Bloodsnarl Hyenas around [52.6,56.2]
	step
		'Next to you:
		.talk Salhet##48022
		..turnin Shaping Up##28210
		..accept Salhet's Secret##28276
	step
		goto 56.9,62.4
		.talk Salhet##48237
		..turnin Salhet's Secret##28276
		..accept Salhet the Tactician##28277
	step
		goto 56.9,62.4
		.talk Salhet##48237
		..' Tell him let's see what he and his lions can do
		.' Use the abilities on your hotbar to use the lions to kill the hyenas
		.kill 30 Bloodsnarl Scavenger##48199+ |q 28277/1
	step
		goto 56.9,62.4
		.talk Salhet##48237
		..turnin Salhet the Tactician##28277
		..accept Return to Camp##28291
	step
		goto 71.3,73.7
		.talk Ramkahen Prisoner##46425
		..' Tell him you're looking for Tahet
		.' Fight the enemies that attack
		.' Discover Tahet's Whereabouts |q 27707/1
		.' Click the Quest Complete box that displays on the right side of the screen under your minimap
		..turnin Neferset Prison##27707
		..accept The Pit of Scales##27738
	step
		goto 58.3,82.9
		.talk Tahet##46496
		.from Gorebite##46278
		.from Caimas the Pit Master##46276 |tip Make him chase you.  Run in front of him so that he runs over the big pink Croc Eggs on the ground around this area.  Baby Crocs will damage him and slow his run speed down.  Eventually, he will die.
		.' Free Tahet |q 27738/1
		|model Croc Eggs##412
	step
		'Hearth to Ramkahen |goto 54.7,32.9,0.5 |use Hearthstone##6948 |noway |c
	step
		goto 58.9,14.2
		.kill Scalemother Hevna##46871 |q 27838/1
	step
		goto 52.9,45.3 |n
		.' Enter the dam |goto 52.9,45.3,0.5 |noway |c
	step
		goto 54.2,41.9
		.talk High Priest Amet##46135
		..turnin The Root of the Corruption##27838
	step
		goto 52.9,45.3 |n
		.' Leave the dam |goto 52.9,45.3,0.5 |noway |c
	step
		goto 58.9,46.1
		.talk High Commander Kamses##46134
		..turnin Return to Camp##28291
		..turnin Ancient Weapons##27839
	step
		goto 56.3,53.5
		.talk Vizier Tanotep##46136
		..turnin The Pit of Scales##27738
		..accept The High Council's Decision##28533
	step
		goto 54.9,32.7
		.talk King Phaoris##47684
		..turnin The High Council's Decision##28533
		.' Watch the cutscene
		..accept Nahom Must Hold##28561
	step
		goto 67.2,42.9
		.talk Salhet##48761
		..turnin Nahom Must Hold##28561
		..accept The Secret of Nahom##28498
	step
		goto 67.3,42.8
		.talk Sun Prophet Tumet##48501
		..accept Punish the Trespassers##28499
	step
		goto 71.7,46.1
		.from Neferset Raider##48626+, Neferset Scryer##48625+, Neferset Looter##48627+
		.kill 10 Neferset intruder |q 28499/1
		.click Atulhet's Record Fragment##6420+
		.get 8 Atulhet's Record Fragment |q 28498/1
		.' You can find more Atulhet Fragments and Neferset mobs around [75.2,45.7]
	step
		goto 67.3,42.8
		.talk Sun Prophet Tumet##48501
		..turnin Punish the Trespassers##28499
	step
		goto 67.2,42.9
		.talk Salhet##48761
		..turnin The Secret of Nahom##28498
		..accept The Cypher of Keset##28500
	step
		goto 78.2,45.7
		.from Raider Lord Havat##49214
		.get The Cypher of Keset |q 28500/1
	step
		goto 67.2,42.9
		.talk Salhet##48761
		..turnin The Cypher of Keset##28500
		..accept The Defense of Nahom##28501
	step
		goto 66.7,41.8
		.talk Ramkahen Sergeant##49228
		.' Use the abilities on your hotbar to command the troops
		.' Complete the Defense of Nahom |q 28501/1
	step
		'Click the red arrow on your hotbar |outvehicle |noway |c |q 28501
	step
		goto 67.2,42.9
		.talk Salhet##48761
		..turnin The Defense of Nahom##28501
		..accept The Push Westward##28623
	step
		goto 67.3,42.8
		.talk Sun Prophet Tumet##48501
		..accept The Curse of the Tombs##27755
	step
		goto 69.8,58.9
		.kill Mekgineer Mixeltweed##46592 |q 27755/2
		.kill 6 Crazed Digger##46590+ |q 27755/1
		.collect 1 A.I.D.A. Communicator##62483 |n
		.' Use the A.I.D.A. Communicator |use A.I.D.A. Communicator##62483
		..accept Artificial Intelligence##27760
	step
		goto 74.1,64.4
		.click A.I.D.A. Terminal##7764
		..turnin Artificial Intelligence##27760
		..accept A Disarming Distraction##27761
		..accept Core Access Codes##27777
	step
		goto 73.3,72.8
		.' Use your Mech Control Scrambler on Twizzleflux the Insane repeatedly |use Mech Control Scrambler##62542
		.from Twizzleflux the Insane##46587
		.get Core Access Codes |q 27777/1
	step
		goto 78.8,62.1
		.' Use your Holographic Projector next to the First Bomb Cluster to distract the enemies |use Holographic Projector##62398
		.click First Bomb Cluster##9277
		.' Disarm the First Bomb Cluster |q 27761/1
	step
		goto 79.0,64.3
		.' Use your Holographic Projector next to the Second Bomb Cluster to distract the enemies |use Holographic Projector##62398
		.click Second Bomb Cluster##9277
		.' Disarm the Second Bomb Cluster |q 27761/2
	step
		goto 79.0,64.9
		.' Use your Holographic Projector next to the Third Bomb Cluster to distract the enemies |use Holographic Projector##62398
		.click Third Bomb Cluster##9277
		.' Disarm the Third Bomb Cluster |q 27761/3
	step
		goto 79.0,63.6
		.' Use your Holographic Projector next to Unstable Bomb Bots to distract the enemies |use Holographic Projector##62398
		.clicknpc Unstable Bomb Bot##46888+
		.' Deactivate 4 Unstable Bomb Bots |q 27761/4
	step
		goto 74.1,64.4
		.click A.I.D.A. Terminal##7764
		..turnin A Disarming Distraction##27761
		..turnin Core Access Codes##27777
		..accept Hacking the Wibson##27778
	step
		goto 77.0,62.9
		.click Maintenance Tools##317
		.collect Maintenance Axe##62621 |q 27778
	step
		goto 77.0,63.0
		.clicknpc Wibson Mainframe##46715
		.' Hack the Wibson Mainframe |q 27778/1
	step
		goto 77.3,63.3
		.talk Fusion Core##46750
		..turnin Hacking the Wibson##27778
		..accept Gnomebliteration##27779
	step
		goto 81.9,58.8
		.' Roll down the hill as the Fusion Core
		.' Run over gnomes all around this area
		.' Obliterate 1000 Crazed Gnomes |q 27779/1
	step
		goto 77.6,62.4
		.' Roll back up the hill
		.' Click the red arrow on your hotbar |outvehicle |noway |c |q 27779
	step
		goto 77.3,63.3
		.talk Fusion Core##46750
		..turnin Gnomebliteration##27779
	step
		goto 52.0,65.5
		.talk King Phaoris##48564
		..turnin The Push Westward##28623
		..accept Lieutenants of Darkness##28480
		..accept Bleeding the Enemy##28483
	step
		goto 52.9,65.5
		.talk Salhet##49345
		..accept Salhet's Gambit##28486
	step
		goto 54.1,71.2
		.talk Ramkahen Ranger Captain##49244
		.' Protect the rangers as they run up the path
		.' Secure Higher Ground |q 28486/1
	step
		goto 47.5,77.3
		.kill High Priest Sekhemet##47730 |q 28480/2
	step
		goto 50.6,87.0
		.kill Scorpion-Lord Namkhare##47742 |q 28480/1
	step
		goto 48.7,84.9
		.from Neferset Snake Charmer##47738+, Neferset Cursebringer##47760+, Neferset Ritualist##47762+
		.get 10 Neferset Insignia |q 28483/1
	step
		goto 52.9,65.5
		.talk Salhet##49345
		..turnin Salhet's Gambit##28486
	step
		goto 52.0,65.5
		.talk King Phaoris##48564
		..turnin Lieutenants of Darkness##28480
		..turnin Bleeding the Enemy##28483
		..accept The Fall of Neferset City##28520
	step
		goto 52.0,82.3
		.kill Dark Pharaoh Tekahn##47753 |q 28520/1
	step
		goto 24.4,64.5
		.talk Belloc Brightblade##47670
		..turnin Efficient Excavations##28132
		..accept Eastern Hospitality##27926
	step
		goto 22.5,63.2
		.talk Ambassador Laurent##47176
		..' Ask him what he thinks of our host
		.' Mingle with Ambassador Laurent |q 27926/1
	step
		goto 22.5,63.2
		.talk Refined Gentleman##47185
		..' Ask him what he knows of our generous host
		.' Mingle with a Refined Gentleman |q 27926/2
	step
		goto 22.3,63.2
		.talk Budding Artist##47187
		..' Ask him how to find the Commander
		.' Mingle with a Budding Artist |q 27926/3
	step
		goto 22.2,63.2
		.talk Aspiring Starlet##47189
		..' Ask her how she has been enjoying her time here
		.' Mingle with an Aspiring Starlet |q 27926/4
	step
		goto 22.0,64.5
		.talk Arcane Guest Registry##49528
		.home Schnottz's Landing
	step
		goto 24.4,64.5
		.talk Belloc Brightblade##47670
		..turnin Eastern Hospitality##27926
		..accept A Favor for the Furrier##27928
	step
		goto 24.4,64.1
		.talk Commander Schnottz##47159
		..accept The Desert Fox##27939
	step
		goto 40.6,68.9
		.from Diseased Vulture##47202
		.' You will accept a quest
		..accept Dirty Birds##27940
	step
		goto 40.6,68.9
		.from Diseased Vulture##47202+
		.' Slay 8 Diseased Vultures |q 27940/1
		.from Shaggy Desert Coyote##47190+
		.get 5 Desert Coyote Pelt |q 27928/1
		.clicknpc Desert Fox##47201 |tip It runs around a lot, so you will probably have to search for it to find it.
		.get The Desert Fox |q 27939/1
		.' Click the Quest Complete box that displays on the right side of the screen under your minimap
		..turnin Dirty Birds##27940
	step
		'Hearth to Schnottz's Landing |goto 22.0,64.5,0.5 |use Hearthstone##6948 |noway |c
	step
		goto 24.4,64.5
		.talk Belloc Brightblade##47670
		..turnin A Favor for the Furrier##27928
		..accept Fashionism##27941
	step
		goto 24.4,64.2
		.talk Commander Schnottz##47159
		..turnin The Desert Fox##27939
		..accept Idolatry##27942
		..accept Angered Spirits##27943
	step
		goto 31.2,63.6
		.from Furious Specter##47220+
		.' Use your Licensed Proton Accelerator Cannon on Furious Specters once they are at half health |use Licensed Proton Accelerator Cannon##62794
		.get 5 Furious Spectral Essence |q 27943/1
		.clicknpc Dead Trooper##47219+
		.get 10 Trooper Uniform |q 27941/1
		.click Well-preserved Idol##10092+
		.get 8 Well-preserved Idol |q 27942/1
	step
		goto 24.4,64.5
		.talk Belloc Brightblade##47670
		..turnin Fashionism##27941
	step
		goto 24.4,64.1
		.talk Commander Schnottz##47159
		..turnin Idolatry##27942
		..turnin Angered Spirits##27943
		..accept Gobbles!##27950
	step
		goto 24.4,64.1
		.talk Commander Schnottz##47159
		..' Tell him the perimeter is secure
		.' Witness Gobbles' Transformation Ritual |q 27950/1
		.' Click the Quest Complete box that displays on the right side of the screen under your minimap
		..turnin Gobbles!##27950
	step
		goto 24.4,64.1
		.talk Commander Schnottz##47159
		..accept Make Yourself Useful##27969
	step
		'Use your Refurbished Trooper Uniform |use Refurbished Trooper Uniform##62813
		.' Wear the Uniform |havebuff INTERFACE\ICONS\inv_chest_leather_08 |q 27969
	step
		goto 23.2,60.1
		.talk Slacking Laborer##47292
		..' Tell them they're behind schedule
		.' Motivate 6 Slacking Laborers |q 27969/1 |tip You won't motivate all of the Slacking Laborers you talk to.
		.' You can find more Slacking Laborers around [20.5,60.5]
	step
		goto 24.5,64.2
		.talk Commander Schnottz##47159
		..turnin Make Yourself Useful##27969
	step
		goto 24.4,64.5
		.talk Belloc Brightblade##47670
		..accept Crisis Management##28002
	step
		goto 22.5,64.0
		.talk Budding Artist##47707
		..' Ask him if he saw anything
		.' Counsel the Budding Artist |q 28002/4
	step
		goto 22.4,63.8
		.talk Prolific Writer##47516
		..' Ask him who could have done such a thing
		.' Question the Prolific Writer |q 28002/1
	step
		goto 22.2,63.9
		.talk Privileged Socialite##47519
		..' Ask her if she is all right
		..' Soothe the Privileged Socialite |q 28002/2
	step
		goto 22.3,64.1
		.talk Pretentious Businessman##47520
		..' Ask him if he wants to know what happened to the man
		.' Chasten the Pretentious Businessman |q 28002/3
	step
		goto 24.4,64.5
		.talk Belloc Brightblade##47670
		..turnin Crisis Management##28002
	step
		goto 24.4,64.1
		.talk Commander Schnottz##47159
		..accept Battlezone##27990
	step
		goto 21.3,64.6
		.clicknpc Schnottz's Siege Tank##47732
		.' Ride in Schnottz's Siege Tank
		.' Use the Fire Cannon ability on your hotbar on Decrepit Watchers
		.' Obliterate 7 Decrepit Watchers |q 27990/1
		' |modelnpc 47385
	step
		goto 24.4,64.1
		.' Go to this spot
		.' Return to Schnottz |q 27990/2
	step
		goto 24.4,64.1
		.talk Commander Schnottz##47940
		..turnin Battlezone##27990
		..accept Missed Me By Zhat Much!##28187
	step
		goto 24.4,64.1
		.talk Commander Schnottz##47940
		..' Tell him let's move
		.' Follow Commander Schnottz
		.' Accompany Schnottz to Safety |q 28187/1
	step
		goto 22.5,63.2
		.talk Commander Schnottz##47972
		..turnin Missed Me By Zhat Much!##28187
		..accept Lockdown!##28193
	step
		goto 21.9,64.1
		.' Go to this spot
		.' Visit Schnottz's Guests |q 28193/1
	step
		goto 21.9,64.0
		.talk Prolific Writer##47967
		..accept The Great Escape##28194
	step
		goto 22.5,63.2
		.talk Commander Schnottz##47972
		..turnin Lockdown!##28193
		..accept Sending a Message##28195
	step
		goto 22.3,67.6
		.kill Captain Margun##47981 |q 28195/1
	step
		goto 24.9,69.0
		.kill Captain Cork##47980 |q 28195/2
	step
		goto 26.1,68.6
		.kill Captain Kronkh##47978 |q 28195/3
	step
		goto 24.9,68.4
		.from Schnottz Sea Trooper##47982+ |tip Kill them on all 3 of the pirate ships around this area.
		.get 6 Fresh Sailor Uniform |q 28194/1
	step
		goto 21.9,64.0
		.talk Prolific Writer##47967
		..turnin The Great Escape##28194
	step
		goto 22.5,63.2
		.talk Commander Schnottz##47972
		..turnin Sending a Message##28195
		..accept Firing Squad##28267
	step
		goto 22.5,63.2
		.talk Commander Schnottz##47972
		..' Tell him you suppose you're ready...
		.' Watch the cutscene
		.' Go 'Out Back' With Schnottz |q 28267/1
	step
		goto 23.6,60.3
		.talk Harrison Jones##48162
		..turnin Firing Squad##28267
		..accept Meet Me In Vir'sar##28269
	step
		|fly Ramkahen
	step
		goto 54.9,32.7
		.talk King Phaoris##47684
		..turnin The Fall of Neferset City##28520
	step
		goto 54.7,32.9
		.talk Kazemde##48886
		.home Ramkahen
	step
		goto 67.3,42.8
		.talk Sun Prophet Tumet##48501
		..turnin The Curse of the Tombs##27755
	step
		'Hearth to Ramkahen |goto 54.7,32.9,0.5 |use Hearthstone##6948 |noway |c
	step
		|fly Oasis of Vir'sar
	step
		goto 27.0,7.5
		.talk Harrison Jones##48186
		..turnin Meet Me In Vir'sar##28269
		..accept Friend of a Friend##28273
	step
		goto 26.6,7.2
		.talk Yasmin##49406
		.home Oasis of Vir'sar
	step
		goto 26.6,8.0
		.talk Sullah##48203
		..turnin Friend of a Friend##28273
		..accept Two Tents##28274
	step
		'Watch the cutscene
		.' Accompany Sullah |q 28274/1
		' |modelnpc 48621
	step
		goto 29.6,21.9
		.talk Sullah##48431
		..turnin Two Tents##28274
		..accept Master Trapper##28350
		..accept Camel Tow##28352
		..accept Unlimited Potential##28351
	step
		goto 29.9,38.2
		.from Wild Camel##51193+
		.' Use Sullah's Camel Harness on Wild Camels when they are weakened |use Sullah's Camel Harness##67241 |tip You will see a message flash on your screen telling you to capture the camel.
		.' Capture 3 Wild Camels |q 28352/1
	step
		goto 29.9,38.2
		.from Wild Camel##51193+
		.get 5 Meat Scrap |q 28350/1
		.from Cavorting Pygmy##51217+
		.' Use Sullah's Pygmy Pen on Cavorting Pygmies when they are weakened |use Sullah's Pygmy Pen##67232 |tip You will see a message flash on your screen telling you to cage the pygmy.
		.' Capture 5 Sand Pygmies |q 28351/1
	step
		goto 29.6,21.8
		.talk Sullah##48431
		..turnin Master Trapper##28350
		..turnin Camel Tow##28352
		..turnin Unlimited Potential##28351
		..accept Jonesy Sent For You##28353
	step
		goto 27.0,7.5
		.talk Harrison Jones##48186
		..turnin Jonesy Sent For You##28353
		..accept Reduced Productivity##28271
		..accept Missing Pieces##28272
	step
		goto 38.2,21.6
		.from Schnottz Overseer##48205+, Schnottz Excavator##48204+
		.' Kill 15 Schnottz Employees at the Obelisk of the Moon |q 28271/1
		.click Pillaged Loot Sack##10201+
		.get 7 Ancient Copper Scroll |q 28272/1
	step
		goto 27.0,7.6
		.talk Harrison Jones##48186
		..turnin Reduced Productivity##28271
		..turnin Missing Pieces##28272
		..accept Stirred the Hornet's Nest##28363
	step
		goto 29.6,21.8
		.talk Sullah##48431
		..turnin Stirred the Hornet's Nest##28363
		..accept Shroud of the Makers##28367
	step
		goto 38.4,22.6
		.' Use your Shroud of the Makers every 2 minutes to stay Cloaked |use Shroud of the Makers##63699 |tip If you have a pet with you dismiss it, it does not stealth with you and will attract mobs
		.click Schnottz Powder Keg##33+
		.' Sabotage 7 Powder Kegs |q 28367/1
	step
		goto 27.0,7.5
		.talk Harrison Jones##48186
		..turnin Shroud of the Makers##28367
		..accept Schnottz So Fast##28402
	step
		goto 36.7,20.8 |n
		.' Enter the building |goto 36.7,20.8,0.5 |noway |c
	step
		goto 33.5,17.8 |n
		.' Fly down this hole |goto 33.5,17.8,0.5 |noway |c
	step
		goto 35.0,19.2
		.from Schnottz Elite Trooper##48668+
		.' Slay 10 Schnottz Elite Troopers |q 28402/1
	step
		goto 36.1,20.3
		.talk Harrison Jones##48528
		..turnin Schnottz So Fast##28402
		..accept Bad Datas##28403
	step
		goto 36.1,20.3
		.talk Harrison Jones##48528
		..' Tell him you are ready when he is
		.' Follow Harrison Jones
		.' Upload the Titan Data |q 28403/1
	step
		goto 39.0,23.2
		.talk Harrison Jones##48558
		..turnin Bad Datas##28403
		..accept I'll Do It By Hand##28404
	step
		goto 39.6,23.6
		.from Lunar Crystal##48529+
		.' Defeat the Titanic Guardian |q 28404/1
	step
		goto 39.0,23.2
		.talk Harrison Jones##48558
		..turnin I'll Do It By Hand##28404
	step
		goto 42.2,25.9
		.talk Sullah##48621
		..accept Sullah's Gift##28482
	step
		goto 41.4,5.6
		.talk Harrison Jones##48698
		..turnin Sullah's Gift##28482
		..accept Fire From the Sky##28497
	step
		goto 41.4,5.6
		.clicknpc Confiscated Artillery##48699
		.' Use the Designate Target ability on your hotbar on the Schnottz Infantrymen
		.' Slay 100 Schnottz Infantrymen |q 28497/1
	step
		goto 41.4,5.6
		.talk Harrison Jones##48698
		..turnin Fire From the Sky##28497
		..accept See You on the Other Side!##28613
	step
		goto 36.1,15.8
		.talk Harrison Jones##47158
		..turnin See You on the Other Side!##28613
		..accept Fortune and Glory##27748
		.' Follow Harrison Jones and fight the Obsidian Colossus |tip Avoid the pink shadow runes on the ground when the Obsidian Colossus casts them.  You will see messages pop up on your screen letting you know what to do.
		.from Obsidian Colossus##46646
		.' Defeat the Obsidian Colossus |q 27748/1
	step
		goto 33.4,19.7
		.talk Harrison Jones##49151
		..turnin Fortune and Glory##27748
		..accept Harrison Jones and the Temple of Uldum##28612
		.' Watch the cutscene
		.' Discover the Coffer of Promise |q 28612/1
	step
		goto 32.6,30.9
		.talk Brann Bronzebeard##49204
		..turnin Harrison Jones and the Temple of Uldum##28612
		..accept Put That Baby in the Cradle!##28621
	step
		goto 32.6,30.7
		.talk Harrison Jones##49203
		..turnin Put That Baby in the Cradle!##28621
		..accept Three if by Air##28622
	step
		goto 32.0,29.9
		.clicknpc Signal Flare Position##49216 |use Harrison's Signal Flares##64668
		.' Place the North Signal Flare |q 28622/1
	step
		goto 31.4,30.8
		.clicknpc Signal Flare Position##49216|use Harrison's Signal Flares##64668
		.' Place the West Signal Flaare |q 28622/2
	step
		goto 32.0,31.6
		.clicknpc Signal Flare Position##49216 |use Harrison's Signal Flares##64668
		.' Place the South Signal Flare |q 28622/3
	step
		goto 44.9,67.3
		.talk Brann Bronzebeard##49248
		..turnin Three if by Air##28622
		..accept The Coffer of Promise##28633
	step
		goto 45.0,67.3
		.click Coffer of Promise##9968
		.get Titan Discs |q 28633/1
	step
		goto 44.9,67.3
		.talk Brann Bronzebeard##49351
		..turnin The Coffer of Promise##28633
]])

ZygorGuidesViewer:RegisterInclude("A_Twilight_Leveling",[[
	step
		goto Stormwind City,62.9,71.6
		.click Hero's Call Board##10016
		..accept Hero's Call: Twilight Highlands!##28716
	step
		goto 85.7,31.8
		.talk King Varian Wrynn##29611
		..turnin Hero's Call: Twilight Highlands!##28716
		..accept My Son, the Prince##26960
	step
		goto 85.7,31.6
		.talk Anduin Wrynn##1747
		..' Tell him to come with you
		.' Become Introduced to Anduin |q 26960/1
	step
		goto 85.7,31.8
		.talk King Varian Wrynn##29611
		..turnin My Son, the Prince##26960
		..accept Rallying the Fleet##26975
		..accept Twilight Investigation##26977
	step
		goto 85.1,31.3
		.talk Major Samuelson##2439
		..turnin Twilight Investigation##26977
		..accept The Usual Suspects##26997
	step
		goto 29.3,26.5
		.talk Stormwind Dock Worker##29152
		.' Interrogate 6 Dock Workers |q 26997/1
	step
		'Next to you:
		.talk Anduin Wrynn##44293
		..turnin The Usual Suspects##26997
		.' If Anduin Wrynn is not next to you, you can find in Stormwind Keep at [85.7,31.6] |tip Talk to him and tell him to come with you, if you have to go get him again.
	step
		goto 33.1,39.4
		.' Go to this spot
		.' Escort Anduin to Supply Sergeant Graves |q 26975/1
	step
		goto 33.1,39.5
		.talk Supply Sergeant Graves##44749
		..turnin Rallying the Fleet##26975
		..accept Missing Parts##27038
	step
		'Next to you:
		.talk Anduin Wrynn##44293
		..accept Peasant Problems##27044
		.' If Anduin Wrynn is not next to you, you can find in Stormwind Keep at [85.7,31.6] |tip Talk to him and tell him to come with you, if you have to go get him again.
	step
		goto 34.6,46.1
		.click Missing Parts##1211+
		.get 5 Missing Parts |q 27038/1
	step
		goto 34.8,38.2
		.talk Fargo Flintlocke##44806
		..turnin Missing Parts##27038
	step
		'Next to you:
		.talk Anduin Wrynn##44293
		..accept He's Holding Out on Us##27064
		.' If Anduin Wrynn is not next to you, you can find in Stormwind Keep at [85.7,31.6] |tip Talk to him and tell him to come with you, if you have to go get him again.
	step
		goto 52.0,5.8
		.' Go to this spot
		.' Escort Prince Anduin to Farmer Wollerton |q 27044/1
		.' If Anduin Wrynn is not next to you, you can find in Stormwind Keep at [85.7,31.6] |tip Talk to him and tell him to come with you, if you have to go get him again.
		' |modelnpc 44293
	step
		goto 52.1,6.0
		.talk Farmer Wollerton##44807
		..turnin Peasant Problems##27044
		..accept Unholy Cow##27060
	step
		goto 43.8,4.6
		.' Go to this spot
		.' Discover the Crime Scene |q 27060/1
		.from Twilight Striker##44808+
		.' Protect Prince Anduin |q 27060/2
	step
		'Next to you:
		.talk Anduin Wrynn##44293
		..turnin Unholy Cow##27060
		.' If Anduin Wrynn is not next to you, you can find in Stormwind Keep at [85.7,31.6] |tip Talk to him and tell him to come with you, if you have to go get him again.
	step
		goto 80.2,62.1
		.' Go inside this building and up the spiral staircase
		.' Allow Anduin to Examine Samuelson's Papers |q 27064/1
		.' If Anduin Wrynn is not next to you, you can find in Stormwind Keep at [85.7,31.6] |tip Talk to him and tell him to come with you, if you have to go get him again.
		' |modelnpc 44293
	step
		'Next to you:
		.talk Anduin Wrynn##44293
		..turnin He's Holding Out on Us##27064
		..accept Expert Opinion##28807
		.' If Anduin Wrynn is not next to you, you can find in Stormwind Keep at [85.7,31.6] |tip Talk to him and tell him to come with you, if you have to go get him again.
	step
		goto 81.3,63.5
		.talk Master Mathias Shaw##332
		..turnin Expert Opinion##28807
		..accept The Old Barracks##27072
	step
		goto 39.8,56.8
		.kill 6 Crazed Cultist##44814+ |q 27072/1
	step
		goto 37.2,56.2
		.talk Jack Bauden##50049
		..turnin The Old Barracks##27072
		..accept Cataclysm in the Catacombs##27092
	step
		goto 52.9,51.0 |n
		.' Enter the Cathedral |goto 52.9,51.0,0.5 |noway |c
	step
		goto 51.3,44.3 |n
		.' Follow the spiral ramp down |goto 51.3,44.3,0.5 |noway |c
	step
		goto 53.2,42.6 |n
		.' Follow the stairs down |goto 53.2,42.6,0.5 |noway |c
	step
		goto 50.6,42.2
		.kill The Black Bishop##44816 |q 27092/1
	step
		goto 50.2,42.6
		.click Pile of Explosives##9278 
		..turnin Cataclysm in the Catacombs##27092
		..accept A Villain Unmasked##27106
	step
		goto 85.1,31.0
		.talk Major Samuelson##2439
		..' Tell him it's over
		.' Unmask Major Samuelson |q 27106/1
		.kill Samuelson Unmasked##45014 |q 27106/2
	step
		goto 85.8,31.7
		.talk King Varian Wrynn##29611
		..turnin A Villain Unmasked##27106
		..accept Twilight Shores##28238
	step
		goto 26.1,47.3
		.talk Fargo Flintlocke##44806
		..turnin Twilight Shores##28238
		..accept Twilight Shores##28832
	step
		goto 25.9,47.6
		.clicknpc Flintlocke's Seaplane##50262
		.' Ride to Twilight Highlands |goto Twilight Highlands |noway |c
	step
		goto Twilight Highlands,81.0,79.4
		.talk Lieutenant Fawkes##49022
		..turnin Twilight Shores##28832
		..accept Welcome to Highbank!##28596
	step
		goto 81.1,77.3
		.from Axebite Infantry##49008+
		.kill 10 Horde Attackers |q 28596/1
	step
		goto 81.0,79.4
		.talk Lieutenant Fawkes##49022
		..turnin Welcome to Highbank!##28596
	step
		goto 81.0,79.4
		.talk Fargo Flintlocke##49252
		..accept Burnin' at Both Ends##28597
	step
		goto 81.1,77.3
		.clicknpc Cannon Powder Barrel##49143+
		.get 10 Cannon Powder |q 28597/1
	step
		goto 78.8,76.8
		.talk Fargo Flintlocke##49252
		..turnin Burnin' at Both Ends##28597
		..accept Aiming High##28598
	step
		'You may have to wait for a few minutes, so just stand here and wait
		.' Wait to be launched from Flintlocke's Cannon |q 28598/1
	step
		'Go downstairs in the zeppelin
		.' Use Flintlocke's Explosives while downstairs |use Flintlocke's Explosives##64660
		.' Destroy the Skyshredder |q 28598/2
	step
		goto 78.9,76.7
		.talk Fargo Flintlocke##49252
		..turnin Aiming High##28598
		..accept Kurdran's Waitin'##28599
	step
		goto 79.1,78.3
		.' Go upstairs in the fort
		.talk Kurdran Wildhammer##45167
		..turnin Kurdran's Waitin'##28599
		..accept Our Boys on the Shore##27338
	step
		goto 79.3,78.5
		.talk Simon Chandler##45170
		..accept Salvage Operation##27177
		..accept Naga Reinforcements##27178
	step
		goto 76.0,80.0
		.talk Ephram Hardstone##45171
		..accept Siren's Song##27200
	step
		goto 76.1,79.8
		.from Ophelia##45183
		.' Slay Ophelia and Protect Ephram |q 27200/1
	step
		goto 76.0,80.0
		.talk Ephram Hardstone##45171
		..turnin Siren's Song##27200
	step
		goto 76.2,83.0
		.click Water-Logged Crate##335+
		.get 8 Recovered Supplies |q 27177/1
		.from Blackscale Seacaller##45182+, Blackscale Myrmidon##45179+
		.' Slay 10 Blackscale Naga |q 27178/1
	step
		goto 79.3,78.5
		.' Go upstairs in the fort
		.talk Simon Chandler##45170
		..turnin Salvage Operation##27177
		..turnin Naga Reinforcements##27178
	step
		goto 76.8,69.8
		.talk Lieutenant Emry##45169
		..turnin Our Boys on the Shore##27338
		..accept Scouting the Shore##27341
		..accept Landgrab##27366
	step
		goto 77.0,69.9
		.talk Fargo Flintlocke##49252
		..accept Shredderectomy##27433
	step
		goto 77.5,65.3
		.' Go to this spot
		.' Scout the Beach Head Control Point |q 27341/1
	step
		goto 77.4,67.1
		.kill 12 Axebite Marine##45175+ |q 27366/1 |tip Be careful and pay attention not to stand too close to the red arrows bouncing above the ground.  Cannon balls land at the arrows a few seconds after the arrows appear, and they will hurt you a lot if they hit you.
	step
		goto 74.3,68.0
		.from Diamond-Blade Shredder##45185+
		.get 5 Abused Shredder Parts |q 27433/1
	step
		goto 76.8,69.8
		.talk Lieutenant Emry##45169
		..turnin Scouting the Shore##27341
		..turnin Landgrab##27366
		..accept Bird Down! Bird Down!##27514
	step
		goto 77.0,69.9
		.talk Fargo Flintlocke##45168
		..turnin Shredderectomy##27433
		..accept Siege Tank Rescue##27468
	step
		goto 73.4,71.2
		.talk Siege Tank Commander##45524
		..' Tell him you'll cover him while he makes repairs
		.' Speak to a Siege Tank Commander |q 27468/1
		.from Axebite Grunt##45187+
		.' Defend the Siege Tank |q 27468/2
	step
		goto 77.0,69.9
		.talk Fargo Flintlocke##45168
		..turnin Siege Tank Rescue##27468
	step
		goto 67.7,66.0
		.talk Thordun Hammerblow##45172
		..turnin Bird Down! Bird Down!##27514
		..accept Roots'll Do 'Er##27515
	step
		goto 71.4,66.2
		.click Thorny Stankroot##414+
		.get 8 Thorny Stankroot |q 27515/1
	step
		goto 67.7,66.0
		.talk Thordun Hammerblow##45172
		..turnin Roots'll Do 'Er##27515
		..accept Wings Over Highbank##27516
	step
		goto 67.7,66.0
		.talk Thordun Hammerblow##45172
		..' Tell him you're ready
		.' Fly with Thordun Hammerblow to Highbank |q 27516/1
	step
		goto 79.4,78.5
		.talk Innkeeper Francis##49688
		.home Highbank
	step
		goto 79.1,78.3
		.' Go upstairs in the fort
		.talk Kurdran Wildhammer##45167
		..turnin Wings Over Highbank##27516
		..accept Any Portal in a Storm##27537
	step
		goto 79.2,78.3
		.talk Thordun Hammerblow##45172
		..accept The Perfect Poultice##27538
	step
		goto 67.7,46.9
		.from Muddied Water Elemental##44011+
		.get 5 Whirlpool Core |q 27537/1
		.click Verrall River Muck##10352
		.get 10 Verrall River Muck |q 27538/1
	step
		'Hearth to Highbank |goto 79.4,78.5,0.5 |use Hearthstone##6948 |noway |c
	step
		goto 79.4,77.6
		.talk Talaa##45173
		..turnin Any Portal in a Storm##27537
		..turnin The Perfect Poultice##27538
		..accept The Way is Open##27545
	step
		goto 79.1,78.3
		.' Go upstairs in the fort
		.talk Kurdran Wildhammer##45167
		..turnin The Way is Open##27545
	step
		goto 79.2,78.3
		.talk Thordun Hammerblow##45172
		..accept Firebeard's Patrol##27621
	step
		goto 60.1,57.9
		.talk Keegan Firebeard##46804
		..turnin Firebeard's Patrol##27621
		..accept Welcome Relief##27803
		..accept The Only Homes We Have##27804
	step
		goto 60.4,58.1
		.talk Innkeeper Corlin##49795
		.home Firebeard's Patrol
	step
		goto 60.4,58.3
		.talk Cailin Longfellow##46814
		..accept Small Comforts##27805
	step
		goto 59.8,56.2
		.' Use your Wildhammer Water Bucket next to fires to extinguish them |use Wildhammer Water Bucket##62508
		.click Meara's Dried Roses##10073
		.get Meara's Dried Roses |q 27805/1
	step
		goto 59.5,55.9
		.' Use your Wildhammer Water Bucket next to fires to extinguish them |use Wildhammer Water Bucket##62508
		.click Aprika's Lost Doll##7514
		.get Aprika's Doll |q 27805/3
	step
		goto 59.3,56.9
		.' Use your Wildhammer Water Bucket next to fires to extinguish them |use Wildhammer Water Bucket##62508
		.click Parlan's Ivory Hammer##8215
		.get Parlan's Ivory Hammer |q 27805/2
	step
		goto 59.8,56.9
		.' Use your Wildhammer Water Bucket next to fires |use Wildhammer Water Bucket##62508
		.' Extinguish 50 Village Fires |q 27804/1
		.kill 8 Subjugated Firestarter##46838+ |q 27803/1
	step
		goto 60.2,58.0
		.talk Keegan Firebeard##46804
		..turnin Welcome Relief##27803
		..turnin The Only Homes We Have##27804
		..accept Honorable Bearing##27806
	step
		goto 60.4,58.3
		.talk Cailin Longfellow##46814
		..turnin Small Comforts##27805
	step
		goto 57.5,58.1
		.talk Iain Firebeard##46805
		..turnin Honorable Bearing##27806
		..accept Clan Mullan##27807
		..accept Stubborn as a Doyle##27808
		..accept Firebeard Bellows##27809
	step
		goto 50.8,60.2
		.talk Duglas Mullan##46811
		..turnin Clan Mullan##27807
		..accept The Fighting Spirit##27810
	step
		goto 50.8,60.2
		.talk Edana Mullan##46812
		..accept The Scent of Battle##27811
	step
		goto 51.1,59.9
		.talk Mullan Gryphon Rider##46813
		..' Tell him he's not backing out
		.from Mullan Gryphon Rider
		.' Defeat a Mullan Gryphon Rider |q 27810/1
	step
		goto 50.8,60.2
		.talk Duglas Mullan##46811
		..turnin The Fighting Spirit##27810
	step
		goto 57.3,67.6
		.talk Mullan Gryphon##46968
		..' Let the gryphons smell the piece of Charred Highland Birch |tip If you come across a gyphon chained to the ground simply kill the Twilight Trapper and the Twilight Trapper Bindings. Other gryphons may need healing, if you cannot heal them move on.
		.' Find and return 8 Mullan Gryphons |q 27811/1
		|modelnpc Twilight Trapper Bindings##46975+
		|modelnpc Twilight Trapper##46984+
	step
		goto 61.4,67.4
		.talk Keeland Doyle##47317
		..turnin Stubborn as a Doyle##27808
		..accept The Fate of the Doyles##27999
	step
		goto 50.8,60.2
		.talk Edana Mullan##46812
		..turnin The Scent of Battle##27811
	step
		goto 50.8,60.3
		.talk Duglas Mullan##46811
		..accept The Loyalty of Clan Mullan##27812
	step
		goto 57.5,58.1
		.talk Iain Firebeard##46805
		..turnin The Fate of the Doyles##27999
		..turnin The Loyalty of Clan Mullan##27812
	step
		goto 62.5,48.4
		.talk Mackay Firebeard##46850
		..turnin Firebeard Bellows##27809
		..accept Death Worthy of a Dragonmaw##27813
	step
		goto 62.6,48.6
		.talk Ella Forgehammer##48046
		..accept The Lost Brother##28233
	step
		goto 62.6,48.6
		.talk Brom Forgehammer##46806
		..accept Anything We Can Get##27814
	step
		goto 63.1,47.6
		.talk Bahrum Forgehammer##48053
		..turnin The Lost Brother##28233
		..accept They Took Me Pants!##28234
	step
		goto 62.3,47.0
		.' Go upstairs in this building
		.from Gorosh the Pant Stealer##48102
		.get Bahrum's Pants |q 28234/1
	step
		goto 62.3,46.8
		.talk Injured Dragonmaw Straggler##47465
		..' Help the orcs up
		.' Defeat 6 Dragonmaw Stragglers |q 27813/1
		.click Dragonmaw Weapon Axe##9561+
		.click Dragonmaw Weapon Rack##9921+
		.click Dragonmaw Weapon Crate##5271+
		.get 8 Dragonmaw Weapon |q 27814/1
	step
		goto 63.2,47.6
		.talk Bahrum Forgehammer##48053
		..turnin They Took Me Pants!##28234
	step
		goto 62.5,48.4
		.talk Mackay Firebeard##46850
		..turnin Death Worthy of a Dragonmaw##27813
	step
		goto 62.6,48.6
		.talk Brom Forgehammer##46806
		..turnin Anything We Can Get##27814
	step
		goto 62.5,48.4
		.talk Mackay Firebeard##46850
		..accept Somethin' for the Boys##27815
	step
		goto 57.5,58.1
		.talk Iain Firebeard##46805
		..turnin Somethin' for the Boys##27815
		..accept Personal Request##27816
	step
		goto 60.2,57.8
		.talk Keegan Firebeard##46804
		..turnin Personal Request##27816
		..accept Dropping the Hammer##27817
	step
		goto 59.9,57.3
		.clicknpc Firebeard Gryphon Mount##47316
		.' Ride the Firebeard Gryphon Mount |invehicle |c |q 27817
	step
		goto 58.8,53.1
		.' While flying on the Firebeard Gryphon Mount:
		.' Use the abilities on your action bar to kill Twilight Stormbenders on the floating rocks |tip Use your Storm Shield ability when someone casts a lightning attack on you.
		.kill 12 Twilight Stormbender##47199+ |q 27817/1
	step
		goto 58.6,51.7
		.' While flying on the Firebeard Gryphon Mount:
		.' Use the abilities on your action bar to weaken Servias Windterror
		.' Eventually, you will get off the gryphon and fight him regularly
		.kill Servias Windterror##46839 |q 27817/2 |tip When he casts his lightning spell on the ground, move away from that spot to avoid damage when it explodes.
	step
		goto 60.2,57.9
		.talk Keegan Firebeard##46804
		..turnin Dropping the Hammer##27817
		..accept Dunwalds Don't Die##27640
		..accept A Coward's Due##28001
	step
		goto 46.7,66.0 |n
		.' Enter this building |goto 46.7,66.0,0.5 |noway |c
	step
		goto 45.9,65.5
		.talk Keely Dunwald##46177
		..turnin Dunwalds Don't Die##27640
		..accept Donnelly Dunwald##27643
		..accept Eoin Dunwald##27644
		..accept Cayden Dunwald##27645
	step
		goto 45.9,65.4
		.talk Flynn Dunwald##46143
		..accept While Meeting The Family##27641
		..accept Sifting Through The Wreckage##27642
	step
		goto 45.8,71.7
		.' Cayden Dunwald can also be at [45.8,71.7]
		.talk Cayden Dunwald##46174
		..turnin Cayden Dunwald##27645
		..accept Once More Into The Fire##27648
	step
		goto 45.8,71.7
		.talk Cayden Dunwald##46174
		..' Tell him yeah...
		.' Escort Cayden Dunwald
		.' Accompany Cayden through Dunwald Market Row |q 27648/1
	step
		goto 47.9,74.5
		.talk Cayden Dunwald##46174
		..turnin Once More Into The Fire##27648
		.' Cayden Dunwald can also be at [45.8,71.7]
	step
		goto 52.9,74.3
		.talk Eoin Dunwald##46175
		..turnin Eoin Dunwald##27644
		..accept Anything But Water##27647
	step
		goto 52.8,69.8
		.click Sacred Ale Tap##7415
		.get Sacred Wildhammer Ale |q 27647/1
	step
		goto 52.4,70.3
		.talk Eoin Dunwald##46583
		..turnin Anything But Water##27647
		..accept A Steady Supply##27649
	step
		goto 46.4,59.1
		.talk Donnelly Dunwald##46176
		..turnin Donnelly Dunwald##27643
		..accept Finding Beak##27646
	step
		goto 45.4,60.0
		.' As you walk around doing quests:
		.talk Dunwald Victim##46609
		.click Wildhammer Ale Cask##7415
		.' Go into the basement of this building
		.' Search the cellar in southern Dunwald Hovel |q 27646/1
	step
		goto 46.4,53.8
		.' As you walk around doing quests:
		.talk Dunwald Victim##46609
		.click Wildhammer Ale Cask##7415
		.' Go into the basement of this building
		.' Search the cellar in northwestern Dunwald Hovel |q 27646/2
	step
		goto 48.4,52.6
		.' As you walk around doing quests:
		.talk Dunwald Victim##46609
		.click Wildhammer Ale Cask##7415
		.' Go to this spot
		.' Search the buildings in eastern Dunwald Hovel |q 27646/3
	step
		goto 46.0,58.7
		.talk Donnelly Dunwald##46176
		..turnin Finding Beak##27646
		..accept Home Again##27650
	step
		goto 45.9,54.8
		.from Bloodgorged Ettin##46145+, Twilight Scavenger##46183+, Twilight Pillager##46144+, Twilight Shadeprowler##46526+
		.' Welcome 20 Twilight Guests to Dunwald |q 27641/1
		.talk Dunwald Victim##46609
		.' Find 12 Dunwald Victims |q 27642/1
		.click Wildhammer Ale Cask##7415
		.get 6 Wildhammer Ale |q 27649/1
		.' You can find more of all these things:
		.' Around [47.0,66.1]
		.' Around [46.4,72.6]
		.' Around [50.7,69.8]
	step
		goto 46.7,66.0 |n
		.' Enter this building |goto 46.7,66.0,0.5 |noway |c
	step
		goto 46.0,65.5
		.talk Keely Dunwald##46177
		..turnin Home Again##27650
		..accept Doing It Like a Dunwald##27651
	step
		goto 50.5,70.7
		.talk Eoin Dunwald##46627
		..turnin A Steady Supply##27649
	step
		goto 50.5,70.7
		.talk Flynn Dunwald##46143
		..turnin While Meeting The Family##27641
		..turnin Sifting Through The Wreckage##27642
	step
		goto 50.5,70.6
		.talk Flynn Dunwald##46628
		..' Tell him you're in
		.kill Darunga##46624 |q 27651/1
	step
		goto 50.5,70.6
		.talk Flynn Dunwald##46628
		..turnin Doing It Like a Dunwald##27651
	step
		goto 49.0,29.8
		.talk Colin Thundermar##46591
		..turnin A Coward's Due##28001
		..accept Dragonmaw Takedown##27754
		..accept My Sister, Fanny##28369
	step
		goto 49.8,29.2
		.talk Low Shaman Blundy##48010
		..accept Fight Like a Wildhammer##27752
	step
		goto 49.8,29.3
		.talk Fanny Thundermar##48013
		..turnin My Sister, Fanny##28369
		..accept Never Leave a Dinner Behind##27753
	step
		goto 49.5,30.4
		.talk Naveen Tendernose##49591
		.home Thundermar
	step
		goto 46.2,37.4
		.from Dragonmaw Marauder##46310+
		.get 8 Dragonmaw Insignia |q 27754/1
		.click Thundermar Ale Keg##4631+
		.get 10 Wildhammer Keg |q 27752/1
		.click Wildhammer Food Stores##10034
		.get 15 Wildhammer Food Stores |q 27753/1
		.' You can find more around [49.1,37.3]
		'|model Wildhammer Food Stores##224
		'|model Wildhammer Food Stores##229 
	step
		goto 49.0,29.8
		.talk Colin Thundermar##46591
		..turnin Dragonmaw Takedown##27754
	step
		goto 49.8,29.2
		.talk Low Shaman Blundy##48010
		..turnin Fight Like a Wildhammer##27752
	step
		goto 49.8,29.3
		.talk Fanny Thundermar##48013
		..turnin Never Leave a Dinner Behind##27753
	step
		goto 49.8,29.2
		.talk Low Shaman Blundy##48010
		..accept A Vision of Twilight##28241
	step
		goto 49.1,29.4
		.talk Nivvet Channelock##48014
		..accept Tempered in Elemental Flame##28211
		..accept Hot Stuff##28212
		..accept Potential Energy##28215
	step
		goto 49.0,29.7
		.talk Colin Thundermar##46591
		..accept Magmalord Falthazar##28216
	step
		goto 57.9,33.5
		.click Eye of Twilight##7011
		..turnin A Vision of Twilight##28241
		..accept We All Must Sacrifice##28242
	step
		goto 58.0,32.6
		.kill 10 Shaman of the Black##46322+ |q 28242/1
		.from Obsidian Stoneslave##47226+
		.get 10 Twisted Elementium Loop |q 28215/1
	step
		goto 57.9,33.5
		.click Eye of Twilight##7011
		..turnin We All Must Sacrifice##28242
		..accept The Eyes Have It##28243
	step
		goto 49.1,29.4
		.talk Nivvet Channelock##48014
		..turnin Potential Energy##28215
	step
		goto 49.7,29.2
		.talk Low Shaman Blundy##48010
		..turnin The Eyes Have It##28243
		..accept Eye Spy##28244
	step
		goto 49.8,29.1
		.click Eye of Twilight##7011
		.' Watch the cutscene
		.' Peered into the Eye |q 28244/1
	step
		goto 49.7,29.2
		.talk Low Shaman Blundy##48010
		..turnin Eye Spy##28244
	step
		goto 42.5,23.5
		.from Magmalord Falthazar##48015
		.get Magmalord Falthazar's Head |q 28216/1
	step
		goto 42.2,24.3
		.from Unbound Emberfiend##48016+
		.get 5 Molten Fury |q 28212/1
		.click Tempered Spear##8490 
		.get 8 Tempered Spear |q 28211/1
	step
		goto 49.0,29.7
		.talk Colin Thundermar##46591
		..turnin Magmalord Falthazar##28216
	step
		goto 49.1,29.4
		.talk Nivvet Channelock##48014
		..turnin Tempered in Elemental Flame##28211
		..turnin Hot Stuff##28212
		..accept Tear Them From the Sky!##28280
	step
		goto 49.2,29.8
		.' Use your Shoulder-Mounted Drake-Dropper on Dragonmaw Black Drakes |use Shoulder-Mounted Drake-Dropper##63393 |tip They are flying in the sky around this area.
		.kill 8 Dragonmaw Black Drake##48197+ |q 28280/1
	step
		goto 49.1,29.4
		.talk Nivvet Channelock##48174
		..turnin Tear Them From the Sky!##28280
	step
		goto 49.0,29.7
		.talk Colin Thundermar##48173
		..accept Last Stand at Thundermar##28281
	step
		goto 48.1,30.0
		.kill 8 Dragonmaw Skyclaw##48194 |q 28281/1
	step
		goto 49.0,29.7
		.talk Colin Thundermar##48173
		..turnin Last Stand at Thundermar##28281
		..accept Narkrall, The Drake-Tamer##28282
	step
		goto 49.0,29.7
		.talk Colin Thundermar##48173
		..' Tell him you're ready to fight him!
		.kill Narkrall Rakeclaw##48257 |q 28282/1
	step
		goto 49.0,29.7
		.talk Colin Thundermar##48173
		..turnin Narkrall, The Drake-Tamer##28282
		..accept The Kirthaven Summit##28294
	step
		goto 54.6,18.0
		.talk Vaughn Blusterbeard##49574
		.home Kirthaven
	step
		goto 54.3,16.7
		 .talk Lachlan MacGraff##48367
		..turnin The Kirthaven Summit##28294
	step
		goto 54.9,17.2
		.talk Kurdran Wildhammer##48365
		..accept The Bachelor##28346
	step
		goto 54.4,16.8
		.talk Keegan Firebeard##48364
		..turnin The Bachelor##28346
		..accept Rescue at Glopgut's Hollow##28377
	step
		goto 38.1,34.5
		.talk Colin Thundermar##48472
		..turnin Rescue at Glopgut's Hollow##28377
		..accept Find Fanny##28378
		..accept Ogre Bashin'##28379
	step
		goto 37.6,33.4 |n
		.' Enter the cave |goto 37.6,33.4,0.5 |noway |c
	step
		goto 35.0,31.1
		.' Go to this spot inside the cave
		.' Rescue Fanny Thundermar |q 28378/1
		' |modelnpc 48530
	step
		goto 37.6,33.4 |n
		.' Leave the cave |goto 37.6,33.4,0.5 |noway |c
	step
		goto 38.7,30.9
		.from Glopgut Pounder##48474+, Glopgut Hurler##48475+, Glopgut Basher##48498+
		.' Slay 10 Glopgut Ogres |q 28379/1
	step
		goto 38.1,34.5
		.talk Colin Thundermar##48472
		..turnin Find Fanny##28378
		..turnin Ogre Bashin'##28379
		..accept The Bachelorette##28407
	step
		'Hearth to Kirthaven |goto 54.6,18.0,0.5 |use Hearthstone##6948 |noway |c
	step
		goto 54.7,17.9
		.talk Fanny Thundermar##48530
		..turnin The Bachelorette##28407
	step
		goto 54.6,17.5
		.talk Russell Brower##48366
		..accept Words and Music By...##28413
	step
		goto 54.6,17.5
		.talk Russell Brower##48366
		..' Tell him you're ready, let's write a song
		.' Create a song |q 28413/1
	step
		goto 54.6,17.5
		.talk Russell Brower##48366
		..turnin Words and Music By...##28413
	step
		goto 54.3,16.7
		.talk Lachlan MacGraff##48367
		..accept Something Bold##28408
		..accept Something Brewed##28409
		..accept Something Stolen##28410
		..accept Something Stewed##28411
	step
		goto 53.4,24.5
		.from Highland Elk##46970+, Highland Doe##46971+
		.get 8 Fresh Venison |q 28411/1
		.from Highland Worg##46153+
		.get 5 Worg Rib |q 28411/2
		.' You can find more at [53.0,13.1]
	step
		goto 56.8,21.9
		.from Tawny Owl##46162+
		.click Pristine Owl Feather##3651+
		.get 12 Pristine Owl Feather |q 28408/1
	step
		goto 64.4,22.6
		.talk Hammelhand##48758
		..' Tell him you're here to escort a delivery to Kirthaven
		.' Follow the dwarves
		.from Dragonmaw Skirmisher##48799+
		.' Escort the Supply Caravan |q 28409/1
	step
		goto 75.1,33.8
		.' Find a zeppelin flying north or south along this coast between Dragonmaw Port and The Krazzworks
		.' Fly onto the zeppelin and land on it
		.' Go downstairs on the zeppelin
		.click Crate of Fine Cloth##9105+
		.get Fine Dark Cloth |q 28410/1
	step
		goto 54.3,16.7
		.talk Lachlan MacGraff##48367
		..turnin Something Bold##28408
		..turnin Something Brewed##28409
		..turnin Something Stolen##28410
		..turnin Something Stewed##28411
	step
		goto 54.3,16.8
		.talk Grundy MacGraff##48368
		..accept Wild, Wild, Wildhammer Wedding##28655
	step
		goto 54.3,16.8
		.talk Grundy MacGraff##48368
		..' Tell him to let the wedding commence!
		.' Watch the cutscene
		.from The Beast Unleashed##49234
		.' Complete the Nuptials |q 28655/1
	step
		goto 55.3,17.3
		.talk Kurdran Wildhammer##49358
		..turnin Wild, Wild, Wildhammer Wedding##28655
	step
		goto 55.2,17.3
		.talk Lachlan MacGraff##49374
		..accept The Maw of Madness##27374
	step
		goto 44.0,10.6
		.talk Earthcaller Torunscar##43901
		..turnin The Maw of Madness##27374
		..accept Torn Ground##27299
	step
		goto 41.8,11.4
		.kill 3 Tentacle of Iso'rath##45394 |q 27299/1
	step
		goto 44.0,10.6
		.talk Earthcaller Torunscar##45332
		..turnin Torn Ground##27299
		..accept Pushing Back##27300
	step
		goto 44.0,11.3
		.talk Earthmender Duarn##45391
		..accept Unbroken##27301
	step
		goto 44.4,11.6
		.talk Initiate Goldmine##45432
		..accept Simple Solutions##27302
	step
		goto 44.2,18.1
		.talk Earthcaller Yevaa##45362
		..turnin Unbroken##27301
		..accept Mercy for the Bound##27303
	step
		goto 42.3,17.2
		.from Twilight Captivator##45359+, Twilight Bonebreaker##45334+
		.kill 12 Drakgor cultists |q 27300/1
		.from Bound Fleshburner##45358+
		.get 5 Fleshburner Heart |q 27303/1
		.click Barrel of Pyreburn Oil##457+
		.get 10 Pyreburn Oil |q 27302/1
	step
		goto 44.4,11.6
		.talk Initiate Goldmine##45432
		..turnin Simple Solutions##27302
	step
		goto 43.8,11.3
		.talk Earthcaller Yevaa##45386
		..turnin Mercy for the Bound##27303
	step
		goto 44.0,10.6
		.talk Earthcaller Torunscar##45332
		..turnin Pushing Back##27300
		..accept The Maw of Iso'rath##27376
	step
		goto 44.5,10.6
		.clicknpc Earthen Ring Gryphon##50473
		.' Join the assault on Iso'rath |q 27376/1
	step
		goto 48.4,14.6
		.talk Earthcaller Yevaa##47991
		..turnin The Maw of Iso'rath##27376
		..accept Devoured##27377
	step
		'Let the oozes kill you.
		.' Survive Iso'rath's defenses |q 27377/1
		.talk Thrall##48051
		..turnin Devoured##27377
		..accept The Worldbreaker##27378
	step
		'Deathwing will attack you and Thrall
		.' Aid Thrall in battling Deathwing |q 27378/1
		.' Click the Quest Complete box that pops up
		..turnin The Worldbreaker##27378
		..accept The Terrors of Iso'rath##27379
	step
		goto 49.6,15.8
		.' Stand in the yellow bubbles on the ground around this area to heal |tip Watch the Digestive Acids bar near the bottom of your screen.  Don't let it get full.  Go into the yellow bubbles to lower it.
		.from Tentacle of Iso'rath##48790
		.' Save Stormcaller Jalara |q 27379/2
		' |modelnpc 48789
	step
		goto 49.1,13.1
		.' Stand in the yellow bubbles on the ground around this area to heal |tip Watch the Digestive Acids bar near the bottom of your screen.  Don't let it get full.  Go into the yellow bubbles to lower it.
		.from Tentacle of Iso'rath##48790
		.' Save Earthmender Duarn |q 27379/3
		' |modelnpc 48793
	step
		goto 47.0,13.1
		.' Stand in the yellow bubbles on the ground around this area to heal |tip Watch the Digestive Acids bar near the bottom of your screen.  Don't let it get full.  Go into the yellow bubbles to lower it.
		.from Tentacle of Iso'rath##48790
		.' Save Hargoth Dimblaze |q 27379/1
		' |modelnpc 48743
	step
		goto 47.5,15.6
		.' Stand in the yellow bubbles on the ground around this area to heal |tip Watch the Digestive Acids bar near the bottom of your screen.  Don't let it get full.  Go into the yellow bubbles to lower it.
		.from Tentacle of Iso'rath##48790
		.' Save Stormcaller Mylra |q 27379/4
		' |modelnpc 50469
	step
		goto 48.7,16.6
		.talk Earthcaller Yevaa##48059
		..turnin The Terrors of Iso'rath##27379
		..accept Nightmare##27380
	step
		goto 48.8,14.9
		.' Stand in the yellow bubbles on the ground around this area to heal |tip Watch the Digestive Acids bar near the bottom of your screen.  Don't let it get full.  Go into the yellow bubbles to lower it.
		.from Brain of Iso'rath##47960
		.' Kill Iso'rath |q 27380/1
	step
		goto 44.0,10.6
		.talk Earthcaller Torunscar##45332
		..turnin Nightmare##27380
	step
		goto 44.1,10.5
		.talk Golluck Rockfist##48265
		..accept Warm Welcome##27485	
	step
		goto 27.6,21.4
		.' You will get captured by a red dragon
		.' Meet with Lirastrasza |q 27485/1
		' |modelnpc 49417
	step
		goto 29.3,25.9
		.talk Calen##45528
		..turnin Warm Welcome##27485
		..accept Even Dragons Bleed##27504
	step
		goto 29.9,31.3
		.talk Velastrasza##45522
		..turnin Even Dragons Bleed##27504
		..accept Draconic Mending##27505
	step
		goto 29.8,31.4
		.talk Baleflame##45562
		..accept Life from Death##27506
	step
		goto 29.7,33.1
		.' Protect the Vermillion Menders while they heal Celastrasza to full health
		.' Defend 5 Vermillion Menders |q 27505/1
		.from Twilight Wyrmkiller##45748+
		.' Use your Ruby Seeds on Twilight Wyrmkiller and Vermillion Mender corpses |use Ruby Seeds##61323
		.' Reclaim 6 Dragonkin corpses |q 27506/1
		' |modelnpc 45746
	step
		goto 29.9,31.3
		.talk Velastrasza##45522
		..turnin Draconic Mending##27505
	step
		goto 29.8,31.4
		.talk Baleflame##45562
		..turnin Life from Death##27506
	step
		goto 29.9,31.3
		.talk Velastrasza##45522
		..accept In Defense of the Redoubt##27564
	step
		goto 29.3,25.9
		.talk Calen##45528
		..turnin In Defense of the Redoubt##27564
		..accept Encroaching Twilight##27507
		..accept Breach in the Defenses##27509
	step
		goto 29.3,26.0
		.talk Lirastrasza##45518
		..accept Far from the Nest##27508
	step
		goto 18.4,16.7 |n
		.' Enter the cave |goto 18.4,16.7,0.5 |noway |c
	step
		goto 18.0,16.9
		.' Use your Flashgrowth Mote next to the Twilight Portal |use Flashgrowth Mote##61385 |tip It looks like a blue and pink swirled portal in a metal case.
		.' Destroy the Twilight Portal |q 27509/1
	step
		goto 20.9,15.7
		.from Twilight Abductor##45648+, Twilight Flamequencher##45618+
		.kill 12 Twilight invaders |q 27507/1
		.clicknpc Vermillion Egg##45682
		.get 6 Vermillion Egg |q 27508/1
	step
		goto 29.3,26.0
		.talk Calen##45528
		..turnin Encroaching Twilight##27507
		..turnin Breach in the Defenses##27509
	step
		goto 29.3,26.0
		.talk Lirastrasza##45518
		..turnin Far from the Nest##27508
	step
		goto 29.3,26.0
		.talk Calen##45528
		..accept Mathias' Command##28101
	step
		goto 26.0,38.8
		.talk Master Mathias Shaw##47592
		..turnin Mathias' Command##28101
		..accept Easy Pickings##28103
		..accept Precious Goods##28104
	step
		goto 25.6,37.9
		.from Twilight Spearwarder##47490+
		.get Twilight Caravan Cargo Key |q 28104/1
		.click Twilight Caravan Chest##10106+ 
		.get Twilight's Hammer Gatestone |q 28104/2
		.kill 8 Twilight Spearwarder |q 28103/1
	step
		goto 26.0,38.8
		.talk Master Mathias Shaw##47592
		..turnin Easy Pickings##28103
		..turnin Precious Goods##28104
		..accept If The Key Fits##28108
	step
		'Next to you:
		.talk Master Mathias Shaw##47611
		..accept Paving the Way##28107
	step
		goto 29.5,51.7
		.' Go to this spot
		.' Open the Dragonmaw Gate |q 28108/1
	step
		'Next to you:
		.talk Master Mathias Shaw##47611
		..turnin If The Key Fits##28108
		..accept Pressing Forward##28109
	step
		goto 27.5,54.6
		.from Twilight Sentinel##47406+, Twilight Guardsman##47394+, Twilight Stalker##47401+
		.' Kill 30 Wyrm's Bend Cultists |q 28107/1
	step
		'Next to you:
		.talk Master Mathias Shaw##47611
		..turnin Paving the Way##28107
	step
		goto 22.8,56.1
		.' Go to this spot
		.' Secure the Entrance to Grim Batol |q 28109/1
	step
		goto 22.1,56.6
		.talk Calen##47605
		..turnin Pressing Forward##28109
	step
		goto 21.8,57.0
		.talk Alexstrasza the Life-Binder##47603
		..accept Enter the Dragon Queen##28712
	step
		goto 14.9,16.3
		.talk Lirastrasza##49417
		..turnin Enter the Dragon Queen##28712
	step
		goto 14.1,15.4
		.talk Calen##49810
		..accept Battle of Life and Death##28758
	step
		goto 14.1,15.1
		.clicknpc Vermillion Vanguard##49910
		.' Use the abilities on your hotbar on Twilight Shadowdrakes
		.kill Twilight Shadowdrake##49873 |q 28758/1
	step
		goto 22.1,56.6
		.talk Calen##47605
		..turnin Battle of Life and Death##28758
		..accept And the Sky Streaked Red##28171
	step
		goto 59.1,69.8
		.talk Lirastrasza##47902
		..turnin And the Sky Streaked Red##28171
		..accept A Fitting End##28191
		..accept Blackout##28173
	step
		goto 59.0,69.8
		.talk Velastrasza##47904
		..accept Shining Through the Dark##28175
	step
		goto 63.9,78.0
		.' Use Alexstrasza's Tear in the small cave beneath this huge tree |use Alexstrasza's Tear##63139
		.' Plant Alexstrasza's Tear |q 28175/1
	step
		goto 62.7,76.2
		.from Obsidian Viletongue##47796+, Obsidian Charscale##47797+
		.kill 10 Obsidian Dragonkin |q 28191/1
		.' Use your Wyrmhunter Hooks on Obsidian Pyrewings |use Wyrmhunter Hooks##63092 |tip You will get a message on your screen when the Obsidian Pyrewing is almost dead.  When you see that message, use your Wyrmhunter Hooks on another Obsidian Pyrewing to jump to it.  If you fall, it can hurt you a lot.
		.kill 8 Obsidian Pyrewing##46141 |q 28173/1
	step
		goto 59.1,69.8
		.talk Lirastrasza##47902
		..turnin A Fitting End##28191
		..turnin Blackout##28173
	step
		goto 59.0,69.8
		.talk Velastrasza##47904
		..turnin Shining Through the Dark##28175
	step
		goto 59.1,69.8
		.talk Lirastrasza##47902
		..accept Following the Young Home##28176
	step
		goto 59.3,82.5
		.' Use your Mother's Flame next to the big blue spikes eggs |use Mother's Flame##63126
		.' Hatch the Obsidian Whelps |q 28176/1
	step
		goto 55.4,83.5 |n
		.' Enter the cave |goto 55.4,83.5,0.5 |noway |c
	step
		goto 49.8,85.8
		.' Go to this spot
		.' Infiltrate the Obsidian Lair |q 28176/2
	step
		goto 44.9,91.0
		.talk Baleflame##47905
		..turnin Following the Young Home##28176
		..accept Last of Her Kind##28247
		.from Obsidia##47929
		.' Defeat Obsidia |q 28247/1
	step
		goto 55.4,83.5 |n
		.' Leave the cave |goto 55.4,83.5,0.5 |noway |c
	step
		goto 59.1,69.8
		.talk Lirastrasza##47902
		..turnin Last of Her Kind##28247
		..accept Victors' Point##28248
	step
		goto 43.4,57.4
		.talk Kurdran Wildhammer##45668
		..turnin Victors' Point##28248
		..accept Ogres & Ettins##27492
	step
		goto 43.4,57.3
		.talk Cassius the White##45669
		..accept Call in the Artillery##27496
		..accept SI:7 Drop##27490
	step
		goto 43.6,57.2
		.talk Ben Mora##49599
		.home Victor's Point
	step
		goto 43.8,57.2
		.talk Angus Stillmountain##45904
		..' Tell him you're here to lead the Wildhammer squad and drop off the SI:7 agents
		.' Get your Wildhammer Squad |q 27490/1
	step
		goto 39.2,64.5
		.' Go to this spot and land on the flashing blue X on the ground
		.' Drop off the SI:7 |q 27490/2
	step
		goto 38.8,64.3
		.' Use your Artillery Flare |use Artillery Flare##61363
		.' Target the Northern Building |q 27496/1
	step
		goto 40.0,64.4
		.' Use your Artillery Flare |use Artillery Flare##61363
		.' Target the Northeastern Building |q 27496/2
	step
		goto 40.4,69.2
		.' Use your Artillery Flare |use Artillery Flare##61363
		.' Target the Southwestern Building |q 27496/3
	step
		goto 41.4,71.2
		.' Use your Artillery Flare |use Artillery Flare##61363
		.' Target the Southern Building |q 27496/4
	step
		goto 41.1,69.8
		.from Bloodeye Magelord##45795+, Bloodeye Brute##45787+, Twilight Ettin##45838+
		.kill 10 Bloodeye Clan Ogres & Ettins |q 27492/1
	step
		goto 43.4,57.3
		.talk Cassius the White##45669
		..turnin Call in the Artillery##27496
		..turnin SI:7 Drop##27490
	step
		goto 43.4,57.4
		.talk Kurdran Wildhammer##45668
		..turnin Ogres & Ettins##27492
		..accept Move the Mountain##27494
	step
		goto 38.1,66.2
		.click Hidden Explosives##9393
		.' Detonate the Hidden Explosives |q 27494/1
		.' Click the Quest Complete box that pops up
		..turnin Move the Mountain##27494
		..accept Signal the Attack##27498
	step
		goto 40.5,62.3
		.' Use your Attack Signal at the top of this tower |use Attack Signal##61511
		.' Signal the Attack |q 27498/1
		.' Click the Quest Complete box that pops up
		..turnin Signal the Attack##27498
		..accept Four Heads are Better than None##27500
	step
		goto 39.8,71.3 |n
		.' Enter the cave |goto 39.8,71.3,0.5 |noway |c
	step
		goto 37.6,71.3
		.from Za'brox##46017
		.get Za's Head |q 27500/1
		.get Brox's Head |q 27500/4
	step
		goto 38.7,70.2
		.from Beeble'phod##46018
		.get Phod's Head |q 27500/2
		.get Beeble's Head |q 27500/3
	step
		'Hearth to Victor's Point |goto 43.6,57.3,0.5 |use Hearthstone##6948 |noway |c
	step
		goto 43.4,57.3
		.talk Cassius the White##45669
		..turnin Four Heads are Better than None##27500
		..accept Up to the Citadel##27502
	step
		goto 38.9,64.0
		.talk SI:7 Squad Commander##46076
		..' Tell him you're ready
		.' Speak to the Squad commander |q 27502/1
	step
		'Follow the SI:7 Squad Commander and the SI:7 Agents up the path
		.' Escort the SI:7 |q 27502/2
		.' Click the Quest Complete box that pops up
		..turnin Up to the Citadel##27502
		..accept Just You and Mathias##27636
	step
		goto 36.4,66.0
		.talk Master Mathias Shaw##45796
		..turnin Just You and Mathias##27636
		..accept Dark Assassins##27652
		..accept Bring the Hammer Down##27654
		..accept Help from the Earthcaller##27657
	step
		goto 37.5,88.7
		.talk Earthcaller Yevaa##46242
		..turnin Help from the Earthcaller##27657
		..accept Portal Overload##27659
		..accept Spirit of the Loch##27660
	step
		goto 37.6,88.7
		.talk Initiate Goldmine##46243
		..accept Unbinding##27662
	step
		goto 44.1,81.4
		.click the Air Portal Controller##9849 |tip It is high in the sky.
		.kill Debilitated Aetharon##46270 |q 27659/2
	step
		goto 38.0,80.2
		.click Earth Portal Controller##9849
		.kill Debilitated Apexar##46273 |q 27659/1
	step
		goto 33.2,62.4
		.click Water Portal Controller##9849
		.kill Debilitated Edemantus##46272 |q 27659/3
	step
		goto 27.6,63.9
		.talk Countess Verrall##46413
		..turnin Spirit of the Loch##27660
		..accept Fire the Cannon##27661
	step
		goto 35.2,67.4
		.from Corrupted Elementalist##46204+, Citadel Veteran##46205+, Twilight Vindicator##46203+
		.kill 10 Twilight Citadel cultists |q 27654/1
		.from Dark Assassin##46202+
		.get 5 Dark Assassin's Pendant |q 27652/1
		.from Enslaved Tempest##46328+, Enslaved Waterspout##46329+, Enslaved Inferno##46327+
		.' Free 10 Enslaved Elementals |q 27662/1
	step
		goto 40.8,79.0
		.kill Lord Cannon##46785 |q 27661/1
	step
		goto 37.6,88.7
		.talk Initiate Goldmine##46243
		..turnin Unbinding##27662
	step
		goto 37.5,88.7
		.talk Earthcaller Yevaa##46242
		..turnin Portal Overload##27659
	step
		goto 36.4,66.0
		.talk Master Mathias Shaw##45796
		..turnin Dark Assassins##27652
		..turnin Bring the Hammer Down##27654
		..accept Distract Them for Me##27688
		..accept The Elementium Axe##27695
	step
		goto 27.6,63.9
		.talk Countess Verrall##46413
		..turnin Fire the Cannon##27661
		..accept Water of Life##27719
	step
		goto 35.1,61.1
		.' Use your Water of Life next to the Corpse of Forgemaster Finlay |use Water of Life##62503 |tip He's chained to an anchor, drowned underwater.
		.' Extract Artifact Information |q 27719/1
		|modelnpc Corpse of Forgemaster Finlay##46819+
	step
		goto 36.4,66.0
		.talk Master Mathias Shaw##45796
		..turnin Water of Life##27719
	step
		goto 36.1,70.7
		.kill Master Klem##46342 |q 27688/2 |tip Mathias Shaw will come and kill him for you after you've fought him for a little bit.
	step
		goto 40.2,84.0
		.from Blindeye the Guardian##46399
		.get The Elementium Axe |q 27695/1
	step
		goto 42.3,83.5
		.kill Mia the Rose##46343 |q 27688/3 |tip She's in a small room at the top of this big building.  Mathias Shaw will come and kill her for you after you've fought her for a little bit.
	step
		goto 43.4,88.5
		.kill Dame Alys Finnsson##46341 |q 27688/1 |tip Mathias Shaw will come and kill her for you after you've fought her for a little bit.
	step
		goto 36.4,66.0
		.talk Master Mathias Shaw##45796
		..turnin Distract Them for Me##27688
		..turnin The Elementium Axe##27695
		..accept Dragon, Unchained##27700
	step
		goto 32.4,68.7
		.' Use The Elementium Axe |use The Elementium Axe##62248
		.' Free Lirastrasza |q 27700/1
		' |modelnpc 46456
	step
		goto 36.4,66.0
		.talk Master Mathias Shaw##45796
		..turnin Dragon, Unchained##27700
		..accept Coup de Grace##27702
	step
		goto 37.5,75.4
		.from Twilight Skyterror##46416+ |tip They are all over this area so you may need to search.
		.' Deliver 5 Coup de Graces |q 27702/1
	step
		goto 36.4,66.0
		.talk Master Mathias Shaw##45796
		..turnin Coup de Grace##27702
		..accept Back to the Elementium Depths##27711
	step
		goto 37.5,88.7
		.talk Initiate Goldmine##46243
		..turnin Back to the Elementium Depths##27711
		..accept Mr. Goldmine's Wild Ride##27720
	step
		goto 37.5,88.7
		.talk Initiate Goldmine##46243
		..' Tell him you're ready for that wild ride
		.' Ride the Mine Cart to the End of the Line |q 27720/2
	step
		'Next to you:
		.talk Initiate Goldmine##46513
		..turnin Mr. Goldmine's Wild Ride##27720
		..accept A Little on the Side##27742
		..accept While We're Here##27743
	step
		goto 37.4,93.2
		.click Elementium Shard##10035+
		.get 6 Elementium Shard |n
		.click Twilight Rune of Earth##465
		..accept Rune Ruination##27744
	step
		goto 35.2,90.4
		.click Elementium Shard##10035+
		.get 6 Elementium Shard |n
		.click Twilight Rune of Water##465
		.' Destroy the Rune of Water |q 27744/2
	step
		goto 33.5,88.4
		.click Elementium Shard##10035+
		.get 6 Elementium Shard |n
		.click Twilight Rune of Air##465
		.' Destroy the Rune of Air |q 27744/3
	step
		goto 34.3,86.6
		.click Elementium Shard##10035+
		.get 6 Elementium Shard |n
		.click Twilight Rune of Fire##465
		.' Destroy the Rune of Fire |q 27744/4
	step
		goto 34.5,86.3
		.from Twilight Miner##46610+, Depths Overseer##46579+
		.kill 12 Elementium Depths cultists |q 27743/1
		.click Elementium Shard##10035+
		.get 6 Elementium Shard |q 27742/1
	step
		'Next to you:
		.talk Initiate Goldmine##46513
		..turnin A Little on the Side##27742
		..turnin While We're Here##27743
		..turnin Rune Ruination##27744
		..accept A Fiery Reunion##27745
	step
		goto 36.4,83.8
		.from Magmatooth##46611
		.get Fire Portal Controller |q 27745/2
	step
		goto 36.4,83.8
		.' Use your Fire Portal Controller |use Fire Portal Controller##62394
		.' Use the Fire Portal Controller at the Fire Portal |q 27745/1
	step
		goto 37.5,88.7
		.talk Initiate Goldmine##46243
		..turnin A Fiery Reunion##27745
		..accept Mathias Needs You##27782
	step
		goto 36.4,66.0
		.talk Master Mathias Shaw##45796
		..turnin Mathias Needs You##27782
		..accept The Hammer of Twilight##27784
	step
		goto 45.4,88.0
		.clicknpc The Hammer of Twilight
		..turnin The Hammer of Twilight##27784
		..accept Skullcrusher the Mountain##27787
		.' Watch the cutscene
		.' Survive Skullcrusher's Backhand |q 27787/1
	step
		goto 45.4,87.9
		.kill Skullcrusher the Mountain##46732 |q 27787/2 |tip Follow the instructions that pop up on your screen.
	step
		'Hearth to Victor's Point |goto 43.6,57.3,0.5 |use Hearthstone##6948 |noway |c
	step
		goto 43.4,57.4
		.talk Kurdran Wildhammer##45668
		..turnin Skullcrusher the Mountain##27787
]])

--------------------------------------------------------------------------------------------------------------------------------------
-- EVENTS
--------------------------------------------------------------------------------------------------------------------------------------
-- DARKMOON FAIRE --
ZygorGuidesViewer:RegisterInclude("A_Darkmoon_Faire_Dailies",[[
		author support@zygorguides.com
	step
		goto Elwynn Forest,41.8,69.5
		.click the Portal to Darkmoon Island
		.' Telport to Darkmoon Island |goto Darkmoon Island |noway |c
	step
		goto Darkmoon Island,56.0,52.9 |n
		.' Follow the Path to the Darkmoon Faire |goto Darkmoon Island,56.0,52.9,1 |noway |c
	step
		goto Darkmoon Island,54.3,53.1
		.talk Zina Sharpworth##55266
		.buy Sack o' Tokens##78906 |n
		.' Open your Sack o' Tokens in your bags |use Sack o' Tokens##78906
		.collect 20 Darkmoon Faire Game Tokens##71083
	step
		goto Darkmoon Island,53.3,54.4
		.talk Mola##54601
		..accept It's Hammer Time##29463 |daily
	step
		goto Darkmoon Island,53.3,54.4
		.talk Mola##54601
		.' Tell her:
		.' <Ready to whack!> |havebuff Interface\Icons\inv_hammer_32
	step
		.' Use the _Whack!_ on your bar and whack the Gnolls in the Barrels
		.' The Gnolls will pop up in the Barrels, but be careful not to hit the _Doll_ or you will get stunned.
		.' Whack 30 Gnolls |q 29463/1
	step
		goto Darkmoon Island,53.3,54.4
		.talk Mola##54601
		..turnin It's Hammer Time##29463
	step
		goto Darkmoon Island,52.5,56.2
		.talk Maxima Blastenheimer##15303
		..accept The Humanoid Cannonball##29436 |daily
		|next "quest"
	step
	label	"target"
		goto Darkmoon Island,57.1,89.6
		.talk Teleportologist Fozlebub##57850
		.' Tell him:
		.' <Teleport me to the cannon.> |goto 52.7,56.0,1 |noway |c
	step
	label	"quest"
		goto Darkmoon Island,52.5,56.2
		.talk Maxima Blastenheimer##15303
		.' Tell her:
		.' <Launch me!>
		'Wait for the Cannon to Launch you |havebuff Interface\Icons\Spell_Magic_FeatherFall
	step
		goto Darkmoon Island,56.4,93.3
		.' You will be launched throught the air. 
		.' Use the ability on your action bar to drop dpwn into the target. You will gain more points for getting closer to the middle.
		.' Earn 5 Target Points |q 29436/1
		.' Click here to try again |confirm |next "target"
	step
		goto Darkmoon Island,57.1,89.6
		.talk Teleportologist Fozlebub##57850
		.' Tell him:
		.' <Teleport me to the cannon.> |goto 52.7,56.0,1 |noway |c
	step
		goto Darkmoon Island,52.5,56.2
		.talk Maxima Blastenheimer##15303
		..turnin The Humanoid Cannonball##29436
	step
		goto 49.3,60.8
		.talk Rinling##14841
		..accept He Shoots, He Scores!##29438 |daily
	step
		goto 49.3,60.8
		.talk Rinling##14841	
		.' Tell him:
		.' <Let's shoot!> |havebuff Interface\Icons\INV_Weapon_Rifle_05
	step
		'Shoot at the 3 targets. 
		.' When you see a green marker appear over a target, make sure that you are aimed at it and _shoot_ |tip To aim, simply move the camera to face your current target.
		.' Shoot 25 Targets |q 29438/1
	step
		goto 49.3,60.8
		.talk Rinling##14841
		..turnin He Shoots, He Scores!##29438 |daily
	step
		goto Darkmoon Island,50.7,65.1
		.talk Finlay Coolshot##54605
		..accept Tonk Commander##29434 |daily
	step
		goto Darkmoon Island,50.7,65.1
		.talk Finlay Coolshot##54605
		.' Tell him:
		.' <Ready to Play.> |invehicle |c
	step
		'Use your _Cannon_ ability to shoot _Tonk Targets_.
		.from Tonk Target##33081+
		.' Destroy 30 Tonk Targets |q 29434/1
	step
		goto Darkmoon Island,50.7,65.1
		.talk Finlay Coolshot##54605
		..turnin Tonk Commander##29434
	step
		goto 51.6,77.8
		.talk Jessica Rogers##54485
		..accept Target: Turtle##29455 |daily
	step
		goto 51.6,77.8
		.talk Jessica Rogers##54485
		.' Tell her: 
		.' <Ready to play!> |havebuff Interface\Icons\INV_Jewelry_Ring_03
	step
		'Use your _Ring Toss_ ability to throw rings on the turtle.  |tip When aiming, move the marker over the middle of the turtle.
		.' Land 3 Rings on Dubenko |q 29455/1
		'|modelnpc Dubenko##54490
	step
		goto 51.6,77.8
		.talk Jessica Rogers##54485
		..turnin Target: Turtle##29455
]])

ZygorGuidesViewer:RegisterInclude("A_Darkmoon_Faire_Quests",[[
	step
		goto Stormwind City 49.6,74.9
		.talk Stanly McCormick##30730
		.buy 5 Light Parchment##39354
		|only if skill("Inscription")>74
	step
		goto Elwynn Forest,41.8,69.5
		.click the Portal to Darkmoon Island
		.' Telport to Darkmoon Island |goto Darkmoon Island |noway |c
	step
		goto Darkmoon Island,56.0,52.9 |n
		.' Follow the Path to the Darkmoon Faire |goto Darkmoon Island,56.0,52.9,1 |noway |c
	step
		goto Darkmoon Island,51.9,60.9
		.talk Professor Thaddeus Paleo##14847
		..accept Fun for the Little Ones##29507
		|only if skill("Archaeology")>74
	step
		goto Darkmoon Island,49.3,60.8
		.talk Rinling##14841
		..accept Talkin' Tonks##29511
		|only if skill("Engineering")>74
	step
		goto Darkmoon Island,49.3,60.7
		.talk Rinling##14841
		..accept Rearm, Reuse, Recycle##29518
		|only if skill("Mining")>74
	step
		goto 49.3,60.9
		.talk Rinling##14841
		..accept Eyes on the Prizes##29517
		|only if skill("Leatherworking")>74
	step
		goto Darkmoon Island,52.9,68.0
		.talk Stamp Thunderhorn##14845
		..accept Putting the Crunch in the Frog##29509
		|only if skill("Cooking")>74
	step
		goto Darkmoon Island,52.9,68.0
		.talk Stamp Thunderhorn##14845		
		..accept Spoilin' for Salty Sea Dogs##29513
		|only if skill("Fishing")>74
	step
		goto Darkmoon Island 53.2,75.8
		.talk Sayge##14822
		..accept Writing the Future##29515
		|only if skill("Inscription")>74
	step
		goto Darkmoon Island,55.0,70.8
		.talk Chronos##14833
		..accept Putting the Carnies Back Together Again##29512
		|only if skill("First Aid")>74
	step
		goto Darkmoon Island,55.0,70.8
		.talk Chronos##14833
		..accept Tan My Hide##29519
		|only if skill("Skinning")>74
	step
		goto Darkmoon Island,55.0,70.8
		.talk Chronos##14833
		..accept Herbs for Healing##29514
		|only if skill("Herbalism")>74
	step
		goto 50.5,69.6
		.talk Sylannia##14844
		..accept A Fizzy Fusion##29506
		|only if skill("Alchemy")>74
	step
		goto 55.0,70.8
		.talk Chronos##14833
		..accept Keeping the Faire Sparkling##29516
		|only if skill("Jewelcrafting")>74
	step
		goto Darkmoon Island,53.2,75.8
		.talk Sayge##14822
		..accept Putting Trash to Good Use##29510
		|only if skill("Enchanting")>74
	step
		goto Darkmoon Island,51.1,82.0
		.talk Yebb Neblegear##14829
		..accept Baby Needs Two Pair of Shoes##29508
		|only if skill("Blacksmithing")>74
	step
		goto 52.5,88.7
		.buy Fishing Pole##6256
		|only if skill("Fishing")>74
	step
		goto Darkmoon Island,51.7,91.6
		.' Equip your Fishing Pole |equipped Fishing Pole##6256 |use Fishing Pole##6256 |q 29513
		.' Use your Fishing ability to catch _Sea Herrings_ |cast Fishing##7620
		.' Catch 5 Great Sea Herring |q 29513/1
		|only if skill("Fishing")>74
	step
		goto Darkmoon Island,47.9,74.5
		.' Use your Darkmoon Bandage on Injured Carnies |use Darkmoon Bandage##71978
		.' Heal 4 Injured Carnies |q 29512/1
		'|modelnpc 54518
		|only if skill("First Aid")>74
	step
		'All around the Island
		.click Discarded Weapon##10777+
		.collect 6 Discarded Weapon##72018 |n
		.' Disenchant the Discarded Weapons |use Discarded Weapon##72018
		.' Collect 6 Soothsayer's Dust |q 28825/1
		|only if skill("Enchanting")>74
	step
		'All around the Island
		.click Tonk Scrap##6314
		.' Collect 6 pieces of Tonk Scrap |q 29518/1
		|only if skill("Mining")>74
		'|model 7975
	step
		'All around the Island
		.click Bits of Glass##238
		.collect 5 Bits of Glass##72052 |n
		.' Click the Bits of Glass in your bags |use Bit of Glass##72052
		.' Make 5 Sparkling Gemstones |q 29516/1
		|only if skill("Jewelcrafting")>74
	step
		.' All around the Island
		.' Use your Battered Wrench to repair Damaged Tonk's |use Battered Wrench##72110
		.' Repair 5 Damaged Tonk's |q 29511/1
		'|modelnpc 54504
		|only if skill("Engineering")>74
	step
		.' All around the Island
		.click Darkblossom##209284
		.' Gather 6 Darkblossom |q 29514/1
		|only if skill("Herbalism")>74
	step
		.' All around the Island
		.click Staked Skins##10750
		.' Scrape 4 Staked Skins |q 29519/1
		|only if skill("Skinning")>74
	step
		goto 50.5,69.6
		.talk Sylannia##14844
		.buy 5 Fizzy Faire Drink##19299 |q 29506
		|only if skill("Alchemy")>74
	step
		 goto Darkmoon Island,50.7,90.8
		.click Portal to Elwynn Forest##04396
		.' Teleport to Elwynn Forest |goto Elwynn Forest |noway |c
		|only if skill("Cooking")>74 or skill("Alchemy")>74 or skill("Archaeology")>74
	step
		goto Elwynn Forest,43.8,65.8
		.talk Innkeeper Farley##295
		.buy 5 Moonberry Juice##1645 |q 29506
		|only if skill("Alchemy")>74
	step
		goto Stormwind City,77.6,53.0
		.talk Erika Tate##5483
		.buy 5 Simple Flour##30817 |q 29509
		|only if skill("Cooking")>74
	step
		'Open your world map, find dig sites in Kalimdor and go to them |tip They look like small shovel icons on your world map that spawn in random places.  Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
		.' You can find _Fossil Fragments_ in these locations: 
		.' Desolace
		.' Dustwallow Marsh
		.' Stonetalon Mountains
		.' Southern Barrens
		.' Tanaris
		.' Un'Goro Crater
		.' Use your Survey ability inside the dig site area and follow the Telesope until you find a fragment |cast Survey##80451
		.earn 15 Fossil Fragments##393 |q 29507
		|only if skill("Archaeology")>74
	step
		 goto Elwynn Forest,41.8,69.6
		.click Portal to Darkmoon Island
		.' Telport to Darkmoon Island |goto Darkmoon Island |noway |c
		|only if skill("Cooking")>74 or skill("Alchemy")>74 or skill("Archaeology")>74
	step
		goto Darkmoon Island,56.0,52.9 |n
		.' Follow the Path to the Darkmoon Faire |goto Darkmoon Island,56.0,52.9,1 |noway |c
		|only if skill("Cooking")>74 or skill("Alchemy")>74 or skill("Archaeology")>74
	step
		goto Darkmoon Island,50.4,69.5
		.' Use the Cocktail Shaker in your bags to make Moonberry Fizz |use Cocktail Shaker##72043
		.' Create 5 Sevings of Moonberry Fizz |q 29506/1
		|only if skill("Alchemy")>74
	step
		goto Darkmoon Island,52.7,68.1
		.' Click the Plump Frogs in your bags |use Plump Frogs##72056
		.collect 5 Breaded Frog##72057 |n
		.' Throw the Breaded Frogs in the cauldron |use Breaded Frog##72057
		.' Fry 5 Crunchy Frogs |q 29509/1
		|only if skill("Cooking")>74
	step
		goto 55.3,71.7
		.' Use the Iron Stock in your bags to make Horseshoes |use Iron Stock##71964
		.collect 4 Horseshoes##71967 |q 29508
		|only if skill("Blacksmithing")>74
	step
		.' Use the Bundle of Exotic Herbs in your bags to create Prophetic Ink |use Bundle of Exotic Herbs##71971
		.collect Prophetic Ink##71972 |n
		.' Use Prophetic Ink to create Fortunes |use Prophetic Ink##71972 |tip Each one requires 1 Light Parchment to create.
		.get 5 Fortune##71974+ |q 29515/1
		|only if skill("Inscription")>74
	step
		goto Darkmoon Island,51.9,60.9
		.talk Professor Thaddeus Paleo##14847
		..turnin Fun for the Little Ones##29507
		|only if skill("Archaeology")>74
	step
		goto Darkmoon Island,52.9,68.0
		.talk Stamp Thunderhorn##14845
		..turnin Putting the Crunch in the Frog##29509
		|only if skill("Cooking")>74
	step
		goto Darkmoon Island,52.9,68.0
		.talk Stamp Thunderhorn##14845		
		..turnin Spoilin' for Salty Sea Dogs##29513
		|only if skill("Fishing")>74
	step
		goto Darkmoon Island 53.2,75.8
		.talk Sayge##14822
		..turnin Writing the Future##29515
		|only if skill("Inscription")>74
	step
		goto Darkmoon Island,55.0,70.8
		.talk Chronos##14833
		..turnin Putting the Carnies Back Together Again##29512
		|only if skill("First Aid")>74
	step
		goto Darkmoon Island,55.0,70.8
		.talk Chronos##14833
		..accept Tan My Hide##29519
		|only if skill("Skinning")>74
	step
		goto 55.0,70.8
		.talk Chronos##14833
		..turnin Keeping the Faire Sparkling##29516
		|only if skill("Jewelcrafting")>74
	step
		goto Darkmoon Island,49.3,60.8
		.talk Rinling##14841
		..turnin Talkin' Tonks##29511
		|only if skill("Engineering")>74
	step
		goto Darkmoon Island,55.0,70.8
		.talk Chronos##14833
		..turnin Herbs for Healing##29514
		|only if skill("Herbalism")>74
	step
		goto 50.5,69.6
		.talk Sylannia##14844
		..turnin A Fizzy Fusion##29506
		|only if skill("Alchemy")>74
	step
		goto Darkmoon Island,49.3,60.7
		.talk Rinling##14841
		..accept Rearm, Reuse, Recycle##29518
		|only if skill("Mining")>74
	step
		goto Darkmoon Island,53.2,75.8
		.talk Sayge##14822
		..accept Putting Trash to Good Use##29510
		|only if skill("Enchanting")>74
	step
		goto Darkmoon Island,51.3,81.8
		.' Use the Horshoes in your bag on Baby|use Horseshoe##71967
		.' Put New Horshoes On Baby |q 29508/1
		|only if skill("Blacksmithing")>74
		'|modelnpc 54510
	step
		goto Darkmoon Island,51.1,82.0
		.talk Yebb Neblegear##14829
		..turnin Baby Needs Two Pair of Shoes##29508
		|only if skill("Blacksmithing")>74
	step
		goto Darkmoon Island,47.9,67.1
		.talk Kerri Hicks##14832
		..accept Test Your Strength##29433
	step
		goto Darkmoon Island,55.6,55.0
		.talk Selina Dourman##10445
		.' Tell her:
		.' <Darkmoon Adventurer's Guide?>
		.collect Darkmoon Adventurer's Guide##71634 |q 29433
	step
		'These next 3 items have to be _obtained from Battlegrounds_
		.' When you kill an opponent, _loot_ their body for a chance to get _each item_.
		.collect Adventurer's Journal##71953 |n
		.accept The Captured Journal##29458 |use Adventurer's Journal##71953
		.collect Banner of the Fallen##71951 |n
		.accept A Captured Banner##29456 |use Banner of the Fallen##71951
		.collect Captured Insignia##71952 |n
		.accept The Enemy's Insignia##29457 |use Captured Insignia##71952
	step
		'These next 4 items have to be _obtained from Dungeons_ listed below
		.collect Mysterious Grimoire##71637 |n |tip You can get this in Zul'Farrak from Hydromancer Velratha
		..accept An Inriguing Grimoire##29445 |use Mysterious Grimoire##71637
		.collect Monstrous Egg##71636 |n |tip You can get this in Zul'Farrak from Gahz'rilla
		..accept An Exotic Egg##29444 |use Monstrous Egg##71636
		.collect A Treatise on Strategy##7175 |n |tip You can get this in Grim Batol from General Umbriss
		..accept The Master Strategist##29451 |use A Treatise on Strategy##7175
		.collect Ornate Weapon##71638 |n |tip You can get this in Scarlet Monastery from Herod
		..accept A Wondrous Weapon##29446 |use Ornate Weapon##71638
		.collect Imbued Crystal##71635 |n |tip You can get this in Scarlet Monastery from High Inquisitor Whitemane
		..accept A Curious Crystal##29443 |use Imbued Crystal##71635
	step
		'The next item can only be obtained from any 10 man Cataclysm Raid Boss
		.collect Soothsayer's Runes##71716 |n
		..accept Tools of Divination##29464 |use Soothsayer's Runes##71716
	step
		.' Kill any Creature Player or NPC that gives _experience or honor_ to gain Grisly Trophies |tip You need to leave Darkmoon Island to find anything to kill.
		.' Collect 250 Grisly Trophy's |q 29433/1
	step
		goto Darkmoon Island,47.9,67.1
		.talk Kerri Hicks##14832
		..turnin Test Your Strength##29433
	step
		goto Darkmoon Island,51.9,60.9
		.talk Professor Thaddeus Paleo##14847
		..turnin The Captured Journal##29458
		..turnin A Captured Banner##29456
		..turnin The Enemy's Insignia##29457
		..turnin An Inriguing Grimoire##29445
		..turnin An Exotic Egg##29444
		..turnin The Master Strategist##29451
		..turnin A Wondrous Weapon##29446
		..turnin A Curious Crystal##29443
		..turnin Tools of Divination##29464		
]])

ZygorGuidesViewer:RegisterInclude("A_Darkmoon_Faire_Achievements",[[
	step
	label	"main"
		'To earn Achievements for the Darkmoon Faire, you will need to complete Dailies, Quests and other tasks. 
		.' Click here to do the Dailies Achievements |confirm always |next "dailies" |or
		.' or
		.' Click here to do the Profession Quests Achievements |confirm always |next "professions" |or
		.' or
		.' Click here for the Non-Questing Achievements |confirm always |next "no_quest" |or
	step
	label	"dailies"
		'You have earned the Achievement Bullseye! |achieve 6021 |only if achieved(6021)
		.' You still need to earn the Achievement Bullseye! |achieve 6021 |only if not achieved(6021)
		.' You have earned the Achievement Quick Shot! |achieve 6022 |only if achieved(6022)
		.' You still need to earn the Achievement Quick Shot! |achieve 6022 |only if not achieved(6022)
		.' You have earned the Achievement Step Right Up! |achieve 6020 |only if achieved(6020)
		.' You still need to earn the Achievement Step Right Up! |achieve 6020 |only if not achieved(6020)
		|confirm always
	step
		leechsteps "A_Darkmoon_Faire_Dailies"
		|next "main"
	step
	label	"professions"
		'You have earned the Achievement Faire Favors |achieve 6032 |only if achieved(6032)
		.' You still need to earn the Achievement Faire Favors |achieve 6032 |only if not achieved(6032)
		.' You have earned the Achievement Darkmoon Dungeoneer |achieve 6027 |only if achieved(6027)
		.' You still need to earn the Achievement Darkmoon Dungeoneer |achieve 6027 |only if not achieved(6027)
		.' You have earned the Achievement Darkmoon Defender |achieve 6028 |only if achieved(6028)
		.' You still need to earn the Achievement Darkmoon Defender |achieve 6028 |only if not achieved(6028)
		.' You have earned the Achievement Darkmoon Despoiler |achieve 6029 |only if achieved(6029)
		.' You still need to earn the Achievement Darkmoon Despoiler |achieve 6029 |only if not achieved(6029) |tip   
		|confirm always
	step
		leechsteps "A_Darkmoon_Faire_Quests"
		|next "main"
	step
	label	"no_quest"
		'You have earned the Achievement Darkmoon Duelist! |achieve 6023 |only if achieved(6023)
		.' You still need to earn the Achievement Darkmoon Duelist! |achieve 6023 |only if not achieved(6023)
		'You have earned the Achievement Fairegoer's Feast! |achieve 6026 |only if achieved(6026)
		.' You still need to earn the Achievement Fairegoer's Feast! |achieve 6026 |only if not achieved(6026)
		'You have earned the Achievement Taking the Show on the Road! |achieve 6030 |only if achieved(6030)
		.' You still need to earn the Taking the Show on the Road! |achieve 6030 |only if not achieved(6030)
		'You have earned the Achievement I Was Promised a Pony! |achieve 6025 |only if achieved(6025)
		.' You still need to earn the I Was Promised a Pony! |achieve 6025 |only if not achieved(6025) |tip    
		|confirm always
	step
		goto Darkmoon Island,50.5,69.5
		.talk Sylannia##14844
		.buy Cheap Beer##19222 |n
		.' Drink Cheap Beer |achieve 6026/12 |use Cheap Beer##19222
		.buy Darkmoon Special Reserve##19221 |n
		.' Drink Darkmoon Special Reserve |achieve 6026/13 |use Special Reserve##19221
		.buy Fizzy Faire Drink##19299 |n
		.' Drink Fizzy Faire Drink |achieve 6026/14 |use Fizzy Faire Drink##19299
		.buy Bottled Winterspring Water##19300 |n
		.' Drink Bottled Winterspring Water |achieve 6026/11 |use Bottled Winterspring Water##19300
		.buy Iced Berry Slush##33234 |n
		.' Drink Iced Berry Slush |achieve 6026/17 |use Iced Berry Slush##33234
		.buy Fizzy Faire Drink "Classic"##33236 |n
		.' Drink Fizzy Faire Drink "Classic" |achieve 6026/15 |use Fizzy Faire Drink "Classic"##33236
		.buy Fresh-Squeezed Limeade##44941 |n
		.' Drink Fresh-Squeezed Limeade |achieve 6026/16 |use Fresh-Squeezed Limeade##44941
		.buy Sasparilla Sinker##74822 |n
		.' Drink Sasparilla Sinker |achieve 6026/18 |use Sasparilla Sinker##74822
	step
		goto Darkmoon Island,52.8,68.0
		.talk Stamp Thunderhorn##14845
		.buy Darkmoon Dog##19223 |n
		.' Eat Darkmoon Dog |achieve 6026/3 |use Darkmoon Dog##19223
		.buy Spiced Beef Jerky##19304 |n
		.' Eat Spiced Beef Jerky |achieve 6026/10 |use Spiced Beef Jerky##19304
		.buy Pickled Kodo Foot##19305 |n
		.' Eat Pickled Kodo Foot |achieve 6026/7 |use Pickled Kodo Foot##19305
		.buy Red Hot Wings##19224 |n
		.' Eat Red Hot Wings |achieve 6026/8 |use Red Hot Wings##19224
		.buy Crunchy Frog##19306 |n
		.' Eat Crunchy Frog |achieve 6026/2 |use Crunchy Frog##19306
		.buy Deep Fried Candybar##19225 |n
		.' Eat Deep Fried Candybar |achieve 6026/4 |use Deep Fried Candybar##19225
		.buy Funnel Cake##33246 |n
		.' Eat Funnel Cake |achieve 6026/6 |use Funnel Cake##33246 
		.buy Forest Strider Drumstick##33254 |n
		.' Eat Forest Strider Drumstick |achieve 6026/5 |use Forest Strider Drumstick##33254
		.buy Corn-Breaded Sausage##44940 |n
		.' Eat Corn-Breaded Sausage |achieve 6026/1 |use Corn-Breaded Sausage##44940
		.buy Salty Sea Dog##73260 |n
		.' Eat Salty Sea Dog |achieve 6026/9 |use Salty Sea Dog##73260
		.' Earn the Achievement Fairegoer's Feast |achieve 6026
	step
		goto Darkmoon Island,56.8,81.4
		.clicknpc Darkmoon Pony##55715
		.' Earn the Achievement I Was Promised a Pony |achieve 6025
	step
		goto Darkmoon Island,48.4,71.9
		.talk Boomie Sparks##55278
		.buy 6 Darkmoon Firework##74142 |future |achieve 6030
	step
		 goto Darkmoon Island,50.7,90.8
		.click Portal to Elwynn Forest##04396
		.' Teleport to Elwynn Forest |goto Elwynn Forest |noway |c
	step
		'Goto Stormwind |goto Stormwind City |c
		.' Use your Darkmoon Firework |achieve 6030/6 |use Darkmoon Firework##74142
	step
		|fly Ironforge
	step
		'Goto Ironforge |goto Ironforge |c
		.' Use your Darkmoon Firework |achieve 6030/4 |use Darkmoon Firework##74142
	step
		|fly Stormwind City
	step
		#include "rideto_ruttheranvillage"
	step
		goto Teldrassil,55.0,88.3
		.' Go through the Pink Portal here
		.' Teleport to Darnassus |goto Darnassus |noway |c
	step
		'Goto Darnassus |goto Darnassus |c
		.' Use your Darkmoon Firework |achieve 6030/2 |use Darkmoon Firework##74142
	step
		goto Darnassus,44.2,78.7
		.click Portal to Exodar##06955
		.' Teleport to The Exodar |goto The Exodar |noway |c
	step
		'Goto The Exodar |goto The Exodar |c
		.' Use your Darkmoon Firework |achieve 6030/3 |use Darkmoon Firework##74142
	step
		goto The Exodar,48.2,63.0
		.click Portal to Blasted Lands##09383
		.' Teleport to Blasted Lands |goto Blasted Lands |noway |c
	step
		goto Blasted Lands,54.9,54.2
		.' Go through the Green Portal here
		.' Teleport to Hellfire Peninsula |goto Hellfire Peninsula |noway |c
	step
		|fly Shattrath
	step
		goto Shattrath City,63.8,41.7
		.' Use your Darkmoon Firework |achieve 6030/5 |use Darkmoon Firework##74142
	step
		goto Shattrath City,57.2,48.2
		.click Portal to Stormwind##04396
		.' Teleport to Stormwind |goto Stormwind City |noway |c
	step
		#include "rideto_borean"
	step
		|fly Dalaran
	step
		'Goto Dalaran |goto Dalaran |c
		.' Use your Darkmoon Firework |achieve 6030/1 |use Darkmoon Firework##74142
	step
		goto Dalaran,40.1,62.9
		.click Portal to Stormwind 
		.' Teleport to Stormwind City |goto Stormwind City |noway |c
	step
		|fly Goldshire
	step
		goto Elwynn Forest,41.8,69.5
		.click the Portal to Darkmoon Island
		.' Telport to Darkmoon Island |goto Darkmoon Island |noway |c
	step
		goto Darkmoon Island,56.0,52.9 |n
		.' Follow the Path to the Darkmoon Faire |goto Darkmoon Island,56.0,52.9,1 |noway |c
	step
		goto Darkmoon Island,46.8,78.8
		.' Click Darkmoon Deathmatch Gate and enter the Deathmatch Arena
		.' Once inside, you will need to fight anyone inside, if you win, you will earn an achievement.
		.' Earn the Achievement Darkmoon Duelist! |achieve 6023
		.' Deafeat 12 combatants in the Deathmatch Arena
		.' Earn the Achievement Darkmoon Dominator |achieve 6024
		|next "main"
]])

-- HALLOWS END --
ZygorGuidesViewer:RegisterInclude("Hallows_End_Quests_Alliance",[[
	step
		goto Stormwind City,61.7,74.2
		.talk Human Commoner##18927
		..accept Costumed Orphan Matron##11356
		..accept A Season for Celebration##29074
	step
		goto Elwynn Forest,32.0,50.4
		.talk Jesper##15310
		..accept Hallow's End Treats for Jesper!##8311
	step
		goto Elwynn Forest,32.0,50.5
		.talk Celestine of the Harvest##51665
		..turnin A Season for Celebration##29074
	step
		goto 32.4,50.9
		.talk Gretchen Fenlow##51934
		..accept A Friend in Need##29430
	step
		goto Elwynn Forest,42.6,64.4
		.talk Costumed Orphan Matron##24519
		..turnin Costumed Orphan Matron##11356
		..accept Fire Brigade Practice##11360
	step
		goto 42.5,64.5
		.' Click the Water Barrel |tip It looks like a huge bucket of water.
		.collect Water Bucket##32971 |q 11360
	step
		goto 42.6,60.2
		.' Use your Water Bucket on the burning scarecrows |use Water Bucket##32971
		.' Fight 5 Fires |q 11360/1
		.' Collect more Water Buckets from the Water Barrel at [42.7,62.0]
	step
		goto 42.6,64.4
		.talk Costumed Orphan Matron##24519
		..' You will only be able to accept 1 of the 2 daily quests
		..turnin Fire Brigade Practice##11360
		..accept Stop the Fires!##11131 |or
		..accept "Let the Fires Come!"##12135|or
	step
		goto 42.5,64.5
		.' Click the Water Barrel |tip It looks like a huge bucket of water.
		.collect Water Bucket##32971 |q 11131
	step
		goto 42.4,65.6
		.' Use your Water Bucket on the fires all around this area |use Water Bucket##32971
		.' Put Out the Fires |q 11131/1 |tip You will need a group of people to complete this quest.  It is best to do this quest at peak hours.
		.' Collect more Water Buckets from the Water Barrel at [42.5,64.5]
	step
		goto 42.5,64.5
		.' Click the Water Barrel |tip It looks like a huge bucket of water.
		.collect Water Bucket##32971 |q 12135
	step
		goto 42.4,65.6
		.' Wait until the fires appear on the buildings in Goldshire
		.' Use your Water Bucket on the fires all around this area |use Water Bucket##32971
		.' Put Out the Fires |q 12135/1 |tip You will need a group of people to complete this quest.  It is best to do this quest at peak hours.
		.' Collect more Water Buckets from the Water Barrel at [42.5,64.5]
	step
		goto 42.4,65.9
		.' Click the Large Jack-o'-Lantern |tip It's a burning pumpkin laying in the road.
		..accept Smash the Pumpkin##12133
	step
		goto 42.6,64.4
		.talk Costumed Orphan Matron##24519
		..' You will only be able to turn in 1 of the 2 daily quests
		..turnin Stop the Fires!##11131 |or
		..turnin "Let the Fires Come!"##12135 |or
		..turnin Smash the Pumpkin##12133
	step
		goto Stormwind City 60.4,75.3
		.talk Innkeeper Allison##6740
		..accept Flexing for Nougat##8356
	step
		goto 60.4,75.3
		.' While targeting Inkeeper Allison:
		.' Flex for Innkeeper Allison |script DoEmote("FLEX") |q 8356/1
	step
		goto 60.4,75.3
		.talk Innkeeper Allison##6740
		..turnin Flexing for Nougat##8356
	step
		goto Stormwind City,60.1,75.1
		.talk Anson Hastings##53949
		..turnin A Friend in Need##29430
		..accept Missing Heirlooms##29392
	step
		goto Ironforge,18.1,51.5
		.talk Innkeeper Firebrew##5111
		..accept Chicken Clucking for a Mint##8353
	step
		goto 18.1,51.5
		.' While targeting Innkeeper Firebrew:
		.' Cluck like a Chicken for Innkeeper Firebrew |script DoEmote("CHICKEN") |q 8353/1
	step
		goto 18.1,51.5
		.talk Innkeeper Firebrew##5111
		..turnin Chicken Clucking for a Mint##8353
	step
		goto 36.4,3.6
		.talk Talvash del Kissel##6826
		..accept Incoming Gumdrop##8355
	step
		goto 36.4,3.6
		.' While targeting Talvash del Kissel:
		.' Make Train sounds for Talvash del Kissel |script DoEmote("TRAIN") |q 8355/1
	step
		goto 36.4,3.6
		.talk Talvash del Kissel##6826
		..turnin Incoming Gumdrop##8355
	step
		goto Stormwind City 24.0,44.8
		.talk Hired Courier##53950
		..turnin Missing Heirlooms##29392
		..accept Fencing the Goods##29398
	step
		goto 61.2,70.8
		.talk Auctioneer Fitch##8719
		.' Ask if anyone suspicious tried to list a crate of goods recently
		..turnin Fencing the Goods##29398
		..accept Shopping Around##29399
	step
		goto 64.2,46.3
		.talk Hudson Barnes##54021
		..turnin Shopping Around##29399 |tip You will have to wait until he finishes talking and the white question mark turns yellow to turn this in.
		..accept Taking Precautions##29402
	step
		goto Stormwind City,52.4,45.8
		.talk Brother Cassius##1351
		.buy 5 Arcane Powder##17020 |q 29402/2
	step
		goto 55.2,14.5
		.click Blood Nettle##10249 
		..get 5 Blood Nettle |q 29402/3
	step
		goto 55.9,85.6
		.talk Maria Lumere##1313
		..get 5 Crystal Vial |q 29402/1
	step
		goto 64.2,46.3
		.talk Hudson Barnes##54021
		..turnin Taking Precautions##29402
		..accept The Collector's Agent##29403
	step
		'Enter the Cathedral of Light |goto Stormwind City,52.7,50.5,0.5 |c
	step
		'Go down into the Cathedral of Light catacombs |goto 51.3,44.2 |c
	step
		goto 55.3,43.5
		.from Unleashed Void##54114+
		.click Stolen Crate##335
		..turnin The Collector's Agent##29403
		..accept What Now?##29411
	step
		goto Stormwind City,60.1,75.1
		.talk Anson Hastings##53949
		..turnin What Now?##29411
	step
		goto 60.1,75.1
		.click Anson's Crate##335 
		..turnin The Creepy Crate##29413
	step
		goto Stormwind City,22.6,56.0 |n
		.' Ride the boat to Rut'theran Village |goto Teldrassil |noway |c
	step
		goto Teldrassil,55.1,88.5 |n
		.' Go inside the pink portal to Darnassus |goto Darnassus |noway |c
	step
		goto Darnassus,62.5,32.8
		.talk Innkeeper Saelienne##6735
		..accept Dancing for Marzipan##8357
	step
		goto 67.4,15.7
		.' While targeting Innkeeper Saelienne:
		.' Dance for Innkeeper Saelienne |script DoEmote("DANCE") |q 8357/1
	step
		goto 62.5,32.8
		.talk Innkeeper Saelienne##6735
		..turnin Dancing for Marzipan##8357
	step
		goto Elwynn Forest,32.0,50.4
		.talk Jesper##15310
		..turnin Hallow's End Treats for Jesper!##8311
]])

ZygorGuidesViewer:RegisterInclude("Hallows_End_Dailies_Alliance",[[
	step
		goto Elwynn Forest,32.0,50.5
		.talk Celestine of the Harvest##51665
		..accept A Time to Gain##29075 |daily
	step
		goto Elwynn Forest,32.7,49.5
		.' Click the Bonfire
		.' Use the Bonfire |q 29075/1
	step
		goto Elwynn Forest,32.0,50.5
		.talk Celestine of the Harvest##51665
		..turnin A Time to Gain##29075
	step
		goto 32.1,50.6
		.talk Keira##52064
		..accept A Time to Lose##29371 |daily
	step
		goto 32.4,50.9
		.talk Gretchen Fenlow##51934
		..accept Stink Bombs Away!##29054 |daily
		..accept Clean Up in Stormwind##29144 |daily
	step
		goto Stormwind City,71.6,87.4
		.' Use Arcane Cleanser on Stink Bombs |tip They look like orange mists all around Stormwind. |use Arcane Cleanser##69191
		.' Remove 10 Stink Bombs |q 29144/1
		.' You can find more at [63.2,72.0]
		.' You can find more at [73.0,59.0]
		.' You can find more at [79.1,40.1]
		.' You can find more at [65.0,38.5]
		.' You can find more at [54.6,54.2]
		.' You can find more at [49.5,83.0]
	step
		goto Elwynn Forest,32.4,50.9
		.talk Gretchen Fenlow##51934
		..turnin Clean Up in Stormwind##29144
	step
		goto 32.2,50.8
		.talk Gertrude Fenlow##52548
		.' Tell her you are ready to fly |invehicle |c
	step
		.' Use the _Toss Stink Bomb_ ability on your action bar all around _Undercity_
		.' Drop 25 Stink Bombs |q 29054/1
		.' Click the _Return Home_ button on your action bar |outvehicle
	step
		goto Elwynn Forest,32.3,50.9
		.talk Gretchen Fenlow##51934
		..turnin Stink Bombs Away!##29054
	step
		goto Elwynn Forest,42.6,64.4
		.talk Costumed Orphan Matron##24519
		..' You will only be able to accept 1 of the 2 daily quests
		..accept Stop the Fires!##11131 |daily |or
		..accept "Let the Fires Come!"##12135 |daily |or
	step
		goto 42.5,64.5
		.' Click the Water Barrel |tip It looks like a huge bucket of water.
		.collect Water Bucket##32971 |q 11131
	step
		goto 42.4,65.6
		.' Use your Water Bucket on the fires all around this area |use Water Bucket##32971
		.' Put Out the Fires |q 11131/1 |tip You will need a group of people to complete this quest.  It is best to do this quest at peak hours.
		.' Collect more Water Buckets from the Water Barrel at [42.5,64.5]
	step
		goto 42.5,64.5
		.' Click the Water Barrel |tip It looks like a huge bucket of water.
		.collect Water Bucket##32971 |q 12135
	step
		goto 42.4,65.6
		.' Wait until the fires appear on the buildings in Goldshire
		.' Use your Water Bucket on the fires all around this area |use Water Bucket##32971
		.' Put Out the Fires |q 12135/1 |tip You will need a group of people to complete this quest.  It is best to do this quest at peak hours.
		.' Collect more Water Buckets from the Water Barrel at [42.5,64.5]
	step
		goto 42.4,65.9
		.' Click the Large Jack-o'-Lantern |tip It's a burning pumpkin laying in the road.
		..accept Smash the Pumpkin##12133 |daily
	step
		goto 42.6,64.4
		.talk Costumed Orphan Matron##24519
		..' You will only be able to turnin 1 of the 2 daily quests
		..turnin Stop the Fires!##11131
		..turnin "Let the Fires Come!"##12135
		..turnin Smash the Pumpkin##12133
	step
		goto Undercity,68.2,15.6
		.' Use the Dousing Agent in your Bags on the Burning Wickerman |use Dousing Agent##68648
		.' Douse the Horde's Wickerman |q 29371/1
	step
		goto Elwynn Forest,32.1,50.6
		.talk Keira##52064
		..turnin A Time to Lose##29371
]])

ZygorGuidesViewer:RegisterInclude("Hallows_End_Achievements_Alliance",[[
	step
		goto Stormwind City,60.5,75.3
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Stormwind, The Trade District |achieve 966/10
	step
		goto Elwynn Forest,43.7,65.9
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Elwynn Forest, Goldshire |achieve 966/5
	step
		goto Loch Modan,35.5,48.5
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Loch Modan, Thelsamar |achieve 966/8
	step
		goto Ironforge,18.3,51.0
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Ironforge, The Commons |achieve 966/7
	step
		goto Dun Morogh,54.5,50.8
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Dun Morogh, Kharanos |achieve 966/2
	step
		goto Wetlands,10.8,61.0
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Wetlands, Menethil Harbor |achieve 966/12
	step
		goto The Hinterlands,14.2,44.6
		.' Go upstairs in the inn
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Hinterlands, Aerie Peak |achieve 966/6
	step
		goto Eastern Plaguelands,75.6,52.3
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Eastern Plaguelands, Light's Hope Chapel |achieve 966/4
	step
		goto Redridge Mountains,26.5,41.5
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Redridge Mountains, Lakeshire |achieve 966/9
	step
		goto Duskwood,73.8,44.3
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Duskwood, Darkshire |achieve 966/3
	step
		goto Westfall,52.9,53.7
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Westfall, Sentinel Hill |achieve 966/11
	step
		goto The Cape of Stranglethorn,40.9,73.7
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in The Cape of Stranglethorn, Booty Bay |achieve 966/1
	step
		goto Northern Barrens,67.3,74.7
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Barrens, Ratchet |achieve 963/11
	step
		goto Dustwallow Marsh,66.6,45.3
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Dustwallow Marsh, Theramore |achieve 963/8
	step
		goto 41.9,74.1
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Dustwallow Marsh, Mudsprocket |achieve 963/7
	step
		goto Tanaris,52.5,27.1
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Tanaris, Gadgetzan |achieve 963/14
	step
		goto Silithus,55.5,36.8
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Silithus, Cenarion Hold |achieve 963/12
	step
		goto Feralas,46.3,45.2
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Feralas, Feathermoon |achieve 963/10
	step
		goto Desolace,66.3,6.6
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Desolace, Nijel's Point |achieve 963/6
	step
		goto Stonetalon Mountains,39.5,32.8
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Stonetalon Mountains, Stonetalon Peak |achieve 963/13
	step
		goto Ashenvale,37.0,49.3
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Ashenvale, Astranaar |achieve 963/1
	step
		goto Winterspring,59.8,51.2
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Winterspring, Everlook |achieve 963/16
	step
		goto Darkshore,50.8,18.9
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Darkshore, Auberdine |achieve 963/4
	step
		goto The Exodar,59.3,18.5
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Exodar, Seat of the Naaru |achieve 963/9
	step
		'Go outside to Azuremyst Isle |goto Azuremyst Isle |noway |c
	step
		goto Azuremyst Isle,48.5,49.0
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Azuremyst Isle, Azure Watch |achieve 963/2
	step
		goto Bloodmyst Isle,55.7,60.0
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Bloodmyst Isle, Blood Watch |achieve 963/3
	step
		goto Darnassus,62.3,33.2
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Darnassus, Craftsmen's Terrace |achieve 963/5
	step
		goto Teldrassil,55.4,52.3
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Teldrassil, Dolanaar |achieve 963/15
	step
		goto Hellfire Peninsula,54.3,63.7
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Hellfire Peninsula, Honor Hold |achieve 969/4
	step
		goto 23.4,36.4 
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Hellfire Peninsula, Temple of Telhamat |achieve 969/5
	step
		goto Shattrath City,56.3,81.9
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Shattrath City, Scryer's Tier |achieve 969/11
		only if rep ('The Scryers') >= Friendly
	step
		goto Shattrath City,28.2,49.1
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Shattrath City, Aldor Rise |achieve 969/11
		only if rep ('The Aldor') >= Friendly
	step
		goto Terokkar Forest,56.6,53.2
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Terokkar Forest, Allerian Stronghold |achieve 969/12
	step
		goto Shadowmoon Valley,37.0,58.3 
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Shadowmoon Valley, Wildhammer Stronghold |achieve 969/10
	step
		goto 56.4,59.8
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Shadowmoon Valley, Sanctum of the Stars |achieve 969/9
		only if rep ('The Scryers') >= Friendly
	step
		goto 61.0,28.2
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Shadowmoon Valley, Altar of Sha'tar |achieve 969/9
		only if rep ('The Aldor') >= Friendly
	step
		goto Nagrand,54.2,75.9
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Nagrand, Telaar |achieve 969/6
	step
		goto Zangarmarsh,78.5,62.9
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Zangarmarsh, Cenarion Refuge |achieve 969/13
	step
		goto 67.2,49.0
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Zangarmarsh, Telredor |achieve 969/15
	step
		goto 41.9,26.2
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Zangarmarsh, Orebor Harborage |achieve 969/14
	step
		goto Blade's Edge Mountains,35.8,63.7
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Blade's Edge Mountains, Sylvanaar |achieve 969/2
	step
		goto 61.0,68.1
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Blade's Edge Mountains, Toshley's Station |achieve 969/3
	step
		goto 62.9,38.3
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Blade's Edge Mountains, Evergrove |achieve 969/1
	step
		goto Netherstorm,32.0,64.4
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Netherstorm, Area 52 |achieve 969/7
	step
		goto 43.3,36.1
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Netherstorm, The Stormspire |achieve 969/8
	step
		'You must be at least level 75 to complete this step:
		.' Use the Dungeon Finder to queue for The Headless Horseman
		.from Headless Horseman##23682
		.' Complete the Bring Me The Head of... Oh Wait achievement |achieve 255
	step
		'Keep using your Tricky Treats quickly until you puke |use Tricky Treat##33226 |tip You get these by completing Hallows End quests.
		.' Complete the Out With It achievement |achieve 288
	step
		goto Elwynn Forest,31.8,50.1
		.talk Dorothy##53728
		.buy 1 Tooth Pick##37604 |n
		.' Use your Tooth Pick |use Tooth Pick##37604
		.' Show off your sparkling smile by using a Tooth Pick |achieve 981
	step
		'Use your Weighted Jack-o'-Lanterns on the following races: |use Weighted Jack-o'-Lantern##34068 |tip You receive Weighted Jack-o'-Lanterns by doing the Hallow's End daily quests.  Make sure the player doesn't already have a jack-o-lantern on their head or you won't get credit.  The best places to complete this would be Dalaran, Shattrath, Stormwind, and Orgrimmar.
		.' Gnome |achieve 291/4
		.' Goblin |achieve 291/5
		.' Blood Elf |achieve 291/1
		.' Draenei |achieve 291/2
		.' Dwarf |achieve 291/3
		.' Human |achieve 291/6
		.' Night Elf |achieve 291/7
		.' Orc |achieve 291/8
		.' Tauren |achieve 291/9
		.' Troll |achieve 291/10
		.' Undead |achieve 291/11
		.' Worgen |achieve 291/12
	step
		'Have other players use Hallowed Wands on you while in a party to transform into the following:
		.' Transform into a Bat |achieve 283/1
		.' Transform into a Ghost |achieve 283/2
		.' Transform into a Leper Gnome |achieve 283/3
		.' Transform into a Ninja |achieve 283/4
		.' Transform into a Pirate |achieve 283/5
		.' Transform into a Skeleton |achieve 283/6
		.' Transform into a Wisp |achieve 283/7
	step
		goto Elwynn Forest,31.8,50.1
		.talk Dorothy##53728		
		.buy 1 Sinister Squashling##33154 |n
		.buy 1 Hallowed Helm##33292 |n
		.' Use the Sinister Squashling |use Sinister Squashling##33154
		.' Obtain a Sinister Squashling pet |achieve 292/1
		.' Obtain a Hallowed Helm |achieve 292/2
	step
		'Use your G.N.E.R.D.S. |use G.N.E.R.D.S.##37583 |tip You can buy these from the Hallows End vendor. Use them every 30 minutes while PvPing to keep the buff on.  If you don't have the buff active while killing players, you won't get credit.
		.' Do any type of PvP of your choice |tip You must be killing players that give you honor.
		.' Earn 10 honorable kills while under the influence of the G.N.E.R.D. buff |achieve 1261
	step
		'Congratulations, you are now one of The Hallowed!
]])

--  Pilgrims Bounty --
ZygorGuidesViewer:RegisterInclude("Pilgrims_Bounty_Quests_Alliance",[[
	step
		goto Elwynn Forest,34.2,51.1
		.talk Bountiful Table Hostess##34653
		..accept Sharing a Bountiful Feast##14064
	step
		goto 34.3,51.1
		.clicknpc The Turkey Chair##34812 |tip They look like wooden chairs around a round white and green table with food on it.
		.' Use the first ability on your hotbar to Pass the food to other players who are sitting at the table |tip You must target the other players and use the Pass the Food ability.  Do this repeatedly until you get an achievement.
		.' Start a Food Fight! |achieve 3579
		.' Use the other abilities on your hotbar to eat the food |tip You will only be able to eat certain foods at each place on the table.  Once you eat the foods available to your spot 5 times, click the red arrow above your action bar to get out of the Turkey Chair.  Then, go sit in another Turkey Chair that has a type of food you haven't eaten yet.
		.' Eat each type of food 5 times in a row |tip You can see how many times you've eaten the food by looking at it's buff that it gives you next to your mini map.
		.' Gain the Spirit of Sharing |q 14064/1
	step
		goto 34.2,51.1
		.talk Bountiful Table Hostess##34653
		..turnin Sharing a Bountiful Feast##14064
	step
		goto 33.7,50.6
		.talk Ellen Moore##34710
		.skillmax Cooking,75
		.learn Spice Bread##37836
	step
		goto 34.1,51.5
		.talk Wilmina Holbeck##34682
		.buy Bountiful Cookbook##46809
	step
		'Use your Bountiful Cookbook |use Bountiful Cookbook##46809
		.collect Recipe: Spice Bread Stuffing##44860
		.collect Recipe: Pumpkin Pie##44862
		.collect Recipe: Cranberry Chutney##44858
		.collect Recipe: Candied Sweet Potato##44859
		.collect Recipe: Slow-Roasted Turkey##44859
	step
		'Use your Recipe: Spice Bread Stuffing to learn the recipe |use Recipe: Spice Bread Stuffing##44860
		.learn Spice Bread Stuffing##62050
	step
		goto 34.1,51.5
		.talk Gregory Tabor##34675
		..accept Spice Bread Stuffing##14023
	step
		goto 34.1,51.5
		.talk Wilmina Holbeck##34682
		.buy Simple Flour##30817 |n
		.buy Mild Spices##2678 |n
		.buy Autumnal Herbs##44835 |n
		.' Cook next to the Pilgrim's Bounty Cooking Fire at [33.8,50.8]
		.create 5 Spice Bread##37836,Cooking,5 total
	step
		.create 5 Spice Bread Stuffing##62050,Cooking,5 total  |q 14023/1
		.get 5 Spice Bread Stuffing |q 14023/2
		skill Cooking,100
		.' If you need to train your Cooking skill to allow a higher max level, talk to Ellen Moore at [33.7,50.6]
	step
		'Use your Recipe: Pumpkin Pie to learn the recipe |use Recipe: Pumpkin Pie##44862
		.learn Pumpkin Pie##62044
	step
		goto 33.9,50.8
		.talk Jasper Moore##34744
		..turnin Spice Bread Stuffing##14023
		..accept Pumpkin Pie##14024
	step
		goto 34.1,51.5
		.talk Wilmina Holbeck##34682
		.buy 5 Ripe Elwynn Pumpkin##46784 |n
		.buy 5 Honey##44853 |n
		.buy 5 Autumnal Herbs##44835 |n
		.buy 5 Mild Spices##2678 |n
		.buy 5 Simple Flour##30817 |n
		.' Cook next to the Pilgrim's Bounty Cooking Fire at [33.8,50.8]
		.create Pumpkin Pie##62044,Cooking,5 total |q 14024/1
		.get 5 Pumpkin Pie |q 14024/2
		.create 5 Spice Bread Stuffing##62050,Cooking,5 total  |q 14023/1
	step
		goto 33.8,50.8
		.get 5 Spice Bread Stuffing |q 14023/2
		.skill Cooking,160
		.' If you need to train your Cooking skill to allow a higher max level, talk to Ellen Moore at [33.7,50.6]
	step
		'Use your Recipe: Cranberry Chutney to learn the recipe |use Recipe: Cranberry Chutney##44858
		.learn Cranberry Chuntney##62049
	step
		goto Dun Morogh,59.8,34.3
		.talk Edward Winslow##34644
		..turnin Pumpkin Pie##14024
		..accept Cranberry Chutney##14028
	step
		goto 59.77,34.34
		.talk Elizabeth Barker Winslow##34645
		.buy Tangy Southfury Cranberries##44854 |n
		.buy Honey##44853 |n
		.' Cook next to the Pilgrim's Bounty Cooking Fire at [59.61,34.94]
		.create 5 Cranberry Chutney##62049,Cooking,5 total |q 14028/1
		.get 5 Cranberry Chutney |q 14028/2
		.skill Cooking,220
		.' If you need to train your Cooking skill to allow a higher max level, talk to Caitrin Ironkettle at [52.9,36.1]
	step
		goto Ironforge,58.1,49.4
		.talk Gnome Commoner##19172
		..accept Pilgrim's Bounty##14022
	step
		goto Elwynn Forest,33.9,50.8
		.talk Jasper Moore##34744
		..turnin Cranberry Chutney##14028
		..accept They're Ravenous In Darnassus##14030
	step
		'Use your Recipe: Candied Sweet Potato to learn the recipe |use Recipe: Candied Sweet Potato##44859
		.learn Candied Sweet Potato##62051
	step
		goto 34.1,51.5
		.talk Gregory Tabor##34675
		..turnin Pilgrim's Bounty##14022
	step
		goto 34.1,51.5
		.talk Wilmina Holbeck##34682
		.buy 5 Ripe Elwynn Pumpkin##46784 |n
		.buy 5 Honey##44853 |n
		.buy 5 Autumnal Herbs##44835 |n
		.buy 5 Mild Spices##2678 |n
		.buy 5 Simple Flour##30817 |n
		.' Cook next to the Pilgrim's Bounty Cooking Fire at [33.8,50.8]
		.create Pumpkin Pie##62044,Cooking,5 total |q 14030
		.get 5 Pumpkin Pie |q 14030/2
	step
		goto 33.8,50.8
		.create 5 Spice Bread##37836,Cooking,5 total |n
		.' and
		.create 5 Spice Bread Stuffing##62050,Cooking,5 total  |q 14030
		.get 5 Spice Bread Stuffing |q 14030/1
		.skill Cooking,160
		.' If you need to train your Cooking skill to allow a higher max level, talk to Ellen Moore at [33.7,50.6]
	step
		goto Darnassus,61.5,49.0
		.talk Isaac Allerton##34676
		..turnin They're Ravenous In Darnassus##14030
		..accept Candied Sweet Potatoes##14033
	step
		goto 62.1,46.0
		.talk Ikaneba Summerset##34681
		.buy Teldrassil Sweet Potato##44855 |n
		.buy Honey##44853 |n
		.buy Autumnal Herbs##44835 |n
		.' Cook next to the Pilgrim's Bounty Cooking Fire at [61.6,49.1]
		.create 5 Candied Sweet Potatoes##62051,Cooking,5 total |q 14033/1
		.get 5 Candied Sweet Potatoes |q 14033/2
		.skill Cooking,280
		.' If you need to train your Cooking skill to allow a higher max level, talk to Mary Allerton at [66.5,35.1]
	step
		goto Elwynn Forest,34.1,51.5
		.talk Gregory Tabor##34675
		..turnin Candied Sweet Potatoes##14033
		..accept Slow-roasted Turkey##14035
	step
		'Use your Recipe: Slow-Roasted Turkey to learn the recipe |use Recipe: Slow-Roasted Turkey##44861
		.learn Slow-Roasted Turkey##62045
	step
		goto 42.5,62.8
		.from Wild Turkey##32820+ |tip You can find these all around Elwynn Forest, so you are not limited to staying in this area.  Ride around Elwynn Forest and look for Wild Turkeys, you should be able to find them easily if you ride around.
		.collect 20 Wild Turkey##44834 |q 14035
	step
		goto 34.1,51.5
		.talk Wilmina Holbeck##34682
		.buy 10 Honey##44853 |n
		.buy Autumnal Herbs##44835 |n
		.' Cook next to the Pilgrim's Bounty Cooking Fire at [33.8,50.8]
		.create 5 Slow-Roasted Turkey##62045,Cooking,5 total |q 14035/1
		.get 5 Slow-Roasted Turkey |q 14035/2
		.' Earn the Now We're Cookin' Achievement |achieve 3576
		.skill Cooking,300
		.' If you need to train your Cooking skill to allow a higher max level, talk to Ellen Moore at [33.7,50.6]
	step
		goto Darnassus,61.5,49.1
		.talk Isaac Allerton##34676
		..turnin Slow-roasted Turkey##14035
]])

ZygorGuidesViewer:RegisterInclude("Pilgrims_Bounty_Dailies_Alliance",[[
	step
	label	"start"
		These are the Dailies and Achievements for Pilgrim's Bounty. You can only do the Dailies once per day.
		|confirm always
	step
		#include "home_TradeDistrict"
	step
		goto Elwynn Forest,34.3,51.1
		.clicknpc The Turkey Chair##34812 |tip They look like wooden chairs around a round white and green table with food on it.
		.' Use the first ability on your hotbar to Pass the food to other players who are sitting at the table |tip You must target the other players and use the Pass the Food ability.  Do this repeatedly until you get an achievement.
		.' Start a Food Fight! |achieve 3579
		.' Use the other abilities on your hotbar to eat the food |tip You will only be able to eat certain foods at each place on the table.  Once you eat the foods available to your spot 5 times, click the red arrow above your action bar to get out of the Turkey Chair.  Then, go sit in another Turkey Chair that has a type of food you haven't eaten yet.
		.' Earn the Pilgrims Paunch in Stormwind |achieve 3556/4
	step
		goto Elwynn Forest,33.9,50.8
		.talk Jasper Moore##34744
		..accept She Says Potato##14055 |daily
	step
		goto 33.7,50.6
		.talk Ellen Moore##34710
		..accept We're Out of Cranberry Chutney Again?##14053 |daily
	step
		goto Elwynn Forest,34.1,51.5
		.talk Wilmina Holbeck##34682
		.buy 20 Ripe Elwynn Pumpkin##46784 |q 14054
		.buy 20 Honey##44853 |q 14054
	step
		goto 42.5,62.8
		.from Wild Turkey##32820+ |tip You can find these all around Elwynn Forest, so you are not limited to staying in this area.
		.collect 20 Wild Turkey##44834 |q 14048 |future
	step
		goto Darnassus,61.9,46.2
		.talk Mary Allerton##34711
		..accept Easy As Pie##14054 |daily
	step
		goto 62.1,46.0
		.create Pumpkin Pie##62044,Cooking,20 total |q 14054/1
	step
		goto Darnassus,62.8,48.2
		.clicknpc The Turkey Chair##34812 |tip They look like wooden chairs around a round white and green table with food on it.
		.' Use the other abilities on your hotbar to eat the food |tip You will only be able to eat certain foods at each place on the table.  Once you eat the foods available to your spot 5 times, click the red arrow above your action bar to get out of the Turkey Chair.  Then, go sit in another Turkey Chair that has a type of food you haven't eaten yet.
		.' Eat each type of food 5 times in a row |tip You can see how many times you've eaten the food by looking at it's buff that it gives you next to your mini map.
		.' Earn the Pilgrims Paunch in Darnassus |achieve 3556/1
	step
		goto 61.7,49.1
		.talk Ikaneba Summerset##34681
		.buy 20 Teldrassil Sweet Potato##44855
		.buy 20 Honey##44853
		.buy 20 Autumnal Herbs##44835
	step
		goto Darnassus,61.9,46.2
		.talk Mary Allerton##34711
		..turnin Easy As Pie##14054
		.' Choose one of the following until you have all three pieces:
		.collect Pilgrim's Hat##46723
		.collect Pilgrim's Attire##46800
		.collect Turkey Shooter##44812 |tip You can collect multiple Turkey Shooters if you have the other 2 pieces.                 
		|confirm
	step
		goto 61.9,46.2
		.create 20 Candied Sweet Potato##62051,Cooking,20 total |q 14055/1
	step
		 goto 44.2,78.7
		.click Portal to Exodar##06955
		.' Teleport to The Exodar |goto The Exodar |noway |c
	step
		goto The Exodar,53.9,32.4 |n
		.' Follow this ramp up and outside The Exodar |goto The Exodar,53.9,32.4,1 |noway |c
	step
		goto The Exodar,75.7,52.3
		.clicknpc The Turkey Chair##34812 |tip They look like wooden chairs around a round white and green table with food on it.
		.' Use the other abilities on your hotbar to eat the food |tip You will only be able to eat certain foods at each place on the table.  Once you eat the foods available to your spot 5 times, click the red arrow above your action bar to get out of the Turkey Chair.  Then, go sit in another Turkey Chair that has a type of food you haven't eaten yet.
		.' Eat each type of food 5 times in a row |tip You can see how many times you've eaten the food by looking at it's buff that it gives you next to your mini map.
		.' Earn the Pilgrims Paunch in The Exodar |achieve 3556/2
	step
		goto The Exodar,74.2,53.8 |n
		.' Follow this ramp down into The Exodar |goto The Exodar,74.2,53.8,1 |noway |c
	step
		goto Dun Morogh,60.1,34.3
		.talk Caitrin Ironkettle##34708
		..accept Don't Forget The Stuffing!##14051 |daily
		..accept Can't Get Enough Turkey##14048 |daily
	step
		goto Dun Morogh,59.9,34.6
		.clicknpc The Turkey Chair##34812 |tip They look like wooden chairs around a round white and green table with food on it.
		.' Use the other abilities on your hotbar to eat the food |tip You will only be able to eat certain foods at each place on the table.  Once you eat the foods available to your spot 5 times, click the red arrow above your action bar to get out of the Turkey Chair.  Then, go sit in another Turkey Chair that has a type of food you haven't eaten yet.
		.' Eat each type of food 5 times in a row |tip You can see how many times you've eaten the food by looking at it's buff that it gives you next to your mini map.
		.' Earn the Pilgrims Paunch in Ironforge |achieve 3556/3
		.' Earn the Pilgrims Paunch Achievement! |achieve 3556
	step
		goto 59.8,34.3
		.talk Elizabeth Barker Winslow##34645
		.buy 20 Tangy Wetland Cranberries##44854
		.buy 20 Mild Spices##2678
		.buy 20 Simple Flour##30817
		.buy 60 Honey##44853
		.buy 40 Autumnal Herbs##44835
		.buy 20 Tangy Wetland Cranberries##44854
	step
		goto 60.0,34.4
		.create 20 Spice Bread##37836,Cooking,20 total |q 14051
	step
		goto 60.0,34.4
		.create 20 Spice Bread Stuffing##62050,Cooking,20 total |q 14051/1
	step
		goto Dun Morogh,60.1,34.3
		.talk Caitrin Ironkettle##34708
		..turnin Don't Forget The Stuffing!##14051
		.' Choose one of the following until you have all three pieces:
		.collect Pilgrim's Hat##46723
		.collect Pilgrim's Attire##46800
		.collect Turkey Shooter##44812 |tip You can collect multiple Turkey Shooters if you have the other 2 pieces.                  
		|confirm
	step
		goto 60.0,34.4
		.create 20 Slow-Roasted Turkey##62045,Cooking,20 total |q 14048/1
	step
		goto Dun Morogh,60.1,34.3
		.talk Caitrin Ironkettle##34708
		..turnin Can't Get Enough Turkey##14048
		.' Choose one of the following until you have all three pieces:
		.collect Pilgrim's Hat##46723
		.collect Pilgrim's Attire##46800
		.collect Turkey Shooter##44812 |tip You can collect multiple Turkey Shooters if you have the other 2 pieces.                    
		|confirm
	step
		goto 60.0,34.4
		.create Cranberry Chutney##62049,Cooking,20 total |q 14053/1
	step
		goto Elwynn Forest,33.9,50.8
		.talk Jasper Moore##34744
		..turnin She Says Potato##14055
		.' Choose one of the following until you have all three pieces:
		.collect Pilgrim's Hat##46723
		.collect Pilgrim's Attire##46800
		.collect Turkey Shooter##44812 |tip You can collect multiple Turkey Shooters if you have the other 2 pieces.                    
		|confirm
	step
		goto 33.7,50.6
		.talk Ellen Moore##34710
		..turnin We're Out of Cranberry Chutney Again?##14053 
		.' Choose one of the following until you have all three pieces:
		.collect Pilgrim's Hat##46723
		.collect Pilgrim's Attire##46800
		.collect Turkey Shooter##44812 |tip You can collect multiple Turkey Shooters if you have the other 2 pieces.                    
		|confirm
		.' Earn the Pilgrims Progress Achievement |achieve 3596
	step
		goto 42.5,62.8
		.from Wild Turkey##32820+
		.' Quickly kill _40 Wild Turkeys_ and keep killing them until you earn the achievement: |tip You can see how many turkeys you have killed with the Turkey Tracker buff. |tip You can find more Turkeys all around Elwynn Forest.
		.' The Turkinator! |achieve 3578
	step
		.' You should have three pieces of the Pilgrim's Attire now
		.' Equip your Pilgrim's Attire |equipped Pilgrim's Attire##46800 |use Pilgrim's Attire##46800
	step
		goto Undercity,68.6,6.7
		.' While wearing your Pilgrim's Attire, sit at any table's chair |modelnpc The Turkey Chair##34812
		.' Equip your Pilgrim's Attire |equipped Pilgrim's Attire##46800 |use Pilgrim's Attire##46800
		.' Pilgrim's Peril of Undercity |achieve 3580/4
	step
		goto Eversong Woods,55.2,53.2
		|tip You can run up The Dead Scar most of the way to avoid Horde towns. This is the Grey line running up the map on the left.
		.' While wearing your Pilgrim's Attire, sit at any table's chair |modelnpc The Turkey Chair##34812
		.' Equip your Pilgrim's Attire |equipped Pilgrim's Attire##46800 |use Pilgrim's Attire##46800
		.' Pilgrim's Peril of Silvermoon City |achieve 3580/2
	step
		goto Thunder Bluff,28.6,62.8
		.' While wearing your Pilgrim's Attire, sit at any table's chair |modelnpc The Turkey Chair##34812
		.' Equip your Pilgrim's Attire |equipped Pilgrim's Attire##46800 |use Pilgrim's Attire##46800
		.' Pilgrim's Peril of Thunder Bluff |achieve 3580/3
	step
		goto Durotar,46.2,15.1
		.' While wearing your Pilgrim's Attire, sit at any table's chair |modelnpc The Turkey Chair##34812
		.' Equip your Pilgrim's Attire |equipped Pilgrim's Attire##46800 |use Pilgrim's Attire##46800
		.' Pilgrim's Peril of Orgrimmar |achieve 3580/1
		.' Earn the Pilgrim's Peril Achievement! |achieve 3580
	step
		goto Durotar,46.2,15.1
		.' You should have a few _Turkey Shooters_ from your daily quests, if you don't, you will need to do more daily's when possible for more.
		.' While in Durotar, shoot Horde Rogues with your Turkey Shooter. |use Turkey Shooter##44812
		.' Shoot a Blood Elf Rogue |achieve 3559/1
		.' Shoot a Orc Rogue |achieve 3559/7
		.' Shoot a Troll Rogue |achieve 3559/8
		.' Shoot a Undead Rogue |achieve 3559/9
		.' Shoot a Goblin Rogue |achieve 3559/4
	step
		.' You should have a few _Turkey Shooters_ from your daily quests, if you don't, you will need to do more daily's when possible for more.
		.' While in Elwynn Forest, shoot Alliance Rogues with your Turkey Shooter. |use Turkey Shooter##44812
		.' Shoot a Dwarf Rogue |achieve 3559/2
		.' Shoot a Gnome Rogue |achieve 3559/3
		.' Shoot a Human Rogue |achieve 3559/5
		.' Shoot a Night Elf Rogue |achieve 3559/6
		.' Shoot a Worgen Rogue |achieve 3559/10
	step
		goto Sethekk Halls,49.4,95.3 |n
		 .' Follow this stairway up and around |goto Sethekk Halls,49.4,95.3,0.5 |noway |c
	step
		goto Sethekk Halls,36.4,88.7 |n
		.' Keep following this path around |goto Sethekk Halls,36.4,88.7,1 |noway |c
	step
		goto Sethekk Halls/2 32.5,39.5
		.' Equip your Pilgrim's Attire |equipped Pilgrim's Attire##46800 |use Pilgrim's Attire##46800
		.' Equip your Pilgrim's Hat |equipped Pilgrim's Hat##46723 |use Pilgrim's Hat##46723
		.from Talon King Ikiss##18473
		.' Earn the Achievment Terokkar Turkey Time |achieve 3582
	step
		.' You have reached the End of this guide, you can only do the Dailys Once per day. 
		Click here to start the Dailys over. |confirm always
		|next "end" |only if achieved(3478)
		|next "start" |only if not achieved(3478)
	step
	label	"end"
		.' Congratualtions, you have earned the Pilgrim Achievement!
		
]])

-- Feast of Winter Veil --

ZygorGuidesViewer:RegisterInclude("Feast of Winter Veil Quests",[[
		goto Ironforge,33.7,67.3
		.talk Wulmort Jinglepocket##13433
		..accept Greatfather Winter is Here!##7022
	step
		goto 33.1,65.5
		.talk Greatfather Winter##13444
		..turnin Greatfather Winter is Here!##7022
		..accept Treats for Greatfather Winter##7025
	step
		goto 30.2,59.4
		.talk Goli Krumn##1365
		..accept The Reason for the Season##7062
	step
		goto 60.1,36.4
		.talk Daryl Riknussun##5159
		.' Learn the Apprentice Cooking skill.
		|only if skill("Cooking")<=1
	step
		goto 77.5,11.8
		.talk Historian Karnik##2916
		..turnin The Reason for the Season##7062
		..accept The Feast of Winter Veil##7063
	step
		goto 33.7,67.3
		.talk Wulmort Jinglepocket##13433
		.buy 1 Recipe: Gingerbread Cookie##17200 |n
		.' Click the Recipe: Gingerbread Cookie recipe in your bags |use Recipe: Gingerbread Cookie##17200
		.learn Gingerbread Cookie##21143
		|confirm
	step
		goto 33.7,67.3
		.talk Wulmort Jinglepocket##13433
		.buy 5 Holiday Spices##17194 |q 7025
	step
		'Buy 5 Small Eggs from the Auction House: |tip You can also farm these from mobs, if you'd prefer.
		.collect 5 Small Egg##6889 |q 7025
	step
		goto 32.1,62.8
		.create 5 Gingerbread Cookie##21143,Cooking,5 total |q 7025/1
	step
		goto 18.1,51.4
		.talk Innkeeper Firebrew##5111
		.buy Ice Cold Milk##1179 |q 7025
	step
		goto 18.1,51.4
		.talk Innkeeper Firebrew##5111
		.home Ironforge
	step
		goto 33.1,65.5
		.talk Greatfather Winter##13444
		..turnin Treats for Greatfather Winter##7025
	step
		goto 39.2,56.0
		.talk Muradin Bronzebeard##42928
		..turnin The Feast of Winter Veil##7063
	step
		goto Hillsbrad Foothills,42.3,41.1
		.talk Strange Snowman##13636
		..accept You're a Mean One...##7043 |daily
	step
		goto Hillsbrad Foothills,43.6,39.0
		.from The Abominable Greench##54499
		.get Stolen Treats |q 7043/2 |tip They are the bags on the ground behind the Abominable Greench.
		.' Free Metzen the Reindeer. |q 7043/1 |tip After you defeat The Abominable Greench Metzen is freed.
	step
		goto Ironforge,33.7,67.3
		.talk Wulmort Jinglepocket##13433
		.turnin You're a Mean One...##7043 |daily
		..accept A Smokywood Pastures' Thank You!##7045
	step
		goto 33.1,65.5
		.talk Greatfather Winter##13444
		..turnin A Smokywood Pastures' Thank You!##7045
]])

ZygorGuidesViewer:RegisterInclude("Feast of Winter Veil Achievements",[[
	step
		goto Ironforge,19.9,53.8
		.' Kiss a Winter Reveler every hour |script DoEmote("KISS") |tip You can only use this once per hour. The items you get are random.
		.collect 10 Handful of Snowflakes##34191 |n
		.collect 8 Mistletoe##21519 |n
		.collect 1 Preserved Holly##21213 |n
		.' Once you've collected these items, click here to proceed. |confirm
	step
		'Use a Handful of Snowflakes on the following race/class combinations |use Handful of Snowflakes##34191 |tip The best place to complete this is in major cities, but it can be done anywhere in the world.
		.' You can get more snowflakes by using /kiss on Winter Revelers at [19.9,53.8]
		.' Orc Death Knight |achieve 1687/1
		.' Human Warrior |achieve 1687/2
		.' Tauren Shaman |achieve 1687/3
		.' Night Elf Druid |achieve 1687/4
		.' Undead Rogue |achieve 1687/5
		.' Troll Hunter |achieve 1687/6
		.' Gnome Mage |achieve 1687/7
		.' Dwarf Paladin |achieve 1687/8
		.' Blood Elf Warlock |achieve 1687/9
		.' Draenei Priest |achieve 1687/10
	step
		goto Ironforge,33.7,67.3
		.talk Wulmort Jinglepocket##13433
		.buy Recipe: Hot Apple Cider##34413
		.buy Recipe: Egg Nog##17201
	step
		.learn Recipe: Hot Apple Cider##45022 |use Recipe: Hot Apple Cider##34413
		.learn Recipe: Egg Nog##21144 |use Recipe: Egg Nog##17201
		.create Egg Nog##21144,Cooking,1 total |achieve 1688/2
		.create Hot Apple Cider##45022,Cooking,1 total |achieve 1688/3 |tip Requires a cooking skill of 325
	step
		'Use the Tailoring profession or pay a tailor to create Red or Green Winter Clothes.
		.' You can buy the pattern from Wulmort Jinglepocket at [33.7,67.3]
		.collect Red Winter Clothes##34085
	step
		'Use the Leatherworking profession or pay a leatherworker to create Winter Boots
		.' You can buy the pattern from Wulmort Jinglepocket at [33.7,67.3]
		.collect Winter Boots##34086
	step
		'Queue for Heroic The Nexus dungeon.
		.' You can also run to the instance and do it.
		.from Grand Magus Telestra##26731
		.collect Red Winter Hat##21524
	step
		'Get the Smokywood Pastures Sampler from your mailbox |tip It should arrive within 24 hours after completing the Feast of Winter Veil quest section of this guide.
		.' Click the Smokywood Pastures Sampler in your bag |use Smokywood Pastures Sampler##17685
		.collect 1 Graccu's Mince Meat Fruitcake##21215
		.' Equip the Red Winter Clothes |use Red Winter Clothes##34085
		.' Equip the Winter Boots |use Winter Boots##34086
		.' Equip the Red Winter Hat |use Red Winter Hat##21524
		.' During the Feast of Winter Veil, wear 3 pieces of winter clothing and eat Graccu's Mince Meat Fruitcake |use Graccu's Mince Meat Fruitcake##21215 |achieve 277
	step
		goto Dun Morogh,60.3,33.9
		.' Use the Winter Wondervolt machine to turn into a Little Helper |Use them every 30 minutes while PvPing to keep the buff on.  If you don't have the buff active while killing players, you won't get credit.
		.' Do any type of PvP of your choice |tip We recommend Alterac Valley. You must be killing players that give you honor.
		.' Earn 50 honorable kills as a Little Helper from the Winter Wondervolt machine |achieve 252
	step
		'Make sure you have the following in your bags:
		.collect 8 Mistletoe##21519
		.collect Preserved Holly##21213
	step
		goto Ironforge,33.7,67.3
		.talk Wulmort Jinglepocket##13433
		.buy Snowball##17202
	step
		goto 39.2,56.0
		.' Use a snowball on Muradin Bronzebeard |use Snowball##17202
		.' Throw a snowball at Muradin Bronzebeard during the Feast of Winter Veil |achieve 1255
	step
		goto 76.9,51.2 |n
		.' Ride the Deep Run Tram to Stormwind City |goto Stormwind City |noway |c
	step
		goto 55.0,54.2
		.' Use your Mistletoe on Brother Kristoff |use Mistletoe##21519 
		.' Use Mistletoe on Brother Kristoff in Stormwind City |achieve 1686/4
		|modelnpc 1444
	step
		 goto 51.6,46.4
		.' Use your Mistletoe on Brother Benjamin |use Mistletoe##21519 |tip He patrols in front of this entryway, so you may need to search for him. 
		.' Use Mistletoe on Brother Benjamin in the Stormwind City |achieve 1686/8
		|modelnpc 5484
	step
		goto 52.4,45.8
		.' Use your Mistletoe on Brother Cassius |use Mistletoe##21519 
		.' Use Mistletoe on Brother Cassius in the Stormwind City |achieve 1686/7
		|modelnpc 1351
	step
		goto 49.5,45.2
		.' Use your Mistletoe on Brother Joshua |use Mistletoe##21519 
		.' Use Mistletoe on Brother Joshua in the Stormwind City |achieve 1686/5
		|modelnpc 5489
	step
		goto 52.6,43.2
		.' Use your Mistletoe on Brother Crowley |use Mistletoe##21519 |tip He is at the lower level of the cathedral, down the ramp. 
		.' Use Mistletoe on Brother Crowley in the Stormwind City |achieve 1686/6
		|modelnpc 12336
	 step
		goto 60.4,75.3
		.talk Innkeeper Allison##6740
		.home Stormwind City
	step
		goto Elwynn Forest,41.1,66.0
		.' Use your Mistletoe on Brother Wilhelm |use Mistletoe##21519 |modelnpc 927
		.' Use Mistletoe on Brother Wilhelm in Goldshire |achieve 1686/2
	step
		goto Northern Stranglethorn,47.3,11.1
		.' Use your Mistletoe on Brother Nimetz |use Mistletoe##21519
		.' Use Mistletoe on Brother Nimetz in Northern Stranglethorn |achieve 1686/1
		|modelnpc 739
	step
		goto Dustwallow Marsh,67.4,47.4
		.' Use your Mistletoe on Brother Karman |use Mistletoe##21519
		.' Use Mistletoe on Brother Karman in Dustwallow Marsh |achieve 1686/3
	step
		.' The following achievements require a level 70 or higher character.
		|confirm
	step
		goto Blade's Edge Mountains,28.7,57.4
		.talk Chu'a'lor##23233
		..accept The Trouble Below##11057
		..accept The Crystals##11025
	step
		goto 29.2,53.7
		.from Apexis Flayer##22175+
		.get 5 Apexis Shard |q 11025/1
	step
		goto 28.8,57.4
		.talk Chu'a'lor##23233
		..turnin The Crystals##11025
		..accept An Apexis Relic##11058
	step
		goto 28.4,57.6
		.talk Torkus##23316
		..accept Our Boy Wants To Be A Skyguard Ranger##11030
	step
		goto 33.1,52.3
		.from Gan'arg Analyzer##23386+
		.collect Apexis Shard##32569 |n
		.' Click an Apexis Relic |tip It looks like a small multi-colored crystal floating in the air.
		..' Insert an Apexis Shard to begin.
		.' Stand on the white globe and watch as the crystal floating above you casts a beam on the surrounding clusters
		.' Click the clusters in the same color pattern as the crystal. |tip You must do this six times. If you mess up you will be given a few chances to correct yourself before you have to start the process over.
		.' Attain the Apexis Vibrations |q 11058/1
	step
		goto 51.1,15.6
		.from Bash'ir Arcanist##22243+, Bash'ir Spell-Thief##22242+, Bash'ir Raider##22241+
		.collect 10 Apexis Shard##32569 
	step
		goto 32.8,40.5
		.click Fel Crystalforge##7391
		.' Purchase 1 Unstable Flask of the Beast
		.get Unstable Flask of the Beast |q 11030/1
	step
		goto 28.8,57.4
		.talk Chu'a'lor##23233
		..turnin An Apexis Relic##11058
		..accept The Relic's Emanation##11080 |daily
	step
		goto 28.4,57.7
		.talk Torkus##23316
		..turnin Our Boy Wants To Be A Skyguard Ranger##11030
	step
		goto 27.7,68.1
		.from Gan'arg Analyzer##23386+
		.collect Apexis Shard##32569 |n
		.' Click an Apexis Relic |tip It flooks like a small multi-colored crystal floating in the air
		.' Insert an Apexis Shard to begin.
		.' Stand on the white globe and watch as the crystal floating above you casts a beam on the surrounding clusters
		.' Click the clusters in the same color pattern as the crystal.
		.' You must do this six times. If you mess up you will be given a few chances to correct yourself before you have to start the process over.
		.' Attain the Apexis Vibrations |q 11080/1
	step
		goto 28.8,57.4
		.talk Chu'a'lor##23233
		..turnin The Relic's Emanation##11080
		..accept The Skyguard Outpost##11062
	step
		goto 27.4,52.7
		.talk Sky Commander Keller##23334
		..turnin The Skyguard Outpost##11062
	//END UNLOCKING DAILIES
	step
		goto 27.6,52.9
		.talk Sky Sergeant Vanderlip##23120
		..accept Bombing Run##11010
	step
		goto 36.8,39.4
		.' While on your flying mount, use your Skyguard Bombs on Fel Cannonball Stacks |use Skyguard Bombs##32456
		.' Destroy 15 Fel Cannonball Stacks |q 11010/1
	step
		goto 27.6,52.9
		.talk Sky Sergeant Vanderlip##23120
		..turnin Bombing Run##11010
		..accept Bomb Them Again!##11023 |daily
	step
		'Use Preserved Holly while riding your flying mount |use Preserved Holly##21213 |havebuff Interface\Icons\INV_Misc_Plant_03 |q 11023
	step
		goto 36.8,39.4
		.' While on riding the Reindeer Mount, use the Skyguard Bombs on Fel Cannonball Stacks |use Skyguard Bombs##32456
		.' Destroy 15 Fel Cannonball Stacks |q 11023/1
	step
		goto 27.6,52.9
		.talk Sky Sergeant Vanderlip##23120
		..turnin Bomb Them Again!##11023 |daily |tip You have to be on your mount when turning in the quest.
		.' Complete the Bomb Them Again! quest while mounted on a flying reindeer during the Feast of Winter Veil |achieve 1282
	//DALARAN
	step
		goto Dalaran,50.3,63.2
		.' Get the Winter Veil Disguise Kit from your mailbox |tip It should arrive within 24 hours after completing the Feast of Winter Veil quest section of this guide.
		.' Equip the Winter Veil Disguise Kit in your bag |use Winter Veil Disguise Kit##17712
		.' Dance with another player wearing their snowman costume |script DoEmote("DANCE")
		.' During the Feast of Winter Veil, use your Winter Veil Disguise kit to become a snowman and then dance with another snowman in Dalaran |achieve 1690
	step
		goto Stormwind City,61.2,73.5
		.' This step can only be completed by logging into the server on December 25th.
		.' Click a present underneath the tree
		.' Open one of the presents underneath the Winter Veil tree once they are available. |achieve 1689
	step
		'Congratulations, you are now a Merry Maker!
]])

-- Lunar Festival --
ZygorGuidesViewer:RegisterInclude("Lunar Festival Main Quest",[[
	step
		goto Ironforge,30.9,61.6
		.talk Lunar Festival Emissary##15892
		..accept The Lunar Festival##8870
	step
		goto 28.8,16.2
		.talk Lunar Festival Harbinger##15895
		..turnin The Lunar Festival##8870
		..accept Lunar Fireworks##8867
	step
		goto 29.9,14.2
		.talk Lunar Festival Vendor##15898
		..buy 8 Small Blue Rocket##21558+
		..buy 2 Blue Rocket Cluster##21571+
	step
		goto 30.6,17.8
		.' Use Small Blue Rockets |use Small Blue Rocket##21558
		.' Use Blue Rocket Clusters |use Blue Rocket Cluster##21571
		.' Fire 8 Lunar Fireworks |q 8867/1
		.' Fire 2 Lunar Fireworks Clusters |q 8867/2
	step
		goto 28.8,16.2
		.talk Lunar Festival Harbinger##15895
		..turnin Lunar Fireworks##8867
		..accept Valadar Starsong##8883
	step
		goto 30.6,17.8
		.' Use the Lunar Festival Invitation while standing in the beam of light |use Lunar Festival Invitation##21711
		.' Go to the Moonglade |goto Moonglade |noway|c
	step
		goto Moonglade,53.6,35.3
		.talk Valadar Starsong##15864
		..turnin Valadar Starsong##8883
]])
ZygorGuidesViewer:RegisterInclude("Lunar Festival Elder Path",[[
// EASTERN KINGDOMS
	step
		goto Silverpine Forest,45.0,41.1
		.talk Elder Obsidian##15561
		..accept Obsidian the Elder##8645 |instant
	step
		goto Tirisfal Glades,61.9,53.9
		.talk Elder Graveborn##15568
		..accept Graveborn the Elder##8652 |instant
	step
		goto Undercity,66.6,38.2
		.talk Elder Darkcore##15564
		..accept Darkcore the Elder##8648 |instant |tip If you die trying to leave Undercity, just resurrect at the spirit healer you get sent to.
	step
		goto Western Plaguelands,69.0,73.0
		.talk Elder Moonstrike##15594
		..accept Moonstrike the Elder##8714 |instant
	step
		goto 63.5,36.1
		.talk Elder Meadowrun##15602
		..accept Meadowrun the Elder##8722 |instant |tip She is inside of the cave.
	step
		goto Eastern Plaguelands,35.6,68.8
		.talk Elder Windrun##15592
		..accept Windrun the Elder##8688 |instant
	step
		goto 75.7,54.6
		.talk Elder Snowcrown##15566
		..accept Snowcrown the Elder##8650 |instant
	step
		goto 27.7,11.7|n
		.' Enter the swirling portal to Stratholme. |goto Stratholme |noway|c
	step
		map Stratholme
		path follow loose;loop off;ants straight
		path	66.2,76.8	67.3,58.1	60.1,48.7
		path	59.9,31.9	68.3,22.9	78.7,22.1
		.' Follow the path to _Elder Farwhisper_.
		.talk Elder Farwhisper##15607
		..accept Farwhisper the Elder##8727
	step
		goto Stratholme,68.8,88.6 |n
		.' Leave Stratholme. |goto Eastern Plaguelands|noway|c
	step
		goto The Hinterlands,50.0,48.0
		.talk Elder Highpeak##15559
		.accept Highpeak the Elder##8643 |instant
	step
		goto Twilight Highlands,50.9,70.5
		.talk Elder Firebeard##55219
		.accept Firebeard the Elder##29737 |instant
	step
		goto 51.9,33.1
		.talk Elder Darkfeather##55218
		.accept Darkfeather the Elder##29736 |instant
	step
		goto Loch Modan,33.3,46.5
		.talk Elder Silvervein##15558
		..accept Silvervein the Elder##8642 |instant
	step
		goto Ironforge,28.1,17.0
		.talk Elder Bronzebeard##15871
		..accept Bronzebeard the Elder##8866 |instant
	step
		goto Dun Morogh,53.9,49.9
		.talk Elder Goldwell##15569
		..accept Goldwell the Elder##8653 |instant
	step
		goto Searing Gorge,21.3,79.1
		.talk Elder Ironband##15567
		..accept Ironband the Elder##8651 |instant
	step
		.' Enter Blackrock Mountain. |goto Searing Gorge,34.8,85.1 |noway|c
	step
		map Burning Steppes
		path follow loose;loop off;ants straight
		path	19.1,22.6	19.4,23.9	20.4,24.1
		path	21.6,24.4	22.8,23.0	23.5,24.9
		path	23.7,26.2
		.' Follow the path into Blackrock Spire. |goto Blackrock Spire |noway|c
	step
		map Blackrock Spire/4
		path follow loose;loop off;ants straight
		path	30.0,37.9	37.3,40.9	38.9,48.5
		path	44.0,44.5
		.' Follow the path into Hordemar City. |goto Blackrock Spire/3 |noway|c
	step
		map Blackrock Spire/3
		path follow loose;loop off;ants straight
		path	50.3,39.2	55.2,38.3	58.9,42.9
		path	65.3,41.9	61.8,40.0
		.' Follow the path to _Elder Stonefort_.
		 .talk Elder Stonefort##15560
		..accept Stonefort the Elder##8644
	step
		map Blackrock Spire/3
		path follow loose;loop off;ants straight
		path	62.6,42.7	57.5,42.0	54.6,37.5
		path	50.4,39.7
		.' Follow the ramp up to the Hall of Blackhand. |goto Blackrock Spire/4|noway|c
	step
		map Blackrock Spire/4
		path follow loose;loop off;ants straight
		path	40.9,45.4	37.5,48.0
		.' Jump off the ledge here. |goto Burning Steppes |noway|c
	step
		goto Burning Steppes,18.5,25.2
		.' Fly down to this point, or use the chains to traverse to here.
		|confirm
	step
		goto Searing Gorge 26.9,72.6 |n
		.' Enter Blackrock Depths here |goto Blackrock Depths |noway |c
	step
		map Blackrock Depths
		path follow loose;loop off;ants straight
		path	37.9,76.3	42.9,74.4	47.8,72.4
		path	51.5,69.8	50.5,62.9
		.' Follow the path to _Elder Morndeep_.
		.talk Elder Morndeep##15549
		..accept Morndeep the Elder##8619
	step
		goto Blackrock Depths,34.5,77.8 |n
		.' Leave Blackrock Depths. |goto Searing Gorge|noway|c
	step
		goto Burning Steppes,53.6,24.5
		.talk Elder Dawnstrider##15585
		..accept Dawnstrider the Elder##8683 |instant
	step
		goto 70.1,45.4
		.talk Elder Rumblerock##15557
		..accept Rumblerock the Elder##8636 |instant
	step
		goto Elwynn Forest,39.8,63.7
		.talk Elder Stormbrow##15565
		..accept Stormbrow the Elder##8649 |instant
	step
		goto 34.5,50.3
		.talk Elder Hammershout##15562
		..accept Hammershout the Elder##8646 |instant
	step
		goto Stormwind City,60.4,75.3
		.talk Innkeeper Allison##6740
		.home
	step
		goto 73.3,16.9 |n
		.' Click the Portal to Vash'jir |goto Shimmering Expanse |noway|c
	step
		goto Shimmering Expanse,57.3,86.2
		.talk Elder Moonlance##55228
		.accept Moonlance the Elder##29738 |instant
	step
		#include "hearth_hub"
	step
		goto Westfall,56.6,47.1
		.talk Elder Skychaser##15577
		..accept Skychaser the Elder##8675 |instant |tip She is at the top of the tower.
	step
		goto Blasted Lands,54.3,49.5
		.talk Elder Bellowrage##15563
		..accept Bellowrage the Elder##8647 |instant
	step
		|fly Marshtide Watch
	step
		goto Swamp of Sorrows,69.7,54.1
		.' Follow the steps down and go to the swirling portal at [76.1,45.2]
		.' Enter the Swirling Portal to The Temple of Atal'Hakkar|goto The Temple of Atal'Hakkar|noway|c
	step
		goto The Temple of Atal'Hakkar,62.9,34.4
		.talk Elder Starsong##15593
		..accept Starsong the Elder##8713
	step
		goto 50.0,14.5
		.' Leave the instance. |goto Swamp of Sorrows|noway|c
	step
		goto Northern Stranglethorn,71.0,34.3
		.talk Elder Starglade##15596
		..accept Starglade the Elder##8716 |instant
	step
		goto The Cape of Stranglethorn,40.0,72.5
		.talk Elder Winterhoof##15576
		..accept Winterhoof the Elder##8674 |instant
	step
		goto 39.3,67.2 |n
		.' Ride the boat to Ratchet |goto Northern Barrens |noway |c
// KALIMDOR
	step
		goto Northern Barrens,68.4,70.0
		.talk Elder Windtotem##15582
		..accept Windtotem the Elder##8680 |instant
	step
		goto 48.5,59.3
		.talk Elder Moonwarden##15597
		..accept Moonwarden the Elder##8717 |instant
	step
		goto Southern Barrens,41.5,47.5
		.talk Elder High Mountain##15588
		..accept High Mountain the Elder##8686 |instant
	step
		goto Mulgore,48.5,53.2
		.talk Elder Bloodhoof##15575
		..accept Bloodhoof the Elder##8673 |instant
	step
		goto Thunder Bluff,73.0,23.3
		.talk Elder Ezra Wheathoof##15580
		..accept Wheathoof the Elder##8678 |instant |tip If you die trying to leave Thunder Bluff, just resurrect at the spirit healer you get sent to.
	step
		goto Desolace,29.1,62.5 |n
		.' Enter the doorway to Maraudon. |goto Desolace,29.1,62.5 |noway|c
	step
		map Desolace
		path follow strict;loop off;ants straight
		path	28.3,63.0	27.9,64.3	27.6,62.9
		path	29.0,62.6	30.1,62.6	29.9,60.3
		.' Follow this path |goto Maraudon/2 |noway |c
	step
		map Maraudon/2
		path follow strict;loop off;ants straight
		path	29.4,46.0	32.0,60.3	35.5,57.5
		path	41.0,60.5	45.6,58.5	44.8,54.1
		path	43.0,57.6	41.5,63.9	45.6,67.2
		path	44.8,76.2	44.6,83.9	45.2,89.5
		path	51.5,93.8
		.talk Elder Splitrock##15556
		..accept Splitrock the Elder##8635
	step
		.' Leave Maruadon. |goto Desolace|noway|c
	step
		goto Feralas,76.7,37.9
		.talk Elder Grimtotem##15581
		..accept Grimtotem the Elder##8679 |instant
	step
		goto 62.6,31.1
		.talk Elder Mistwalker##15587
		..accept Mistwalker the Elder##8685 |instant
	step
		goto Silithus,53.0,35.5
		.talk Elder Bladesing##15599
		..accept Bladesing the Elder##8719 |instant
	step
		goto 30.8,13.3
		.talk Elder Primestone##15570
		..accept Primestone the Elder##8654 |instant
	step
		goto Uldum,31.6,63.0
		.talk Elder Sekhemi##55210
		..accept Sekhemi the Elder##29741 |instant
	step
		goto 65.5,18.7
		.talk Elder Menkhaf##55211
		..accept Menkhaf the Elder##29742 |instant
	step
		goto Un'Goro Crater,50.4,76.2
		.talk Elder Thunderhorn##15583
		..accept Thunderhorn the Elder##8681 |instant
	step
		goto Tanaris,37.2,79.1
		.talk Elder Ragetotem##15573
		..accept Ragetotem the Elder##8671 |instant
	step
		goto 51.4,28.8
		.talk Elder Dreamseer##15586
		..accept Dreamseer the Elder##8684 |instant
	step
		goto 39.2,21.3 |n
		.' Enter Zul'Farrak. |goto Zul'Farrak |noway|c
	step
		goto Zul'Farrak,34.5,39.4
		.talk Elder Wildmane##15578
		..accept Wildmane the Elder##8676
	step
		goto 56.6,91.2 |n
		.' Leave Zul'Farrak. |goto Tanaris |noway|c
	step
		goto Thousand Needles,77.1,75.6
		.talk Elder Morningdew##15604
		..accept Morningdew the Elder##8724 |instant
	step
		goto 46.3,51.0
		.talk Elder Skyseer##15584
		..accept Skyseer the Elder##8682 |instant
	step
		goto Durotar,53.2,43.6
		.talk Elder Runetotem##15572
		..accept Runetotem the Elder##8670 |instant
	step
		goto Orgrimmar,52.3,60.0
		.talk Elder Darkhorn##15579
		..accept Darkhorn the Elder##8677 |instant |tip If you die trying to leave Thunder Bluff, just resurrect at the spirit healer you get sent to.
	step
		goto Azshara,64.7,79.3
		.talk Elder Skygleam##15600
		..accept Skygleam the Elder##8720 |instant
	step
		goto Winterspring,60.0,49.9
		.talk Elder Stonespire##15574
		..accept Stonespire the Elder##8672 |instant
	step
		goto 53.2,56.6
		.talk Elder Brightspear##15606
		..accept Brightspear the Elder##8726 |instant
	step
		goto Mount Hyjal 62.5,22.8
		.talk Elder Evershade##55227
		..accept Evershade the Elder##29740
	step
		goto Mount Hyjal 26.7,62.0
		.talk Elder Windsong##55224
		..accept Windsong the Elder##29739
	step
		goto Ashenvale,35.4,48.9
		.talk Elder Riversong##15605
		..accept Riversong the Elder##8725 |instant
	step
		goto Felwood,38.4,52.9
		.talk Elder Nightwind##15603
		..accept Nightwind the Elder##8723 |instant
	step
		goto Darkshore,49.5,18.9
		.talk Elder Starweave##15601
		..accept Starweave the Elder##8721 |instant
	step
		goto Teldrassil,56.9,53.1
		.talk Elder Bladeleaf##15595
		..accept Bladeleaf the Elder##8715 |instant
	step
		goto Darnassus,38.8,32.3
		.talk Elder Bladeswift##15598
		..accept Bladeswift the Elder##8718 |instant
	step
		#include "hearth_hub"
	step
		 goto Stormwind City 73.2,19.7 |n
		.' Click the portal to Deepholm. |goto Deepholm |noway|c
	step
		goto Deepholm,49.7,54.9
		.talk Elder Stonebrand##55217
		..accept Stonebrand the Elder##29735
	step
		goto Deepholm 27.7,69.2
		.talk Elder Deepforge##55216
		..accept Deepforge the Elder##29734
	step
		goto Deepholm,48.5,53.9 |n
		.' Click the portal to Stormwind City. |goto Stormwind City |noway|c
// NORTHREND
	step
		goto Stormwind City,18.1,25.5 |n
		.' Ride the boat to Borean Tundra |goto Borean Tundra |noway |c
	step
		goto Borean Tundra,59.1,65.6
		.talk Elder Sardis##30348
		..accept Sardis the Elder##13012 |instant
	step
		goto 57.4,43.7
		.talk Elder Arp##30364
		..accept Arp the Elder##13033 |instant
	step
		goto 42.9,49.6
		.talk Elder Pamuya##30371
		..accept Pamuya the Elder##13029 |instant
	step
		|fly Transitus Shield
	step
		goto 33.8,34.4
		.talk Elder Northal##30360
		..accept Northal the Elder##13016 |instant
	step
		goto 27.5,26.0 |n
		.' Enter The Nexus here |goto The Nexus |noway |c
	step
		map The Nexus
		path loop off
		path	34.4,78.5	29.0,70.6	24.0,67.6
		path	22.0,59.0	18.9,51.5	21.9,44.0
		path	21.5,36.7	25.9,33.5	26.9,25.2
		path	35.4,22.0	43.5,22.1	46.1,28.4
		path	54.0,35.9	55.7,50.5	62.7,52.5
		path	60.3,64.3	55.3,64.7
		.talk Elder Igasho##30536
		..accept Igasho the Elder##13021
	step
		|fly River's Heart
	step
		goto Sholazar Basin,49.8,63.6
		.talk Elder Sandrene##30362
		..accept Sandrene the Elder##13018 |instant
	step
		goto 63.8,49.0
		.talk Elder Wanikaya##30365
		..accept Wanikaya the Elder##13024 |instant
	step
		'Go southeast to Wintergrasp |goto Wintergrasp |noway |c
	step
		goto Wintergrasp,49.0,13.9
		.' Click the Defender's Portal
		.' Go to the upper level of the Wintergrasp Fortress |goto Wintergrasp,50.4,15.9,0.1 |noway |c
	step
		goto 49.0,13.9
		.talk Elder Bluewolf##30368
		..accept Bluewolf the Elder##13026 |instant
	step
		goto 49.1,15.3 |n
		.' Click the portal to Violet Citadel |goto Dalaran |noway|c
	step
		|fly Stars' Rest
	step
		goto Dragonblight 26.0,50.9 |n
		.' Enter Azjol-Nerub here |goto Azjol-Nerub/3 |noway |c
	step
		map Azjol-Nerub/3
		path loop off
		path	19.7,66.9	26.8,36.9	55.8,44.7
		path	88.3,44.8	72.6,30.9
		.' Follow this path down |goto Azjol-Nerub/2 |noway |c
	step
		map Azjol-Nerub/2
		path loop off
		path	39.7,30.7	43.8,20.5	61.2,19.9
		path	60.0,43.6	51.1,61.8
		.' Jump down this hole into the water below |goto Azjol-Nerub |noway |c
	step
		goto 21.8,43.6
		.talk Elder Nurgen##30533
		..accept Nurgen the Elder##13022 |instant
	step
		.' Leave Azjol-Nerub |goto Dragonblight |noway |c
	step
		goto Dragonblight,29.7,55.9
		.talk Elder Morthie##30358
		..accept Morthie the Elder##13014 |instant
	step
		goto 35.1,48.3
		.talk Elder Skywarden##30373
		..accept Skywarden the Elder##13031 |instant
	step
		goto 48.8,78.2
		.talk Elder Thoim##30363
		..accept Thoim the Elder##13019 |instant
	step
		|fly K3
	step
		goto The Storm Peaks,41.2,84.7
		.talk Elder Graymane##30370
		..accept Graymane the Elder##13028 |instant
	step
		goto 28.9,73.7
		.talk Elder Fargal##30359
		..accept Fargal the Elder##13015 |instant
	step
		goto 31.3,37.6
		.talk Elder Stonebeard##30375
		..accept Stonebeard the Elder##13020 |instant
	step
		goto The Storm Peaks 39.6,26.9 |n
		.' Enter the portal to the Halls of Stone. |goto Halls of Stone |noway|c
	step
		goto Halls of Stone,29.4,62.1
		.talk Elder Yurauk##30535
		..accept Yurauk the Elder##13066 |instant
	step
		.' Leave the Halls of Stone. |goto The Storm Peaks |noway|c
	step
		goto The Storm Peaks,64.6,51.3
		.talk Elder Muraco##30374
		..accept Muraco the Elder##13032 |instant
	step
		.' Go Southwest to Zul'Drak. |goto Zul'Drak |noway|c
	step
		goto Zul'Drak,76.1,20.9 |n
		.' Enter the swirling portal to Gundrak. |goto Gundrak |noway|c
	step
		map Gundrak
		path loop off
		path	59.1,49.2	58.2,68.5	50.9,73.6
		path	45.6,61.5
		.talk Elder Ohanzee##30537
		..accept Ohanzee the Elder##13065
	step
		map Gundrak
		path loop off
		path	45.6,61.5	50.9,73.6	58.2,68.5
		path	59.1,49.2
		.' Follow the path, going up the ramps and out of the instance. |goto Zul'Drak |noway|c
	step
		goto Zul'Drak,58.9,56.0
		.talk Elder Tauros##30369
		..accept Tauros the Elder##13027 |instant
	step
		goto Zul'Drak,28.5,86.9 |n
		.' Enter the swirling portal to Drak'Tharon Keep. |goto Drak'Tharon Keep |noway|c
	step
		map Drak'Tharon Keep
		path loop off
		path	31.9,80.0	39.2,86.0	46.2,84.3
		path	47.5,63.7	47.7,51.0	50.5,40.7
		path	57.0,23.0	66.6,23.8	66.7,39.0
		path	67.5,56.0	55.8,58.5	55.5,77.6
		path	65.4,76.3	68.9,79.1
		.' Follow the path to Elder Kilias.
		.talk Elder Kilias##30534
		..accept Kilias the Elder##13023 |instant
	step
		map Drak'Tharon Keep
		path loop off
		path	62.5,77.3	55.5,77.7	58.8,57.0
		path	68.0,55.8	66.8,37.6	66.9,25.5
		path	64.9,18.9	57.1,19.3	50.3,40.9
		path	47.6,50.7	47.6,68.3	47.3,83.3
		path	34.7,80.2	28.5,81.0
		.' Leave the Drak'Tharon. |goto Zul'Drak |noway|c
	step
		goto Grizzly Hills,60.6,27.7
		.talk Elder Beldak##30357
		..accept Beldak the Elder##13013 |instant
	step
		goto 80.5,37.1
		.talk Elder Lunaro##30367
		..accept Lunaro the Elder##13025 |instant
	step
		goto Grizzly Hills,64.2,47.0
		.talk Elder Whurain##30372
		..accept Whurain the Elder##13030 |instant
	step
		goto Howling Fjord,58.0,50.0 |n
		.' Enter the Utgard Keep building here |goto Howling Fjord,58.0,50.0,0.5 |noway |c
	step
		goto 57.3,46.8 |n
		.' Enter Utgarde Keep here |goto Utgarde Keep |noway |c
	step
		map Utgarde Keep
		path loop off
		path	66.8,61.8	62.9,43.6	65.7,29.5
		path	56.4,25.1	44.8,28.0	26.3,37.3
		path	26.1,50.9	22.9,72.7	34.3,88.9
		path	49.3,77.1
		.' Follow this path to the Elder |goto 49.3,77.1,0.5 |noway |c
	step
		goto 47.5,69.6
		.talk Elder Jarten##30531
		..accept Jarten the Elder##13017 |instant
	step
		.' Leave Utgarde Keep |goto Howling Fjord |noway |c
	step
		goto Howling Fjord,57.3,46.7 |n
		.' Enter the swirling portal to Utgarde Pinnacle. |goto Utgarde Pinnacle/2 |noway|c
	step
		map Utgarde Pinnacle/2
		path loop off
		path	44.5,17.0	44.2,29.8	38.5,35.9
		path	33.7,49.0	33.5,64.4	35.5,69.1
		path	39.1,75.8
		.' Take the stairs down. |goto Utgarde Pinnacle |noway|c
	step
		map Utgarde Pinnacle
		path loop off
		path	35.9,77.9	36.2,86.9	41.7,86.2
		path	46.1,81.9
		.' Go up the stairs. |goto Utgarde Pinnacle/2 |noway|c
	step
		map Utgarde Pinnacle/2
		path loop off
		path	54.0,77.0	51.8,76.2	51.8,81.4
		path	56.8,84.4	60.6,84.3	63.7,69.7
		path	68.3,68.4	68.8,56.4	68.9,36.1
		.' Follow the path, clicking here to continue. |confirm
	step
		goto Utgarde Pinnacle,48.7,23.1 
		.talk Elder Chogan'gada##30538
		..accept Chogan'gada the Elder##13067 |instant
]])
ZygorGuidesViewer:RegisterInclude("Lunar Festival Achievement",[[
	step
		goto Ironforge 29.9,14.2
		.talk Lunar Festival Vendor##15898
		.buy 10 Festival Firecracker##21747
		.buy 10 Red Rocket Cluster##21576
	step
		goto 30.7,18.8
		.' Use the _Festival Firecrackers_ as fast as you can.
		.' You will need to use 10 in 30 seconds.
		.' You can drag the Festival Firecrackers onto your action bar.  You will need to click the ground where you want to throw them.
		.use Festival Firecracker##21747
		.' Earn the _Frienzied Firecracker_ Achievement. |achieve 1552
	step
		goto 30.6,18.9
		.' Drag the _Red Rocket Clusters_ to you action bar.
		.' You will need to spam whatever button the Red Rocket Cluster is assigned to.
		.use Red Rocket Cluster##21576
		.' Earn _The Rockets Red Glare_ Achievement. |achieve 1281
	step
		goto 30.6,17.8
		.' Use the Lunar Festival Invitation while standing in the beam of light |use Lunar Festival Invitation##21711
		.' Go to the Moonglade |goto Moonglade |noway|c
	step
		goto Moonglade,53.6,35.3
		.talk Valadar Starsong##15864
		.buy Festive Green Dress##21157 |or
		.buy Festive Pink Dress##21538 |or
		.buy Festive Purple Dress##21539 |or
		.buy Festive Black Pant Suit##21541 |or
		.buy Festive Blue Pant Suit##21544 |or
		.buy Festive Teal Pant Suit##21543 |or
		.' Earn the _Lunar Festival Finery_ Achievement. |achieve 626
	step
		goto 53.6,35.3
		.talk Valadar Starsong##15864
		..accept Elune's Blessing##8868
	step
		goto 64.7,60.5
		.' Use your rock clusters here to summon _Omen_.
		.kill Omen |q 8868/1
	step
		goto 53.6,35.3
		.talk Valadar Starsong##15864
		..turnin Elune's Blessing##8868
		.' Earn the _Elune's Blessing_ Achievement. |achieve 937
]])

-- Love is in the Air --
ZygorGuidesViewer:RegisterInclude("Love is in the Air Main Quest",[[
	step
		goto Stormwind City,61.6,75.3
		.talk Inspector Snip Snagglebolt##38066
		..accept Something Stinks##24655
	step
		goto 62.4,76.9
		.' Find Stormwind Guards that have the Heavily Perfumed buff on them|tip They are all over Stormwind and will have a glowing pink aura around them
		.' Use Snagglebolt's Air Analyzer on Stormwind Guards|use Snagglebolt's Air Analyzer##50131
		.' Analyze 6 Perfumed Guards|q 24655/1
	step
		goto Stormwind City,61.6,75.3
		.talk Inspector Snip Snagglebolt##38066
		..turnin Something Stinks##24655
		..accept Pilfering Perfume##24656
	step
		' While disguised as a package-runner, RUN to the Crown Chemical Company's stockpile outside the gates of Stormwind|goto Elwynn Forest,34.0,47.4,0.3
		.' Get the Crown Chemical Co. Package |havebuff INV_Crate_03 |q 24656
	step
		' Quickly return the package they toss you to Inspector Snip Snagglebolt in Stormwind.|goto Stormwind City,61.6,75.3,0.3
		' Deliver the package in time |condition ZGV.questsbyid[24656] and ZGV.questsbyid[24656].complete |q 24656
		.' If you lose your disguise, ask the Inspector for another one and repeat the run.
	step
		goto Stormwind City,61.6,75.3
		.talk Inspector Snip Snagglebolt##38066
		..turnin Pilfering Perfume##24656
		..accept Fireworks At The Gilded Rose##24848
	step
		goto Stormwind City,60.6,76.4
		.talk Marion Sutton##38325
		..turnin Fireworks At The Gilded Rose##24848
		..accept Hot On The Trail##24849
	step
		goto Stormwind City,63.2,79.1
		.' Search the Stormwind Counting House|q 24849/1
	step
		goto Stormwind City,61.2,70.9
		.' Search the Stormwind Auction House|q 24849/2
	step
		goto Stormwind City,61.3,65.0
		.' Search the Stormwind Barber Shop|q 24849/3
	step
		goto Stormwind City,60.6,76.4
		.talk Marion Sutton##38325
		..turnin Hot On The Trail##24849
		..accept A Friendly Chat...##24657
	step
		goto Stormwind City,27.43,34.8
		.talk Snivel Rustrocket##37715
		.' Talk to him until he gives you Snivel's Ledger
		..collect Snivel's Ledger##49915|q 24657/1
	step
		goto Stormwind City,61.6,75.3
		.talk Inspector Snip Snagglebolt##38066
		..turnin A Friendly Chat...##24657
]])
ZygorGuidesViewer:RegisterInclude("Love is in the Air Dailies",[[
		goto Ironforge,33.5,65.6
		.talk Kwee Q. Peddlefeet##16075
		..accept A Gift for the Lord of Ironforge##24609 |daily
	step
		|fly Stormwind City
	step
		goto Stormwind City,61.6,75.3
		.talk Inspector Snip Snagglebolt##38066
		..' You have to be at least level 5 to accept a quest from him
		..accept Crushing the Crown##24658 |daily |only if level >= 5 and level < 14
		..accept Crushing the Crown##24659 |daily |only if level >= 14 and level < 23
		..accept Crushing the Crown##24660 |daily |only if level >= 23 and level < 32
		..accept Crushing the Crown##24662 |daily |only if level >= 32 and level < 41
		..accept Crushing the Crown##24663 |daily |only if level >= 41 and level < 51
		..accept Crushing the Crown##24664 |daily |only if level >= 51 and level < 61
		..accept Crushing the Crown##24665 |daily |only if level >= 61 and level < 71
		..accept Crushing the Crown##24666 |daily |only if level >= 71 and level < 81
		..accept Crushing the Crown##28934 |daily |only if level >= 81
	step
		goto 62.4,75.4
		.talk Public Relations Agent##37675
		..accept A Perfect Puff of Perfume##24629 |daily |or
		..accept A Cloudlet of Classy Cologne##24635 |daily |or
		..accept Bonbon Blitz##24636 |daily |or
	step
		goto Stormwind City,62.5,75.0
		.talk Kwee Q. Peddlefeet##16075
		..accept A Gift for the King of Stormwind##24597 |daily
	step
		'Run around Stormwind and:
		.' Use your Crown Cologne Sprayer on NPCs and other players without a red heart over their head |use Crown Cologne Sprayer##49669
		.' Give 10 Cologne Samples |q 24635/1
	step
		'Run around Stormwind and:
		.' Use your Crown Perfume Sprayer on NPCs and other players without a red heart over their head |use Crown Perfume Sprayer##49668
		.' Give 10 Perfume Samples |q 24629/1
	step
		'Run around Stormwind and:
		.' Use your Crown Chocolate Sampler on NPCs and other players without a red heart over their head |use Crown Chocolate Sampler##49670
		.' Give 10 Chocolate Samples |q 24636/1
	step
		'Go outside Stormwind to Elwynn Forest |goto Elwynn Forest |noway |c
		only if level >= 5 and level < 14
	step
		goto Elwynn Forest,29.3,65.4
		.kill 5 Crown Lackey |q 24658/2
		.' Use Snagglebolt's Khorium Bomb next to the big shaking Chemical Wagon |use Snagglebolt's Khorium Bomb##50130
		.' Destroy the Chemical Wagon |q 24658/1
		only if level >= 5 and level < 14
	step
		'This step depends on your character's level and what you want to do.  
		.' If you don't have alot of money, or don't want to spend any more, do this: |tip Go to a place where the mobs are at least green to you, they cannot be grey to you, or they won't drop the items you need.  Now, just kill the mobs until you collect 40 Lovely Charms.  You won't get a Lovely Charm from every mob you kill, so be prepared to grind for a while.
		..collect 40 Lovely Charm##49655 |n
		.' If you have a lot of money, or don't care about spending money and just want to do the quests very quickly, do this: |tip Go to the Auction House and buy 4 Lovely Charm Bracelets.
		.' If you chose to kill mobs, use your Lovely Charms to create 4 Lovely Charm Bracelets |use Lovely Charm##49655
		.collect 4 Lovely Charm Bracelet##49916
	step
		'Go to Stormwind City |goto Stormwind City |noway |c
		only if level >= 5 and level < 14
	step
		goto Stormwind City,61.6,75.3
		.talk Inspector Snip Snagglebolt##38066
		..turnin Crushing the Crown##24658 |daily 
		only if level >= 5 and level < 14
	step
		goto 62.4,75.4
		.talk Public Relations Agent##37675
		..turnin A Perfect Puff of Perfume##24629
		..turnin A Cloudlet of Classy Cologne##24635
		..turnin Bonbon Blitz##24636
	step
		goto 85.8,31.7
		.talk King Varian Wrynn##29611
		..turnin A Gift for the King of Stormwind##24597
	step
		goto Stormwind City,22.6,56.0 |n
		.' Ride the boat to Rut'theran Village |goto Teldrassil |noway |c
	step
		|fly Grove of the Ancients
		only if level >= 14 and level < 23
 	step
		|fly Darnassus
		only if level >= 14 and level < 23
	step
		goto Darnassus,45.4,57.8
		.talk Kwee Q. Peddlefeet##16075
		..accept A Gift for the High Priestess of Elune##24610 |daily
	step
		goto Darnassus 43.0,78.0
		.talk Tyrande Whisperwind##7999
		..turnin A Gift for the High Priestess of Elune##24610
	step
		goto 37.0,50.5 |n
		.' Go into the pink portal to Rut'theran Village |goto Teldrassil |noway |c
	step
		goto Teldrassil,52.3,89.5 |n
		.' Ride the boat to Azuremyst Isle |goto Azuremyst Isle |noway |c
	step
		goto The Exodar,73.6,57.0
		.talk Kwee Q. Peddlefeet##16075
		..accept A Gift for the Prophet##24611 |daily
	step
		goto 32.8,54.5
		.talk Prophet Velen##17468
		..turnin A Gift for the Prophet##24611
	step
		goto Ironforge,40.0,55.1
		.talk King Magni Bronzebeard##2784
		..turnin A Gift for the Lord of Ironforge##24609
	step
		goto Stormwind City,80,38.4
		.talk King Varian Wrynn##29611
		..turnin A Gift for the King of Stormwind##24597
	step
		goto 61.6,75.3
		.talk Inspector Snip Snagglebolt##38066
		..turnin Crushing the Crown##24659 |daily
		only if level >= 14 and level < 23
	step
		|fly Aerie Peak
		only if level >= 23 and level < 32
	step
		'Go southwest to Hillsbrad Foothills |goto Hillsbrad Foothills |noway |c
		only if level >= 23 and level < 32
	step
		goto Hillsbrad Foothills,34.5,58.4
		.kill 5 Crown Duster |q 24660/2
		.' Use Snagglebolt's Khorium Bomb next to the big shaking Chemical Wagon |use Snagglebolt's Khorium Bomb##50130
		.' Destroy the Chemical Wagon |q 24660/1
		only if level >= 23 and level < 32
	step
		'Go northeast to The Hinterlands |goto The Hinterlands |noway |c
		only if level >= 23 and level < 32
	step
		goto The Hinterlands,11.1,46.2
		.talk Guthrum Thunderfist##8018
		.' Fly to Stormwind, Elwynn |goto Stormwind City,71.0,73.0,0.5 |noway |c
		only if level >= 23 and level < 32
	step
		goto Ironforge,55.5,47.8
		.talk Gryth Thurden##1573
		.' Fly to Menethil Harbor |goto Wetlands,9.4,59.5,0.5 |noway |c
		only if level >= 32 and level < 41
	step
		goto Wetlands,6.4,62.3 |n
		.' Ride the boat to Theramore |goto Dustwallow Marsh |noway |c
		only if level >= 32 and level < 41
	step
		goto Dustwallow Marsh,60.8,38.2
		.kill 5 Crown Hoodlum |q 24662/2
		.' Use Snagglebolt's Khorium Bomb next to the big shaking Chemical Wagon |use Snagglebolt's Khorium Bomb##50130
		.' Destroy the Chemical Wagon |q 24662/1
		only if level >= 32 and level < 41
	step
		goto 71.5,56.3|n
		.' Ride the boat to Menethil Harbor |goto Wetlands |noway |c
		only if level >= 32 and level < 41
	step
		goto Wetlands,9.4,59.6
		.talk Shellei Brondir##1571
		.' Fly to Stormwind, Elwynn |goto Stormwind City,71.0,73.0,0.5 |noway |c
		only if level >= 32 and level < 41
	step
		goto Stormwind City,70.9,72.5
		.talk Dungar Longdrink##352
		.' Fly to Aerie Peak, The Hinterlands |goto The Hinterlands,11.1,46.1,0.5 |noway |c
		only if level >= 41 and level < 51
	step
		goto The Hinterlands,23.6,53.7
		.kill 5 Crown Agent |q 24663/2
		.' Use Snagglebolt's Khorium Bomb next to the big shaking Chemical Wagon |use Snagglebolt's Khorium Bomb##50130
		.' Destroy the Chemical Wagon |q 24663/1
		only if level >= 41 and level < 51
	step
		goto The Hinterlands,11.1,46.2
		.talk Guthrum Thunderfist##8018
		.' Fly to Stormwind, Elwynn |goto Stormwind City,71.0,73.0,0.5 |noway |c
		only if level >= 41 and level < 51
	step
		goto Stormwind City,61.6,75.3
		.talk Inspector Snip Snagglebolt##38066
		..turnin Crushing the Crown##24660 |only if level >= 23 and level < 32
		..turnin Crushing the Crown##24662 |only if level >= 32 and level < 41
		..turnin Crushing the Crown##24663 |only if level >= 41 and level < 51
		only if level >= 23 and level < 51
	step
		goto Stormwind City,22.6,56.0 |n
		.' Ride the boat to Rut'theran Village |goto Teldrassil |noway |c
		only if level >= 51 and level < 61	
	step
		goto Teldrassil,55.4,88.4
		.talk Vesprystus##3838
		.' Fly to Everlook |goto Winterspring,61.0,48.7,0.5 |noway |c
		only if level >= 51 and level < 61
	step
		goto Winterspring,63.6,49.4
		.kill 5 Crown Sprinkler |q 24664/2
		.' Use Snagglebolt's Khorium Bomb next to the big shaking Chemical Wagon |use Snagglebolt's Khorium Bomb##50130
		.' Destroy the Chemical Wagon |q 24664/1
		only if level >= 51 and level < 61
	step
		goto 61.0,48.6
		.talk Maethrya##11138
		.' Fly to Rut'theran Village, Teldrassil |goto Teldrassil,55.4,88.5,0.5 |noway |c
		only if level >= 51 and level < 61
	step
		goto Teldrassil,55.0,93.7 |n
		.' Ride the boat to Stormwind City |goto Stormwind City |noway |c
		only if level >= 51 and level < 61
	step
		goto Stormwind City,61.6,75.3
		.talk Inspector Snip Snagglebolt##38066
		..turnin Crushing the Crown##24664
		only if level >= 51 and level < 61
	step
		goto Stormwind City,49.0,87.4 |n
		.' Click the Portal to Blasted Lands |tip It's a blue portal at the top of the mage tower.
		.' Teleport to the Blasted Lands |goto Blasted Lands |noway |c
		only if level >= 61 and level < 71
	step
		goto Blasted Lands,58.7,59.7 |n
		.' Go into the big green portal to Outland |goto Hellfire Peninsula |noway |c
		only if level >= 61 and level < 71
	step
		goto Hellfire Peninsula,87.4,52.4
		.talk Amish Wildhammer##18931
		.' Fly to Shattrath City |goto Shattrath City,63.8,41.7,0.5 |noway |c
		only if level >= 61 and level < 71
	step
		'Go outside of Shattrath City to Terokkar Forest |goto Terokkar Forest |noway |c
		only if level >= 61 and level < 71
	step
		goto Terokkar Forest,41.4,22.5
		.kill 5 Crown Underling |q 24665/2
		.' Use Snagglebolt's Khorium Bomb next to the big shaking Chemical Wagon |use Snagglebolt's Khorium Bomb##50130
		.' Destroy the Chemical Wagon |q 24665/1
		only if level >= 61 and level < 71
	step
		'Go inside Shattrath City |goto Shattrath City |noway |c
		only if level >= 61 and level < 71
	step
		goto Shattrath City,64.1,41.1
		.talk Nutral##18940
		.' Fly to Hellfire Peninsula, The Dark Portal, Alliance |goto Hellfire Peninsula,87.5,52.5,0.5 |noway |c
		only if level >= 61 and level < 71
	step
		'Go through the big green portal to Blasted Lands |goto Blasted Lands |noway |c
		only if level >= 61 and level < 71
	step
		|fly Stormwind City
		only if level >= 61 and level < 71
	step
		goto Stormwind City,61.6,75.3
		.talk Inspector Snip Snagglebolt##38066
		..turnin Crushing the Crown##24665
		only if level >= 61 and level < 71
	step
		goto 18.2,25.5 |n
		.'Ride the boat to Borean Tundra |goto Borean Tundra |noway |c
		only if level >= 71 and level <=81
	step
		'Fly to Dalaran|goto Dalaran|noway|c
		only if level >= 74 and level <=81
	step
		.' Follow the road northeast to Dragonblight|goto Dragonblight|noway|c
		only if level >= 71 and level < 74
	step
		.' We recommend the following route to get through Dragonblight
		.' Follow the road north east to this point: [50.1,55.6]
		.' Head towards Wyrmrest temple to this point: [57.9,51.2]
		.' Travel north up the Path of the Titans starting at: [60.0,42.3]
		.' Continue up through the Crystal Vice starting here [64.6,23.9] |tip Avoid the elite giants the best you can
		.' Go north to Crystalsong Forest|goto Crystalsong Forest|noway|c
		only if level >= 71 and level < 74
	step
		goto Crystalsong Forest,49.0,47.8
		.kill 5 Crown Sprayer |q 24666/2
		.' Use Snagglebolt's Khorium Bomb next to the big shaking Chemical Wagon |use Snagglebolt's Khorium Bomb##50130
		.' Destroy the Chemical Wagon |q 24666/1
		only if level >= 71 and level <=81
	step
		'Go south to Dragonblight|goto Dragonblight|noway|c
		only if level >= 71 and level < 74
	step
		'Go to Dalaran|goto Dalaran,72.4,45.5,1|noway|c
		only if level >= 74 and level <=81
	step
		goto Dragonblight,64.6,23.9
		.' We recommend the following route to get through Dragonblight
		.' Follow The Crystal Vice to this point 64.6,23.9|tip Avoid the elite giants the best you can
		.' Travel south down the Path of the Titans to this point: 60.0,42.3
		.' Head towards Wyrmrest temple to this point: 57.9,51.2
		.' Follow the road west to this point: 50.1,55.6
		.' Go west to Borean Tundra|goto Borean Tundra|noway|c
		only if level >= 71 and level < 74
	step
		|fly Valiance Keep
		only if level >= 74 and level <=81
	step
		'Ride the boat to Stormwind City|goto Stormwind City|noway|c
		only if level >= 71 and level <=81
	step
		goto Stormwind City,61.6,75.3
		.talk Inspector Snip Snagglebolt##38066
		..turnin Crushing the Crown##24666
		only if level >= 71 and level <=81
	step
		#include "uldum_port"
		only if level >=81
	step
		goto Uldum 67.9,19.8
		.kill 5 Crown Technician##51613+ |q 28934/2
		.' Use Snagglebolt's Khorium Bomb near the Chemical Wagon. |use Snagglebolt's Khorium Bomb##50130
		.' Chemical Wagon Destroyed |q 28934/1
		only if level >=81
	step
		#include "hearth_hub"
	step
		goto Stormwind City 61.5,75.3
		.talk Inspector Snip Snagglebolt##38066
		..turnin Crushing the Crown##28934 |daily 
		only if level >= 81
]])
ZygorGuidesViewer:RegisterInclude("Love is in the Air Achievement",[[
		'You will need Love Tokens in order to purchase items from vendors in this guide section.
		.' You can get Love Tokens by completing the dailies in the Love is in the Air Dailies section. 
		.' Click here to be taken directly to the Love is in the Air Dailies section. |confirm |next "dailies"
		.' Click here to continue to the vendors. |confirm |next "vendors"
	step 
	label "dailies"
		leechsteps "Love is in the Air Dailies"
	step
	label "vendors"
		goto Stormwind City,62.5,75.3
		.talk Lovely Merchant##37674
		.buy Bag of Heart Candies##21813 |n
		.' Get the 8 different types of Heart Candy:
		.' Be Mine! |collect 1 Heart Candy##21816
		.' I'll follow you all around Azeroth. |collect 1 Heart Candy##21818
		.' All yours. |collect 1 Heart Candy##21819
		.' I'm all yours! |collect 1 Heart Candy##21821
		.' Hot Lips. |collect 1 Heart Candy##21823
		.' You're Mine! |collect 1 Heart Candy##21822
		.' You're the best! |collect 1 Heart Candy##21820
		.' I LOVE YOU |collect 1 Heart Candy##21817
	step
		'Eat the 8 different type of Heart Candy:
		.' Be Mine! |achieve 1701/1 |use 1 Heart Candy##21816 
		.' I'll follow you all around Azeroth. |achieve 1701/2 |use 1 Heart Candy##21818 
		.' All yours. |achieve 1701/3 |use 1 Heart Candy##21819 
		.' I'm all yours! |achieve 1701/4 |use 1 Heart Candy##21821 
		.' Hot Lips. |achieve 1701/5 |use 1 Heart Candy##21823 
		.' You're Mine! |achieve 1701/6 |use 1 Heart Candy##21822 
		.' You're the best! |achieve 1701/7 |use 1 Heart Candy##21820 
		.' I LOVE YOU |achieve 1701/8 |use 1 Heart Candy##21817
	step
		goto 62.5,75.2
		.talk Lovely Merchant##37674
		.buy 10 Silver Shafted Arrow##22200 |n
		.' Use your Silver Shafted Arrows on 10 players inside Ironforge |use Silver Shafted Arrow##22200
		.' Shoot 10 Players with the Silver Shafted Arrow |achieve 1188
	step
		goto 62.5,75.2
		.talk Lovely Merchant##37674
		.buy 1 Box of Chocolates##49909 |n
		.' Use your Box of Chocolates and get all the chocolate contained inside of it |use Box of Chocolates##49909
		.' Eat each type of chocolate:
		.' Sweet Surprise |achieve 1702/3 |use Sweet Surprise##22239 
		.' Very Berry Cream |achieve 1702/4 |use Very Berry Cream##22238 
		.' Buttermilk Delight |achieve 1702/1 |use Buttermilk Delight##22236  |tip Save the remaining Buttermilk Delights for a later achievement.
		.' Dark Desire |achieve 1702/2 |use Dark Desire##22237 
	step
		goto 62.5,75.2
		.talk Lovely Merchant##37674
		.buy 10 Love Rocket##34258 |n
		.' Spam use your Love Rockets |use Love Rocket##34258
		.' Shoot off 10 Love Rockets in 20 seconds or less |achieve 1696
	step
		goto 62.5,75.2
		.talk Lovely Merchant##37674
		.buy 15 Handful of Rose Petals##22218 |achieve 1699
		.buy 1 Romantic Picnic Basket##34480 |achieve 1291
		.buy 1 "VICTORY" Perfume##49856 |achieve 1279
		.buy 5 Love Fool##22261 |achieve 1704
	step
		goto 75.4,53.5
		.talk Elly Langston##1328
		.buy 6 Flagon of Mead##2594 |achieve 1279
	step
		'All around Dalaran:
		.' Use your Handful of Rose Petals on the follow race/class combinations: |use Handful of Rose Petals##22218 |tip Save any extra Handfuls of Rose Petals you have, you'll need one later.
		.' Gnome Warlock |achieve 1699/1
		.' Orc Death Knight |achieve 1699/2
		.' Human Death Knight |achieve 1699/3
		.' Night Elf Priest |achieve 1699/4
		.' Orc Shaman |achieve 1699/5
		.' Tauren Druid |achieve 1699/6
		.' Undead Warrior |achieve 1699/7
		.' Troll Rogue |achieve 1699/8
		.' Blood Elf Mage |achieve 1699/9
		.' Draenei Paladin |achieve 1699/10
		.' Dwarf Hunter |achieve 1699/11
	step
		'In Dalaran:
		.' Find a player to have a picnic with you
		.' Use your Romantic Picnic Basket |use Romantic Picnic Basket##34480
		.' While having a picnic, use your Buttermilk Delight |use Buttermilk Delight##22236
		.' Enjoy a Buttermilk Delight with someone in Dalaran at a Romantic Picnic |achieve 1291
	step
		'Go to Wintergrasp in Northrend:
		.' Use your Love Fool anywhere inside Wintergrasp |use Love Fool##22261
		.' Target the Love Fool and Pity it |script DoEmote("PITY") |achieve 1704/1
	step
		'Go to Ironforge |goto Ironforge |noway |c
	step
		goto 42.4,35.7
		.' Find Sraaz |tip He's a gnome that walks around the circle around The Great Forge.
		.' Do the following exactly in order from top to bottom in the step:
		.' Use all 6 of your Flagons of Mead to get Completely Smashed |use Flagon of Mead##2594
		.' Use your "VICTORY" Perfume |use "VICTORY" Perfume##49856
		.' Use your Handful of Rose Petals on Sraaz |use Handful of Rose Petals##22218 |achieve 1279/1
		.' Kiss Sraaz |script DoEmote("KISS") |achieve 1279/2
	step
		'Go to the Gurubashi Arena in The Cape of Stranglethorn: |tip The Cape of Stranglethorn is the southern-most zone on the Eastern Kingdoms continent.
		.' Use your Love Fool anywhere inside the Gurubashi Arena |use Love Fool##22261
		.' Target the Love Fool and Pity it |script DoEmote("PITY") |achieve 1704/2
	step
		'Enter the Arathi Basin PvP Battleground:
		.' Use your Love Fool inside the Blacksmith subzone inside Arathi Basin |use Love Fool##22261
		.' Target the Love Fool and Pity it |script DoEmote("PITY") |achieve 1704/3
	step
		'Enter the Culling of Stratholme dungeon:
		.' Use your Love Fool anywhere inside the Culling of Stratholme dungeon |use Love Fool##22261
		.' Target the Love Fool and Pity it |script DoEmote("PITY") |achieve 1704/4
	step
		'Enter the Naxxramas raid:
		.' Use your Love Fool anywhere inside the Naxxramas raid |use Love Fool##22261
		.' Target the Love Fool and Pity it |script DoEmote("PITY") |achieve 1704/5
	step
		'Go to a place where the mobs are at least green to you, they cannot be grey to you, or they won't drop the items you need.
		.' Kill the mobs until you collect 120 Lovely Charms.  |tip You won't get a Lovely Charm from every mob you kill, so be prepared to grind for a while.
		.collect 120 Lovely Charm##49655 |n
		.' Use your Lovely Charms to create 12 Lovely Charm Bracelets |use Lovely Charm##49655
		.' Create 12 Lovely Charm Bracelets |achieve 260
	step
		'Kill these certain bosses in any of the following dungeons: |tip You can enter either Normal or Heroic difficulty, it doesn't matter.
		.' Drahga Shadowburner in Grim Batol
		.' Corla, Herald of Twilight in Blackrock Caverns
		.' High Priestess Azil in The Stonecore
		.' Admiral Ripsnarl in Deadmines
		.' Lord Godfrey in Shadowfang Keep
		.' Get either of these 2 items as a random drop from these bosses:
		.collect 1 Bouquet of Red Roses##22206 |n
		.collect 1 Bouquet of Ebon Roses##44731 |n
		.' Obtain a Bouquet of Red or Ebon Roses during the Love is in the Air celebration |achieve 1703 
	step
		'Congratulations, you are a Fool For Love!
]])

-- Noblegarden --
ZygorGuidesViewer:RegisterInclude("Noblegarden Quests",[[
	step
		goto Darnassus,44.7,52.9
		.talk Night Elf Commoner##19173
		..accept Spring Collectors##13484
	step
		'Leave out of the east exit of Darnassus to go outside to Teldrassil |goto Teldrassil |noway |c
	step
		goto Teldrassil,55.6,51.4
		.talk Spring Collector##32799
		..turnin Spring Collectors##13484
		..accept The Great Egg Hunt##13480 |daily
	step
		goto 55.7,51.3
		.talk Noblegarden Vendor##32836
		..accept A Tisket, a Tasket, a Noblegarden Basket##13502
	step
		'Search around Dolanaar for Brightly Colored Eggs and click them:
		.click Brightly Colored Egg##1407+
		|tip There is at least one available at all times. If Dolanaar is too crowded with other players looking for eggs, you can also find them at Azure Watch, Goldshire, and Kharanos.
		.collect Brightly Colored Egg##45072+ |n
		.' Click Brightly Colored Eggs in your bags |use Brightly Colored Egg##45072
		.get 20 Brightly Colored Shell Fragment |q 13480/1
		.get 10 Noblegarden Chocolate |q 13502/1
	step
		goto 55.7,51.3
		.talk Noblegarden Vendor##32836
		..turnin A Tisket, a Tasket, a Noblegarden Basket##13502
	step
		goto 55.6,51.4
		.talk Spring Collector##32799
		..turnin The Great Egg Hunt##13480
]])
ZygorGuidesViewer:RegisterInclude("Noblegarden Achievements",[[
	step
		'You may be unable to complete some of the achievements if you are lower level.  So, if you find you cannot do something in this guide, simply skip it and do what you can
		|confirm
	step
		goto Teldrassil,55.5,51.0
		.click Brightly Colored Egg##1407+
		|tip There is at least one available at all times. If Dolanaar is too crowded with other players looking for eggs, you can also find them at Azure Watch, Goldshire, and Kharanos.
		.collect 100 Noblegarden Chocolate##44791+ |n
		.' Eat 100 Noblegarden Chocolates |achieve 2418 |use Noblegarden Chocolate##44791
		.' Discover a White Tuxedo Shirt by opening Brightly Colored Eggs |achieve 248/1
		.' Discover Black Tuxedo Pants by opening Brightly Colored Eggs |achieve 248/2
		.' Discover an Elegant Dress by opening Brightly Colored Eggs |achieve 249
	step
		'If you don't already have these items, collect Noblegarden Chocolates and purchase them from the Noblegarden Vendor at [55.7,51.3]:
		.collect Noblegarden Egg##44818 |achieve 2421 |tip It costs 5 Noblegarden Chocolates.
		.collect Blossoming Branch##44792 |achieve 2416 |tip It costs 10 Noblegarden Chocolates.
		.collect Spring Flowers##45073 |achieve 2422 |tip It costs 50 Noblegarden Chocolates.
		.collect Spring Robes##44800 |achieve 2436 |tip It costs 50 Noblegarden Chocolates.
		.collect Spring Rabbit's Foot##44794 |achieve 2419 |tip It costs 100 Noblegarden Chocolates.
	step
		goto Teldrassil,55.5,51.0
		.' Use your Spring Rabbit's Foot in your bags to get a Spring Rabbit companion |use Spring Rabbit's Foot##44794
		.' Bring out your Spring Rabbit companion |tip Press P to bring up your Spellbook and click the Companion's ribbon, then click the Spring Rabbit icon.
		.' Find a player with a Spring Rabbit next to them around Dolanaar |tip Spring Rabbits look like small brown and white rabbits.  
		.' Find your Spring Rabbit another one to love in Dolanaar |achieve 2419/2
	step
		'Go west to Darnassus |goto Darnassus |noway |c
	step
		goto Darnassus,36.9,50.5 |n
		.' Go inside the pink portal to Teldrassil |goto Teldrassil |noway |c
	step
		goto Teldrassil,52.3,89.5 |n
		.' Ride the boat to Azuremyst Isle |goto Azuremyst Isle |noway |c
	step
		goto Azuremyst Isle,49.1,52.0
		.' Bring out your Spring Rabbit companion |tip Press P to bring up your Spellbook and click the Companion's ribbon, then click the Spring Rabbit icon.
		.' Find a player with a Spring Rabbit next to them around Azure Watch |tip Spring Rabbits look like small brown and white rabbits.  
		.' Find your Spring Rabbit another one to love in Azure Watch |achieve 2419/1
	step
		goto 21.4,54.0 |n
		.' Ride the boat to Rut'theran Village |goto Teldrassil |noway |c
	step
		goto Teldrassil,55.4,88.4
		.talk Vesprystus##3838
		.' Fly to Thunk's Abode, Desolace |goto Desolace,70.7,32.9,0.5 |noway |c
	step
		'Equip your Spring Robes in your bags |equipped Spring Robes##44800 |use Spring Robes##44800
		.' Use your Spring Robes' ability to plant a flower |use Spring Robes##44800 
		.' Plant a flower in Desolace |achieve 2436/2
	step
		goto Desolace,70.7,32.9
		.talk Thunk's Wyvern##35556
		.' Fly to Fizzle and Pozzik's Speedbarge, Thousand Needles |goto Thousand Needles,79.1,71.9,0.5 |noway |c
	step
		goto Thousand Needles,90.3,72.8
		'Equip your Spring Robes in your bags |equipped Spring Robes##44800 |use Spring Robes##44800
		.' Use your Spring Robes' ability to plant a flower |use Spring Robes##44800
		.' Plant a flower in Thousand Needles |achieve 2436/5
	step
		goto 79.2,72.0
		.talk Tilly Topspin##40768
		.' Fly to Cenarion Hold, Silithus |goto Silithus,54.5,32.9,0.5 |noway |c
	step
		'Equip your Spring Robes in your bags |equipped Spring Robes##44800 |use Spring Robes##44800
		.' Use your Spring Robes' ability to plant a flower |use Spring Robes##44800
		.' Plant a flower in Silithus |achieve 2436/3
	step
		goto Silithus,54.4,32.7
		.talk Cloud Skydancer##15177
		.' Fly to Mossy Pile, Un'Goro Crater |goto Un'Goro Crater,44.0,40.2,0.5 |noway |c
	step
		goto Un'Goro Crater,35.8,50.7
		.' Change into a bunny |tip You will need a friend to do this, or at least another player.  There should be plenty of players trying to do this achievement at the same time, so it should be easy to find help.  Have your friend, or other player, use their Blossoming Branch on you to turn you into a rabbit.
		.' Stand in this spot until you lay an egg
		.' Lay a Noblegarden Egg in the Golakka Hot Springs |achieve 2416
	step
		goto 44.1,40.3
		.talk Flizzy Coilspanner##39175
		.' Fly to Gadgetzan, Tanaris |goto Tanaris,51.4,29.4,0.5 |noway |c
	step
		'Equip your Spring Robes in your bags |equipped Spring Robes##44800 |use Spring Robes##44800
		.' Use your Spring Robes' ability to plant a flower |use Spring Robes##44800\
		.' Plant a flower in Tanaris |achieve 2436/4
	step
		goto Tanaris,51.4,29.5
		.talk Bera Stonehammer##7823
		.' Fly to Theramore, Dustwallow Marsh |goto Dustwallow Marsh,67.5,51.2,0.5 |noway |c
	step
		goto Dustwallow Marsh,71.5,56.3 |n
		.' Ride the boat to Menethil Harbor |goto Wetlands |noway |c
	step
		goto Wetlands,9.4,59.6
		.talk Shellei Brondir##1571
		.' Fly to Dustwind Dig, Badlands |goto Badlands,48.8,36.2,0.5 |noway |c
	step
		'Equip your Spring Robes in your bags |equipped Spring Robes##44800 |use Spring Robes##44800
		.' Use your Spring Robes' ability to plant a flower |use Spring Robes##44800
		.' Plant a flower in The Badlands |achieve 2436/1
	step
		goto Badlands,49.0,36.2
		.talk Nancy Skybrew##44409
		.' Fly to Kharanos, Dun Morogh |goto Dun Morogh,53.7,52.7,0.5 |noway |c
	step
		goto Dun Morogh,53.5,51.2
		.' Bring out your Spring Rabbit companion |tip Press P to bring up your Spellbook and click the Companion's ribbon, then click the Spring Rabbit icon.
		.' Find a player with a Spring Rabbit next to them around Kharanos |tip Spring Rabbits look like small brown and white rabbits.  
		.' Find your Spring Rabbit another one to love in Kharanos |achieve 2419/4
	step
		goto 53.8,52.8
		.talk Brolan Galebeard##43701
		.' Fly to Stormwind, Elwynn |goto Stormwind City,71.0,73.0,0.5 |noway |c
	step
		'Use your Noblegarden Egg anywhere in Stormwind City |use Noblegarden Egg##44818
		.' Hide a Brightly Colored Egg in Stormwind City |achieve 2421
	step
		goto Stormwind City,70.9,72.5
		.talk Dungar Longdrink##352
		.' Fly to Goldshire, Elwynn |goto Elwynn Forest,41.8,64.6,0.5 |noway |c
	step
		goto Elwynn Forest,43.1,67.6
		.' Bring out your Spring Rabbit companion |tip Press P to bring up your Spellbook and click the Companion's ribbon, then click the Spring Rabbit icon.
		.' Find a player with a Spring Rabbit next to them around Goldshire |tip Spring Rabbits look like small brown and white rabbits.  
		.' Find your Spring Rabbit another one to love in Goldshire |achieve 2419/3
	step
		'Equip your Black Tuxedo Pants and White Tuxedo Shirt
		.' Find another player who is wearing the Elegant Dress and perform the Kiss emote on them |script DoEmote("KISS") |tip The Elegant Dress looks like a long pink dress when worn.
		.' Kiss someone wearing an Elegant Dress while wearing a White Tuxedo Shirt and Black Tuxedo Pants |achieve 2576
	step
		'Find a female character of every race that are at least level 18 and do the following: |tip The best places to try and find them would be Dalaran, Shattrath, Stormwind, and Orgrimmar.
		.' Use your Spring Flowers on them |use Spring Flowers##45073
		.' Place bunny ears on a Blood Elf |achieve 2422/1
		.' Place bunny ears on a Tauren |achieve 2422/9
		.' Place bunny ears on a Draenei |achieve 2422/2
		.' Place bunny ears on a Human |achieve 2422/6
		.' Place bunny ears on a Troll |achieve 2422/10
		.' Place bunny ears on a Dwarf |achieve 2422/3
		.' Place bunny ears on a Night Elf |achieve 2422/7
		.' Place bunny ears on a Gnome |achieve 2422/4
		.' Place bunny ears on a Orc |achieve 2422/8
		.' Place bunny ears on a Goblin |achieve 2422/5
		.' Place bunny ears on an Undead |achieve 2422/11
		.' Place bunny ears on a Worgen |achieve 2422/12
	step
		'Congratulations, you are now a Noble Gardener!
]])

-- Children's Week --
ZygorGuidesViewer:RegisterInclude("Children's Week Stormwind",[[
		goto Stormwind City,56.3,54.0
		.talk Orphan Matron Nightingale##14450
		..accept Children's Week##1468
	step
		'Use your Human Orphan Whistle to summon your Human Orphan |use Human Orphan Whistle##18598
		.talk Human Orphan##14305
		..turnin Children's Week##1468
		..accept Cruisin' the Chasm##29093
		..accept The Biggest Diamond Ever!##29106
		..accept Malfurion Has Returned!##29107		
	step
		|fly Sentinel Hill
	step
		goto Westfall,57.8,53.0
		.clicknpc Rental Chopper##52189
		.' Give Your Orphan a Chopper Tour of the Raging Chasm |q 29093/1
	step
		'Use your Human Orphan Whistle to summon your Human Orphan |use Human Orphan Whistle##18598
		.talk Human Orphan##14305
		..turnin Cruisin' the Chasm##29093
	step
		|fly Ironforge
	step
		goto Ironforge,44.2,51.8 |n
		.' Follow the path down |goto Ironforge,44.2,51.8,0.5 |noway |c
	step
		goto 33.2,47.8
		.' Use your Human Orphan Whistle to summon your Human Orphan |use Human Orphan Whistle##18598
		.' Take Your Orphan to Visit King Magni in Old Ironforge |q 29106/1
	step
		'Use your Human Orphan Whistle to summon your Human Orphan |use Human Orphan Whistle##18598
		.talk Human Orphan##14305
		..turnin The Biggest Diamond Ever!##29106
	step
		goto 42.2,46.7 |n
		.' Follow the path up |goto 42.2,46.7,0.5 |noway |c
	step
		|fly Stormwind
	step
		goto Stormwind City,22.6,55.8 |n
		.' Ride the boat to Rut'theran Village |goto Teldrassil |noway |c
	step
		goto Teldrassil,55.1,88.5 |n
		.' Enter the pink portal to Darnassus |goto Darnassus |noway |c
	step
		goto Darnassus,43.1,78.1
		.' Use your Human Orphan Whistle to summon your Human Orphan |use Human Orphan Whistle##18598
		.' Take Your Orphan to Visit Malfurion Stormrage |q 29107/1
	step
		'Use your Human Orphan Whistle to summon your Human Orphan |use Human Orphan Whistle##18598
		.talk Human Orphan##14305
		..turnin Malfurion Has Returned!##29107
		..accept Let's Go Fly a Kite##29117
		..accept You Scream, I Scream...##29119
	step
		goto 37.0,50.5 |n
		.' Enter the pink portal to Rut'theran Village |goto Teldrassil |noway |c
	step
		goto Teldrassil,55.0,93.6 |n
		.' Ride the boat to Stormwind City |goto Stormwind City |noway |c
	step
		goto Stormwind City,58.8,64.1
		.talk Craggle Wobbletop##52358
		.buy 1 Dragon Kite 2-Pack##68890 |q 29117
	step
		'Use your Human Orphan Whistle to summon your Human Orphan |use Human Orphan Whistle##18598
		.' When your orphan is next to you:
		.' Use your Dragon Kite 2-Pack |use Dragon Kite 2-Pack##68890
		.' Fly Dragon Kites with Your Orphan |q 29117/1
	step
		'Use your Human Orphan Whistle to summon your Human Orphan |use Human Orphan Whistle##18598
		.talk Human Orphan##14305
		..turnin Let's Go Fly a Kite##29117
	step
		goto 49.0,89.7
		.talk Hans Coldhearth##52421
		.buy 1 Cone of Cold##69027 |q 29119
	step
		'Use your Human Orphan Whistle to summon your Human Orphan |use Human Orphan Whistle##18598
		.' When your orphan is next to you:
		.' Use your Cone of Cold |use Cone of Cold##69027
		.' Take Your Orphan Out for Ice Cream |q 29119/1
	step
		'Use your Human Orphan Whistle to summon your Human Orphan |use Human Orphan Whistle##18598
		.talk Human Orphan##14305
		..turnin You Scream, I Scream...##29119
		..accept A Warden of the Alliance##171
	step
		goto 58.8,64.1
		.talk Craggle Wobbletop##52358
		.buy 1 Foam Sword Rack |q 171/1 
	step
		goto 56.3,54.0
		.talk Orphan Matron Nightingale##51988
		..turnin A Warden of the Alliance##171 |tip You will be able to choose from 4 pet companions or a 5 gold reward.  If you already have all 4 pets, choose the gold.  You will be able to do this quest each year, so you will be able to collect all 4 pets, eventually.
]])
ZygorGuidesViewer:RegisterInclude("Children's Week Shattrath",[[
		goto Shattrath City,74.9,47.9
		.talk Orphan Matron Mercy##22819
		..accept Children's Week##10943
	step
		'Use your Draenei Orphan Whistle to summon your Draenei Orphan |use Draenei Orphan Whistle##31881
		.talk Draenei Orphan##22818
		..turnin Children's Week##10943
		..accept Auchindoun and the Ring of Observance##10950
		..accept A Trip to the Dark Portal##10952
		..accept Jheel is at Aeris Landing!##10954
	step
		goto Nagrand,31.5,57.6
		.' Use your Draenei Orphan Whistle to summon your Draenei Orphan |use Draenei Orphan Whistle##31881
		.' Take Dornaa taken to Aeris Landing |q 10954/1
	step
		goto Nagrand,31.5,57.6
		.talk Jheel##22836
		..turnin Jheel is at Aeris Landing!##10954
	step
		goto Terokkar Forest,39.8,64.7
		.' Use your Draenei Orphan Whistle to summon your Draenei Orphan |use Draenei Orphan Whistle##31881
		.' Take Dornaa to the Ring of Observance |q 10950/1
	step
		'Use your Draenei Orphan Whistle to summon your Draenei Orphan |use Draenei Orphan Whistle##31881
		.talk Draenei Orphan##22818
		..turnin Auchindoun and the Ring of Observance##10950
	step
		goto Hellfire Peninsula,89.6,50.2
		.' Use your Draenei Orphan Whistle to summon your Draenei Orphan |use Draenei Orphan Whistle##31881
		.' Take Dornaa to the Dark Portal |q 10952/1
	step
		'Use your Draenei Orphan Whistle to summon your Draenei Orphan |use Draenei Orphan Whistle##31881
		.talk Draenei Orphan##22818
		..turnin A Trip to the Dark Portal##10952
		..accept The Seat of the Naaru##10956
		..accept Time to Visit the Caverns##10962
	step
		'Go through the Dark Portal to the Blasted Lands |goto Blasted Lands |noway |c
	step
		|fly Booty Bay
	step
		goto The Cape of Stranglethorn,39.1,67.0 |n
		.' Ride the boat to Ratchet |goto Northern Barrens |noway |c
	step
		|fly Gadgetzan
	step
		goto Tanaris,61.5,50.6 |n
		.' The path to Zaladormu starts here |goto Tanaris,61.5,50.6,1 |noway |c
	step
		goto Tanaris,64.9,50.0 |n
		.' Enter the Caverns of Time here |goto Tanaris,64.9,50.0,0.5 |noway |c
	step
		'Follow the path down to 59.9,57.2 |goto Tanaris,59.9,57.2 |tip You will end up underground, in the Caverns of Time, next to a big dragon named Zaladormu, who is laying on a big platform.
		.' Use your Draenei Orphan Whistle to summon your Draenei Orphan |use Draenei Orphan Whistle##31881
		.' Take Dornaa to the Caverns of Time |q 10962/1
	step
		goto 63.0,57.3
		.talk Alurmi##21643
		.buy 1 Toy Dragon##31951 |q 10962/2
	step
		'Use your Draenei Orphan Whistle to summon your Draenei Orphan |use Draenei Orphan Whistle##31881
		.talk Draenei Orphan##22818
		..turnin Time to Visit the Caverns##10962
	step
		|fly Rut'theran Village
	step
		goto Teldrassil,55.2,88.4 |n
		.' Go through the pink portal to Darnassus |goto Darnassus |noway |c
	step
		goto Darnassus,44.2,78.7 |n
		.' Click the Portal to Exodar |goto The Exodar |noway |c
	step
		goto The Exodar,58.0,41.4
		.' Use your Draenei Orphan Whistle to summon your Draenei Orphan |use Draenei Orphan Whistle##31881
		.' Take Dornaa to the Seat of the Naaru |q 10956/1
	step
		goto The Exodar,58.0,41.4
		.talk O'ros##17538
		..turnin The Seat of the Naaru##10956
		..accept Call on the Farseer##10968
	step
		goto The Exodar 31.3,27.8
		.' Use your Draenei Orphan Whistle to summon your Draenei Orphan |use Draenei Orphan Whistle##31881
		.' Take Dornaa to to Farseer Nobundo |q 10968/1
	step
		goto The Exodar 31.3,27.8
		.talk Farseer Nobundo##17204
		..turnin Call on the Farseer##10968
	step
		'Use your Draenei Orphan Whistle to summon your Draenei Orphan |use Draenei Orphan Whistle##31881
		.talk Draenei Orphan##22818
		..accept Back to the Orphanage##10966
	step
		goto The Exodar,48.1,63.0 |n
		.' Click the Portal to Blasted Lands |goto Blasted Lands |noway |c
	step
		'Go south through the Dark Portal to Hellfire Peninsula |goto Hellfire Peninsula |noway |c
	step
		|fly Shattrath
	step
		goto Shattrath City,74.9,47.9
		.talk Orphan Matron Mercy##22819
		..turnin Back to the Orphanage##10966 |tip You will be able to choose from 4 pet companions. Only Egbert's Egg, Elekk Training Collar, and Sleepy Willy count toward an achievement.		
]])
ZygorGuidesViewer:RegisterInclude("Children's Week Dalaran Oracles Quests",[[
		goto Dalaran,49.4,63.2
		.talk Orphan Matron Aria##34365
		..accept Little Orphan Roo Of The Oracles##13926
		..' Ask about the orphans
		..' Speak to Orphan Matron Aria and accept to care for the Oracle Orphan |q 13926/1
	step
		'Use your Oracle Orphan Whistle to summon your Oracle Orphan |use Oracle Orphan Whistle##46397
		.talk Oracle Orphan##33533
		..turnin Little Orphan Roo Of The Oracles##13926
		..accept The Biggest Tree Ever!##13929
		..accept The Bronze Dragonshrine##13933
		..accept Playmates!##13950 
	step
		goto Grizzly Hills,50.8,42.8
		.' Use your Oracle Orphan Whistle to summon your Oracle Orphan |use Oracle Orphan Whistle##46397
		.' Take Roo to visit Grizzlemaw |q 13929/1
	step
		'Use your Oracle Orphan Whistle to summon your Oracle Orphan |use Oracle Orphan Whistle##46397
		.talk Oracle Orphan##33533
		..turnin The Biggest Tree Ever!##13929
	step
		goto Dragonblight,72.5,36.9
		.' Use your Oracle Orphan Whistle to summon your Oracle Orphan |use Oracle Orphan Whistle##46397
		.' Take Roo to visit the Bronze Dragonshrine |q 13933/1
	step
		'Use your Oracle Orphan Whistle to summon your Oracle Orphan |use Oracle Orphan Whistle##46397
		.talk Oracle Orphan##33533
		..turnin The Bronze Dragonshrine##13933
	step
		goto Borean Tundra,43.5,13.7
		.' Use your Oracle Orphan Whistle to summon your Oracle Orphan |use Oracle Orphan Whistle##46397
		.' Take Roo to visit Winterfin Retreat |q 13950/1
	step
		'Use your Oracle Orphan Whistle to summon your Oracle Orphan |use Oracle Orphan Whistle##46397
		.talk Oracle Orphan##33533
		..turnin Playmates!##13950
		..accept The Dragon Queen##13954
		..accept Meeting a Great One##13956
	step
		.' Go north to Sholazar Basin |goto Sholazar Basin |noway |c
	step
		goto Sholazar Basin,40.3,83.0 |n
		.' Walk into the light to teleport to Un'Goro Crater |goto Un'Goro Crater |noway |c
	step
		goto Un'Goro Crater,47.5,9.2
		.' Use your Oracle Orphan Whistle to summon your Oracle Orphan |use Oracle Orphan Whistle##46397
		.' Take Roo to visit The Etymidian |q 13956/1
	step
		'Use your Oracle Orphan Whistle to summon your Oracle Orphan |use Oracle Orphan Whistle##46397
		.talk Oracle Orphan##33533
		..turnin Meeting a Great One##13956
	step
		goto Un'Goro Crater,50.5,7.8 |n
		.' Walk into the light to teleport to Sholazar Basin |goto Sholazar Basin |noway |c
	step
		goto Dragonblight,59.8,54.7
		.' Use your Oracle Orphan Whistle to summon your Oracle Orphan |use Oracle Orphan Whistle##46397
		.' Take Roo to visit Alexstrasza the Life-Binder |q 13954/1 |tip Alexstrasza the Life-Binder is at the top of Wyrmrest Temple.
	step
		'Use your Oracle Orphan Whistle to summon your Oracle Orphan |use Oracle Orphan Whistle##46397
		.talk Oracle Orphan##33533
		..turnin The Dragon Queen##13954
		..accept A Trip To The Wonderworks##13937
	step
		|fly Dalaran
	step
		goto Dalaran,44.9,45.6
		.talk Jepetto Joybuzz##29478
		.buy 1 Small Paper Zeppelin##46693
	step
		'Use your Oracle Orphan Whistle to summon your Oracle Orphan |use Oracle Orphan Whistle##46397
		.' Use your Small Paper Zeppelin on your Oracle Orphan |use Small Paper Zeppelin##46693
		.' Throw the Small Paper Zeppelin to Roo |q 13937/1
	step
		'Use your Oracle Orphan Whistle to summon your Oracle Orphan |use Oracle Orphan Whistle##46397
		.talk Oracle Orphan##33533
		..turnin A Trip To The Wonderworks##13937
		..accept Back To The Orphanage##13959
	step
		goto Dalaran,49.4,63.2
		.talk Orphan Matron Aria##34365
		..turnin Back To The Orphanage##13959 |tip You will receive a Curious Oracle Hatchling pet companion in the mail.
]])
ZygorGuidesViewer:RegisterInclude("Children's Week Dalaran Wolvar Quests",[[
		goto Dalaran,49.4,63.2
		.talk Orphan Matron Aria##34365
		..accept Little Orphan Kekek Of The Wolvar##13927
		..' Ask about the orphans
		..' Speak to Orphan Matron Aria and accept to care for the Wolvar Orphan |q 13927/1
	step
		'Use your Wolvar Orphan Whistle to summon your Wolvar Orphan |use Wolvar Orphan Whistle##46396
		.talk Wolvar Orphan##33532
		..turnin Little Orphan Kekek Of The Wolvar##13927
		..accept Home Of The Bear-Men##13930
		..accept The Bronze Dragonshrine##13934
		..accept Playmates!##13951 
	step
		goto Grizzly Hills,50.8,42.8
		.' Use your Wolvar Orphan Whistle to summon your Wolvar Orphan |use Wolvar Orphan Whistle##46396
		.' Take Kekek to visit Grizzlemaw |q 13930/1
	step
		'Use your Wolvar Orphan Whistle to summon your Wolvar Orphan |use Wolvar Orphan Whistle##46396
		.talk Wolvar Orphan##33532
		..turnin Home Of The Bear-Men##13930
	step
		goto Dragonblight,72.5,36.9
		.' Use your Wolvar Orphan Whistle to summon your Wolvar Orphan |use Wolvar Orphan Whistle##46396
		.' Take Kekek to visit the Bronze Dragonshrine |q 13934/1
	step
		'Use your Wolvar Orphan Whistle to summon your Wolvar Orphan |use Wolvar Orphan Whistle##46396
		.talk Wolvar Orphan##33532
		..turnin The Bronze Dragonshrine##13934
	step
		goto Dragonblight,45.3,63.3
		.' Use your Wolvar Orphan Whistle to summon your Wolvar Orphan |use Wolvar Orphan Whistle##46396
		.' Take Kekek to visit Snowfall Glade |q 13951/1
	step
		'Use your Wolvar Orphan Whistle to summon your Wolvar Orphan |use Wolvar Orphan Whistle##46396
		.talk Wolvar Orphan##33532
		..turnin Playmates!##13951
		..accept The Dragon Queen##13955
		..accept The Mighty Hemet Nesingwary##13957
	step
		goto Dragonblight,59.8,54.7
		.' Use your Wolvar Orphan Whistle to summon your Wolvar Orphan |use Wolvar Orphan Whistle##46396
		.' Take Kekek to visit Alexstrasza the Life-Binder |q 13955/1 |tip Alexstrasza the Life-Binder is at the top of Wyrmrest Temple.
	step
		'Use your Wolvar Orphan Whistle to summon your Wolvar Orphan |use Wolvar Orphan Whistle##46396
		.talk Wolvar Orphan##33532
		..turnin The Dragon Queen##13955
	step
		goto Sholazar Basin,27.1,58.7
		.' Use your Wolvar Orphan Whistle to summon your Wolvar Orphan |use Wolvar Orphan Whistle##46396
		.' Take Kekek to visit Hemet Nesingwary |q 13957/1
	step
		'Use your Wolvar Orphan Whistle to summon your Wolvar Orphan |use Wolvar Orphan Whistle##46396
		.talk Wolvar Orphan##33532
		..turnin The Mighty Hemet Nesingwary##13957	
		..accept A Trip To The Wonderworks##13938
	step
		|fly Dalaran
	step
		goto Dalaran,44.9,45.6
		.talk Jepetto Joybuzz##29478
		.buy 1 Small Paper Zeppelin##46693
	step
		'Use your Wolvar Orphan Whistle to summon your Wolvar Orphan |use Wolvar Orphan Whistle##46396
		.' Use your Small Paper Zeppelin on your Wolvar Orphan |use Small Paper Zeppelin##46693
		.' Throw the Small Paper Zeppelin to Kekek |q 13938/1
	step
		'Use your Wolvar Orphan Whistle to summon your Wolvar Orphan |use Wolvar Orphan Whistle##46396
		.talk Wolvar Orphan##33532
		..turnin A Trip To The Wonderworks##13938
		..accept Back To The Orphanage##28880
	step
		goto Dalaran,49.4,63.2
		.talk Orphan Matron Aria##34365
		..turnin Back To The Orphanage##28880 |tip You will receive a Curious Wolvar Pup pet companion in the mail.
]])
ZygorGuidesViewer:RegisterInclude("Children's Week Achievements",[[
		goto Stormwind City,56.3,54.0
		.talk Orphan Matron Nightingale##14450
		..' Ask her for another Orphan Whistle
		.collect 1 Human Orphan Whistle##18598
	step
		'Complete any 5 daily quests of your choice: |tip Make sure your orphan is standing next to you when turning in the daily quests, or you won't get credit for this achievement.
		.' Get the Daily Chores Achievement |achieve 1789
	step
		goto Stormwind City,61.3,75.0
		.talk Emmithue Smails##14481
		..buy Tigule and Foror's Strawberry Ice Cream##7228 |achieve 1788
	step
		'Purchase the follow items from the Auction House, or use your Cooking ability to create them, if you'd like:
		.collect 1 Tasty Cupcake##43490 |achieve 1788
		.collect 1 Delicious Chocolate Cake##33924 |achieve 1788
	step
		goto Dalaran,51.2,29.1
		.talk Aimee##29548
		..buy 1 Red Velvet Cupcake##42429 |achieve 1788
		..buy 1 Lovely Cake##42438 |achieve 1788
		..buy 1 Dalaran Doughnut##42430 |achieve 1788
		..buy 1 Dalaran Brownie##42431 |achieve 1788
	step
		'Use your Lovely Cake in your bags to place a cake on the ground |use Lovely Cake##42438
		.' Click the Lovely Cake
		.collect 1 Lovely Cake Slice##42434 |achieve 1788
	step
		'Use whichever Orphan Whistle you currently have to summon your Orphan, so that the Orphan is standing next to you:
		.' Eat Tigule and Foror's Strawberry Ice Cream |achieve 1788/1 |use Tigule and Foror's Strawberry Ice Cream##7228
		.' Eat Tasty Cupcake |achieve 1788/2 |use Tasty Cupcake##43490
		.' Eat Red Velvet Cupcake |achieve 1788/3 |use Red Velvet Cupcake##42429
		.' Eat Delicious Chocolate Cake |achieve 1788/4 |use Delicious Chocolate Cake##33924
		.' Eat Lovely Cake Slice |achieve 1788/5 |use Lovely Cake Slice##42434
		.' Eat Dalaran Brownie |achieve 1788/6 |use Dalaran Brownie##42431
		.' Eat Dalaran Doughnut |achieve 1788/7 |use Dalaran Doughnut##42430
	step
		'Use your Hearthstone while your Orphan is standing next to you |use Hearthstone##6948
		.' Get the Home Alone Achievement |achieve 1791
	step
		'The following achievements are a little more dynamic, so we cannot walk you step-by-step through getting them.
		|confirm
	step
		'Find a group, run the Utgarde Pinnacle dungeon, and defeat King Ymiron |tip Make sure your Orphan is standing next to you when you defeat King Ymiron, or else you won't get credit for the achievement.
		.' Get the Hail To The King, Baby Achievement |achieve 1790
	step
		'Enter the Eye of the Storm battleground and capture the flag |tip Make sure your Orphan is standing next to you when you capture the flag, or else you won't get credit for the achievement.
		.' Capture the flag in Eye of the Storm |achieve 1786/1
	step
		'Enter the Alterac Valley battleground and assault a tower |tip Make sure your Orphan is standing next to you when you assault the tower, or else you won't get credit for the achievement.
		.' Assault a tower in Alterac Valley |achieve 1786/2
	step
		'Enter the Arathi Basin battleground and assault a flag |tip Make sure your Orphan is standing next to you when you assault the flag, or else you won't get credit for the achievement.
		.' Assault a flag in Arathi Basin |achieve 1786/3
	step
		'Enter the Warsong Gulch battleground and return a fallen flag |tip Make sure your Orphan is standing next to you when you return the fallen flag, or else you won't get credit for the achievement.
		.' Return a fallen flag in Warsong Gulch |achieve 1786/4
	step
		'Congratulations, you do it For The Children! |achieve 1793/1 
]])

-- Midsummer Fire Festival --
ZygorGuidesViewer:RegisterInclude("Midsummer Fire Festival Quests",[[
		goto Stormwind City,60.4,75.3
		.talk Innkeeper Allison##6740
		.home Trade District
	step
		goto Stormwind City,61.7,74.2
		.talk Human Commoner##18927
		..accept The Master of Summer Lore##11970
	step
		goto 49.5,72.3
		.talk Festival Loremaster##16817
		..turnin The Master of Summer Lore##11970
		..accept Incense for the Summer Scorchlings##11964
	step
		goto 49.3,72.3
		.talk Earthen Ring Elder##26221
		..accept Unusual Activity##11886
	step
		goto Stormwind City,50.0,72.3
		.talk Master Fire Eater##25975
		..accept Torch Tossing##11731
	step
		'Use your Practice Torches in your bags and throw them at the Torch Target Braziers nearby |use Practice Torches##34862 |tip You must throw the torches at the correct braziers.  Throw the torches at the Torch Target Braziers when they have a floating red arrow point down above them. You will have 40 seconds to complete this before the quest fails.
		.' Hit 8 braziers |q 11731/1
	step
		goto Stormwind City,50.0,72.3
		.talk Master Fire Eater##25975
		..turnin Torch Tossing##11731
		..accept Torch Catching##11657
	step
		goto 49.8,72.4
		.' Use your Unlit Torches in your bags next to the bonfire |use Unlit Torches##34833
		.' As soon as you light torch, it will fly in the air.  There will be a small round shadow on the ground indicating where the torch is flying.  Follow that shadow and catch the torch.  When you catch the torch, it will be thrown in the air again.  Follow the shadow again and catch the torch.  Do this until you've caught the torch 4 times in a row without it hitting the ground.
		.' Catch 4 torches in a row. |q 11657/1
	step
		goto 50.1,72.3
		.talk Master Fire Eater##25975
		..turnin Torch Catching##11657
	step
		goto Elwynn Forest,43.5,62.5
		.talk Summer Scorchling##26401
		..turnin Incense for the Summer Scorchlings##11964
	step
		goto 43.5,62.6
		.talk Elwynn Forest Flame Warden##25898
		..accept Honor the Flame##11816 |instant
	step
		goto Elwynn Forest,43.7,62.2
		.talk Fire Eater##25962
		..accept Playing with Fire##11882
	step
		goto Stormwind City,50.0,72.3
		.talk Master Fire Eater##25975
		..turnin Playing with Fire##11882
	step
		goto 22.5,55.8 |n
		.' Ride the boat to Rut'theran Village |goto Teldrassil |noway |c
	step
		'Go through the pink portal into Darnassus |goto Darnassus |noway |c
	step
		'Take the east exit out of Darnassus to Teldrassil |goto Teldrassil |noway |c
	step
		goto 54.9,52.8
		.talk Teldrassil Flame Warden##25906
		..accept Honor the Flame##11824 |instant
	step
		goto 52.3,89.5 |n
		.' Ride the boat to Azuremyst Isle |goto Azuremyst Isle |noway |c
	step
		goto Azuremyst Isle,44.5,52.5
		.talk Azuremyst Isle Flame Warden##25888
		..accept Honor the Flame##11806 |instant
	step
		goto Bloodmyst Isle,55.8,67.9
		.talk Bloodmyst Isle Flame Warden##25891
		..accept Honor the Flame##11809 |instant
	step
		|fly The Exodar
	step
		goto Azuremyst Isle,20.4,54.2 |n
		.' Ride the boat to Rut'theran Village |goto Teldrassil |noway |c
	step
		|fly Lor'danel
	step
		goto 48.7,22.6
		.talk Darkshore Flame Warden##25893
		..accept Honor the Flame##11811 |instant
	step
		|fly Everlook
	step
		goto Winterspring,61.2,47.3
		.talk Winterspring Flame Warden##25917
		..accept Honor the Flame##11834 |instant
	step
		goto 58.1,47.3
 		.click Horde Bonfire##7734 
		..accept Descrate this Fire!##11803 |instant
	step
		|fly Forest Song
	step
		goto Azshara,60.4,53.3
 		.click Horde Bonfire##7734 
		..accept Desecrate this Fire!##28919 |instant
	step
		|fly Astranaar
	step
		goto Ashenvale,15.1,18.4
		.from Twilight Firesworn##25863+
		.get Twilight Correspondence |q 11886/1
	step
		goto 15.2,21.2
		.' Use the Totemic Beacon in your bags |use Totemic Beacon##35828
		.talk Earthen Ring Guide##25324
		..turnin Unusual Activity##11886
		..accept An Innocent Disguise##11891
	step
		goto Ashenvale,15.3,20.1
		.from Twilight Firesworn##25863+, Twilight Flameguard##25866+
		.get Twilight Correspondence |q 11886/1
	step
		goto Ashenvale,15.7,20.3
		.' Use your Totemic Beacon next to the blue bonfire |use Totemic Beacon##35828
		.talk Earthen Ring Guide##25324
		..turnin Unusual Activity##11886
		..accept An Innocent Disguise##11891
	step
		goto Ashenvale,9.6,13.2
		.' Use your Orb of the Crawler in this spot |use Orb of the Crawler##35237
		.' Get the Crab Disguise |havebuff Interface\Icons\Ability_Hunter_Pet_Crab
	step
		goto Ashenvale,9.2,12.6
		.' Listen to the plan of the Twilight Cultists |q 11891/1
	step
		goto Ashenvale,9.7,13.3
		.' Use your Totemic Beacon next to the blue bonfire |use Totemic Beacon##35828
		.talk Earthen Ring Guide##25324
		..turnin An Innocent Disguise##11891
		..accept Inform the Elder##29092
	step
		|fly Rut'theran Village
	step
		'Go through the pink portal into Darnassus |goto Darnassus |noway |c
	step
		goto Darnassus,62.1,49.1
		.talk Earthen Ring Elder##26221
		..turnin Inform the Elder##29092
	step
		.' Go through the pink portal to Rut'theran Village |goto Teldrassil |noway |c
	step
		|fly Astranaar
	step
		goto 51.6,66.6
 		.click Horde Bonfire##7734 
		..accept Desecrate this Fire!##11765 |instant
	step
		goto Ashenvale,86.9,41.9
		.talk Ashenvale Flame Warden##25883
		..accept Honor the Flame##11805 |instant
	step
		|fly Fort Triumph
	step
		goto Southern Barrens,48.3,72.2
		.talk Southern Barrens Flame Warden##51586
		..accept Honor the Flame##28926
	step
		goto Southern Barrens,40.7,67.3
 		.click Horde Bonfire##7734 
		..accept Desecrate this Fire!##28914 |instant
	step
		|fly Ratchet
	step
		goto Durotar 52.1,47.1
 		.click Horde Bonfire##7734 
		..accept Desecrate this Fire!##11770 |instant
	step
		goto Orgrimmar,46.5,37.0
		.' Click the Flame of Orgrimmar |tip It's a huge blue bonfire.
		.collect Flame of Orgrimmar##23179 |n
		.' Click the Flame of Orgrimmar in your bags |use Flame of Orgrimmar##23179
		..accept Stealing Orgrimmar's Flame##9324 |tip It is recommended that you be level 80 when attempting to complete this guide step.
	step
		goto Northern Barrens,49.9,54.4
 		.click Horde Bonfire##7734 
		..accept Desecrate this Fire!##11783 |instant
	step
		|fly Mirkfallon Post
	step
		goto 49.3,51.3
		.talk Stonetalon Mountains Flame Warden##51588
		..accept Honor the Flame##28928 |instant
	step
		goto Stonetalon Mountains,53.0,62.3
 		.click Horde Bonfire##7734 
		..accept Desecrate this Fire!##11780 |instant
	step
		goto Desolace 66.1,17.1
		.talk Desolace Flame Warden##25894
		..accept Honor the Flame##11812 |instant
	step
		goto 26.1,77.2
 		.click Horde Bonfire##7734 
		..accept Desecrate this Fire!##11769 |instant
	step
		|fly Feathermoon
	step
		goto Feralas,46.8,43.7
		.talk Feralas Flame Warden##25899
		..accept Honor the Flame##11817 |instant
	step
		goto 72.5,47.7
 		.click Horde Bonfire##7734 
		..accept Desecrate this Fire!##11773 |instant
	step
		|fly Cenarion Hold
	step
		goto Silithus,60.3,33.5
		.talk Silithus Flame Warden##25914
		..accept Honor the Flame##11831 |instant
	step
		goto 50.9,41.7
 		.click Horde Bonfire##7734 
		..accept Desecrate this Fire!##11800 |instant
	step
		|fly Gadgetzan
	step
		goto Tanaris,49.8,28.1
 		.click Horde Bonfire##7734 
		..accept Desecrate this Fire!##11802 |instant
	step
		goto Tanaris,52.6,30.3
		.talk Tanaris Flame Warden##25916
		..accept Honor the Flame##11833 |instant
	step
		|fly Theramore
	step
		goto Dustwallow Marsh,61.8,40.5
		.talk Dustwallow Marsh Flame Warden##25897
		..accept Honor the Flame##11815 |instant
	step
		goto 33.3,30.7
 		.click Horde Bonfire##7734 
		..accept Desecrate this Fire!##11771 |instant
	step
		goto Mulgore,52.0,59.4
 		.click Horde Bonfire##7734 
		..accept Desecrate this Fire!##11777 |instant
	step
		goto Thunder Bluff,21.7,27.5
		.' Click the Flame of Thunder Bluff |tip It's a huge blue bonfire.
		.collect Flame of Thunder Bluff##23180 |n
		.' Click the Flame of Thunder Bluff in your bags |use Flame of Thunder Bluff##23180
		..accept Stealing Thunder Bluff's Flame##9325 |tip It is recommended that you be level 80 when attempting to complete this guide step.
	step
		goto Northern Barrens,70.2,73.1 |n
		.' Ride the boat to Booty Bay |goto The Cape of Stranglethorn |noway |c
	step
		goto The Cape of Stranglethorn,52.0,67.6
		.talk Stranglethorn Vale Flame Warden##25915
		..accept Honor the Flame##11832 |instant
	step
		goto 50.5,70.7
 		.click Horde Bonfire##7734 
		..accept Desecrate this Fire!##11801 |instant
	step
		|fly Fort Livingston
	step
		goto Northern Stranglethorn,52.0,63.5
		.talk Northern Stranglethorn Flame Warden##51574
		..accept Honor the Flame##28922
	step
		goto 40.7,51.9
 		.click Horde Bonfire##7734 
		..accept Desecrate this Fire!##28911 |instant
	step
		|fly Nethergarde Keep
	step
		goto Blasted Lands,55.5,14.9
		.talk Blasted Lands Flame Warden##25890
		..accept Honor the Flame##11808 |instant
	step
		goto Swamp of Sorrows 70.3,15.7
		.talk Swamp of Sorrows Flame Warden##51602
		..accept Honor the Flame##28929
	step
		goto Swamp of Sorrows,76.7,14.0
 		.click Horde Bonfire##7734 
		..accept Desecrate this Fire!##11781 |instant
	step
		goto Duskwood 73.7,54.6
		.talk Duskwood Flame Warden##25896
		..accept Honor the Flame##11814 |instant
	step
		goto Duskwood,77.5,44.3
		.talk Felicia Maline##2409
		.' Fly to Moonbrook, Westfall |goto Westfall |noway |c
	step
		goto Westfall,44.8,62.1
		.talk Westfall Flame Warden##25910
		..accept Honor the Flame##11583
	step
		|fly Lakeshire
	step
		goto Redridge Mountains,24.9,53.4
		.talk Redridge Flame Warden##25904
		..accept Honor the Flame##11822 |instant
	step
		|fly Morgan's Vigil
	step
		goto Burning Steppes,68.3,60.6
		.talk Burning Steppes Flame Warden##25892
		..accept Honor the Flame##11810 |instant
	step
		goto 51.5,29.2
 		.click Horde Bonfire##7734 
		..accept Desecrate this Fire!##11768 |instant
	step
		goto Badlands,19.0,56.2
		.talk Badlands Flame Warden##51585
		..accept Honor the Flame##28925
	step
		goto 24.1,37.2
 		.click Horde Bonfire##7734 
		..accept Desecrate this Fire!##11766 |instant
	step
		goto Loch Modan,32.6,41.0
		.talk Loch Modan Flame Warden##25902
		..accept Honor the Flame##11820 |instant
	step
		|fly Ironforge
	step
		goto Ironforge,63.8,25.3
		.talk Festival Loremaster##16817
		..turnin Stealing Orgrimmar's Flame##9324
		..turnin Stealing Thunder Bluff's Flame##9325
	step
		goto Dun Morogh,53.8,45.2
		.talk Dun Morogh Flame Warden##25895
		..accept Honor the Flame##11813 |instant
	step
		|fly Menethil Harbor
	step
		goto 13.5,47.1
		.talk Wetlands Flame Warden##25911
		..accept Honor the Flame##11828 |instant
	step
		|fly Refuge Pointe
	step
		goto Arathi Highlands,44.3,46.0
		.talk Arathi Flame Warden##25887
		..accept Honor the Flame##11804 |instant
	step
		goto 69.2,43.0
 		.click Horde Bonfire##7734 
		..accept Desecrate this Fire!##11764 |instant
	step
		goto Hillsbrad Foothills,54.6,49.8
 		.click Horde Bonfire##7734 
		..accept Desecrate this Fire!##11776 |instant
	step
		goto Western Plaguelands,43,82
		.talk Western Plaguelands Flame Warden##25909
		..accept Honor the Flame##11827 |instant
	step
		|fly Aerie Peak
	step
		goto The Hinterlands,14.3,50.1
		.talk The Hinterlands Flame Warden##25908
		..accept Honor the Flame##11826 |instant
	step
		goto 76.6,74.6
 		.click Horde Bonfire##7734 
		..accept Desecrate this Fire!##11784 |instant
	step
		goto Silverpine Forest,49.6,38.7
 		.click Horde Bonfire##7734 
		..accept Desecrate this Fire!##11580 |instant
	step
		goto Tirisfal Glades,57.0,51.8
 		.click Horde Bonfire##7734 
		..accept Desecrate this Fire!##11786 |instant
	step
		goto Undercity,67.9,8.3
		.' Click the Flame of Undercity |tip It's a huge blue bonfire.
		.collect Flame of Undercity##23181 |n
		.' Click the Flame of Undercity in your bags |use Flame of Undercity##23181
		..accept Stealing Undercity's Flame##9326 |tip It is recommended that you be level 80 when attempting to complete this guide step.
	step
		goto Eastern Plaguelands,54.8,8.5 |n
		.' Go inside the huge swirling portal to the Ghostlands |goto Ghostlands |noway |c
	step
		goto Ghostlands,47,26
 		.click Horde Bonfire##7734 
		..accept Desecrate this Fire!##11774 |instant
	step
		goto Eversong Woods,46,50
 		.click Horde Bonfire##7734 
		..accept Desecrate this Fire!##11772 |instant
	step
		goto Silvermoon City,69.0,43.4
		.' Click the Flame of Silvermoon |tip It's a huge blue bonfire.
		.collect Flame of Silvermoon##35568 |n
		.' Click the Flame of Silvermoon in your bags |use Flame of Silvermoon##35568
		..accept Stealing Silvermoon's Flame##11935 |tip It is recommended that you be level 80 when attempting to complete this guide step.
	step
		goto Ghostlands,52.0,97.8 |n
		.' Go inside the huge swirling portal to Eastern Plaguelands |goto Eastern Plaguelands |noway |c
	step
		|fly Ironforge
	step
		goto Ironforge,63.8,25.3
		.talk Festival Loremaster##16817
		..turnin Stealing the Undercity's Flame##9326
		..turnin Stealing Silvermoon's Flame##11935
		..accept A Thief's Reward##9365 |instant
	step
		goto Ironforge,27.3,7.0 |n
		.' Click the Portal to Blasted Lands |goto Blasted Lands |noway |c
	step
		'Go inside the big green portal to Hellfire Peninsula |goto Hellfire Peninsula |noway |c
	step
		goto Hellfire Peninsula,62.2,58.3
		.talk Hellfire Peninsula Flame Warden##25900
		..accept Honor the Flame##11818 |instant
	step
		goto Hellfire Peninsula,57.2,41.8
 		.click Horde Bonfire##7734 
		..accept Desecrate this Fire!##11775 |instant
	step
		goto Netherstorm,32.3,68.2
 		.click Horde Bonfire##7734 
		..accept Desecrate this Fire!##11799 |instant
	step
		goto Netherstorm,31.2,62.7
		.talk Netherstorm Flame Warden##25913
		..accept Honor the Flame##11830 |instant
	step
		goto Blade's Edge Mountains,50.0,59.0
 		.click Horde Bonfire##7734 
		..accept Desecrate this Fire!##11767 |instant
	step
		goto Blade's Edge Mountains,41.6,65.9
		.talk Blade's Edge Flame Warden##25889
		..accept Honor the Flame##11807 |instant
	step
		goto Zangarmarsh,35.6,51.8
 		.click Horde Bonfire##7734 
		..accept Desecrate this Fire!##11787 |instant
	step
		goto Zangarmarsh,68.8,52.0
		.talk Zangarmarsh Flame Warden##25912
		..accept Honor the Flame##11829 |instant
	step
		goto Nagrand,51.1,34.0
 		.click Horde Bonfire##7734 
		..accept Desecrate this Fire!##11778 |instant
	step
		goto Nagrand,49.6,69.5
		.talk Nagrand Flame Warden##25903
		..accept Honor the Flame##11821 |instant
	step
		goto Terokkar Forest,51.9,43.2
 		.click Horde Bonfire##7734 
		..accept Desecrate this Fire!##11782 |instant
	step
		goto Terokkar Forest,54.1,55.5
		.talk Terokkar Forest Flame Warden##25907
		..accept Honor the Flame##11825 |instant
	step
		goto Shadowmoon Valley,33.5,30.3
 		.click Horde Bonfire##7734 
		..accept Desecrate this Fire!##11779 |instant
	step
		goto Shadowmoon Valley,39.6,54.6
		.talk Shadowmoon Valley Flame Warden##25905
		..accept Honor the Flame##11823 |instant
	step
		goto Shattrath City,55.8,36.6 |n
		.' Click the Shattrath Portal to Stormwind |goto Stormwind City |noway |c
	step
		goto Stormwind City,18.2,25.5 |n
		.' Ride the boat to Borean Tundra |goto Borean Tundra |noway |c
	step
		goto Borean Tundra,55.1,20.0
		.talk Borean Tundra Flame Warden##32801
		..accept Honor the Flame##13485 |instant
	step
		goto Borean Tundra,51.1,11.8
 		.click Horde Bonfire##7734 
		..accept Desecrate this Fire!##13441 |instant
	step
		goto Sholazar Basin,48.1,66.4
		.talk Sholazar Basin Flame Warden##32802
		..accept Honor the Flame##13486 |instant
	step
		goto Sholazar Basin,47.3,61.5
 		.click Horde Bonfire##7734 
		..accept Desecrate this Fire!##13450 |instant
	step
		goto Dragonblight,38.5,48.3
 		.click Horde Bonfire##7734 
		..accept Desecrate this Fire!##13451 |instant
	step
		goto Dragonblight,75.3,43.8
		.talk Dragonblight Flame Warden##32803
		..accept Honor the Flame##13487 |instant
	step
		goto Crystalsong Forest,78.2,75.0
		.talk Crystalsong Forest Flame Warden##32807
		..accept Honor the Flame##13491 |instant
	step
		goto Crystalsong Forest,80.4,52.7
 		.click Horde Bonfire##7734 
		..accept Desecrate this Fire!##13457 |instant
	step
		goto The Storm Peaks,40.4,85.6
 		.click Horde Bonfire##7734 
		..accept Desecrate this Fire!##13455 |instant
	step
		goto The Storm Peaks,41.4,86.7
		.talk Storm Peaks Flame Warden##32806
		..accept Honor the Flame##13490 |instant
	step
		goto Zul'Drak,40.4,61.3
		.talk Zul'Drak Flame Warden##32808
		..accept Honor the Flame##13492 |instant
	step
		goto Zul'Drak,43.3,71.3
 		.click Horde Bonfire##7734 
		..accept Desecrate this Fire!##13458 |instant
	step
		goto Grizzly Hills,19.1,61.5
 		.click Horde Bonfire##7734 
		..accept Desecrate this Fire!##13454 |instant
	step
		goto Grizzly Hills,33.9,60.5
		.talk Grizzly Hills Flame Warden##32805
		..accept Honor the Flame##13489 |instant
	step
		goto Howling Fjord,48.4,13.4
 		.click Horde Bonfire##7734 
		..accept Desecrate this Fire!##13453 |instant
	step
		goto Howling Fjord,57.8,16.1
		.talk Howling Fjord Flame Warden##32804
		..accept Honor the Flame##13488 |instant
	step
		#include "hearth_hub"
	step
		goto Stormwind City 76.1,18.7 |n
		.' Click the portal to Hyjal. |goto Mount Hyjal |noway |c
	step
		goto Mount Hyjal 62.8,22.7
		.talk Hyjal Flame Guardian##51682
		..accept Honor the Flame##29030 
	step
		goto 62.9,22.9
		.click Earthen Ring Bonfire##7734
		..turnin Honor the Flame##29030 
	step
		goto 62.6,23.1 |n
		.' Click the Portal to Stormwind. |goto Stormwind City |noway |c
	step
		goto Stormwind City 73.3,19.6 |n
		.' Click the portal to Deepholm |goto Deepholm |noway |c
	step
		goto Deepholm 49.4,51.3
		.talk Deepholm Flame Guardian##51698
		..accept Honor the Flame##29036
	step	
		goto 49.4,51.3
		.click Earthen Ring Bonfire##7734
		..turnin Honor the Flame##29036
	step
		goto 48.5,53.8 |n
		.' Click the portal to Stormwind |goto Stormwind City |noway |c
	step
		goto Stormwind City 75.3,16.5 |n
		.' Click the portal to Twilight Highlands |goto Twilight Highlands |noway |c
	step
		goto Twilight Highlands 47.2,28.9
		.talk Twilight Highlands Flame Warden##51650
		..accept Honor the Flame##28945 |instant
	step
		goto 53.4,46.4
		.click Horde Bonfire##7734
		..accept Desecrate this Fire!##28944 |instant
	step
		goto 79.5,77.8 |n
		.' Go through the portal to Stormwind City |goto Stormwind City |noway |c
	step
		goto Stormwind City 73.4,17.0 |n
		.' Click the portal to Vashj'ir. |goto Vashj'ir |noway |c
	step
		goto Shimmering Expanse 49.4,42.0
		.talk Vashj'ir Flame Guardian##51697
		..accept Honor the Flame##29031 
	step
		goto 49.3,42.0
		.click Earthen Ring Bonfire##7734
		..turnin Honor the Flame##29031 
	step
		|fly Sandy Beach
	step
		|fly Stormwind City
	step
		goto Stormwind City 75.2,20.4 |n
		.' Click the portal to Uldum. |goto Uldum |noway |c
	step
		goto Uldum 53.6,31.9
		.talk Uldum Flame Warden##51653
		..accept Honor the Flame##28950 |instant
	step
		goto 52.9,34.5
		.click Horde Bonfire##7734
		..accept Desecrate this Fire!##28948 |instant
]])
ZygorGuidesViewer:RegisterInclude("Midsummer Fire Festival Achievements",[[
		'Complete the Midsummer Fire Festival Quests guide section before doing this guide section.
		|confirm
	step
		goto Stormwind City,49.3,72.3
		.talk Earthen Ring Elder##26221
		..' Queue for The Frost Lord Ahune battle.
		..' Click Find Group
		..from Lord Ahune##25740
		.' Complete the Ice the Frost Lord Achievement |achieve 263
	step
		goto 49.0,72.0
		.talk v Supplier##26123
		.buy 15 Juggling Torch##34599
		.buy 1 Mantle of the Fire Festival##23324
		.buy 1 Vestment of Summer##34685
		.buy 1 Sandals of Summer##34683
	step
		goto 50.5,73.1
		.' Equip your Mantle of the Fire Festival |use Mantle of the Fire Festival##23324
		.' Equip your Vestment of Summer |use Vestment of Summer##34685
		.' Equip your Sandals of Summer |use Sandals of Summer##34683
		.' Click the Ribbon Pole |tip It looks like a tall metal pole with a small fire on top of it.
		.' Let your character spin around for 1 minute
		.' Complete the Burning Hot Pole Dance Achievement |achieve 271
	step
		'Don't forget to put your regular gear back on
		|confirm
	step
		goto Stormwind City,18.2,25.5 |n
		.' Ride the boat to Borean Tundra |goto Borean Tundra |noway |c
	step
		goto Borean Tundra,59.0,68.3
		.talk Tomas Riverwell##26879
		.' Fly to Dalaran |goto Dalaran,72.7,45.7,0.5 |noway |c
	step
		goto Dalaran,36.8,44.1
		.' Use your 40 Juggling Torches as fast as you can |tip You must juggle them all in under 15 seconds.  The best way to do this is to place your Juggling Torches on your hotbar.  Press the hotbar key and click the ground at the same time.  Keep spamming the hotbar key and clicking the ground at the same time as fast as possible and don't stop until you get the achievement.
		.' Complete the Torch Juggler Achievement |achieve 272
	step
		'Use your Hearthstone to go back to Stormwind |use Hearthstone##6948
	step
		'Congratulations, you are now The Flame Warden!
]])

-- Harvest Festival --
ZygorGuidesViewer:RegisterInclude("Harvest Festival Quests",[[
		goto Dun Morogh,59.7,34.3
		.talk Wagner Hammerstrike##15011
		..accept Honoring a Hero##8149
	step
		goto Western Plaguelands,52.0,83.4
		.' Use Uther's Tribute in front of Uther's statue |use Uther's Tribute##19850
		.' Place a Tribute at Uther's Tomb |q 8149/1
	step
		goto Dun Morogh,59.7,34.3
		.talk Wagner Hammerstrike##15011
		..turnin Honoring a Hero##8149
	step
		goto Dun Morogh,59.9,34.8
		.' You can click special food items on the table.
		.' In 2 days You will also get an item called Bounty of the Harvest in the mail.
		|confirm
	step
		'Congratulations, you've completed the Harvest Festival!
]])

-- Brewfest --
ZygorGuidesViewer:RegisterInclude("Brewfest Quests",[[
		goto Ironforge,30.8,62.9
		.talk Dwarf Commoner##19148
		..accept Brewfest!##11441
	step
		'Go outside to Dun Morogh |goto Dun Morogh |noway |c
	step
		goto Dun Morogh,55.1,38.1
		.talk Ipfelkofer Ironkeg##24710
		..turnin Brewfest!##11441
	step
		goto 55.1,37.7
		.' NOTE: If you are on an EU server, you will be unable to accept these 2 quests. |tip So, just skip them, and also skip the guide steps where you complete the quest goals for these quests.
		.talk Goldark Snipehunter##23486
		..accept Brewfest!##11441
		..accept Brewfest!##11441
	step
		goto 55.1,37.7
		.talk Goldark Snipehunter##23486
		..' Ask him if there's another way you can help out if you don't like drinking, then ask for a pair of Synthebrew Goggles
		.collect Synthebrew Goggles##46735 |q 11117
	step
		 goto 54.7,38.1
		.talk Boxey Boltspinner##27215
		..accept Chug and Chuck!##12022
	step
		goto 54.8,37.9
		.' Click the Complimentary Brewfest Samplers |tip They looks like mugs of beer on the small tables on either side of you.
		.' Use your Complimentary Brewfest Samplers |use Complimentary Brewfest Sampler##33096
		.' Hit S.T.O.U.T. 5 Times |q 12022/1
	step
		goto 54.7,38.1
		.talk Boxey Boltspinner##27215
		..turnin Chug and Chuck!##12022
	step
		goto 53.7,38.6
		.talk Neill Ramstein##23558
		..accept Now This is Ram Racing... Almost.##11318
	step
		'As you run around on the ram:
		.' Use your Ram Racing Reins |use Ram Racing Reins##33306 |tip The ram runs slow by default.  You have to use the Ram Racing Reins to make it run at certain speeds for 8 seconds.  The make the ram Trot for 8 seconds, use the Ram Racing Reins every 2 seconds or so to keep the ram running at the speed just above the slow default speed.  To make the Ram Canter for 8 seconds, use the Ram Racing Reins a little more often than when you made the Ram Trot.  To make the Ram Gallop, just spam use the Ram Racing Reins.
		.' Maintain a Trot for 8 seconds |q 11318/1
		.' Maintain a Canter for 8 seconds |q 11318/2
		.' Maintain a Gallop for 8 seconds |q 11318/3
	step
		goto 53.7,38.6
		.talk Neill Ramstein##23558
		..turnin Now This is Ram Racing... Almost.##11318
		..accept There and Back Again##11122
	step
		map Dun Morogh
		path follow strict;loop;ants straight
		path	54.6,43.3	54.5,47.4	53.1,51.3	
		path	53.7,51.8	54.5,47.7	54.6,43.4
		path	53.6,38.5
		.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Stop at every bucket of apples you see on the side of the road to refresh your Ram's fatigue level, allowing the Ram to run faster for longer.
		.' _FOLLOW THE WAYPOINT PATH_ Flynn Firebrew will throw you a keg when you get close
		.' Once you have a keg, run back and turn it in to Pol Amberstill at |tip Just get near him and you will throw the keg to him.
		.' Deliver 3 Kegs in Under 4 Minutes|q 11122/1
	step
		goto 53.7,38.6
		.talk Neill Ramstein##23558
		..turnin There and Back Again##11122
	step
		goto 53.5,38.6
		.talk Pol Amberstill##24468
		.' You will be able to accept one of these quests
		..accept Another Year, Another Souvenir.##13932 |or
		.' or
		..accept A New Supplier of Souvenirs##29397 |or
	step
		'Use your Synthebrew Goggles |use Synthebrew Goggles##46735
		.' Equip the Synthebrew Goggles |havebuff Interface\Icons\Spell_Holy_SpiritualGuidence |q 11117
	step
		goto 54.5,38.5
		.' Use your Wolpertinger Net on Wild Wolpertingers |use Wolpertinger Net##32907 |tip They look like rabbits with antlers and wings running around on the ground around this area.
		.get 5 Stunned Wolpertinger |q 11117/1
	step
		goto 55.1,37.7
		.talk Goldark Snipehunter##23486
		..turnin Catch the Wild Wolpertinger!##11117
		.collect Wolpertinger's Tankard |n
		.' Does Your Wopertinger Linger? |achieve 1936 |tip If you are on the EU server you will be able to achieve this in the Achievments Guide.
	step
		goto 56.4,37.8
		.talk Belbi Quikswitch##23710
		..turnin Another Year, Another Souvenir.##13932 |or
		.' or
		..turnin A New Supplier of Souvenirs##29397 |or
	step
		'Go inside Ironforge |goto Ironforge |noway |c
	step
		|fly Stormwind City
	step
		'Go outside to Elwynn Forest |goto Elwynn Forest |noway |c
	step
		goto Elwynn Forest,33.5,50.7
		'Use your Synthebrew Goggles |use Synthebrew Goggles##46735
		.' Equip the Synthebrew Goggles |havebuff Interface\Icons\Spell_Holy_SpiritualGuidence |q 11118
		.' Use your Elekk Dispersion Ray on Elwynn Pink Elekks |use Elekk Dispersion Ray##32960
		.kill 3 Elwynn Pink Elekk |q 11118/2
	step
		'Go inside Stormwind City |goto Stormwind City |noway |c
	step
		goto Stormwind City,22.5,55.8 |n
		.' Ride the boat to Rut'theran Village |goto Teldrassil |noway |c
	step
		goto 55.1,88.3 |n
		.' Go through the Pink Portal |goto Darnassus |noway |c
	step
		goto 67.3,46.1
		'Use your Synthebrew Goggles |use Synthebrew Goggles##46735
		.' Equip the Synthebrew Goggles |havebuff Interface\Icons\Spell_Holy_SpiritualGuidence |q 11118
		.' Use your Elekk Dispersion Ray on Azuremyst Pink Elekks |use Elekk Dispersion Ray##32960
		.kill 3 Azuremyst Pink Elekk |q 11118/3
	step
		goto Darnassus,44.2,78.7
		.' Click on the Portal to Exodar |tip It looks like a swirling blue portal
		.' Teleport to The Exodar |goto The Exodar |noway |c
	step
		goto The Exodar,78.4,57.4
		'Use your Synthebrew Goggles |use Synthebrew Goggles##46735
		.' Equip the Synthebrew Goggles |havebuff Interface\Icons\Spell_Holy_SpiritualGuidence |q 11118
		.' Use your Elekk Dispersion Ray on Teldrassil Pink Elekks |use Elekk Dispersion Ray##32960
		.kill 3 Teldrassil Pink Elekk |q 11118/1
	step
		goto 47.6,62.1
		.' Click the Portal to Darnassus |tip It looks like a blue swirling portal
		.' Teleport to Darnassus |goto Darnassus |noway |c
	step
		goto 36.3,50.3 |n
		.' Go through the Pink Portal |goto Teldrassil |noway |c
	step
		goto 55.0,93.7 |n
		.' Ride the boat to Stormwind |goto Stormwind City |noway |c
	step
		|fly Ironforge
	step
		'Go outside to Dun Morogh |goto Dun Morogh |noway |c
	step
		goto 55.1,37.7
		.talk Goldark Snipehunter##23486
		..turnin Pink Elekks On Parade##11118
	step
		'Use the Dungeon Finder (press I) to queue for Coren Direbrew |tip You must be level 80 do complete this quest.
		.' You will fight Coren Direbrew
		.from Coren Direbrew##23872
		.collect Direbrew's Dire Brew##38280 |n
		.' Click Direbrew's Dire Brew in your bags |use Direbrew's Dire Brew##38280
		..accept Direbrew's Dire Brew##12491
	step
		'Click the green eye on the edge of your minimap
		.' Teleport Out of the Dungeon and go to Dun Morogh |goto Dun Morogh |noway |c
	step
		goto 55.1,38.1
		.talk Ipfelkofer Ironkeg##24710
		..turnin Direbrew's Dire Brew##12491
]])
ZygorGuidesViewer:RegisterInclude("Brewfest Dailies",[[
		'You will only be able to do 1 of the first 2 dailies in this guide, per day. |tip Quests "Bark for the Barleybrews!" or "Bark for the Thunderbrews!".
		.' Skip to the next step in the guide
	step
		goto Dun Morogh,56.1,38.0
		goto Dun Morogh,56.1,38.0
		.talk Becan Barleybrew##23627
		..accept Bark for the Barleybrews!##11293 |daily
	step
		goto Dun Morogh,56.5,36.9
		..accept Bark for the Barleybrews!##11293 |daily |or 
		.' Or
		 goto 56.6,36.9
		.talk Daran Thunderbrew##23628
		..accept Bark for the Thunderbrews!##11294 |daily |or
	step
		'Ride your ram into Ironforge |goto Ironforge |noway |c |q 11293
		.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
		|only if havequest (11293)
	step
		'Ride your ram into Ironforge |goto Ironforge |noway |c |q 11294
		.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
		|only if havequest (11294)
	step
		goto Ironforge,31.7,66.7
		.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
		.' Go to this spot
		.' Bark Outside the Bank |q 11293/1
		|only if havequest (11293)
	step
		goto 61.2,80.0
		.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
		.' Go to this spot
		.' Bark in the Military Ward |q 11293/2
		|only if havequest (11293)
	step
		goto 65.3,24.4
		.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
		.' Go to this spot
		.' Bark in the Hall of Explorers |q 11293/3
		|only if havequest (11293)
	step
		goto 29.5,14.2
		.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
		.' Go to this spot
		.' Bark in the Mystic Ward |q 11293/4
		|only if havequest (11293)
	step
		goto Ironforge,31.7,66.7
		.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
		.' Go to this spot
		.' Bark Outside the Bank |q 11294/1
		|only if havequest (11294)
	step
		goto 61.2,80.0
		.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
		.' Go to this spot
		.' Bark in the Military Ward |q 11294/2
		|only if havequest (11294)
	step
		goto 65.3,24.4
		.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
		.' Go to this spot
		.' Bark in the Hall of Explorers |q 11294/3
		|only if havequest (11294)
	step
		goto 29.5,14.2
		.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
		.' Go to this spot
		.' Bark in the Mystic Ward |q 11294/4
		|only if havequest (11294)
	step
		'Go outside to Dun Morogh |goto Dun Morogh |noway |c
	step
		goto Dun Morogh,56.1,38.0
		goto 56.1,38.0
		.talk Becan Barleybrew##23627
		..turnin Bark for the Barleybrews!##11293
		|only if havequest (11293)
	step
		goto Dun Morogh,56.5,36.9
		goto 56.5,36.9
		.talk Daran Thunderbrew##23628
		..turnin Bark for the Thunderbrews!##11294
		|only if havequest (11294)
	step
		goto 56.0,37.2
		.' Click the Dark Iron Mole Machine Wreckage |tip It looks like a big metal gear laying on ground in the middle of the festival.  It appears after the Dark Iron dwarves attack the Brewfest festival, so you may have to wait for it to appear.
		goto 56.0,37.1
		.' Click the Dark Iron Mole Machine Wreckage |tip You have to defend the three kegs at these locations in order for it to show up.
		.' Click the Complimentary Brewfest Sampler here [55.3,37.3]
		.' Click the Complimentary Brewfest Sampler here [55.7,38.1]	
		.' Thow the Sampler's at the Dark Iron Dwarves and the Mole Machines. |use Complimentary Brewfest Sampler##33096
		..accept This One Time, When I Was Drunk...##12020 |daily
	step
		goto Dun Morogh,54.7,38.1
		.talk Boxey Boltspinner##27215
		..turnin This One Time, When I Was Drunk...##12020
		.' Down With The Dark Iron Achievement |achieve 1186
	step
		goto 53.7,38.6
		.talk Neill Ramstein##23558
		..accept Brew For Brewfest##29394 |instant |daily
		.' On your Ram, run to Flynn Firebrew at|tip Flynn Firebrew will throw you a keg when you get close.
		.' Deliver as many kegs as you can within 4 minutes |tip You get 2 Brewfest Prize Tokens for each keg you deliver, so this is a good way to get some Brewfest Prize Tokens to join the Brew of the Month Club.
	step
		map Dun Morogh
		path follow strict;loop;ants straight
		path	54.6,43.3	54.5,47.4	53.1,51.3	
		path	53.7,51.8	54.5,47.7	54.6,43.4
		path	53.6,38.5
		.' Follow this path to pick up Kegs from Flynn Firebrew and run them back to Neill Ramstein
		.' Use your Ram Racing Reins |use Ram Racing Reins##33306
]])
ZygorGuidesViewer:RegisterInclude("Brewfest Achievements",[[
		 goto Dun Morogh,55.6,38.2
		.talk Arlen Lochlan##23522
		.buy The Essential Brewfest Pretzel##33043 |achieve 1185
	step
		'Click The Essential Brewfest Pretzels in your bags |use The Essential Brewfest Pretzel##33043
		.' Eat The Essential Brewfest Pretzels |achieve 1185/7
	step
		goto 56.5,37.7
		.talk Anne Summers##23521
		.buy Spiced Onion Cheese##34065 |achieve 1185
	step
		'Click the Spiced Onion Cheese in your bags |use Spiced Onion Cheese##34065
		.' Eat the Spiced Onion Cheese |achieve 1185/4
	step
		goto 56.0,36.4
		.talk Keiran Donoghue##23481
		.buy Dried Sausage##34063 |achieve 1185
		.buy Succulent Sausage##34064 |achieve 1185
		.buy Savory Sausage##33023 |achieve 1185
		.buy Pickled Sausage##33024 |achieve 1185
		.buy Spicy Smoked Sausage##33025 |achieve 1185
		.buy The Golden Link##33026 |achieve 1185
	step
		'Do the following:
		.' Click the Dried Sausage in your bags |use Dried Sausage##34063
		.' Eat the Dried Sausage |achieve 1185/1
		.' Click the Succulent Sausage in your bags |use Succulent Sausage##34064
		.' Eat the Succulent Sausage |achieve 1185/6
		.' Click the Savory Sausage in your bags |use Savory Sausage##33023
		.' Eat the Savory Sausage |achieve 1185/3
		.' Click the Pickled Sausage in your bags |use Pickled Sausage##33024
		.' Eat the Pickled Sausage |achieve 1185/2
		.' Click the Spicy Smoked Sausage in your bags |use Spicy Smoked Sausage##33025
		.' Eat Spicy Smoked Sausage |achieve 1185/5
		.' Click the Golden Link in your bags |use The Golden Link##33026
		.' Eat The Golden Link |achieve 1185/8
		.' Achieve The Brewfest Diet! |achieve 1185
	step
		goto 56.4,37.8
		.talk Belbi Quikswitch##23710
		.buy Fresh Brewfest Hops##37750 |achieve 303 |tip You must be at least level 20 to buy these.
	step
		'Use your Fresh Brewfest Hops |use Fresh Brewfest Hops##37750
		.' Make your Mount Festive for Brewfest! |achieve 303
	step
		'Complete the Brewfest daily quests each day until you have 200 Brewfest Prize Tokens
		.collect 200 Brewfest Prize Token##37829 |achieve 2796
	step
		goto 56.4,37.9
		.talk Belbi Quikswitch##23710
		.buy "Brew of the Month" Club Membership Form##37736 |n
		.' Click the "Brew of the Month" Club Membership Form in your bags |use "Brew of the Month" Club Membership Form##37736
		..accept Brew of the Month Club##12420
	step
		'Go inside Ironforge |goto Ironforge |noway |c
	step
		goto Ironforge,18.8,53.1
		.talk Larkin Thunderbrew##27478
		..turnin Brew of the Month Club##12420
		.' Achieve Brew of the Month! |achieve 2796
		.' Achieve Brewmaster! |achieve 1684
	step
		goto Dun Morogh,56.4,37.8
		.' If you are on the EU servers go here to buy your Wolpertinger Pet
		.buy Wolpertinger's Tankard##32233 |n
		.' Does Your Wopertinger Linger? |achieve 1936
	step
		'Congratulations, you are a Brewmaster!
]])
--------------------------------------------------------------------------------------------------------------------------------------
-- Professions
--------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------------------------
-- Cooking
--------------------------------------------------------------------------------------------------------------------------------------
ZygorGuidesViewer:RegisterInclude("A_Stormwind_Cooking_Dailies",[[
	step //1
		goto Stormwind City,50.6,71.9
		.talk Robby Flay##42288
		..' You will only be able to complete 1 of the following quests per day
		..accept A Fisherman's Feast##26190 |daily |or
		..accept Feeling Crabby?##26177 |daily |or
		..accept Orphans Like Cookies Too!##26192 |daily |or
		..accept Penny's Pumpkin Pancakes##26153 |daily |or
		..accept The King's Cider##26183 |daily |or
	step //2
		goto 54.9,68.2
		.' Click Barrels of Canal Fish |tip They look like dark wooden barrels near fishermen all along the canals.
		.get 5 Gigantic Catfish |q 26190/1
	step //3
		goto 54.5,66.7
		.' Click Canal Crabs |tip They look like small crabs underwater all along in the canals.
		.get 10 Canal Crab |q 26177/1
	step //4
		goto 41.2,83.6
		.' Click Sacks of Confectioner's Sugar |tip They look like cloth white sacks.  This one is laying on the ground inside The Slaughtered Lamb building.
		.get 4 Confectioner's Sugar |q 26192/1
		.' You can find more Sacks of Confectioner's Sugar:
		.' at [51.0,96.2] |tip Laying on the floor, next to the fireplace in The Blue Recluse building.
		.' at [77.8,53.2] |tip Laying on the floor, next to the fireplace in Pig and Whistle Tavern building.
		.' at [66.0,31.9] |tip Laying on the bar inside The Golden Keg building.
	step //5
		goto 54.3,12.3
		.' Click Stormwind Pumpkins |tip They look like big orange pumpkins on the ground around this area.
		.get 6 Stormwind Pumpkin |q 26153/1
	step //6
		goto 55.0,74.0
		.' Click Juicy Apples |tip They look like red apples laying on the ground under apple trees along the streets of Stormwind City.  There are different types of trees in Stormwind, so only look under the rounder shaped trees with red apples in them.
		get 12 Juicy Apple |q 26183/1
	step //7
		goto 50.6,71.9
		.talk Robby Flay##42288
		..' You will only be able to complete 1 of the following quests per day
		..turnin A Fisherman's Feast##26190
		..turnin Feeling Crabby?##26177
		..turnin Orphans Like Cookies Too!##26192
		..turnin Penny's Pumpkin Pancakes##26153
		..turnin The King's Cider##26183
]])

ZygorGuidesViewer:RegisterInclude("A_Kickin'_It_Up_a_Notch",[[
	step
		goto Stormwind City,49.0,87.4
		.' Click on the Portal to Blasted Lands |tip It looks like a purple swirling portal.
		.' Take Portal to Blasted Lands |goto Blasted Lands |noway |c
	step
		goto Blasted Lands,55.0,54.1
		.' Go through The Dark Portal |tip It looks like a huge green swirling portal.
		.' Go to Hellfire Peninsula |goto Hellfire Peninsula |noway |c
	step
		|fly Shattrath
	step
	label "warning"
		.' The following quests are random and you can only do one per day. Click to proceed. |confirm always
	step
	label "hub"
		goto Shattrath City,61.8,15.6
		.talk The Rokk##24393
		.' You will only be able to accept one of these daily quests per day
		..accept Soup for the Soul##11381 |daily |or
		..accept Super Hot Stew##11379 |daily |or
		..accept Manalicious##11380 |daily |or
		..accept Revenge is Tasty##11377 |daily |or
	step
		|fly Telaar |q 11381
	step
		goto Nagrand,56.2,73.3
		.talk Uriku##20096
		.buy Recipe: Roasted Clefthoof##27691 |n
		.' Click the Recipe: Roasted Clefthoof in your bags |use Recipe: Roasted Clefthoof##27691
		.learn Roasted Clefthoof##33287 |q 11381
	step
		goto Nagrand,58.5,46.8
		.from Clefthoof##18205+, Clefthoof Calf##19183+
		.collect 4 Clefthoof Meat##27678 |q 11381
		.' You can find more Clefthooves at [45.5,72.7]
	step
		.' Build a Basic Campfire |cast Basic Campfire##818
		.create Roasted Clefthoof##33287,Cooking,4 total |q 11381
	step
		goto 25.9,59.4
		.' Use your Cooking Pot to Cook up some Spiritual Soup |use Cooking Pot##33851
		.' Cook a Spiritual Soup |q 11381/1
	step
		|fly Evergrove |q 11379
	step
		goto Blade's Edge Mountains,62.5,40.3
		.talk Xerintha Ravenoak##20916
		.buy Recipe: Mok'Nathal Shortribs##31675 |n
		.' Click the Recipe: Mok'Nathal Shortribs in your bags |use Recipe: Mok'Nathal Shortribs##31675
		.learn Mok'Nathal Shortribs##31672 |q 11379
		.buy Recipe: Crunchy Serpent##31674 |n
		.' Click the Recipe: Crunchy Serpent in your bags |use Recipe: Mok'Nathal Shortribs##31674
		.learn Crunchy Serpent##31673 |q 11379
	step
		goto Blade's Edge Mountains,49.6,46.2
		.from Daggermaw Blackhide##22052+, Bladespire Raptor##20728+
		.collect 4 Raptor Ribs##31670+ |q 11379
	step
		goto 68.2,63.2
		.from Scalewing Serpent##20749+, Felsworn Scalewing##21123+
		.collect 1 Serpent Flesh##31671 |q 11379
	step
		.' Build a Basic Campfire |cast Basic Campfire##818
		.create 2 Mok'Nathal Shortribs##38867,Cooking,2 total |q 11379
	step
		.' Build a Basic Campfire |cast Basic Campfire##818
		.create 1 Crunchy Serpent##38868,Cooking,1 total |q 11379
	step
		goto 29.0,84.5
		.from Abyssal Flamebringer##19973+
		.' Use your Cooking Pot next to the Abyssal Flamebringer corpse to Cook up some Demon Broiled Surprise |use Cooking Pot##33852
		.get Demon Broiled Surprise |q 11379/1
	step
		|fly Area 52 |q 11380
	step
		goto Netherstorm,45.6,54.2
		.click Mana Berry Bush##28+
		.get 15 Mana Berry##33849+ |q 11380/1
	step
		'Go outside to Terokkar Forest |goto Terokkar Forest |q 11377
	step
		goto Terokkar Forest,55.8,53.0
		.talk Supply Officer Mills##19038
		.buy Recipe: Warp Burger##27692 |n
		.' Click the Recipe: Warp Burger in your bags |use Recipe: Warp Burger##27692
		.learn Warp Burger##33288 |q 11377
	step
		goto 64.0,83.5
		.from Blackwind Warp Chaser##23219+
		.collect 3 Warped Flesh##27681 |q 11377
	step
		goto 67.6,74.7
		.from Monstrous Kaliri##23051+ |tip They fly around in the sky close to the tree outposts and bridges.
		.collect Giant Kaliri Wing##33838 |q 11377
	step
		goto 25.9,59.5
		.' Build a Basic Campfire |cast Basic Campfire##818
		.create Warp Burger##33288,Cooking,3 total |q 11377
		.' Use your Cooking Pot to Cook up some Kaliri Stew |use Cooking Pot##33837
		.create Kaliri Stew##43718,Cooking,1 total |q 11377/1
	step
		|fly Shattrath
	step
		goto Shattrath City,61.8,15.6
		.talk The Rokk##24393
		..turnin Soup for the Soul##11381
		..turnin Super Hot Stew##11379
		..turnin Manalicious##11380 
		..turnin Revenge is Tasty##11377

	step
		'You've completed all the dailies you can do today. Click to go back to the dailies hub. |confirm |next "-warning" |only if not step:Find("+check"):IsComplete()
		'Checking achievements |next |only if default
	step
	label "check"
		.' Daily Completed "Revenge is Tasty" |achieve 906/1
		.' Daily Completed "Super Hot Stew" |achieve 906/2
		.' Daily Completed "Manalicious" |achieve 906/3
		.' Daily Completed "Soup for the Soul" |achieve 906/4
		.' Earn the Kickin' It Up a Notch Achievement |achieve 906
	step
		'Congratulations!  You've earned "Kickin' It Up a Notch" Achievement.
]])

ZygorGuidesViewer:RegisterInclude("A_The_Outland_Gourmet",[[
	step
	title +The Burning Crusade Recipes
		#include trainCooking
		.learn Stewed Trout##42296 		
		.learn Fisherman's Feast##42302 
		.learn Hot Buttered Trout##42305 
	//300 Buzzard Bites TBC
	step
		goto Hellfire Peninsula,49.2,74.8
		.talk Lagassi##19344
		..accept Ravager Egg Roundup##9349
	step
		goto 39.0,88.4
		.from Razorfang Hatchling##16932+,Razorfang Ravager##16933+
		.get 12 Ravager Egg##23217 |q 9349/1
	step
		goto Hellfire Peninsula,49.2,74.8
		.talk Lagassi##19344
		..turnin Ravager Egg Roundup##9349
	step
		goto Hellfire Peninsula,49.2,74.8
		.talk Lagassi##19344
		..accept Helboar, the Other White Meat##9361
	step
		goto 51.2,69.8
		.from Deranged Helboar##16863
		.collect 8 Tainted Helboar Meat##23270
	step
		'Use the Purification Mixture on the Tainted Meat |use Purification Mixture##23268
		.get 8 Purified Helboar Meat##23248 |q 9361/1
	step
		goto Hellfire Peninsula,49.2,74.8
		.talk Lagassi##19344
		..turnin Helboar, the Other White Meat##9361
	step
		goto Hellfire Peninsula,49.2,74.8
		.talk Lagassi##19344
		..accept Smooth as Butter##9356
	step
		goto 61.0,66.6
		.from Bonestripper Buzzard##16972
		.get 12 Plump Buzzard Wing |q 9356/1
	step
		goto Hellfire Peninsula,49.2,74.8
		.talk Lagassi##19344
		..accept Smooth as Butter##9356
		.collect 1 Recipe: Buzzard Bites##27684
	step
		.learn Buzzard Bites##33279 |use Recipe: Buzzard Bites##27684
		//300 Ravager Dog TBC
	step
		//alliance: 
		goto Hellfire Peninsula,54.2,63.6
		.talk Sid Limbardi##16826
		.buy 1 Recipe: Ravager Dog##27688 
	step
		.learn Ravager Dog##33284 |use Recipe: Ravager Dog##27688 
	//300 Clam Bar TBC
	step
		goto Zangarmarsh,17.8,51.2
		.talk Mycah##18382
		.buy 1 Recipe: Clam Bar##30156
	step
		.learn Clam Bar##36210 |use Recipe: Clam Bar##30156
	//300 Feltail Delight TBC blackened trout
	step
		//alliance:
		goto Zangarmarsh,42.2,27.8
		.talk Doba##20028
		.buy 1 Recipe Feltail Delight##27695
		.buy 1 Recipe: Blackened Trout##27694
	step
		.learn Feltail Delight##33291 |use Recipe Feltail Delight##27695
		.learn Blackened Trout##33290 |use Recipe: Blackened Trout##27694
	//310 Blackened Sporefish TBC
	step
		//both
		goto Zangarmarsh,78.0,66.0
		.talk Juno Dufrain##18911
		.buy 1 Recipe: Blackened Sporefish##27696
	step
		.learn Blackened Sporefish##33292 |use Recipe: Blackened Sporefish##27696
	//310 Sporeling Snack TBC --help
	//320 Grilled Mudfish TBC, poached bluefish, talbuk steak. roasted clefthoof
	step
		//alliance
		goto Nagrand,56.2,73.2
		.talk Uriku##20096
		//horde
		.buy 1 Recipe: Grilled Mudfish##27697
		.buy 1 Recipe: Talbuk Steak##27693
		.buy 1 Recipe: Poached Bluefish##27698
		.buy 1 Recipe: Roasted Clefthoof##27691
	step
		.learn Talbuk Steak##33289 |use Recipe: Talbuk Steak##27693
		.learn Grilled Mudfish##33293 |use Recipe: Grilled Mudfish##27697
		.learn Poached Bluefish##33294 |use Recipe: Poached Bluefish##27698
		.learn Roasted Clefthoof##33287 |use Recipe: Roasted Clefthoof##27691
	//325 Golden Fish Sticks TBC + Spicy Crawdad TBC
	step
		//alliance
		goto Terokkar Forest,56.6,53.2
		.talk Biribi##19296
		.buy 1 Recipe: Golden Fish Sticks##27699
		.buy 1 Recipe: Spicy Crawdad##27700
	step
		.learn Golden Fish Sticks##33295
		.learn Spicy Crawdad##33296
	//315 Blackened Basilisk TBC + warp burger
	step
		//allaince
		goto Terokkar Forest,55.8,53.0
		.talk Supply Officer Mills##19038
		//horde
		.buy 1 Recipe Blackened Basilisk##27690
		.buy 1 Recipe: Warp Burger##27692
	step
		.learn Blackened Basilisk##33286 |use Recipe Blackened Basilisk##27690
		.learn Warp Burger##33288 |use Recipe: Warp Burger##27692
	//325 Warp Burger TBC
	//335 Crunchy Serpent TBC + Mok'Nathal Shortribs TBC
	step
		goto Blade's Edge Mountains,62.4,40.2
		.talk Xerintha Ravenoak##20916
		.buy 1 Recipe: Mok'Nathal Shortribs##31675
		.buy 1 Recipe: Crunchy Serpent##31674
	step
		.learn Mok'Nathal Shortribs##38867
		.learn Crunchy Serpent##38868	
	step
		'Use the Shattrath Cooking Dailies section of this guide to get these recipes: |tip It's not always guarenteed to come from these daily prizes so be patient
		'Make sure to choose the Crate of Meat
		.collect 1 Recipe: Spicy Hot Talbuk##33873
	step
		.learn Spicy Hot Talbuk##43765 |use Recipe: Spicy Hot Talbuk##33873
	//300 Broiled Bloodfin TBC + Skullfish Soup TBC
	step
		//Barrel of fish 
		'Use the Shattrath Cooking Dailies section of this guide to get these recipes: |tip It's not always guarenteed to come from these daily prizes so be patient
		'Make sure to choose the Barrel of Fish
		.collect 1 Recipe: Broiled Bloodfin##33869
		.collect 1 Recipe: Skullfish Soup##33870
	step
		.learn Broiled Bloodfin##43761 |use Recipe: Broiled Bloodfin##33869
		.learn Skullfish Soup##43707 |use Recipe: Skullfish Soup##33870
	//300 Kibler's Bits TBC
	step
		'Use the Shattrath Cooking Dailies section of this guide to get this recipe: |tip It's not always guarenteed to come from these daily prizes so be patient
		'You can choose either the Crate of Meat or Barrel of Fish 
		.collect 1 Recipe: Kibler's Bits##33875
	step
		.learn Kibler's Bits##43772 |use Recipe: Kibler's Bits##33875
	//300 Stormchops TBC
	step
		'Use the Shattrath Cooking Dailies or Dalaran Cooking Dailies section of this guide to get these recipes: |tip It's not always guarenteed to come from these daily prizes so be patient
		'You can choose either Crate of Meat, Barrel of Fish, or Small Spice Bag
		.collect 1 Recipe: Stormchops##33871
		.collect 1 Recipe: Delicious Chocolate Cake##33925
	step
		.learn Stormchops##43758 |use Recipe: Stormchops##33871
		.learn Delicious Chocolate Cake##43779 |use Recipe: Delicious Chocolate Cake##33925
	step
		'You can either purchase these items from the Acution House or farm them
		.collect 8 Small Eggs##6889
		.collect 2 Buzzard Meat##27671
		.collect 2 Clefthoof Meat##27678
		.collect 2 Jaggal Clam Meat##24477
		.collect 2 Talbuk Venison##27682
		.collect 1 Chunk o' Basilisk##27677
		.collect 1 Raptor Ribs##31670
		.collect 1 Ravager Flesh##27674
		.collect 1 Serpent Flesh##31671
		.collect 1 Strange Spores##27676
		.collect 1 Warped Flesh##27681
		.collect 3 Mageroyal##785
	step
		'You can either purchase these items from the Auction House or fish for them
		.collect 2 Barbed Gill Trout##27422
		.collect 1 Bloodfin Catfish##33823
		.collect 1 Crescent-Tail Skullfish##33824
		.collect 1 Enormous Barbed Gill Trout##27516
		.collect 1 Figluster's Mudfish##27435
		.collect 1 Golden Darter##27438
		.collect 1 Huge Spotted Feltail##27515
		.collect 1 Icefin Bluefish##27437
		.collect 1 Lightning Eel##13757
		.collect 1 Spotted Feltail##27425
		.collect 1 Zangarian Sporefish##27429
	step
		goto Stormwind City,60.8,74.8
		.talk Inkeeper Allison##6740
		.buy 5 Goldenbark Apple##4539
		.buy 4 Ice Cold Milk##1179
	step
		goto 77.6,53.1
		.talk Erika Tate##5483
		.buy 8 Simple Flour##30817
		.buy 4 Mild Spices##2678 
	step
		goto Stormwind City,76.3,53.0
		.talk Reese Langston##1327
		.buy 1 Flask of Port##2593
	step
		'Build a Basic Campfire |cast Basic Campfire##818
		.create Delicious Chocolate Cake##43779,Cooking,1 total
		.' Cook Delicious Chocolate Cake |achieve 1800/1
	step
		.create Blackened Trout##33290,Cooking,1 total
		.' Cook Blackened Trout |achieve 1800/2
	step
		.create Buzzard Bites##33279,Cooking,1 total
		.' Cook Buzzard Bites |achieve 1800/3
	step
		.create Clam Bar##36210,Cooking,1 total
		.' Cook Clam Bar |achieve 1800/4
	step
		.create Feltail Delight##33291,Cooking,1 total
		.' Cook Feltail Delight |achieve 1800/5
	step
		.create Ravager Dog##33284,Cooking,1 total
		.' Cook Ravager Dog |achieve 1800/6
	step
		.create Stormchops##43758,Cooking,1 total
		.' Cook Stormchops |achieve 1800/7
	step
		.create Blackened Sporefish##33292,Cooking,1 total
		.' Cook Blackened Sporefish |achieve 1800/8
	step
		.create Blackened Basilisk##33286,Cooking,1 total
		.' Cook Blackened Basilisk |achieve 1800/9
	step
		.create Grilled Mudfish##33293,Cooking,1 total
		.' Cook Grilled Mudfish |achieve 1800/10
	step
		.create Poached Bluefish##33294,Cooking,1 total
		.' Cook Poached Bluefish |achieve 1800/11
	step
		.create Broiled Bloodfin##43761,Cooking,1 total
		.' Cook Broiled Bloodfin |achieve 1800/12
	step
		.create Golden Fish Sticks##33295,Cooking,1 total
		.' Cook Golden Fish Sticks |achieve 1800/13
	step
		.create Kibler's Bits##43772,Cooking,1 total
		.' Cook Kibler's Bits |achieve 1800/14
	step
		.create Roasted Clefthoof##33287,Cooking,1 total
		.' Cook Roasted Clefthoof |achieve 1800/15
	step
		.create Talbuk Steak##33289,Cooking,1 total
		.' Cook Talbuk Steak |achieve 1800/16
	step
		.create Warp Burger##33288,Cooking,1 total
		.' Cook Warp Burger |achieve 1800/17
	step
		.create Crunchy Serpent##38868,Cooking,1 total
		.' Cook Crunchy Serpent |achieve 1800/18
	step
		.create Mok'Nathal Shortribs##38867,Cooking,1 total
		.' Cook Mok'Nathal |achieve 1800/19
	step
		.create Fisherman's Feast##42302,Cooking,1 total
		.' Cook Fisherman's Feast |achieve 1800/20
	step
		.create Hot Buttered Trout##42305,Cooking,1 total
		.' Cook Hot Buttered Trout |achieve 1800/21
	step
		.create Skullfish Soup##43707,Cooking,1 total
		.' Cook Skullfish Soup |achieve 1800/22
	step
		.create Spicy Crawdad##33296,Cooking,1 total
		.' Cook Spicy Crawdad |achieve 1800/23
	step
		.create Spicy Hot Talbuk##43765,Cooking,1 total
		.' Cook Spicy Hot Talbuk |achieve 1800/24
	step
		.create Stewed Trout##42296,Cooking,1 total
		.' Cook Stewed Trout |achieve 1800/25
	step
		.' Cook each of the Outland cooking recipes |achieve 1800
	step
		Congratulations! You're earned The Outland Gourmet achievement!
]])

ZygorGuidesViewer:RegisterInclude("A_The_Northrend_Gourmet",[[
	//Northern Stew
	step
	title +Wrath of the Lich King Recipes
		#include trainCooking
		.learn Dalaran Clam Chowder##58065 
		.learn Grilled Sculpin##45563 
		.learn Mammoth Meal##45549 
		.learn Pickled Fangtooth##45566 
		.learn Poached Nettlefish##45565 
		.learn Rhino Dogs##45553 
		.learn Roasted Worg##45552 
	step
		#include trainCooking
		.learn Shoveltusk Steak##45550 
		.learn Smoked Salmon##45564 
		.learn Worm Delight##45551 
		.learn Fisherman's Feast##42302 
		.learn Hot Buttered Trout##42305 
		.learn Great Feast##45554 
		.learn Black Jelly##64358 
		.learn Darkbrew Lager##88015 
		.learn Blackened Surprise##88006
	step
		#include rideto_borean
	step
		alliance
		goto 57.8,71.4
		.talk Rollick MacKreel##26989
		..accept Northern Cooking##13088
	step
		goto 45,47.4
		.from Wooly Rhino Matriarch##25487+,Wooly Rhino Calf##25488+
		.get 4 Chilled Meat##43013 |q 13088
	step
		//alliance
		goto 57.8,71.4
		.talk Rollick MacKreel##26989
		..turnin Northern Cooking##13088
		.learn Northern Stew##57421
	//Emotions food
	step
		goto 54.6,70.0
		.from Crypt Crawler##25227
		.collect 1 Recipe: Bad Clams##43509
		.collect 1 Recipe: Last Week's Mammoth##43508
		.collect 1 Recipe: Haunted Herring##43510
		.collect 1 Recipe: Tasty Cupcake##43507
	step
		.learn Bad Clams##58523 |use Recipe: Bad Clams##43509
		.learn Haunted Herring##58525 |use Recipe: Haunted Herring##43510
		.learn Last Week's Mammoth##58521 |use Recipe: Last Week's Mammoth##43508
		.learn Tasty Cupcake##58512 |use Recipe: Tasty Cupcake##43507
	step
		fly Nesingwary Base Camp
	step
		goto 26.8,60.1
		.talk Grimbooze Thunderbrew##29157
		..accept Some Make Lemonade, Some Make Liquor##12634
	step
		goto 37.6,61.8
		.' Click the Sturdy Vines|tip They look like brown vines that hang from trees around this area. Sometimes a Dwarf will fall out and give you fruit you need.
		.' Click the fruit that falls to the ground or talk to the dwarf that falls
		.get Orange |q 12634/1
		.get 2 Banana Bunch|q 12634/2
		.get Papaya |q 12634/3
	step
		goto 26.8,60.1
		.talk Grimbooze Thunderbrew##29157
		..turnin Some Make Lemonade, Some Make Liquor##12634
		..accept Still At It##12644
	step
		goto 26.7,60
		.talk "Tipsy" McManus##28566
		..'Tell him you are ready to start the distillation process
		.' Click the items on the ground or on the machine that he yells at you during the process, it's random
		.' Click the barrel on the ground when the process is done
		.get Thunderbrew's Jungle Punch|q 12644/1
	step
		goto 26.8,60.1
		.talk Grimbooze Thunderbrew##29157
		..turnin Still At It##12644
		..accept The Taste Test##12645
	step
		goto 27.4,59.4
		.' Use your Jungle Punch Sample on Hadrius Harlowe|use Jungle Punch Sample##38697|tip Standing next to a tiki torch.
		.' Complete Hadrius' taste test |q 12645/2
	step
		goto 27.1,58.6
		.' Use your Jungle Punch Sample on Hemet Nesingwary|use Jungle Punch Sample##38697|tip Standing in front of a tent.
		.' Complete Hemet's taste test |q 12645/1
	step
		goto 26.8,60.1
		.talk Grimbooze Thunderbrew##29157
		..turnin The Taste Test##12645
	step
		goto Sholazar Basin,25.3,58.5
		.talk The Spirit of Gnomeregan##28037
		.' Fly to Dalaran |goto Dalaran |noway |c
	step
		goto Dalaran,43.2,24.4
		.talk Washed-Up Mage##32516
		..accept Fletcher's Lost and Found##13571 |instant
	step
		'Use the Professions section of this guide to get to 450 cooking |only if skill("Cooking")<450
		'Use the Dalaran Cooking Dailies section of this guide to earn Dalaran Cooking Awards to buy the following recipes: |tip You will need a total of 74 Dalaran Cooking Awards to get all of the recipes
		goto Dalaran,70.1,38.2 
		#include "vendor_Cooking_Dalaran"
		.buy 1 Recipe: Mega Mammoth Meal##43018 
		.buy 1 Recipe: Tender Shoveltusk Steak##43019 
		.buy 1 Recipe: Spiced Worm Burger##43020 
		.buy 1 Recipe: Very Burnt Worg##43021 
		.buy 1 Recipe: Worg Tartare##44954 
		.buy 1 Recipe: Mighty Rhino Dogs##43022 
		.buy 1 Recipe: Poached Northern Sculpin##43023 //50
		.buy 1 Recipe: Firecracker Salmon##43024 
		.buy 1 Recipe: Spicy Blue Nettlefish##43025 
		.buy 1 Recipe: Imperial Manta Steak##43026 
		.buy 1 Recipe: Spicy Fried Herring##43027 
		.buy 1 Recipe: Rhinolicious Wormsteak##43028
	step
		'Use the Professions section of this guide to get to 450 cooking |only if skill("Cooking")<450
		.learn Mega Mammoth Meal##45555 |use Recipe: Mega Mammoth Meal##43018 
		.learn Tender Shoveltusk Steak##45556 |use Recipe: Tender Shoveltusk Steak##43019
		.learn Spiced Worm Burger##45557 |use Recipe: Spiced Worm Burger##43020
		.learn Very Burnt Worg##45558 |use Recipe: Very Burnt Worg##43021
		.learn Worg Tartare##62350 |use Recipe: Worg Tartare##44954
		.learn Mighty Rhino Dogs##45559 |use Recipe: Mighty Rhino Dogs##43022
		.learn Poached Northern Sculpin##45567 |use Recipe: Poached Northern Sculpin##43023
		.learn Firecracker Salmon##45568 |use Recipe: Firecracker Salmon##43024
		.learn Spicy Blue Nettlefish##45571 |use Recipe: Spicy Blue Nettlefish##43025
		.learn Imperial Manta Steak##45570 |use Recipe: Imperial Manta Steak##43026
		.learn Spicy Fried Herring##57433 |use Recipe: Spicy Fried Herring##43027
		.learn Rhinolicious Wormsteak##57434 |use  Recipe: Rhinolicious Wormsteak##43028
	step
		'Use the Professions section of this guide to get to 450 cooking |only if skill("Cooking")<450
		'Use the Dalaran Cooking Dailies section of this guide to earn Dalaran Cooking Awards to buy the following recipes: |tip You will need a total of 74 Dalaran Cooking Awards to get all of the recipes
		goto Dalaran,70.1,38.2 
		#include "vendor_Cooking_Dalaran"
		.buy 1 Recipe: Critter Bites##43029 
		.buy 1 Recipe: Hearty Rhino##43030 
		.buy 1 Recipe: Snapper Extreme##43031 
		.buy 1 Recipe: Blackened Worg Steak##43032 
		.buy 1 Recipe: Cuttlesteak##43033 
		.buy 1 Recipe: Spiced Mammoth Treats##43034 
		.buy 1 Recipe: Blackened Dragonfin##43035 
		.buy 1 Recipe: Dragonfin Fillet##43036 
		.buy 1 Recipe: Tracker Snacks##43037 
		.buy 1 Recipe: Gigantic Feast##43505 
		.buy 1 Recipe: Small Feast##43506 
		.buy 1 Recipe: Fish Feast##43017 
	step
		'Use the Professions section of this guide to get to 450 cooking |only if skill("Cooking")<450
		.learn Critter Bites##57435 |use Recipe: Critter Bites##43029
		.learn Hearty Rhino##57436 |use Recipe: Hearty Rhino##43030
		.learn Snapper Extreme##57437 |use Recipe: Snapper Extreme##43031
		.learn Blackened Worg Steak##57438 |use Recipe: Blackened Worg Steak##43032
		.learn Cuttlesteak##57439 |use Recipe: Cuttlesteak##43033
		.learn Spiced Mammoth Treats##57440 |use Recipe: Spiced Mammoth Treats##43034
		.learn Blackened Dragonfin##57441 |use Recipe: Blackened Dragonfin##43035
		.learn Dragonfin Fillet##57442 |use Recipe: Dragonfin Fillet##43036
		.learn Tracker Snacks##57443 |use Recipe: Tracker Snacks##43037
		.learn Gigantic Feast##58527 |use Recipe: Gigantic Feast##43505
		.learn Small Feast##58528 |use Recipe: Small Feast##43506 
		.learn Fish Feast##57423 |use Recipe: Fish Feast##43017
	step
		'You can either buy these from the Auction House or farm them
		.collect 1 Barrelhead Goby##41812
		.collect 4 Bonescale Snapper##41808
		.collect 5 Chilled Meat##43013
		.collect 8 Chunk o' Mammoth##34736
		.collect 2 Deep Sea Monsterbelly##41800
		.collect 2 Dragonfin Angelfish##41807
		.collect 1 Essence of Undeath##12808
		.collect 3 Fangtooth Herring##41810
		.collect 6 Glacial Salmon##41809
		.collect 2 Imperial Manta Ray##41809
		.collect 1 Moonglow Cuttlefish##41801
		.collect 1 Mote of Shadow##22577
		.collect 4 Musselback Sculpin##41806
		.collect 6 Nettlefish##51813
		.collect 1 Northern Egg##43501
		.collect 24 Northern Spices##43007
		.collect 7 Rhino Meat##43012
		.collect 3 Rockfin Grouper##41803
		.collect 1 Savory Snowplum##35948
		.collect 5 Shoveltusk Flank##43009
		.collect 3 Succulent Clam Meat##36782
		.collect 2 Tundra Berries##35949
		.collect 5 Worg Haunch##43011
	step
		goto 77.6,53.1
		.talk Erika Tate##5483
		.buy 2 Simple Flour##30817
	step
		goto Stormwind City,60.8,74.8
		.talk Inkeeper Allison##6740
		.collect 2 Tundra Berries##35949
	step
		'Build a Basic Campfire |cast Basic Campfire##818
		.create Bad Clams##58523,Cooking,1 total
		.' Cook Bad Clams |achieve 1777/1
	step
		'create Baked Manta Ray##45569,Cooking,1 total
		.' Cook Baked Manta Ray |achieve 1777/2
	step
		.create Blackened Dragonfin##57441,Cooking,1 total
		.' Cook Blackened Dragonfin |achieve 1777/3
	step
		.create Blackened Worg Steak##57438,Cooking,1 total
		.' Cook Blackened Worg Steak |achieve 1777/4
	step
		.create Critter Bites##57435,Cooking,1 total
		.' Cook Critter Bites |achieve 1777/5
	step
		.create Cuttlesteak##57439,Cooking,1 total
		.' Cook Cuttlesteak |achieve 1777/6
	step
		.create Dalaran Clam Chowder##58065,Cooking,1 total
		.' Cook Dalaran Clam Chowder |achieve 1777/7
	step
		.create Dragonfin Filet##57442,Cooking,1 total
		.' Cook Dragonfin Filet |achieve 1777/8
	step
		.create Firecracker Salmon##45568,Cooking,1 total
		.' Cook Firecracker Salmon |achieve 1777/9
	step
		.create Fish Feast##57423,Cooking,1 total
		.' Cook Fish Feast |achieve 1777/10
	step
		.create Gigantic Feast##58527,Cooking,1 total
		.' Cook Gigantic Feast |achieve 1777/11
	step
		.create Great Feast##45554,Cooking,1 total
		.' Cook Great Feast |achieve 1777/12
	step
		.create Grilled Bonescale##45561,Cooking,1 total
		.' Cook Grilled Bonescale |achieve 1777/13
	step
		.create Grilled Sculpin##45563,Cooking,1 total
		.' Cook Grilled Sculpin |achieve 1777/14
	step
		.create Haunted Herring##58525,Cooking,1 total
		.' Cook Haunted Herring |achieve 1777/15
	step
		.create Hearty Rhino##57436,Cooking,1 total
		.' Cook Hearty Rhino |achieve 1778/16
	step
		.create Imperial Manta Steak##45570,Cooking,1 total
		.' Cook Imperial Manta Steak |achieve 1778/17
	step
		.create Kungaloosh##53056,Cooking,1 total
		.' Cook Kungaloosh |achieve 1778/18
	step
		.create Last Week's Mammoth##58521,Cooking,1 total
		.' Cook Last Week's Mammoth |achieve 1778/19
	step
		.create Mammoth Meal##45549,Cooking,1 total
		.' Cook Mammoth Meal |achieve 1778/20
	step
		.create Mega Mammoth Meal##45555,Cooking,1 total
		.' Cook Mega Mammoth Meal |achieve 1778/21
	step
		.create Mighty Rhino Dogs##45559,Cooking,1 total
		.' Cook Mighty Rhino Dogs |achieve 1778/22
	step
		.create Northern Stew##57421,Cooking,1 total
		.' Cook Northern Stew |achieve 1778/23
	step
		.create Pickeled Fangtooth##45566,Cooking,1 total
		.' Cook Pickeled Fangtooth |achieve 1778/24
	step
		.create Poached Nettlefish##45565,Cooking,1 total
		.' Cook Poached Nettlefish |achieve 1778/25
	step
		.create Poached Northern Sculpin##45567,Cooking,1 total
		.' Cook Poached Northern Sculpin |achieve 1778/26
	step
		.create Rhino Dogs##45553,Cooking,1 total
		.' Cook Rhino Dogs |achieve 1778/27
	step
		.create Rhinolicious Wormsteak##57434,Cooking,1 total
		.' Cook Rhinolicious Wormsteak |achieve 1778/28
	step
		.create Roasted Worg##45552,Cooking,1 total
		.' Cook Roasted Worg |achieve 1778/29
	step
		.create Sauteed Goby##45562,Cooking,1 total
		.' Cook Sauteed Goby |achieve 1778/30
	step
		.create Shoveltusk Steak##45550,Cooking,1 total
		.' Cook Shoveltusk Steak |achieve 1779/31
	step
		.create Small Feast##58528,Cooking,1 total
		.' Cook Small Feast |achieve 1779/32
	step
		.create Smoked Rockfin##45560,Cooking,1 total
		.' Cook Smoked Rockfin |achieve 1779/33
	step
		.create Smoked Salmon##45564,Cooking,1 total
		.' Cook Smoked Salmon |achieve 1779/34
	step
		.create Snapper Extreme##57437,Cooking,1 total
		.' Cook Snapper Extreme |achieve 1779/35
	step
		.create Spiced Mammoth Treats##57440,Cooking,1 total
		.' Cook Spiced Mammoth |achieve 1779/36
	step
		.create Spiced Worm Burger##45557,Cooking,1 total
		.' Cook Spiced Worm Burger |achieve 1779/37
	step
		.create Spicy Blue Nettlefish##45571,Cooking,1 total
		.' Cook Spicy Blue Nettlefish |achieve 1779/38
	step
		.create Spicy Fried Herring##57433,Cooking,1 total
		.' Cook Spicy Fried Herring |achieve 1779/39
	step
		.create Tasty Cupcake##58512,Cooking,1 total
		.' Cook Tasty Cupcake |achieve 1779/40
	step
		.create Tender Shoveltusk Steak##45556,Cooking,1 total
		.' Cook Tender Shoveltusk Steak |achieve 1779/41
	step
		.create Tracker Snacks##57443,Cooking,1 total
		.' Cook Tracker Snacks |achieve 1779/42
	step
		.create Very Burnt Worg##45558,Cooking,1 total
		.' Cook Very Burnt Worg |achieve 1779/43
	step
		.create Worg Tartare##62350,Cooking,1 total
		.' Cook Worg Tartare |achieve 1779/44
	step
		.create Worm Delight##45551,Cooking,1 total
		.' Cook Worm Delight |achieve 1779/45
		..' Cook 45 of the Northrend recipes |achieve 1779
	step
		'Congratulations! You've earned the Northrend Gourment achievement!
]])

ZygorGuidesViewer:RegisterInclude("A_Our_Daily_Bread",[[ 
	step
	title +Dalaran Cooking Dailies
		goto Dalaran,70.0,39.0
		.talk Awilo Long'gomba##29631
		.' You will only be able to accept, and turn in, 1 of these 5 daily quests per day, and they all require you have 350+ Cooking skill:
		..accept Cheese for Glowergold##13115 |or
		..accept Convention at the Legerdemain##13113 |or
		..accept Infused Mushroom Meatloaf##13112 |or
		..accept Mustard Dogs!##13116 |or
		..accept Sewer Stew##13114 |or
	step
		goto Dalaran,40.8,65.4
		.talk Katherine Lee##28705
		.' You will only be able to accept, and turn in, 1 of these 5 daily quests per day, and they all require you have 350+ Cooking skill:
		..accept Cheese for Glowergold##13103 |daily |or
		..accept Convention at the Legerdemain##13101 |daily |or
		..accept Infused Mushroom Meatloaf##13100 |daily |or
		..accept Mustard Dogs!##13107 |daily |or
		..accept Sewer Stew##13102 |daily |or
	step
		goto 54.7,31.5
		.' Click the Aged Dalaran Limburger|tip They look like piles and pieces of yellow cheese on the tables inside this building.
		.collect 1 Aged Dalaran Limburger##43137 |q 13103
		.' Click the Half Full Glasses of Wine|tip They look like small blue-ish wine glasses sitting on tables, and on the ground, inside this building.  They spawn in random locations.
		.collect 6 Half Full Dalaran Wine Glass##43138 |q 13103
		.' You can find more Half Full Glasses of Wine inside the building at [49.4,39.3]
	step
		'Use your Empty Cheese Serving Platter in your bags|use Empty Cheese Serving Platter##43139
		.get 1 Wine and Cheese Platter |q 13103/1
	step
		goto 55.0,30.8
		.' Click a Full Jug of Wine|tip They look like small blue-ish green jugs sitting on the ground inside this building.  They spawn in random locations.
		.get 1 Jug of Wine |q 13101/2
	step
		goto Dragonblight,30.0,49.8
		.from Rabid Grizzly##26643+, Blighted Elk##26616+
		.collect 4 Chilled Meat##43013 |q 13101
	step
		'Use your Cooking ability to cook 4 Northern Stew|tip You will need a cooking fire to do this.
		.get 4 Northern Stew |q 13101/1
	step
		'The entrance to the Dalaran sewers starts here|goto Dalaran,60.2,47.7,0.3|c|q 13100
	step
		goto Dalaran/2 59.5,43.6
		.from Underbelly Rat##32428+
		.collect 4 Infused Mushroom##43100 |q 13100
	step
		'Leave the Dalaran sewers|goto Dalaran,60.2,47.7,0.3|c|q 13100
	step
		goto Dragonblight,30.0,49.8
		.from Rabid Grizzly##26643+, Blighted Elk##26616+
		.collect 2 Chilled Meat##43013 |q 13100
	step
		'Use your Meatloaf Pan in your bags|use Meatloaf Pan##43101|tip You will need a cooking fire to do this.
		.get 1 Infused Mushroom Meatloaf |q 13100/1
	step
		goto Dalaran,67.7,40.0
		.click the Wild Mustard##8340 
		.collect 4 Wild Mustard##43143 |q 13107
		.' You can find more Wild Mustard flowers:
		..' at [50.3,48.3]
		..' at [37.2,43.9]
	step
		goto Borean Tundra,46.7,43.6
		.from Wooly Rhino Calf##25488+, Wooly Rhino Matriarch##25487+, Wooly Rhino Bull##25489+
		.collect 4 Rhino Meat##43012 |q 13107
	step
		'Use your Cooking ability to cook 4 Rhino Dogs|tip You will need a cooking fire to do this.
		.collect 4 Rhino Dogs##34752 |q 13107
	step
		'Use your Empty Picnic Basket in your bags|use Empty Picnic Basket##43142
		.get 1 Mustard Dog Basket! |q 13107/1
	step
		goto Crystalsong Forest,26.9,45.5
		.click Crystalsong Carrot##4652+ 		
		.collect 4 Crystalsong Carrot##43148 |q 13102
	step
		goto Dragonblight,30.0,49.8
		.from Rabid Grizzly##26643+, Blighted Elk##26616+
		.collect 4 Chilled Meat##43013 |q 13102
	step
		'Use your Stew Cookpot in your bags|use Stew Cookpot##43147|tip You will need a cooking fire to do this.
		.get 1 Vegetable Stew |q 13102/1
	step
		goto Dalaran,36.6,27.8
		.talk Ranid Glowergold##28718
		..turnin Cheese for Glowergold##13103
	step
		goto Dalaran,48.6,37.5
		.talk Arille Azuregaze##29049
		..turnin Convention at the Legerdemain##13101
	step
		goto Dalaran,52.3,55.6
		.talk Orton Bennet##29527
		..turnin Infused Mushroom Meatloaf##13100
	step
		goto Dalaran,68.6,42.0
		.talk Archmage Pentarus##28160
		..turnin Mustard Dogs!##13107
	step
		'The entrance to the Dalaran sewers starts here|goto Dalaran,60.2,47.7,0.3|c|q 13102
	step
		goto Dalaran,35.5,57.6
		.talk Ajay Green##29532
		..turnin Sewer Stew##13102
]])

ZygorGuidesViewer:RegisterInclude("A_Critter_Gitter",[[
	step
		'You can either buy these from the Auction House or farm them
		.collect 10 Critter Bites##43004
		.' Click here to go farm for these |script ZGV:GotoStep("farm1")
		|next "gitter"
	step
	label farm1
		'You can either buy these from the Auction House or farm them
		.collect 20 Chilled Meat##43013
		.collect 10 Northern Spices##43007
		.' Click here to go farm for these |script ZGV:GotoStep("farm2")
		|next "make"
	step
	label farm2
		#include rideto_borean
	step
	title +Chilled Meat
		goto Borean Tundra,78.2,24.0
		.from Scourged Mammoth##25452+
		.collect 20 Chilled Meat##43013
	step
	title +Northern Spices
		'Use the Dalaran Cooking Dailies section of this guide to get Small Spice Bags
		.collect Spice Bag##44113 |n
		.collect 10 Northern Spices##43007
	step
	label make
	title +Critter Gitter
		'Get someone to make your 10 Critter Bites |tip Ask in your guild or in trade for someone to make these. Be sure to tip well! 
		.' Or... |only if skill("Cooking")>=400
		'Build a Basic Campfire |cast Basic Campfire##818 |only if skill("Cooking")>=400
		.create Critter Bites##57435,Cooking,10 total |only if skill("Cooking")>=400
		.collect 10 Critter Bites##43004
		.' Click here if you don't have the recipe |script ZGV:GotoStep("recipe") |only if skill("Cooking")>=400
		|next "gitter"
	step
	label recipe
		'Use the Dalaran Cooking Dailies section of this guide to earn 3 Dalaran Cooking Awards
		.earn 3 Dalaran Cooking Award##81 
	step
		goto Dalaran,70.2,37.2
		.talk Misensi##31031
		.buy 1 Recipe: Critter Bites##43029
	step
		.learn Critter Bites##57435
	step
		'Build a Basic Campfire |cast Basic Campfire##818 
		.create Critter Bites##57435,Cooking,10 total 
		.collect 10 Critter Bites##43004
	step
	label gitter
		|fly Thondroril River
	step
		goto Eastern Plaguelands,4.7,35.5
		'Target the Beetles, Scorpions, and Cockroaches and use the Critter Bites on them |use Critter Bites##43004
		|tip Use all 10 Critter Bites as quick as possible. These critters are scattered all throughout the tunnel.
		.' Coerce 10 critters to be your pet within 3 minutes or less |achieve 1781
	step
		'Congratulations! You've earned the Critter Gitter achievement!
]])

ZygorGuidesViewer:RegisterInclude("A_Dinner_Impossible",[[
	step
		'You can either buy these items from the auction house or use the Cooking professions guide to reach level 375 Cooking, otherwise you cannot complete this achievement. |only if skill("Cooking")<375
		'You can either buy these items from the auction house or farm them |only if skill("Cooking")>=375
		.collect 5 Great Feast##34753
		.' Click here to go farm these materials |script ZGV:GotoStep("farm1")
		|next usefeast
	step
		#include trainCooking |only if skill("Cooking")>=375
		.learn Great Feast##45554 |only if skill("Cooking")>=375
	step
	label farm1
		'You can either buy these items from the auction house or farm them 
		.collect 5 Chunk o'Mammoth##34736 
		.collect 5 Shoveltusk Flank##43009 
		.collect 5 Worm Meat##43010 
		.collect 10 Chilled Meat##43013 
		.' Click here to go farm these materials |script ZGV:GotoStep("farm2")
		|next makefeast
	step
	label farm2
		#include rideto_borean
	step
		goto 78.2,24.0
		.from Scourged Mammoth##25452+
		.collect 5 Chunk o'Mammoth##34736 
		.collect 10 Chilled Meat##43013 
	step
		goto 76.2,23.0
		.from Tundra Crawler##25454+
		.collect 5 Worm Meat##43010 
	step
		|fly Valgarde Port
	step
		goto 73.6,40.0
		.from Shoveltusk##23690+
		.collect 5 Shoveltusk Flank##43009 
	step
		#include hearth_hub
	step
	label makefeast
		'Have someone make the Great Feasts for you |tip Ask in your guild or in trade for someone to make these |only if skill("Cooking")<375
		'Create a basic campfire |cast Basic Campfire##818 |only if skill("Cooking")>=375
		.create 5 Great Feast##45554,Cooking,4 total |only if skill("Cooking")>=375
		.collect 5 Great Feast##34753
	step
	label usefeast
		'Push [H] on your keyboard to open your Player vs. Player interface 
		.' Click on Alterac Valley and then click on the Join Battle button on the lower left-hand corner of the Player vs. Player interface
		..' Wait for the que to pop-up in the middle of your screen and click on accept	
		..' Go to Alterac Valley |goto Alterac Valley |noway |c
	step
		'Use one of your Great Feasts |use Great Feast##34753 
		.' Present a Great Feast in Alterac Valley |achieve 1784/1 |tip You can leave the battleground now, but you will have to wait 15 minutes to complete the next step
	step
		'Push [H] on your keyboard to open your Player vs. Player interface 
		.' Click on Arathi Basin and then click on the Join Battle button on the lower left-hand corner of the Player vs. Player interface
		..' Wait for the que to pop-up in the middle of your screen and click on accept	
		..' Go to Arathi Basin |goto Arathi Basin |noway |c
	step
		'Use one of your Great Feasts |use Great Feast##34753 
		.' Present a Great Feast in Arathi Basin |achieve 1784/2 |tip You can leave the battleground now, but you will have to wait 15 minutes to complete the next step
	step
		'Push the [H] key on your keyboard to open your Player vs. Player interface 
		.' Click on Warsong Gulch and then click on the Join Battle button on the lower left-hand corner of the Player vs. Player interface
		..' Wait for the que to pop-up in the middle of your screen and click on accept	
		..' Go to Warsong Gulch |goto Warsong Gulch |noway |c
	step
		'Use one of your Great Feasts |use Great Feast##34753 
		.' Present a Great Feast in Warsong Gulch |achieve 1784/3 |tip You can leave the battleground now, but you will have to wait 15 minutes to complete the next step
	step
		'Push [H] on your keyboard to open your Player vs. Player interface 
		.' Click on Strand of the Ancients and then click on the Join Battle button on the lower left-hand corner of the Player vs. Player interface
		..' Wait for the que to pop-up in the middle of your screen and click on accept	
		..' Go to Strand of the Ancients |goto Strand of the Ancients |noway |c
	step
		'Use one of your Great Feasts |use Great Feast##34753 
		.' Present a Great Feast in Strand of the Ancients |achieve 1784/4 |tip You can leave the battleground now, but you will have to wait 15 minutes to complete the next step
	step
		'Push [H] on your keyboard to open your Player vs. Player interface 
		.' Click on Arathi Basin and then click on the Join Battle button on the lower left-hand corner of the Player vs. Player interface
		..' Wait for the que to pop-up in the middle of your screen and click on accept	
		..' Go to Eye of the Storm |goto Arathi Basin |noway |c
	step
		'Use one of your Great Feasts |use Great Feast##34753 
		.' Present a Great Feast in Eye of the Storm |achieve 1784/5 
	step
		Congratulations! You've earned the Dinner Impossible achievement!
]])

ZygorGuidesViewer:RegisterInclude("A_Captain_Rumsey's_Lager",[[ 
	step
		'Use the Shattrath or Dalaran Cooking Dailies, or the Fishing Dailies of this guide to get this recipe: |tip It's not always guarenteed to come from these daily prizes so be patient
		.collect 1 Recipe: Captain Rumsey's Lager##34834
	step
		.learn Captain Rumsey's Lager##45695 |use Recipe: Captain Rumsey's Lager##34834
	step
		goto Stormwind City,76.3,53.0
		.talk Reese Langston##1327
		.buy 1 Flask of Port##2593
		.buy 1 Flagon of Mead##2594
		.buy 1 Skin of Dwarven Stout##2596
	step
		.create Captain Rumsey's Lager##45695,Cooking,1 total
		.' Brew up Captain Rumsey's Lager |achieve 1801
	step
		'Congratulations! You've earned the Captain Rumsey's Lager achievement!
]])

ZygorGuidesViewer:RegisterInclude("A_MOP_Cooking_Dailies",[[
		'Proceeding to Cooking School Bell |condition completedq(31521) |only if completedq(31521)
		'Proceeding to Cooking Dailies |condition not completedq(31521) |only if not completedq(31521) |next dailies
	step
		'Use the Cooking School Bell in your Bags |use Cooking School Bell##86425
		'If you do not have this yet, you can buy it from Nam Ironpaw here: [Valley of the Four Winds 53.6,51.2]
		.talk Nomi##64337
		..accept Lesson 1: Sliced Peaches##31332 |daily
		'|modelnpc Nam Ironpaw##64395
	step
		goto Valley of the Four Winds 53.6,51.2
		.talk Sungshin Ironpaw##64231
		.buy 5 Pandaren Peach##74660 |q 31332/1
	step
		'Use the Cooking School Bell in your Bags |use Cooking School Bell##86425
		.talk Nomi##64337
		..turnin Lesson 1: Sliced Peaches##31332 |daily
	step
	label	dailies
		goto Valley of the Four Winds 53.4,51.6
		.talk Jian Ironpaw##58716
		..accept The Truffle Shuffle##30330
		.'_
		.' Click here if this quest is not available today |confirm
	step
		goto 53.0,51.3
		.talk Kol Ironpaw##58712
		..accept Fatty Goatsteak##30332 |daily
		.'_
		.' Click here if this quest is not available today |confirm
	step
		goto 52.5,51.7
		.talk Yan Ironpaw##58715
		..accept The Thousand-Year Dumpling##30328
		.'_
		.' Click here if this quest is not available today |confirm
	step
		goto 44.0,22.2 |n
		.' Enter the cave here |goto 44.0,22.2 <5 |noway |c
		|only if havequest(30328)
	step
		.click Preserved Vegetable##11054+
		.get 7 Preserved Vegetables |q 30328/1
		|only if havequest(30328)
	step
		goto 28.5,33.3
		.click Shadelight Truffle##11275+
		|tip You can find these aruond the trees here
		.get 8 Shadelight Truffle |q 30330/2
		.' Use your Shadelight Truffles in your bag |use Shadelight Truffle Spores##80127
		.' Plant 8 Shadelight Spores |q 30330/1
		|only if havequest(30330)
	step
		goto Valley of the Four Winds 29.7,41.4
		.from Stout Shaghorn##59139+
		.get 4 Fatty Goatsteak |q 30332/1
		|only if havequest(30332)
	step
		goto Valley of the Four Winds 53.4,51.6
		.talk Jian Ironpaw##58716
		..turnin The Truffle Shuffle##30330
	step
		goto 52.5,51.7
		.talk Yan Ironpaw##58715
		..turnin The Thousand-Year Dumpling##30328
	step
		goto 53.0,51.3
		.talk Kol Ironpaw##58712
		..turnin Fatty Goatsteak##30332
]])

ZygorGuidesViewer:RegisterInclude("Nomi_Dailies",[[
		.' Use Cooking School Bell##86425
		.' Talk to Nomi, standing next to you. |use
		..accept Lesson 1: Sliced Peaches##31332 |daily |or
		..accept Lesson 2: Instant Noodles##31333 |daily |or
		..accept Lesson 3: Toasted Fish Jerky |daily |or
		..accept Lesson 4: Dried Needle Mushrooms |daily |or
		..accept Lesson 5: Pounded Rice Cake |daily |or
	step
		goto Valley of the Four Winds 53.6,51.2
		.talk Sungshin Ironpaw##64231
		.buy 5 Pandaren Peach##31332 |q 31332/1
	step
		goto Valley of the Four Winds 53.6,51.2
		.talk Sungshin Ironpaw##64231
		.buy 5 Instant Noodles##74854 |q 31333/1
	step
		goto Valley of the Four Winds 53.6,51.2
		.talk Sungshin Ironpaw##64231
		.buy 5 Golden Carp##74866 |q 31334/1
	step
		goto Valley of the Four Winds 53.6,51.2
		.talk Sungshin Ironpaw##64231
		.buy 5 Needle Mushrooms##85583 |q 31335/1
	step
		goto Valley of the Four Winds 53.6,51.2
		.talk Sungshin Ironpaw##64231
		.buy 5 Rice##74851 |q 31336/1
	step
		.' Talk to Nomi, standing next to you.
		..turnin Lesson 1: Sliced Peaches##31332 |daily |or
		..turnin Lesson 2: Instant Noodles##31333 |daily |or
		..turnin Lesson 3: Toasted Fish Jerky |daily |or
		..turnin Lesson 4: Dried Needle Mushrooms |daily |or
		..turnin Lesson 5: Pounded Rice Cake |daily |or
]])

ZygorGuidesViewer:RegisterInclude("questgiver_SWCooking",[[
		goto Stormwind City,50.6,71.9
		.talk Robby Flay##42288
]])


--------------------------------------------------------------------------------------------------------------------------------------
-- Fishing
--------------------------------------------------------------------------------------------------------------------------------------

ZygorGuidesViewer:RegisterInclude("A_Old_Gnome_and_the_Sea",[[
	step
		|fly Lakeshire
	step
		goto Redridge Mountains,27.6,48.7
		.' Look for Sagefish Schools in the water.  Walk along the lake in Lakeshire until you find one if you're unable to see one at this spot.
		.' It looks like a swarm of fish.
		.' Use you fishing skill until your lure is inside of the school of fish, then catch one. |cast Fishing##7620
		.' Earn The Old Gnome and the Sea Achievement. |achieve 153
	step
		'Congratulations! You've earned The Old Gnome and the Sea achievement!
]])
ZygorGuidesViewer:RegisterInclude("A_The_Scavenger",[[
	step
		#include darkportal
	step
		|fly Telredor
	step
		goto 57.0,56.0
		.' Look for Steam Pump Flotsam in the water around this area and fish from it |cast Fishing##7620
		.' Fish from Steam Pump Flotsam |achieve 1257/1
	step
		#include hearth_hub
	step
		|fly Rebel Camp
	step
		goto 55.0,64.0
		.' Look for Schooner Wreckage around this area |tip You may need to fish from other pools to get this to show up |cast Fishing##7620
		.' Fish from Schooner Wreckage |achieve 1257/3
	step
		'Go to The Cape of Stranglethorn |goto The Cape of Stranglethorn 50,50 <500
	step
		goto 30.9,81.5
		.' Look for Bloodsail Wreckage around this area |tip You may need to fish from other pools to get this to show up |cast Fishing##7620
		.' Fish from Bloodsail Wreckage |achieve 1257/2
	step
		#include ratchet
	step
		|fly Gadgetzan 
	step
		goto 67.4,38.2
		.' Look for Floating Wreckage around this area |tip You may have to fish from other pools to get this to show up |cast Fishing##7620
		.' Fish from Floating Wreckage |achieve 1257/5
	step
		|fly Feathermoon
	step
		goto Feralas,63.1,51.5 
		.' Look for Waterlogged Wreckage around this area |tip You may have to fish from other pools to get this to show up |cast Fishing##7620
		.' Fish from Waterlogged Wreckage |achieve 1257/4
	step
		.' Successfully fish in each of the junk nodes |achieve 1257
	step
		'Congratulations! You've earned The Scavenger achievement!
]])
ZygorGuidesViewer:RegisterInclude("A_The_Fishing_Diplomat",[[
	step
		.' Go to Stormwind City |goto Stormwind City |noway |c
	step
		goto 69.0,92.2
		.' Use your fishing skill in the moat in front of Stormwind City |cast Fishing##7620
		.' Fish in Stormwind City |achieve 150/2
	step
		|fly Booty Bay
	step
		.' Ride the Boat to Ratchet |goto Northern Barrens |noway|c
	step
		goto Northern Barrens,70.2,4.4 |n
		.' Cross the bridge over into Orgrimmar |goto Orgrimmar
	step
		goto Orgrimmar,24.8,62.8
		.' Use your fishing skill in the pond |cast Fishing##7620
		.' Fish in Orgrimmar |achieve 150/1
	step
		.' Earn The Fishing Diplomat. |achieve 150
	step
		'Congratulations! You've earned The Fishing Diplomat achievement!
]])
ZygorGuidesViewer:RegisterInclude("A_Mr._Pinchy's_Magical_Crawdad_Box",[[
	step
		.' You will need track fishing in order to help you find Highland Mixed Schools.
		.learn Find Fish##43308  |next "HaveFishTracking"
		|confirm
	step
		.' Go to Stormwind |goto Stormwind City |noway |c
	step
		|fly Slabchisel's Survey
	step
		goto Stormwind City,49.0,87.4 |n
		.' Click the Swirling Portal to Blasted Lands |goto Blasted Lands
	step
		goto Blasted Lands,55.0,53.9
		.' Go through the Dark Portal |goto Hellfire Peninsula |noway|c
	step
		|fly Shattrath
	step
		.' Go east to Terokkar Forest |goto Terokkar Forest
	step
		goto Terokkar Forest,65.0,76.8
		.' Use your Find Fish ability to locate Highland Mixed Schools
		.' Use your fishing skill to fish in the pond |cast Fishing##7620
	step
		goto Terokkar Forest,63.4,76.9
		.' Fish around this large pool of water from Highland Mixed Schools.
		.' Additional Pools can be found at Lake Ere'Noru, [60.6,59.9]
		.' and Lake Jorune, [45.0,40.5]
		.collect Magical Crawdad Box##27445
		.' Earn the Mr. Pinchy's Magical Crawdad Box achievement. |achieve 726
	step
		'Congratulations! You've earned the Mr. Pinchy's Magical Crawdad Box achievement!
]])
ZygorGuidesViewer:RegisterInclude("A_Fishing_25_Fish",[[
	step
		goto Stormwind City,54.9,69.7
		.talk Catherine Leland##5494
		.buy 1 Fishing Pole##6256
		.buy 10 Shiny Bauble##6529
	step
		.' Equip your Fishing Pole |use Fishing Pole##6256
		.' Use the Shiny Bauble to temporarily increase your Fishing skill, to make it easier to catch fish |use Shiny Bauble##6529 |tip If your Shiny Bauble Fishing skill boost expires, you can buy more Shiny Baubles to help you fish.
		.' Stand on the end of this wooden dock
		.' Use your Fishing skill to fish in the water all around the wooden dock |cast Fishing##7620
		.' Catch 25 Fish. |achieve 1556
	step
		'Congratulations! You've earned the 25 Fish achievement!
]])
ZygorGuidesViewer:RegisterInclude("A_Fishing_50_Fish",[[
	step
		goto Stormwind City,54.9,69.7
		.talk Catherine Leland##5494
		.buy 1 Fishing Pole##6256
		.buy 10 Shiny Bauble##6529
	step
		.' Equip your Fishing Pole |use Fishing Pole##6256
		.' Use the Shiny Bauble to temporarily increase your Fishing skill, to make it easier to catch fish |use Shiny Bauble##6529 |tip If your Shiny Bauble Fishing skill boost expires, you can buy more Shiny Baubles to help you fish.
		.' Stand on the end of this wooden dock
		.' Use your Fishing skill to fish in the water all around the wooden dock |cast Fishing##7620
		.' Catch 50 Fish. |achieve 1557
	step
		'Congratulations! You've earned the 50 Fish achievement!
]])
ZygorGuidesViewer:RegisterInclude("A_Fishing_100_Fish",[[
	step
		goto Stormwind City,54.9,69.7
		.talk Catherine Leland##5494
		.buy 1 Fishing Pole##6256
		.buy 10 Shiny Bauble##6529
	step
		.' Equip your Fishing Pole |use Fishing Pole##6256
		.' Use the Shiny Bauble to temporarily increase your Fishing skill, to make it easier to catch fish |use Shiny Bauble##6529 |tip If your Shiny Bauble Fishing skill boost expires, you can buy more Shiny Baubles to help you fish.
		.' Stand on the end of this wooden dock
		.' Use your Fishing skill to fish in the water all around the wooden dock |cast Fishing##7620
		.' Catch 100 Fish. |achieve 1558
	step
		'Congratulations! You've earned the 100 Fish achievement!
]])
ZygorGuidesViewer:RegisterInclude("A_Fishing_250_Fish",[[
	step
		goto Stormwind City,54.9,69.7
		.talk Catherine Leland##5494
		.buy 1 Fishing Pole##6256
		.buy 10 Shiny Bauble##6529
	step
		.' Equip your Fishing Pole |use Fishing Pole##6256
		.' Use the Shiny Bauble to temporarily increase your Fishing skill, to make it easier to catch fish |use Shiny Bauble##6529 |tip If your Shiny Bauble Fishing skill boost expires, you can buy more Shiny Baubles to help you fish.
		.' Stand on the end of this wooden dock
		.' Use your Fishing skill to fish in the water all around the wooden dock |cast Fishing##7620
		.' Catch 250 Fish. |achieve 1559
	step
		'Congratulations! You've earned the 250 Fish achievement!
]])
ZygorGuidesViewer:RegisterInclude("A_Fishing_500_Fish",[[
	step
		goto Stormwind City,54.9,69.7
		.talk Catherine Leland##5494
		.buy 1 Fishing Pole##6256
		.buy 10 Shiny Bauble##6529
	step
		.' Equip your Fishing Pole |use Fishing Pole##6256
		.' Use the Shiny Bauble to temporarily increase your Fishing skill, to make it easier to catch fish |use Shiny Bauble##6529 |tip If your Shiny Bauble Fishing skill boost expires, you can buy more Shiny Baubles to help you fish.
		.' Stand on the end of this wooden dock
		.' Use your Fishing skill to fish in the water all around the wooden dock |cast Fishing##7620
		.' Catch 500 Fish. |achieve 1560
	step
		'Congratulations! You've earned the 500 Fish achievement!
]])
ZygorGuidesViewer:RegisterInclude("A_Fishing_1000_Fish",[[
	step
		goto Stormwind City,54.9,69.7
		.talk Catherine Leland##5494
		.buy 1 Fishing Pole##6256
		.buy 10 Shiny Bauble##6529
	step
		.' Equip your Fishing Pole |use Fishing Pole##6256
		.' Use the Shiny Bauble to temporarily increase your Fishing skill, to make it easier to catch fish |use Shiny Bauble##6529 |tip If your Shiny Bauble Fishing skill boost expires, you can buy more Shiny Baubles to help you fish.
		.' Stand on the end of this wooden dock
		.' Use your Fishing skill to fish in the water all around the wooden dock |cast Fishing##7620
		.' Catch 1000 Fish. |achieve 1561
	step
		'Congratulations! You've earned the 1000 Fish achievement!
]])
ZygorGuidesViewer:RegisterInclude("A_Fishing_1-1000_Fish",[[
	step
		goto Stormwind City,54.9,69.7
		.talk Catherine Leland##5494
		.buy 1 Fishing Pole##6256
		.buy 10 Shiny Bauble##6529
	step
		.' Equip your Fishing Pole |use Fishing Pole##6256
		.' Use the Shiny Bauble to temporarily increase your Fishing skill, to make it easier to catch fish |use Shiny Bauble##6529 |tip If your Shiny Bauble Fishing skill boost expires, you can buy more Shiny Baubles to help you fish.
		.' Stand on the end of this wooden dock
		.' Use your Fishing skill to fish in the water all around the wooden dock |cast Fishing##7620
		.' Catch 25 Fish. |achieve 1556
		.' Catch 50 Fish. |achieve 1557
		.' Catch 100 Fish. |achieve 1558
		.' Catch 250 Fish. |achieve 1559
		.' Catch 500 Fish. |achieve 1560
		.' Catch 1000 Fish. |achieve 1561
	step
		'Congratulations! You've earned the 1000 Fish achievement!
]])
ZygorGuidesViewer:RegisterInclude("A_Old_Crafty_and_Ironjaw",[[
	step
		.' In order to Earn this achievement, you will need to fish from any pool of water in Orgrimmar.
		.' The higher level your fishing skill, the better.  You will catch less junk the higher you are, which gives you a higher chance to catch Old Crafty.
		.' Click here when you're ready to proceed to the next step in the guide |confirm
	step
		.' Go to Stormwind |goto Stormwind City
	step
		|fly Booty Bay
	step
		.' Ride the boat to Ratchet |goto Northern Barrens
	step
		goto Northern Barrens,70.2,4.4 |n
		.' Cross the bridge over into Orgrimmar |goto Orgrimmar
	step
		goto Orgrimmar,59.3,39.9
		.' Use your fishing ability in the stream of water. |cast Fishing##7620
		.collect Old Crafty##34486
	step
		.' Earn the Old Crafty Achievement. |achieve 1836
	step
		.' Go to Stormwind |goto Stormwind City
	step
		|fly The Great Forge
	step
		goto Ironforge,47.6,14.2
		.' Use your fishing ability in the pond. |cast Fishing##7620
		.collect Old Ironjaw##34484
	step
		.' Earn the Old Ironjaw Achievement. |achieve 1837
	step
		'Congratulations! You've earned the Old Ironjaw achievement!
		'Congratulations! You've earned the Old Crafty achievement!
]])
ZygorGuidesViewer:RegisterInclude("A_The_Lurker_Above",[[
	step
		.' In order to earn this achievement, you will need to be in a raid group.
		.' You will also need to be at least Level 70.
		.' It would be best if you picked up Elixirs of Water Walking 
		.' You won't need a certain level of fishing, but the high level you are, the higher change you have of fishing up 'The Lurker Below'.
		.' Click here after you  have read the requirements for this achievement. |confirm
	step
		goto Stormwind City,49.0,87.4 |n
		.' Click the Swirling Portal to Blasted Lands |goto Blasted Lands
	step
		goto Blasted Lands,55.0,53.9
		.' Go through the Dark Portal |goto Hellfire Peninsula |noway|c
	step
		|fly Telredor
	step
		goto Zangarmarsh,50.4,41.0 |n
		.' Swim down underwater through the tube to the Coilfang Reservoir |goto 51.9,38.0 |c
	step
		.' Go North into Serpent Shrine Cavern |goto Serpentshrine Cavern
	step
		 goto Serpentshrine Cavern,13.5,59.6
		 .' Ride the elevator down
		.' Click here once you're at the bottom and off of the elevator |confirm
	step
		goto Serpentshrine Cavern,19.6,68.5
		.' Walk up the ramp and ride the elevator up.
		.' Click here once you ride the elevator up. |confirm
	step
		goto Serpentshrine Cavern,22.7,72.8 |n
		.' Use your water walking potion and jump into the water. |use Elixir of Water Walking##8827
		.' If you jump into the water without water walking, fish will attack you and you will have to kill them before using your Elixir.
		.' Walk over to the wooden circle with the Strange pool in the center |goto Serpentshrine Cavern,38.6,59.5 |c
	step
		.' Once you're there, use your fishing ability and make sure that your lure lands in the Strange Pool. |cast Fishing##7620
		.' Earn The Lurker Above Achievement. |achieve 144
	step
		'Congratulations! You've earned The Lurker Above achievement!
]])
ZygorGuidesViewer:RegisterInclude("A_Old_Man_Barlowned",[[
	step
		.' In order the earn this achievement, you will need to have completed these 5 daily quests:
		.' Crcolisks in the City |achieve 905/1
		.' Bait Bandits |achieve 905/2
		.' Felblood Fillet |achieve 905/3
		.' The One That Got Away |achieve 905/4
		.' Shrimpin' Ain't Easy |achieve 905/5
		.' Click here to proceed |confirm
	step
		goto Terokkar Forest,38.7,12.8
		.talk Old Man Barlo##25580
		.' You will only be able to pick up 1 of 5 dailies per day.
		.accept Crocolisks in the City##11665 |or |daily
		.accept Bait Bandits##11666 |or |daily
		.accept Felblood Fillet##11669 |or |daily
		.accept The One That Got Away##11667 |or |daily
		.accept Shrimpin' Ain't Easy##11668 |or |daily
	step
		.' Go West to Shattrath City |goto Shattrath City
		only if havequest(11665)
	step
		goto Shattrath City,57.2,48.2
		.' Click the Shattrath Portal to Stormwind |goto Stormwind City
		only if havequest(11665)
	step
		goto Stormwind City,54.9,69.7
		.' Use your Fishing skill to fish in the water all around the wooden dock |cast Fishing##7620
		..get Baby Crocolisk##34864 |q 11665/1
		only if havequest(11665)
	step
		goto Stormwind City,49.0,87.4 |n
		.' Click the Swirling Portal to Blasted Lands |goto Blasted Lands
		only if havequest(11665)
	step
		goto Blasted Lands,55.0,53.9
		.' Go through the Dark Portal |goto Hellfire Peninsula |noway|c
		only if havequest(11665)
	step
		|fly Shattrath
		only if havequest(11665)
	step
		.' Go Northeast to Terokkar Forest |goto Terokkar Forest |noway|c
		only if havequest(11665)
	step
		goto Terokkar Forest,51.8,37.2
		.' Fish in the river here |cast Fishing##7620
		..get Blackfin Darter##34865 |q 11666/1
		only if havequest(11666)
	step
		|fly Telaar
		only if havequest(11667)
	step
		goto Nagrand,37.4,47.1
		.' Use your fishing ability to fish in the lake. |cast Fishing##7620
		..get World's Largest Mudfish##34868 |q 11667/1
		only if havequest(11667)
	step
		.' Go North to Zangarmarsh |goto Zangarmarsh
		only if havequest(11668)
	step
		goto Zangarmarsh,77.9,79.7
		.' Fish from the Lake here |cast Fishing##7620
		.'Click the Bloated Barbed Gill Trout in your bags|use Bloated Barbed Gill Trout##35313
		..get Giant Freshwater Shrimp##34866 |q 11668/1
		only if havequest(11668)
	step
		|fly Wildhammer Stronghold
		only if havequest(11669)
	step
		goto Shadowmoon Valley,18.9,22.2
		.' Use your fishing ability in the green lava. |cast Fishing##7620
		..get Monstrous Felblood Snapper |q 11669/1
		only if havequest(11669)
	step
		|fly Allerian Stronghold
		only if havequest(11669)
	step
		goto Terokkar Forest,38.7,12.8
		.talk Old Man Barlo##25580
		.' You will only be able to pick up 1 of 5 dailies per day.
		.turnin Crocolisks in the City##11665 |or |daily
		.turnin Bait Bandits##11666 |or |daily
		.turnin Felblood Fillet##11669 |or |daily
		.turnin The One That Got Away##11667 |or |daily
		.turnin Shrimpin' Ain't Easy##11668 |or |daily	
	step
		.' Crocolisks in the City |achieve 905/1
		.' Bait Bandits |achieve 905/2
		.' Felblood Fillet |achieve 905/3
		.' The One That Got Away |achieve 905/4
		.' Shrimpin' Ain't Easy |achieve 905/5
	step
		.' Earn the Old Man Barlowned Achievement. |achieve 905
	step
		'Congratulations! You've earned the Old Man Barlowned achievement!
]])
ZygorGuidesViewer:RegisterInclude("A_Outland_Angler",[[
	step
		.' In order to earn this achievement, you will need to fish from 6 different pools of fish in the Outlands.
		.' Click here to proceed. |confirm
	step
		.' Go to Stormwind |goto Stormwind City |noway |c
	step
		goto Stormwind City,49.0,87.4 |n
		.' Click the Swirling Portal to Blasted Lands |goto Blasted Lands
	step
		goto Blasted Lands,55.0,53.9
		.' Go through the Dark Portal |goto Hellfire Peninsula |noway|c
	step
		|fly Telredor
	step
		goto Zangarmarsh,72.5,59.9
		.' Use your fishing skill on Sporefish School's around Umberfen Lake |cast Fishing##7620
		.' Fish from a Sporefish School |achieve 1225/6
	step
		|fly Allerian Stronghold
	step
		goto Terokkar Forest,60.8,59.0 |n
		.' You will need to fly to reach the Highland Mixed Schools.  There are two more spots you can check for them below:
		.' The large Skettis Lake |goto 66.4,80.0 |n
		.' Lake Jorune |goto 45.9,39.5 |n
		.' Fish from a Highland Mixed School |achieve 1225/5
	step
		map Terokkar Forest
		path follow loose;loop off;ants straight // this stays until the end of the guide.
		path	 60.5,51.9	62.9,48.1	63.6,45.0
		path	 60.0,36.5
		.' Follow the stream until you find a School of Darters or Brackish Mixed School in the river.
		.' Use your fishing skill to fish from both Brackish Mixed or School of Darters
		.' Fish from a School of Darters |achieve 1225/4
		.' Fish from a Brackish Mixed School |achieve 1225/1
	step
		|fly Telaar
	step
		map Nagrand
		path follow loose;loop off;ants straight // this stays until the end of the guide.
		path	 47.2,44.4	48.7,45.3	51.1,43.2
		path	 50.9,47.6	48.8,48.1	47.4,48.6
		path	 46.5,47.6
		.' Follow the stream until you find a Bluefish and a Mudfish School.
		.' Use your fishing skill to fish from both a Bluefish and a Mudfish School |cast Fishing##7620
		.' Fish from a Bluefish School |achieve 1225/2
		.' Fish from a Mudfish School |achieve 1225/3
	step
		.' Earn the Outland Angler Achievement. |achieve 1225
	step
		'Congratulations! You've earned the Outland Angler achievement!
]])
ZygorGuidesViewer:RegisterInclude("A_Northrend_Angler_Angler",[[
	step
		.' In order to earn this achievement, you will have to fish from 10 different schools of fish in Northrend.
		.' Click here to proceed. |confirm
	step
		.' Borean Man O'War School |achieve 1517/1
		.' Dragonfin Angelfish School |achieve 1517/2
		.' Glacial Salmon School |achieve 1517/3
		.' Imperial Manta Ray School |achieve 1517/4
		.' Musselback Sculpin School |achieve 1517/5
		.' Deep Sea Monsterbelly School |achieve 1517/6
		.' Fangtooth Herring School |achieve 1517/7
		.' Glassfin Minnow School |achieve 1517/8
		.' Moonglow Cuttlefish School |achieve 1517/9
		.' Neettlefish School |achieve 1517/10
		.' Click here to proceed. |confirm
	step
		goto Stormwind City,18.2,25.4 |n
		.' Ride the boat to Borean Tundra |goto Borean Tundra |noway|c
	step
		map Borean Tundra
		path follow loose;loop off;ants straight // this stays until the end of the guide.
		path	54.3,75.2	49.5,79.0	45.8,80.9
		path	43.4,78.5	40.3,77.0
		.' Follow the coast until you find and Imperial Manta Ray and a Borean Man O' War School.  You mayb need to fish out other schools in order to force new ones to spawn.
		.' Fish from an Imperial Manta Ray School |achieve 1517/4 |cast Fishing##7620
		.' Fish from a Borean Man O' War School |achieve 1517/1 |cast Fishing##7620
	step
		goto Borean Tundra,51.2,42.4
		.' You will be able to find Musselback Sculpin Schools around Lake Kum'uya.
		.' Fish from a Musselback Scuplin School |achieve 1517/5
	step
		goto Borean Tundra,82.7,59.5
		.' Around the Glacier, you will find Schools of Moonglow Cuttlefish and Deep Sea Monsterbelly.
		.' Fish from a Deep Sea Monsterbelly School |achieve 1517/6 |cast Fishing##7620
		.' Fish from a Moonglow Cuttlefish School |achieve 1517/9 |cast Fishing##7620
	step
		|fly River's Heart
	step
		goto Sholazar Basin,46.8,64.7
		.' All around River's Heart, you will find schools of Nettlefish.
		.' Fish from a Nettlefish School |achieve 1517/10 |cast Fishing##7620
	step
		|fly Moa'ki Harbor
	step
		goto Dragonblight,42.3,67.8
		.' You can find Dragonfin Angelfish School all along Lake Indu'le.
		.' Fish from a Dragonfin Angelfish School |achieve 1517/2 |cast Fishing##7620
	step
		|fly Windrunner's Overlook
	step
		goto Crystalsong Forest,49.0,54.1
		.' Along the Twilight Rivulet you will find schools of Glassfin Minnow.
		.' Fish from a Glassfin Minnow School |achieve 1517/8 |cast Fishing##7620
	step
		|fly Amberpine Lodge
	step
		map Grizzly Hills
		path follow loose;loop off;ants straight // this stays until the end of the guide.
		path	26.4,64.9	28.6,60.8	29.5,55.8
		.' You can find Schools of Glacial Salmon along this river.
		.' Fish from a Glacial Salmon School |achieve 1517/3 |cast Fishing##7620
	step
		map Howling Fjord
		path follow loose;loop off;ants straight // this stays until the end of the guide.
		path	59.5,58.8	60.8,60.3	60.6,64.5
		.' You can find Fangtooth Herring Schools along Daggercap Bay.
		.' Fish from a Fangtooth Herring School |achieve 1517/7 |cast Fishing##7620
	step
		.' Earn the Northrend Angler Achievement. |achieve 1517 |cast Fishing##7620
	step
		'Congratulations! You've earned the Northrend Angler achievement!
]])
ZygorGuidesViewer:RegisterInclude("A_Chasing_Marcia",[[
	daily
	step
		.' In order to earn this Achievement, you will have to complete 5 daily quests.
		.' You will only be able to accept one per day, so this may take longer than 5 days to achieve.
		.' Click here to proceed |confirm
	step
		'Below is a list of the 5 daily quests you will need to complete.
		.' The Ghostfish |achieve 3217/1
		.' Jewel Of The Sewers |achieve 3217/2
		.' Dangerously Delicious |achieve 3217/3
		.' Blood is Thicker |achieve 3217/4
		.' Disarmed! |achieve 3217/5
		.' Click to proceed |confirm
	step
		goto Dalaran,53.1,64.9
		.talk Marcia Chase##28742
		.' You will only be able to accept, and turn in, 1 of these 5 daily quests per day:
		..accept Blood Is Thicker##13833 |daily |or
		..accept Dangerously Delicious##13834 |daily |or
		..accept Jewel Of The Sewers##13832 |daily |or
		..accept Disarmed!##13836 |daily |or
		..accept The Ghostfish##13830 |daily |or
	step
		goto Borean Tundra,54.6,41.8
		.from Wooly Mammoth##24614, Mammoth Calf##24613, Wooly Mammoth Bull##25743
		.' Get the Animal Blood buff|havebuff Ability_Seal|q 13833
		only if havequest (13833)
	step
		goto 53.7,42.9
		.' Walk into the water here to create a pool of blood
		.' Fish in the pool of blood
		.get 5 Bloodtooth Frenzy |q 13833/1
		only if havequest (13833)
	step
		goto Wintergrasp,79.9,41.8
		.' Fish in this big lake
		.get 10 Terrorfish |q 13834/1
		only if havequest (13834)
	step
		'The entrance to the Dalaran sewers starts here|goto Dalaran,60.2,47.7,0.3|c|q 13832
		only if havequest (13832)
	step
		goto 44.4,66.2
		.' Fish in the water in the Dalaran sewers
		.get 1 Corroded Jewelry |q 13832/1
		only if havequest (13832)
	step
		'Leave the Dalaran sewers|goto Dalaran,60.2,47.7,0.3|c|q 13832
		only if havequest (13832)
	step
		goto Dalaran,64.8,60.8
		.' Stand on the this circular platform and fish in the water here
		.collect Bloated Slippery Eel##45328|n
		.' Click the Bloated Slippery Eel in your bags|use Bloated Slippery Eel##45328
		.get 1 Severed Arm |q 13836/1
		only if havequest (13836)
	step
		goto Sholazar Basin,49.3,61.8
		.' Fish in the water here
		.collect 1 Phantom Ghostfish##45902|n
		.' Click the Phantom Ghostfish in your bags to eat it|use Phantom Ghostfish##45902
		.' Discover the Ghostfish mystery. |q 13830/1
		only if havequest (13830)
	step
		goto Dalaran,53.1,64.9
		.talk Marcia Chase##28742
		.' You will only be able to accept, and turn in, 1 of these 5 daily quests per day:
		..turnin Blood Is Thicker##13833
		..turnin Dangerously Delicious##13834
		..turnin Jewel Of The Sewers##13832
		..turnin The Ghostfish##13830
	step
		goto Dalaran,36.6,37.3
		.talk Olisarra the Kind##28706
		..turnin Disarmed!##13836
	step
		.' Earn the Chasing Marcia Achievement. |achieve 3217
	step
		'Congratulations! You've earned the Chasing Marcia achievement!
]])
ZygorGuidesViewer:RegisterInclude("A_Fish_Don't_Leave_Footprints",[[
	step
		.' Go to Stormwind City. |goto Stormwind City |noway|c
	step
		|fly Rebel Camp
	step
		goto Northern Stranglethorn,31.0,37.7
		.' Use your fishing skill fish from Schooner Wreckage along The Savage Coast.  You may need to fish out the other schools of fish to get them to spawn. |cast Fishing##7620
		.collect Weather-Beaten Journal##34109
		.' Use the Weather-Beaten Journal. |use Weather-Beaten Jounral##34109
		.' Earn the Fish Don't Leave Footprints achievement. |achieve 1243
	step
		.' Congratulations, you have earned the Fish Don't Leave Footprints achievement!
]])
ZygorGuidesViewer:RegisterInclude("A_The_Coin_Master",[[
	step
		.' This guide will help you earn the achievements A Penny For Your Thoughts, Silver in the City, There's Gold In That There Fountain, and finally, The Coin Master.
		.' Click here to proceed. |confirm
	step
		.' Here is your current progression on The Coin Master.
		.' A Penny For Your Thoughts. |achieve 2096/1
		.' Silver in the City. |achieve 2096/2
		.' There's a Gold In That There Fountain. |achieve 2096/3
		.' Click here to proceed. |confirm
	step
		#include rideto_borean
	step
		|fly Dalaran
	step
		goto Dalaran,52.6,66.5
		.' This fountain is where you will be fishing from to earn these achievements. Use your fishing skills to fish up Copper, Silver and Gold Coins. |cast Fishing##7620
		.' Earn the A Penny For Your Thoughts achievement. |achieve 2096/1
		.' Earn the Silver in the City achievement. |achieve 2096/2
		.' Earn the There's Gold In That There Fountain achievement. |achieve 2096/3
		.' This achievement takes a lot of time, so try to be patient.
	step
		.' Earn the A Penny For Your Thoughts Achiement. |achieve 2094
		.' Earn the Silver in the City achievement. |achieve 2095
		.' Earn the There's Gold In That There Fountain achievement. |achieve 1957
		.' Earn The Coin Master achievement. |achieve 2096
	step
		.' Congratulation, you have earned The Coin Master achievement!
]])
ZygorGuidesViewer:RegisterInclude("A_Master_Angler_of_Azeroth",[[
	step
		'To earn this Achievement, you need to go to Booty Bay, accept this quest and be the first to complete it.
		.' You can start this quest every _Sunday_ from _2pm to 4pm SERVER TIME_. 
		|confirm
	step
		goto Stormwind City,55.0,69.7
		.talk Catherine Leland##5494
		.buy 1 Fishing Pole##6256
		.buy 10 Shiny Bauble##6529
		.' Or
		|confirm
	step
		|fly Booty Bay
	step
		goto The Cape of Stranglethorn,41.7,73.0
		.talk Riggle Bassbait##15077
		..accept Master Angler##8193
	step
		goto The Cape of Stranglethorn,39.1,57.9
		.' Make sure you have you're fishing pole equipped and fish in these area's for Tasty Fish |use Fishing Pole##6256
		.' Attach your Shiny Bauble to your fishing pole to increase your fishing skill slightly |use Shiny Bauble##6529
		.get 40 Speckled Tastyfish##19807 |q 8193
		.' You can find more schools of fish here: [37.9,55.6]
		.' Here [36.3,53.8]
		.' Here [36.1,50.9]
		.' And here [36.2,47.7]
	step
		goto The Cape of Stranglethorn,41.7,73.0
		.talk Riggle Bassbait##15077
		..turnin Master Angler##8193
		.' Be the first to turn in this quest to earn the achievement
		.' Earn Master Angler Achievement |achieve 306
]])
ZygorGuidesViewer:RegisterInclude("A_Master_Angler_of_Northrend",[[
	step
		'To earn this Achievement, you need to go to Northrend, catch a _Blacktip Shark_ and be the first to turn it in.
		.' You can start fishing every _Saturday_ at _2pm SERVER TIME_, you will hear the NPC yell out that the 
		.' contest has started, make sure you are next to a school of fish, and start fishing!
		|confirm
	step
		goto Stormwind City,55.0,69.7
		.talk Catherine Leland##5494
		.buy 1 Fishing Pole##6256
		.buy 10 Shiny Bauble##6529
		.' Or
		|confirm
	step
		#include "rideto_borean"
	step
		|fly Dalaran
	step
		goto Dalaran,44.7,63.3
		.talk Isirami Fairwind##32413
		.home Dalaran
	step
		goto Dalaran,52.4,65.2
		.talk Elder Clearwater##38294
		.turnin Kalu'ak Fishing Derby##24803
	step
		goto Dalaran,56.0,46.8
		.click Teleport to Violet Stand Crystal##8070
		.' Teleport to the Violet Stand |goto Crystalsong Forest |noway |c
	step
		map Crystalsong Forest
		path follow loose;loop off;ants straight
		path	22.5,35.4
		path	25.2,43.4	29.6,45.2	34.0,47.9
		path	38.7,54.4	44.8,56.7	50.3,56.4
		.' Follow this path and turn your _Track Fishing_ on.
		.' Fish up a _Blacktip Shark_ from any school of fish.|use Fishing Pole##6256
		.' Attach your Shiny Bauble to your fishing pole to increase your fishing skill slightly |use Shiny Bauble##6529
		.collect Blacktip Shark##50289
	step
		.' Hearth to Dalaran |goto Dalaran |use Hearthstone##6948 |noway |c 
		.' Or
		goto Crystalsong Forest,15.7,42.4
		.click Teleport to Dalaran Crystal##8070
		.' Teleport to Dalaran |goto Dalaran |noway |c 
	step
		goto Dalaran,52.4,65.2
		.talk Elder Clearwater##38294
		.turnin Kalu'ak Fishing Derby##24803
		.' If you are the first to turn in this quest you will get an achievement
		.' Earn the Achievement Master Angler of Azeroth |achieve 306
]])
ZygorGuidesViewer:RegisterInclude("Turtles_All_the_Way_Down",[[
	step
		.' In order to earn this achievement, you will need to fish from any school of fish within a Northrend or Cataclysm Zone.
		.' Click here to proceed. |confirm
	step
		#include rideto_borean
	step
		|fly Windrunner's Overlook
	step
		goto Crystalsong Forest,48.7,54.0
		.' Fish from school of fish along the river here. |cast Fishing##7620
		.' You will only be able to catch the sea turtle from fish schools.
		.collect Sea Turtle##46109
		.' Use the Sea Turtle. |use Sea Turtle##46109
		.' Earn the Turtles All the Way Down achievement. |achieve 3218
	step
		.' Congratulations, you have earned the Turtles All the Way Down achievement.
]])


-----------------------------------------------------------------------------------------
-- Dailies
-----------------------------------------------------------------------------------------

ZygorGuidesViewer:RegisterInclude("A_SSO_PreQuest_Dailies",[[
	daily
	step
		|fly Shattrath
	step
		goto Shattrath City,49.1,42.5
		.talk Exarch Nasuun##24932
		..accept Maintaining the Sunwell Portal##11514 |daily
	step
		goto 62.8,36.0
		.talk Lord Torvos##25140
		..accept Sunfury Attack Plans##11877 |daily
	step
		goto 62.8,35.6
		.talk Emissary Mordin##19202
		..accept Gaining the Advantage##11875 |daily
		only if skill("Skinning")>300 or skill("Mining")>300 or skill("Herbalism")>300
	step
		goto Shattrath City,61.7,52.1
		.talk Harbinger Haronem##19475
		..accept The Multiphase Survey##11880 |daily
	step
		|fly Telaar
	step
		goto Nagrand,50.3,40.4
		.from Clefthoof Bull##17132+,Talbuk Thorngrazer##17131+,Wild Elekk##18334+
		.' Skin their corpses in order to collect the Nether Residue.
		.get 8 Nether Residue##35229 |q 11875/1
		only if skill("Skinning")>=300
	step
		goto 40.8,31.6
		.' Mine inside the cave and collect Nether Residue.
		.collect 8 Nether Residue##35229 |q 11875/1
		.' You can check [Nagrand,50.0,56.6] for more Mining Nodes.
		only if skill("Mining")>=300
	step
		goto Nagrand,38.3,65.3
		.' Fly around the Spirit Fields looking for Fiery Red Orbs on the ground.
		.' Use your Multiphase Spectrographic Goggles on the Orbs. |use Multiphase Spectrographic Goggles##35233
		.' 6 Multiphase Readings Taken |q 11880/1
	step
		|fly Evergrove
	step
		goto Blade's Edge Mountains,54.0,18.1
		.from Unbound Ethereal##22244+,Bash'ir Raider##22241+,Bash'ir Arcanist##22243+,Bash'ir Spell-Thief##22242+
		.get 1 Bash'ir Phasing Device |q 11514
		'Use the Bash'ir Phasing Device. |use Bash'ir Phasing Device##34248
		.' Collect 10 Smuggled Mana Cell |q 11514/1
	step
		|fly Area 52
	step
		goto Netherstorm,25.9,66.8
		.from Sunfury Bloodwarder##18853+,Sunfury Captain##19453+,Sunfury Magister##18855+,Sunfury Geologist##19779+,Sunfury Astromancer##19643
		.get Sunfury Attack Plans |q 11877/1
	step
		|fly Shattrath
	step
		goto Shattrath City,62.8,36.0
		.talk Lord Torvos##25140
		.turnin Sunfury Attack Plans##11877 |daily
	step
		goto 62.8,35.6
		.talk Emissary Mordin##19202 
		.turnin Gaining the Advantage##11875 |daily
	step
		goto 61.6,52.2
		.talk Harbinger Haronem##19475
		.turnin The Multiphas Survey##11880 |daily
	step
		goto 49.1,42.5
		.talk Exarch Nasuun##24932 |daily
		.turnin Maintaining the Sunwell Portal##11514 |daily
	step
		goto Shattrath City,48.6,42.0 |n
		.' Click the Shattrath Portal to Isle of Quel'Danas. |goto Isle of Quel'Danas
	step
		goto Isle of Quel'Danas,47.5,35.4
		.talk Astromancer Darnarian##25133
		..accept Know Your Ley Lines##11547 |daily
	step
		goto 47.5,35.1
		.talk Battlemage Arynna##25057
		..accept The Air Strikes Must Continue##11533 |daily
	step
		goto 47.6,35.1
		.talk Harbinger Inuuro##25061
		..accept The Battle Must Go On##11537 |daily
	step
		goto 48.8,37.2
		.talk Anchorite Ayuri##25112
		..accept Your Continued Support##11548 |daily
		.' This quest requires that you give 10 Gold in trade of reputation with the Shattered Sun Offensive, you should be able to turn it in immidiately.
		..turnin Your Continued Support##11548 |daily
	step
		goto 50.6,39.0
		.talk Vindicator Kaalan##25108
		..accept Keeping the Enemy at Bay##11543 |daily
	step
		goto 49.3,40.4
		.talk Magister Ilastar##25069
		..accept Crush the Dawnblade##11540 |daily
	step
		goto 50.6,40.8
		.talk Smith Hauthaa##25046
		..accept Don't Stop Now....##11536 |daily
		..accept Ata'mal Armaments##11544 |daily
	step
		goto 51.5,32.5
		.talk Mar'nah##24975
		..accept Rediscovering Your Roots##11521 |daily
		..accept Open for Business##11546 |daily
	step
		goto 53.8,34.3
		.talk Captain Valindria##25088
		..accept Disrupt the Greengill Coast##11541 |daily
	step
		goto 47.5,30.5
		.talk Captain Theris Dawnhearth##24967
		..accept Arm the Wards!##11523 |daily
		..accept The Missing Magistrix##11526
	step
		goto 47.1,30.7
		.talk Vindicator Xayann##24965
		..accept Further Conversions##11525 |daily
	step
		goto Isle of Quel'Danas,44.3,28.5
		.from Wretched Fiend##24966+
		.collect 4 Mana Remnants##34338 |q 11523 |c
		.from Erratic Sentry##24972+
		.' Use Attuned Crystal Cores on the Erratic Sentries corpse. |use Attuned Crystal Cores##34368
		.' 5 Converted Sentry Deployed |q 11525/1
		.click Bloodberry Bush##28
		.get 5 Bloodberry |q 11546/1 |tip They can be found all around this area on the ground.
	step
		goto Isle of Quel'Danas,42.1,35.7
		.kill 6 Dawnblade Summoner##24978+ |q 11540/1
		.kill 6 Dawnblade Blood Knight##24976+ |q 11540/2
		.kill 3 Dawnblade Marksman##24979+ |q 11540/3
		.' Use your Astromancer's Crystal to sample the Bloodcrystal's density. |use Astromancer's Crystal##34533
		.' Bloodcrystal Reading Taken |q 11547/3
	step
		goto Isle of Quel'Danas,46.5,35.5
		.' Use the Mana Remnants to Energize the Crystal Ward. |use Mana Remnants##34338
		.' Energize a Crystal Ward |q 11523/1
	step
		goto 48.5,25.2
		.talk Ayren Cloudbreaker##25059
		.' Tell him you Need to Intercept the Dawnblade Reinforcements.
		.' Use your Flaming Oil to set fire to the ships sails as you fly around. |use Flaming Oil##34489
		.' Sin'loren sails burned |q 11543/1
		.' Bloodoath sails burned |q 11543/2
		.' Dawnchaser sails burned |q 11543/3
	step
		.kill 6 Dawnblade Reservist##25087+ |q 11543/4
		.' You can find more at [Isle of Quel'Danas,51.1,9.7]
		.' Another spot for them is at [Isle of Quel'Danas,55.2,11.8]
	step
		goto Isle of Quel'Danas,52.4,17.4
		.talk Unrestrained Dragonhawk##25236
		.' Ride the dragonhawk to Sun's Reach. |goto Isle of Quel'Danas,48.4,25.3 |noway|c
	step
		goto Isle of Quel'Danas,48.5,25.2
		.talk Ayren Cloudbreaker##25059
		.' Tell him you've been ordered to undertake an airstrike.
		.' Use your Arcane Charges on mobs once you get to the Dead Scar. |use Arcane Charges##34475
		.kill 2 Pit Overlord##25031+ |q 11533/1
		.kill 3 Eredar Sorcerer##25033+ |q 11533/2
		.kill 12 Wrath Enforcer##25030+ |q 11533/3
	step
		goto Isle of Quel'Danas,48.5,43.7
		.kill Emissary of Hate##25003 |n
		.' Use your Shattered Sun Banner on his corpse. |use Shattered Sun Banner##34414
		.' Impale the Emissary of Hate |q 11537/1
		.kill 6 Burning Legion Demon |q 11537/2
		.' Use your Astromancer's Crystal to sample the Portal's density. |use Astromancer's Crystal##34533
		.' Portal Reading Taken |q 11547/1
	step
		.' Take this path back to the shoreside. |goto Isle of Quel'Danas,57.3,38.6 |c
	step
		goto Isle of Quel'Danas,64.1,49.9
		.from Darkspine Myrmidon##25060+
		..collect Darkspine Chest Key##34477 |n
		.from Darkspine Siren##25073+
		..collect Orb of Murloc Control##34483 |n
		.' Use your Orbs of Murloc Control on Greengill Slaves along the shore. |use Orb of Murloc Control##34483
		.' Free 10 Greengill Slaves |q 11541/1
		.' Use your Darkspine Chest Keys on the Darkspine Ore Chest.
		.get 3 Darkspine Iron Ore |q 11536/1
	step
		goto Isle of Quel'Danas,61.1,62.0
		.' Use your Astromancer's Crystal to sample the Shrine's density. |use Astromancer's Crystal##34533
		.' Shrine Reading Taken |q 11547/2
	step
		goto Isle of Quel'Danas,53.8,34.3
		.talk Captain Valindria##25088
		..turnin Disrupt the Greengill Coast##11541 |daily
	step
		goto 50.6,40.7
		.talk Smith Hauthaa##25046
		..turnin Don't Stop Now....##11536 |daily
	step
		goto 50.6,39.0
		.talk Vindicator Kaalan##25108
		..turnin Keeping the Enemy at Bay##11543 |daily
	step
		goto 49.3,40.4
		.talk Magister Ilastar##25069
		..turnin Crush the Dawnblade##11540 |daily
	step
		goto 51.5,32.5
		.talk Mar'nah##24975
		..turnin Open for Business##11546 |daily
	step
		goto 47.5,35.3
		.talk Astromancer Darnarian##25133
		.turnin Know Your Ley Lines##11547 |daily
	step
		goto 47.5,35.1
		.talk Battlemage Arynna##25057
		.turnin The Air Strikes Must Continue##11533 |daily
	step
		goto 47.6,35.1
		.talk Harbinger Inuuro##25061
		.turnin The Battle Must Go On##11537 |daily
	step
		goto 47.5,30.5
		.talk Captain Theris Dawnhearth##24967
		.turnin Arm the Wards!##11523 |daily
	step
		goto 47.1,30.7
		.talk Vindicator Xayann##24965
		.turnin Further Conversions##11525 |daily
	step
		goto Isle of Quel'Danas,48.5,44.7
		|use Captured Legion Scroll##34420
		.' Teleport to Hellfire Peninsula |goto Hellfire Peninsula,58.6,18.7,0.5 |noway|c
	step
		goto Hellfire Peninsula,58.2,17.6
		.talk Magistrix Seyla##24937
		.turnin The Missing Magistrix##11526
		..accept Blood for Blood##11515 |daily
		..accept Blast the Gateway##11516 |daily
	step
		goto Hellfire Peninsula,66.4,20.1
		.from Wrath Herald##24919+
		.collect 4 Demonic Blood##34259 
		.' use the Sizzling Embers to summon a Living Flare. |use Sizzling Embers##34253
		.kill Incandescent Fel Spark##22323+ |n
		.' Once you see a message that says "Living Flare becomes unstable with brimming energy!" take it to [Hellfire Peninsula,58.6,18.7].
		.' Legion Gateway Destroyed |q 11516/1
	step
		goto 59.9,21.0
		.' Use your Fel Siphon on Felblood Initiates. |use Fel Siphon##34257
		.kill 4 Emaciated Felblood##24918 |q 11515/1
	step
		goto Hellfire Peninsula,58.2,17.6
		.talk Magistrix Seyla##24937
		.turnin Blast the Gateway##11516 |daily
		.turnin Blood for Blood##11515 |daily
	step
		goto Terokkar Forest,59.7,10.3
		.from Razorthorn Flayer##24920+
		..collect Razorthorn Flayer Gland##34255 |q 11521 |n
		.' Use your Razorthorn Flayer Gland on Razorthorn Ravagers. |use Razorthorn Flayer Gland##34255
		.' Use your pets Expose Razorthorn Root ability on mounds of dirt around the area. |cast Expose Razorthorn Root##44935
		.collect 5 Razorthorn Root##34254 |q 11521/1
	step
		|fly Altar of Sha'tar
		only if rep ("The Aldor")>=Neutral
	step
		|fly Sanctum of the Stars
		only if rep ("The Scryers")>=Neutral
	step
		 goto Shadowmoon Valley,68.5,37.5
		.from Shadowmoon Chosen##22084+,Shadowmoon Slayer##22082+,Shadowmoon Darkweaver##22081+
		.collect 5 Ata'mal Armament##34500 |q 11544
	step
		|fly Shattrath
	step
		goto Shattrath City,48.6,42.0 |n
		.' Click the Shattrath Portal to Isle of Quel'Danas. |goto Isle of Quel'Danas |noway|c
	step
		goto Isle of Quel'Danas,51.5,32.5
		.talk Mar'nah##24975
		.turnin Rediscovering Your Roots##11521 |daily
	step
		goto 50.6,40.7
		.' Click the Ata'mal Armaments and cleanse them at Hauthaa's Anvil. |use Ata'mal Armament##34500
		.' Cleanse 5 Ata'mal Metals |q 11544/1
	step
		goto 50.6,40.7
		.talk Smith Hauthaa##25046
		..turnin Ata'mal Armaments##11544 |daily
	step
		' Move to our Shattered Sun Offensive Dailies guide.
]])
ZygorGuidesViewer:RegisterInclude("A_SSO_Dailies",[[
	daily
	step
		|fly Shattrath
	step
		goto Shattrath City,56.3,81.5
		.talk Innkeeper Haelthol##19232
		.home Shattrath City
		only if rep ("The Scryers")>=Neutral
	step
		goto Shattrath City,28.2,49.4
		.talk Minalei##19046
		.home Shattrath City
		only if rep ("The Aldor")>=Neutral
	step
		goto Shattrath City,49.1,42.5
		.talk Exarch Nasuun##24932
		..accept Maintaining the Sunwell Portal##11514 |daily
	step
		goto 62.8,36.0
		.talk Lord Torvos##25140
		..accept Sunfury Attack Plans##11877 |daily
	step
		goto 62.8,35.6
		.talk Emissary Mordin##19202
		..accept Gaining the Advantage##11875 |daily
		only if skill("Skinning")>300 or skill("Mining")>300 or skill("Herbalism")>300
	step
		goto Shattrath City,61.7,52.1
		.talk Harbinger Haronem##19475
		..accept The Multiphase Survey##11880 |daily
	step
		goto Shattrath City,48.6,42.0 |n
		.' Click the Shattrath Portal to Isle of Quel'Danas. |goto Isle of Quel'Danas
	step
		goto Isle of Quel'Danas,47.5,35.4
		.talk Astromancer Darnarian##25133
		..accept Know Your Ley Lines##11547 |daily
	step
		goto 47.5,35.1
		.talk Battlemage Arynna##25057
		..accept The Air Strikes Must Continue##11533 |daily
	step
		goto 47.6,35.1
		.talk Harbinger Inuuro##25061
		..accept The Battle Must Go On##11537 |daily
	step
		goto 48.8,37.2
		.talk Anchorite Ayuri##25112
		..accept Your Continued Support##11548 |daily
		.' This quest requires that you give 10 Gold in trade of reputation with the Shattered Sun Offensive, you should be able to turn it in immidiately.
		..turnin Your Continued Support##11548 |daily
	step
		goto 50.6,39.0
		.talk Vindicator Kaalan##25108
		..accept Keeping the Enemy at Bay##11543 |daily
	step
		oto 49.3,40.4
		.talk Magister Ilastar##25069
		..accept Crush the Dawnblade##11540 |daily
	step
		goto 50.6,40.8
		.talk Smith Hauthaa##25046
		..accept Don't Stop Now....##11536 |daily
		..accept Ata'mal Armaments##11544 |daily
	step
		goto 51.5,32.5
		.talk Mar'nah##24975
		..accept Rediscovering Your Roots##11521 |daily
		..accept Open for Business##11546 |daily
	step
		goto 53.8,34.3
		.talk Captain Valindria##25088
		..accept Disrupt the Greengill Coast##11541 |daily
	step
		goto 47.5,30.5
		.talk Captain Theris Dawnhearth##24967
		..accept Arm the Wards!##11523 |daily
		..accept The Missing Magistrix##11526
	step
		goto 47.1,30.7
		.talk Vindicator Xayann##24965
		..accept Further Conversions##11525 |daily
	step
		goto Isle of Quel'Danas,44.3,28.5
		.from Wretched Fiend##24966+
		.collect 4 Mana Remnants##34338 |q 11523 |c
		.from Erratic Sentry##24972+
		.' Use Attuned Crystal Cores on the Erratic Sentries corpse. |use Attuned Crystal Cores##34368
		.' 5 Converted Sentry Deployed |q 11525/1
		.click Bloodberry Bush##28
		.get 5 Bloodberry |q 11546/1 |tip They can be found all around this area on the ground.
	step
		goto Isle of Quel'Danas,42.1,35.7
		.kill 6 Dawnblade Summoner##24978+ |q 11540/1
		.kill 6 Dawnblade Blood Knight##24976+ |q 11540/2
		.kill 3 Dawnblade Marksman##24979+ |q 11540/3
		.' Use your Astromancer's Crystal to sample the Bloodcrystal's density. |use Astromancer's Crystal##34533
		.' Bloodcrystal Reading Taken |q 11547/3
	step
		goto Isle of Quel'Danas,46.5,35.5
		.' Use the Mana Remnants to Energize the Crystal Ward. |use Mana Remnants##34338
		.' Energize a Crystal Ward |q 11523/1
	step
		goto 48.5,25.2
		.talk Ayren Cloudbreaker##25059
		.' Tell him you Need to Intercept the Dawnblade Reinforcements.
		.' Use your Flaming Oil to set fire to the ships in the water. |use Flaming Oil##34489
		.' Sin'loren sails burned |q 11543/1
		.' Bloodoath sails burned |q 11543/2
		.' Dawnchaser sails burned |q 11543/3
	step
		.kill 6 Dawnblade Reservist##25087+ |q 11543/4
		.' You can find more at [Isle of Quel'Danas,51.1,9.7]
		.' Another spot for them is at [Isle of Quel'Danas,55.2,11.8]
	step
		goto Isle of Quel'Danas,52.4,17.4
		.talk Unrestrained Dragonhawk##25236
		.' Ride the dragonhawk to Sun's Reach. |goto Isle of Quel'Danas,48.4,25.3 |noway|c
	step
		goto Isle of Quel'Danas,48.5,25.2
		.talk Ayren Cloudbreaker##25059
		.' Tell him you've been ordered to undertake an airstrike.
		.' Use your Arcane Charges on mobs once you get to the Dead Scar. |use Arcane Charges##34475
		.kill 2 Pit Overlord##25031+ |q 11533/1
		.kill 3 Eredar Sorcerer##25033+ |q 11533/2
		.kill 12 Wrath Enforcer##25030+ |q 11533/3
	step
		goto Isle of Quel'Danas,48.5,43.7
		.kill Emissary of Hate##25003 |n
		.' Use your Shattered Sun Banner on his corpse. |use Shattered Sun Banner##34414
		.' Impale the Emissary of Hate |q 11537/1
		.kill 6 Burning Legion Demon |q 11537/2
		.' Use your Astromancer's Crystal to sample the Portal's density. |use Astromancer's Crystal##34533
		.' Portal Reading Taken |q 11547/1
	step
		.' Take this path back to the shoreside. |goto Isle of Quel'Danas,57.3,38.6 |c
	step
		goto Isle of Quel'Danas,64.1,49.9
		.from Darkspine Myrmidon##25060+
		..collect Darkspine Chest Key##34477 |n
		.from Darkspine Siren##25073+
		..collect Orb of Murloc Control##34483 |n
		.' Use your Orbs of Murloc Control on Greengill Slaves along the shore. |use Orb of Murloc Control##34483
		.' Free 10 Greengill Slaves |q 11541/1
		.' Use your Darkspine Chest Keys on the Darkspine Ore Chest.
		.get 3 Darkspine Iron Ore |q 11536/1
	step
		goto Isle of Quel'Danas,61.1,62.0
		.' Use your Astromancer's Crystal to sample the Shrine's density. |use Astromancer's Crystal##34533
		.' Shrine Reading Taken |q 11547/2
	step
		'Hearth to the Scryer's Tier Inn |goto Shattrath City,56.3,81.5,0.5 |use Hearthstone##6948 |noway|c
		only if rep("The Scryers")>=Neutral
	step
		'Hearth to the Aldor Rise Inn |goto Shattrath City,28.2,49.4,0.5 |use Hearthstone##6948 |noway|c
		only if rep ("The Aldor")>=Neutral
	step
		|fly Altar of Sha'tar
		only if rep ("The Aldor")>=Neutral
	step
		|fly Sanctum of the Stars
		only if rep ("The Scryers")>=Neutral
	step
		 goto Shadowmoon Valley,68.5,37.5
		.from Shadowmoon Chosen##22084+,Shadowmoon Slayer##22082+,Shadowmoon Darkweaver##22081+
		.collect 5 Ata'mal Armament##34500 |q 11544
	step
		|fly Allerian Stronghold
	step
		goto Terokkar Forest,59.7,10.3
		.from Razorthorn Flayer##24920+
		..collect Razorthorn Flayer Gland##34255 |q 11521
		.' Use your Razorthorn Flayer Gland on Razorthorn Ravagers. |use Razorthorn Flayer Gland##34255
		.' Use your pets Expose Razorthorn Root ability on mounds of dirt around the area. |cast Expose Razorthorn Root##44935
		.collect 5 Razorthorn Root##34254 |q 11521/1
	step
		|fly Telaar
	step
		goto Nagrand,58.8,75.1
		.from Clefthoof Bull##17132+,Talbuk Thorngrazer##17131+,Wild Elekk##18334+
		.' Skin their corpses in order to collect the Nether Residue.
		.get 8 Nether Residue##35229 |q 11875/1
		only if skill("Skinning")>=300
	step
		goto 40.8,31.6
		.' Mine inside the cave and collect Nether Residue.
		.collect 8 Nether Residue##35229 |q 11875/1
		.' You can check [Nagrand,50.0,56.6] for more Mining Nodes.
		only if skill("Mining")>=300
	step
		goto Nagrand,38.3,65.3
		.' Fly around the Spirit Fields looking for Fiery Red Orbs on the ground.
		.' Use your Multiphase Spectrographic Goggles on the Orbs. |use Multiphase Spectrographic Goggles##35233
		.' 6 Multiphase Readings Taken |q 11880/1
	step
		|fly Evergrove
	step
		goto Blade's Edge Mountains,54.0,18.1
		.from Unbound Ethereal##22244+,Bash'ir Raider##22241+,Bash'ir Arcanist##22243+,Bash'ir Spell-Thief##22242+
		.get 1 Bash'ir Phasing Device |q 11514
		'Use the Bash'ir Phasing Device. |use Bash'ir Phasing Device##34248
		.' Collect 10 Smuggled Mana Cell |q 11514/1
	step
		|fly Area 52
	step
		goto Netherstorm,25.9,66.8
		.from Sunfury Bloodwarder##18853+,Sunfury Captain##19453+,Sunfury Magister##18855+,Sunfury Geologist##19779+,Sunfury Astromancer##19643
		.get Sunfury Attack Plans |q 11877/1
	step
		|fly Honor Hold
		.' You can fly through the Twisting Nether to [Hellfire Peninsula,58.2,17.6], but you risk a possible death in doing so.
		.' If you choose to fly on your own, click here to proceed. |confirm
	step
		goto Hellfire Peninsula,58.2,17.6
		.talk Magistrix Seyla##24937
		..accept Blood for Blood##11515 |daily
		..accept Blast the Gateway##11516 |daily
	step
		goto Hellfire Peninsula,66.4,20.1
		.from Wrath Herald##24919+
		.collect 4 Demonic Blood##34259 
		.' use the Sizzling Embers to summon a Living Flare. |use Sizzling Embers##34253
		.kill Incandescent Fel Spark##22323+ |n
		.' Once you see a message that says "Living Flare becomes unstable with brimming energy!" take it to [Hellfire Peninsula,58.6,18.7].
		.' Legion Gateway Destroyed |q 11516/1
	step
		goto 59.9,21.0
		.' Use your Fel Siphon on Felblood Initiates. |use Fel Siphon##34257
		.kill 4 Emaciated Felblood##24918 |q 11515/1
	step
		goto Hellfire Peninsula,58.2,17.6
		.talk Magistrix Seyla##24937
		.turnin Blast the Gateway##11516 |daily
		.turnin Blood for Blood##11515 |daily
	step
		|fly Shattrath
	step
		goto Shattrath City,62.8,36.0
		.talk Lord Torvos##25140
		.turnin Sunfury Attack Plans##11877 |daily
	step
		goto 62.8,35.6
		.talk Emissary Mordin##19202 
		.turnin Gaining the Advantage##11875 |daily
	step
		goto 61.6,52.2
		.talk Harbinger Haronem##19475
		.turnin The Multiphas Survey##11880 |daily
	step
		goto 49.1,42.5
		.talk Exarch Nasuun##24932 |daily
		.turnin Maintaining the Sunwell Portal##11514 |daily
	step
		goto Shattrath City,48.6,42.0 |n
		.' Click the Shattrath Portal to Isle of Qual'Danas. |goto Isle of Quel'Danas |noway|c
	step
		goto Isle of Quel'Danas,53.8,34.3
		.talk Captain Valindria##25088
		..turnin Disrupt the Greengill Coast##11541 |daily
	step
		goto 50.6,40.7
		.' Click the Ata'mal Armaments and cleanse them at Hauthaa's Anvil. |use Ata'mal Armament##34500
		.' Cleanse 5 Ata'mal Metals |q 11544/1
	step
		goto 50.6,40.7
		.talk Smith Hauthaa##25046
		..turnin Don't Stop Now....##11536 |daily
		..turnin Ata'mal Armaments##11544 |daily
	step
		goto 50.6,39.0
		.talk Vindicator Kaalan##25108
		..turnin Keeping the Enemy at Bay##11543 |daily
	step
		goto 49.3,40.4
		.talk Magister Ilastar##25069
		..turnin Crush the Dawnblade##11540 |daily
	step
		goto 51.5,32.5
		.talk Mar'nah##24975
		..turnin Open for Business##11546 |daily
		.turnin Rediscovering Your Roots##11521 |daily
	step
		goto 47.5,35.3
		.talk Astromancer Darnarian##25133
		.turnin Know Your Ley Lines##11547 |daily
	step
		goto 47.5,35.1
		.talk Battlemage Arynna##25057
		.turnin The Air Strikes Must Continue##11533 |daily
	step
		goto 47.6,35.1
		.talk Harbinger Inuuro##25061
		.turnin The Battle Must Go On##11537 |daily
	step
		goto 47.5,30.5
		.talk Captain Theris Dawnhearth##24967
		.turnin Arm the Wards!##11523 |daily
	step
		goto 47.1,30.7
		.talk Vindicator Xayann##24965
		.turnin Further Conversions##11525 |daily
	step
		goto Isle of Quel'Danas,47.3,30.7
		.talk Eldara Dawnrunner##25032
		..accept A Friend in the Frontlines##11554 |instant
		only if rep ("Shattered Sun Offensive")==Friendly
	step
		goto Isle of Quel'Danas,47.3,30.7
		.talk Eldara Dawnrunner##25032
		..accept Honored By Your Allies##11555 |instant
		only if rep ("Shattered Sun Offensive")==Honored
	step
		goto Isle of Quel'Danas,47.3,30.7
		.talk Eldara Dawnrunner##25032
		..accept Revered in the Field of Battle##11556 |instant
		only if rep ("Shattered Sun Offensive")==Revered
	step
		goto Isle of Quel'Danas,47.3,30.7
		.talk Eldara Dawnrunner##25032
		..accept Exalted Among All Combatants##11557 |instant
		only if rep ("Shattered Sun Offensive")==Exalted
	step
		goto Isle of Quel'Danas,51.2,33.1
		.talk Anchorite Kairthos##25163
		..accept A Magnanimous Benefactor##11549 |tip This quest will cost you 1,000 Gold, but give you the title "Of the Shattered Sun".
		only if rep ("Shattered Sun Offensive")==Exalted
	step
		goto Isle of Quel'Danas,51.2,33.1
		.talk Anchorite Kairthos##25163
		.' _WARNING_, by turning in this quest, you will spend _1000 gold!_
		..turnin A Magnanimous Benefactor##11549
		only if rep ("Shattered Sun Offensive")==Exalted
	step
		'Congratulations, you have earned the title _of the Shattered Sun_!
		only if rep ("Shattered Sun Offensive")==Exalted
]])

ZygorGuidesViewer:RegisterInclude("A_Therazane_PreQuest", [[
	step //1
		goto Stormwind City,62.9,71.6
		.click Hero's Call Board##10016
		..accept Hero's Call: Deepholm!##27727
	step //2
		goto 74.5,19.0
		.talk Naraat the Earthspeaker##45226
		..turnin Hero's Call: Deepholm!##27727
		..accept The Maelstrom##27203
	step //3
		goto 74.5,18.4
		.' Click the Portal to the Maelstrom |tip It looks like a swirling green portal.
		.' Teleport to The Maelstrom |goto The Maelstrom |noway |c
	step //4
		goto The Maelstrom,33.4,50.2
		.talk Thrall##45042
		..turnin The Maelstrom##27203
		..accept Deepholm, Realm of Earth##27123
	step //5
		goto 32.5,52.0
		.clicknpc Wyvern##45005
		.' You will fly into Deepholm |goto Deepholm,49.9,54.7,0.5 |noway |c
	step //6
		goto Deepholm,49.6,53.0
		.talk Maruut Stonebinder##43065
		..turnin Deepholm, Realm of Earth##27123
		..accept Gunship Down##26245
	step //7
		goto 49.7,52.9
		.talk Seer Kormo##43397
		..accept Elemental Energy##27136
		..accept The Earth Claims All##26244
	step //8
		goto 49.5,53.3
		.talk Earthcaller Yevaa##42573
		..accept Where's Goldmine?##26409
	step //9
		goto 49.2,51.9
		.talk Caretaker Nuunwa##45300
		.home Temple of Earth
	step //10
		goto 46.5,57.3
		.talk Initiate Goldmine##42574
		..turnin Where's Goldmine?##26409
		..accept Explosive Bonding Compound##26410
		..accept Something that Burns##27135
	step //11
		goto 45.5,57.9
		.from Rockslice Flayer##42606+, Rockslice Ripper##42607+
		.get 5 Quartzite Resin |q 26410/1
		.' You can find more Rockslice Flayers around [42.5,55.6]
	step //12
		goto 51.1,61.6
		.' Use your Depleted Totem |use Depleted Totem##60835
		.from Lodestone Elemental##43258+, Energized Geode##43254+ |tip Kill them next to your Depleted Totems.
		.' Energize the Totem 8 Times |q 27136/1
	step //13
		goto 52.0,58.9
		.' Use Goldmine's Fire Totem in the red lava spot |use Goldmines's Fire Totem##60834
		.from Magmatooth##45099
		.get The Burning Heart |q 27135/1
	step //14
		goto 46.5,57.3
		.talk Initiate Goldmine##42574
		..turnin Explosive Bonding Compound##26410
		..turnin Something that Burns##27135
		..accept Apply and Flash Dry##26411
	step //15
		goto 46.6,57.2
		.' Use your Explosive Bonding Compound on Flint Oremantle |use Explosive Bonding Compound##58502 |modelnpc Flint Oremantle##43036+
		.' Apply the Explosive Bonding Compound |q 26411/1
	step //16
		goto 46.5,57.3
		.talk Initiate Goldmine##42574
		..turnin Apply and Flash Dry##26411
		..accept Take Him to the Earthcaller##26413
	step //17
		goto 49.5,53.3
		.' Introduce Flint Oremantle to Earthcaller Yevaa |q 26413/1
	step //18
		goto 49.5,53.3
		.talk Earthcaller Yevaa##42573
		..turnin Take Him to the Earthcaller##26413
		..accept To Stonehearth's Aid##26484
	step //19
		goto 49.7,52.9
		.talk Seer Kormo##43397
		..turnin Elemental Energy##27136
	step //20
		goto 56.1,74.2
		.clicknpc Slain Cannoneer##43032
		.' Receive the Second Clue |q 26245/2
	step //21
		goto 53.5,73.8
		.clicknpc Captain Skullshatter##43048 
		.' Receive the First Clue |q 26245/1
	step //22
		goto 53.6,73.8
		.click Captain's Log##6891
		..accept Captain's Log##26246
	step //23
		goto 56.7,76.4
		.clicknpc Unexploded Artillery Shell##43044 
		.' Receive the Third Clue |q 26245/3
	step //24
		goto 55.9,74.9
		.kill 5 Deepstone Elemental##43026+ |q 26244/1
	step //25
		goto 49.6,52.9
		.talk Maruut Stonebinder##43065
		..turnin Gunship Down##26245
		..turnin Captain's Log##26246
	step //26
		goto 49.7,52.9
		.talk Seer Kormo##43397
		..turnin The Earth Claims All##26244
	step //27
		goto 49.6,53.0
		.talk Maruut Stonebinder##43065
		..accept Diplomacy First##26247
	step //28
		goto 62.4,52.6
		.talk Stormcaller Mylra##42684
		..turnin Diplomacy First##26247
		..accept All Our Friends Are Dead##26248
		..accept The Admiral's Cabin##26249
	step //29
		'All around on this air ship:
		.' Use your Spirit Totem on Slain Crew Members |use Spirit Totem##58167
		.' Receive 6 Slain Crew Member Information |q 26248/1
		|modelnpc Slain Crew Member##42681+
	step //30
		'Enter the doorway on the main deck of the air ship:
		.talk First Mate Moody##43082
		..turnin The Admiral's Cabin##26249
		..accept Without a Captain or Crew##26427
	step //31
		'Leave through the doorway and immediately turn right:
		.click Bottle of Whiskey##9712 |tip Located on the life boat.
		.get Bottle of Whiskey |q 26427/1
	step //32
		'All around on the deck of the air ship:
		.click Spool of Rope##7538
		.get Spool of Rope |q 26427/2
	step //33
		'Enter the doorway on the main deck of the air ship:
		.talk First Mate Moody##43082
		..turnin Without a Captain or Crew##26427
	step //34
		'Go to the very top of the air ship:
		.talk Stormcaller Mylra##42684
		..turnin All Our Friends Are Dead##26248
		..accept Take No Prisoners##26251
		..accept On Second Thought, Take One Prisoner##26250
	step //35
		'Go onto the main deck of the ship and go down the stairs to the deck below:
		.' Fight Mor'norokk the Hateful until he surrenders |tip He's downstairs in the airship, in the very back of the first level you come to.
		.talk Mor'norokk the Hateful##42801
		.' Subdue Mor'norokk the Hateful |q 26250/1
	step //36
		'All around on this lower deck of the air ship:
		.kill 6 Twilight Saboteur##42885 |q 26251/1
	step //37
		'Go to the very top of the air ship:
		.talk Stormcaller Mylra##42684
		..turnin Take No Prisoners##26251
		..turnin On Second Thought, Take One Prisoner##26250
		..accept Some Spraining to Do##26254
	step //38
		Next to Stormcaller Mylra:
		.clicknpc Stormbeak##42887
		.' Interrogate Mok'norrok |q 26254/1
	step //39
		'When you land on the air ship again:
		.talk Stormcaller Mylra##42684
		..turnin Some Spraining to Do##26254
		..accept Return to the Temple of Earth##26255
	step //40
		'Hearth to Temple of Earth |goto 49.2,51.9,50 |use Hearthstone##6948 |noway |c
	step //41
		goto 49.6,53.0
		.talk Maruut Stonebinder##43065
		..turnin Return to the Temple of Earth##26255
		..accept Deathwing's Fall##26258
	step //42
		goto 49.7,52.9
		.talk Seer Kormo##43397
		..accept Blood of the Earthwarder##26259
	step //43
		goto 59.4,58.2
		.' Go to this spot
		.' Reach Deathwing's Fall |q 26258/1
		.' Click the Quest Complete box that displays on the right side of the screen under your minimap
		..turnin Deathwing's Fall##26258
		..accept Bleed the Bloodshaper##26256
	step //44
		goto 61.5,60.6
		.from Twilight Bloodshaper##43218+
		.get Twilight Orders |q 26256/1
		.' Click the Quest Complete box that displays on the right side of the screen under your minimap
		..turnin Bleed the Bloodshaper##26256
		..accept Question the Slaves##26261
	step //45
		goto 62.8,59.5
		.click Slavemaster's Coffer##41
		.collect 1 Twilight Slaver's Key##60739 |q 26261
	step //46
		goto 61.2,60.1
		.from Living Blood##43123+
		.get 5 Blood of Neltharion |q 26259/1
	step //47
		goto 64.5,65.5
		.click Ball and Chain##181+
		.' Free 6 Enslaved Miners |q 26261/1
		.' Click the Quest Complete box that displays on the right side of the screen under your minimap
		..turnin Question the Slaves##26261
		..accept The Forgemaster's Log##26260
	step //48
		goto 63.7,55.4
		.click Forgemaster's Log##6891
		..turnin The Forgemaster's Log##26260
		..accept Silvermarsh Rendezvous##27007
	step //49
		goto 70.6,61.2
		.' Go to this spot
		.' Reach Upper Silvermarsh |q 27007/1
		.' Click the Quest Complete box that displays on the right side of the screen under your minimap
		..turnin Silvermarsh Rendezvous##27007
		..accept Quicksilver Submersion##27010
	step //50
		goto 71.8,64.3
		.click Trogg Crate##9855
		.collect Trogg Crate##60809 |q 27010
		.from Murkstone Trogg##44936
		.collect 1 Maziel's Research##60816 |n
		.' Click Maziel's Research in your bags |use Maziel's Research##60816
		..accept Twilight Research##27100
	step //51
		goto 74.9,64.8
		.' Use your Trogg Crate in the water and swim to this spot |use Trogg Crate##60809
		.' Watch the dialogue
		.' Uncover the World Pillar Fragment Clue |q 27010/1
		.' Click the Quest Complete box that displays on the right side of the screen under your minimap
		..turnin Quicksilver Submersion##27010
		..accept The Twilight Overlook##27061
	step //52
		goto 72.5,65.2
		.from Mercurial Ooze##43158+
		.get 4 Twilight Research Notes |q 27100/1
		.' Click the Quest Complete box that displays on the right side of the screen under your minimap
		..turnin Twilight Research##27100
		..accept Maziel's Revelation##27101
	step //53
		goto 67.2,70.2
		.click Maziel's Journal##2530
		..turnin Maziel's Revelation##27101
		..accept Maziel's Ascendancy##27102
	step //54
		goto 69.5,68.0 |n
		.' Enter the cave |goto 69.5,68.0,0.5 |noway |c
	step //55
		goto 72.8,62.0
		.kill Maziel##44967 |q 27102/1
		.' Click the Quest Complete box that displays on the right side of the screen under your minimap
		..turnin Maziel's Ascendancy##27102
	step //56
		goto 69.5,68.0 |n
		.' Leave the cave |goto 69.5,68.0,0.5 |noway |c
	step //57
		goto 64.5,82.1
		.talk Stormcaller Mylra##44010
		..turnin The Twilight Overlook##27061
		..accept Big Game, Big Bait##26766
		..accept To Catch a Dragon##26768
	step //60
		goto 58.0,84.8
		.from Jadecrest Basilisk##43981+
		.' Use Mylra's Knife on Jadecrest Basilisk corpses |use Mylra's Knife##60382
		.get 5 Side of Basilisk Meat |q 26766/1 
		.from Twilight Dragonstalker##43992+
		.get Twilight Snare |q 26768/1
	step //61
		goto 64.5,82.1
		.talk Stormcaller Mylra##44010
		..turnin Big Game, Big Bait##26766
		..turnin To Catch a Dragon##26768
		..accept Testing the Trap##26771
	step //62
		goto 50.9,85.3
		.' Use your Trapped Basilisk Meat |use Trapped Basilisk Meat##60773
		.kill Stonescale Matriarch##44148 |q 26771/1
	step //63
		goto 64.5,82.1
		.talk Stormcaller Mylra##44010
		..turnin Testing the Trap##26771
		..accept Abyssion's Minions##26857
	step //64
		goto 64.6,82.2
		.talk Seer Galekk##44222
		..accept Block the Gates##26861
	step //65
		goto 68.7,75.0
		.' Use your Stormstone next to the swirling blue portal |use Stormstone##60501
		.' Disrupt the Twilight Gate |q 26861/1
	step //66
		goto 71.2,75.1
		.' Use your Stormstone next to the structure with the floating yellow crystal |use Stormstone##60501
		.' Disrupt the Elemental Gate |q 26861/2
	step //67
		goto 69.9,76.7
		.from Scalesworn Cultist##44221+, Twilight Scalesister##43967+, Twilight Dragonspawn##43966+
		.' Defeat 8 Abyssion's Underlings |q 26857/1
	step //68
		goto 64.6,82.2
		.talk Seer Galekk##44222
		..turnin Block the Gates##26861
	step //69
		goto 64.5,82.2
		.talk Stormcaller Mylra##44010
		..turnin Abyssion's Minions##26857
		..accept The World Pillar Fragment##26876
	step //70
		goto 69.9,76.9
		.' Use your Earthen Ring Banner |use Earthen Ring Banner##60810
		.from Abyssion##44289
		.click The First Fragment of the World Pillar##9779
		.get The Upper World Pillar Fragment |q 26876/1
	step //71
		'Hearth to Temple of Earth |goto 49.2,51.9,0.5 |use Hearthstone##6948 |noway |c
	step //72
		goto 49.6,53.0
		.talk Maruut Stonebinder##43065
		..turnin The World Pillar Fragment##26876
	step //73
		goto 49.7,52.9
		.talk Seer Kormo##43397
		..turnin Blood of the Earthwarder##26259
	step //74
		goto 27.9,68.7
		.talk Crag Rockcrusher##43071
		..turnin To Stonehearth's Aid##26484
		..accept The Quaking Fields##27931
	step //75
		goto 30.6,77.7
		.talk Slate Quicksand##47195
		..turnin The Quaking Fields##27931
		..accept The Axe of Earthly Sundering##27932
		..accept Elemental Ore##27933
	step //76
		goto 32.2,79.1
		.' Use The Axe of Earthly Sundering on Emerald Colossi |use The Ace of Earthly Sundering##60490
		.kill 5 Sundered Emerald Colossus##44229 |q 27932/1 
		.from Jade Rager##44220+
		.get 6 Elemental Ore |q 27933/1
	step //77
		goto 30.6,77.7
		.talk Slate Quicksand##47195
		..turnin The Axe of Earthly Sundering##27932
		..turnin Elemental Ore##27933
		..accept One With the Ground##27934
	step //78
		goto 30.6,77.7
		.talk Slate Quicksand##47195
		..' Tell him you are ready for the ritual
		.' Complete the One With the Ground Ritual |q 27934/1
		.' Click the Quest Complete box that displays on the right side of the screen under your minimap
		..turnin One With the Ground##27934
		..accept Bring Down the Avalanche##27935
	step //79
		goto 46.9,89.1
		.kill Avalanchion##44372 |q 27935/1
	step //80
		goto 43.4,82.0 |n
		.' Leave the cave |goto 43.4,82.0,0.5 |noway |c
	step //81
		goto 27.9,68.7
		.talk Crag Rockcrusher##43071
		..turnin Bring Down the Avalanche##27935
		..accept Stonefather's Boon##26499
	step //82
		goto 28.2,69.6
		.talk Earthbreaker Dolomite##43160
		..accept We're Surrounded##26500
	step //83
		goto 29.7,68.8
		.kill 12 Stone Trogg Ambusher##43134+ |q 26500/1
		.' Use Stonefather's Banner next to Stone Hearth Defenders |use Stonefather's Banner##58884 |modelnpc Stonehearth Defender##43138+
		.' Grant the Stonefather's Boon 12 times |q 26499/1
	step //84
		goto 28.2,69.6
		.talk Earthbreaker Dolomite##43160
		..turnin We're Surrounded##26500
		..accept Thunder Stones##26502
	step //85
		goto 27.9,68.7
		.talk Crag Rockcrusher##43071
		..turnin Stonefather's Boon##26499
		..accept Sealing the Way##26501
	step //86
		goto 27.3,67.8
		.' Use your Rockslide Reagent on the Earthen Geomancer |use Rockslide Reagent##58885 |modelnpc Earthen Geomancer##43170+
		.' Seal the Shrine |q 26501/4
	step //87
		goto 26.0,68.8
		.' Use your Rockslide Reagent on the Earthen Geomancer |use Rockslide Reagent##58885 |modelnpc Earthen Geomancer##43170+
		.' Seal the Barracks |q 26501/3
	step //88
		goto 26.2,69.8
		.' Use your Rockslide Reagent on the Earthen Geomancer |use Rockslide Reagent##58885 |modelnpc Earthen Geomancer##43170+
		.' Seal the Inn |q 26501/2
	step //89
		goto 27.3,70.1
		.' Use your Rockslide Reagent on the Earthen Geomancer |use Rockslide Reagent##58885 |modelnpc Earthen Geomancer##43170+
		.' Seal the Armory |q 26501/1
		.click Thunder Stone##9722+
		.get 12 Thunder Stone |q 26502/1 
	step //90
		goto 24.5,62.4
		.talk Gravel Longslab##43168
		..turnin Sealing the Way##26501
		..accept Shatter Them!##26537
	step //91
		goto 24.8,62.2
		.talk Clay Mudaxle##43169
		..turnin Thunder Stones##26502
		..accept Fixer Upper##26564
	step //92
		goto 24.6,62.2
		.talk Earthmender Deepvein##43319
		..accept Battlefront Triage##26591
	step //93
		goto 23.9,60.3
		.' Use Deepvein's Patch Kit on Injured Earthens |use Deepvein's Patch Kit##58965 |modelnpc Injured Earthen##43233
		.' Patch up 10 Injured Earthen |q 26591/1
		.' Click Catapult Parts |tip They look kind of like big metal parts laying on the ground around this area.
		.get 6 Catapult Part |q 26564/1 
		.from Stone Trogg Berserker##43228+, Stone Trogg Geomancer##43234+, Needlerock Rider##43250+
		.kill 12 Fractured Battlefront stone troggs |q 26537/1
		.' You can also look around 23.1,53.9 for more
	step //94
		goto 24.5,62.4
		.talk Gravel Longslab##43168
		..turnin Shatter Them!##26537
	step //95
		goto 24.6,62.2
		.talk Earthmender Deepvein##43319
		..turnin Battlefront Triage##26591
	step //96
		goto 24.8,62.2
		.talk Clay Mudaxle##43169
		..turnin Fixer Upper##26564
	step //97
		goto 24.5,62.4
		.talk Gravel Longslab##43168
		..accept Troggzor the Earthinator##26625
	step //98
		goto 22.6,56.9
		.from Troggzor the Earthinator##43456
		.get The Earthinator's Cudgel |q 26625/1
	step //99
		goto 24.5,62.4
		.talk Gravel Longslab##43168
		..turnin Troggzor the Earthinator##26625
	step //100
		goto 24.8,62.2
		.talk Clay Mudaxle##43169
		..accept Rush Delivery##27126
	step //101
		goto 20.7,61.6
		.talk Peak Grindstone##45043
		..turnin Rush Delivery##27126
		..accept Close Escort##26632
	step //102
		goto 20.7,61.6
		.talk Peak Grindstone##45043
		..' Tell him you're ready to escort the catapult |tip You need to be near the catapult or it will stop
		.' Safely Escort the Earthen Catapult |q 26632/1
		|modelnpc Earthen Catapult##43509+
	step //103
		goto 22.7,52.0
		.talk Pyrium Lodestone##43897
		..turnin Close Escort##26632
		..accept Keep Them off the Front##26755
	step //104
		goto 22.4,52.0
		.clicknpc Earthen Catapult##43509
		.' Use your Fire Catapult ability on your hotbar on the Stone Trogg and Fungal mobs
		.' Bombard 30 Reinforcements |q 26755/1
	step //105
		goto 22.7,52.0
		.talk Pyrium Lodestone##43897
		..turnin Keep Them off the Front##26755
		..accept Reactivate the Constructs##26762
	step //106
		goto 22.8,52.1
		.talk Flint Oremantle##43898
		..accept Mystic Masters##26770
	step //107
		goto 22.6,47.6
		.clicknpc Deactivated War Construct##43984
		.' Reactivate 5 Deactivated War Constructs |q 26762/1
		.kill 5 Needlerock Mystic |q 26770/1
		.'|tip Activate the golems before attacking mystics.
	step //108
		goto 22.8,52.1
		.talk Flint Oremantle##43898
		..turnin Mystic Masters##26770
	step //109
		goto 22.7,52.0
		.talk Pyrium Lodestone##43897
		..turnin Reactivate the Constructs##26762
		..accept Down Into the Chasm##26834
	step //110
		goto 27.6,44.8
		.talk Slate Quicksand##44143
		..turnin Down Into the Chasm##26834
		..accept Sprout No More##26791
		..accept Fungal Monstrosities##26792
	step //111
		goto 27.6,44.7
		.clicknpc War Guardian##44126
		.' Obtain a War Guardian for the Sprout No More quest |q 26791/1
		.' Obtain a War Guardian for the Fungal Monstrosities quest |q 26792/1
	step //112
		goto 26.8,41.8
		.kill 5 Fungal Monstrosity##44035+ |q 26792/2
		.clicknpc Giant Mushroom##44049+
		.' Destroy 5 Giant Mushrooms |q 26791/2
	step //113
		goto 27.6,44.8
		.talk Slate Quicksand##44143
		..turnin Sprout No More##26791
		..turnin Fungal Monstrosities##26792
		..accept A Slight Problem##26835
	step //114
		goto 22.7,52.0
		.talk Pyrium Lodestone##43897
		..turnin A Slight Problem##26835
		..accept Rescue the Stonefather... and Flint##26836
	step //115
		goto 24.5,31.1
		.from Bouldergut##44151
		.' Rescue Stonefather Oremantle |q 26836/1
	step //116
		goto 22.7,52.0
		.talk Pyrium Lodestone##43897
		..turnin Rescue the Stonefather... and Flint##26836
		..accept The Hero Returns##27937
	step //117
		goto 28.0,68.6
		.talk Stonefather Oremantle##44204
		..turnin The Hero Returns##27937
		..accept The Middle Fragment##27938
	step //118
		goto 28.0,68.7
		.click The Stonefather's Safe##7608
		.get The Middle Fragment of the World Pillar |q 27938/1
	step //119
		'Hearth to Temple of Earth |goto 49.2,51.9,0.5 |use Hearthstone##6948 |noway |c
	step //120
		goto 49.5,53.3
		.talk Earthcaller Yevaa##42573
		..turnin The Middle Fragment##27938
	step //121
		goto 49.6,53.0
		.talk Maruut Stonebinder##43065
		..accept The Very Earth Beneath Our Feet##26326
	step //122
		goto 46.1,45.6
		.talk Earthcaller Torunscar##42730
		..turnin The Very Earth Beneath Our Feet##26326
		..accept Crumbling Defenses##26312
		..accept On Even Ground##26314
	step //123
		goto 46.2,45.7
		.talk Earthmender Norsala##42731
		..accept Core of Our Troubles##26313
	step //124
		goto 44.3,43.7
		.from Irestone Rumbler##42780+
		.get Irestone Core##58168 |q 26313/1 |n
		.' Use your Elementium Grapple Line on Servants of Therazane |use Elementium Grapple Line##58169 |tip Run away from the Servants of Therazane to bring them down.
		.' Relieve Stormcaller Mylra |q 26312/2
		|modelnpc Servant of Therazane##42781+
	step //125
		goto 44.5,41.3
		.from Irestone Rumbler##42780+
		.get Irestone Core##58168 |q 26313/1 |n
		.' Use your Elementium Grapple Line on Servants of Therazane |use Elementium Grapple Line##58169 |tip Run away from the Servants of Therazane to bring them down.
		.' Relieve Tawn Winterbluff |q 26312/1
		|modelnpc Servant of Therazane##42781+
	step //126
		goto 47.6,42.8
		.from Irestone Rumbler##42780+
		.get Irestone Core##58168 |q 26313/1 |n
		.' Use your Elementium Grapple Line on Servants of Therazane |use Elementium Grapple Line##58169 |tip Run away from the Servants of Therazane to bring them down.
		.' Relieve Hargoth Dimblaze |q 26312/3
		|modelnpc Servant of Therazane##42781+
	step //127
		goto 46.2,42.2
		.from Irestone Rumbler##42780+
		.get 6 Irestone Core |q 26313/1
		.' Use your Elementium Grapple Line on Servants of Therazane |use Elementium Grapple Line##58169 |tip Run away from the Servants of Therazane to bring them down.
		.' Bring down 3 Servants of Therazane |q 26314/1
		|modelnpc Servant of Therazane##42781+
	step //128
		goto 46.2,45.7
		.talk Earthmender Norsala##42731
		..turnin Core of Our Troubles##26313
	step //129
		goto 46.1,45.6
		.talk Earthcaller Torunscar##42730
		..turnin Crumbling Defenses##26312
		..turnin On Even Ground##26314
	step //130
		goto 46.2,45.7
		.talk Earthmender Norsala##42731
		..accept Imposing Confrontation##26315
	step //131
		goto 49.2,40.1
		.' Use your Earthen Ring Proclamation on Boden the Imposing |use Earthen Ring Proclamation##58177 |tip He's a huge rock giant that walks around this area.
		.' Seek Peace with Boden the Imposing |q 26315/1
		|modelnpc Boden the Imposing##42471+
	step //132
		goto 46.2,45.7
		.talk Earthmender Norsala##42731
		..turnin Imposing Confrontation##26315
		..accept Rocky Relations##26328
	step //133
		goto 56.5,42.7
		.talk Diamant the Patient##42467
		..turnin Rocky Relations##26328
		..accept Hatred Runs Deep##26376
		..accept Unsolid Ground##26377
	step //134
		goto 56.5,41.0
		.talk Quartz Stonetender##42899
		..accept Loose Stones##26375
	step //135
		goto 60.2,39.4
		.kill Dragul Giantbutcher##42921 |q 26376/1
	step //136
		goto 59.5,41.5
		.click Jade Crystal Cluster##9694+
		.collect 6 Jade Crystal Cluster##58500 |q 26377
		.' Use your Delicate Chain Smasher next to Quartz Rocklings |use Delicate Chain Smasher##58254 |tip They look like small rock giants around this area.
		.' Release 6 Quartz Rocklings |q 26375/1
		|modelnpc Quartz Rockling##42900+
	step //137
		'Use the Jade Crystal Clusters |use Jade Crystal Cluster##58500
		.collect Jade Crystal Composite##58783 |q 26377
	step //138
		goto 59.6,41.4
		.' Use your Jade Crystal Composite |use Jade Crystal Composite##58783
		.' Lure an Agitated Tunneler |q 26377/1
	step //139
		goto 59.3,40.6
		.from Twilight Laborer##42924+, Twilight Priestess##42823+, Twilight Duskwarden##42917+
		.kill 12 Lorthuna's Gate Cultists |q 26376/2
	step //140
		goto 56.5,41.0
		.talk Quartz Stonetender##42899
		..turnin Loose Stones##26375
	step //141
		goto 56.5,42.7
		.talk Diamant the Patient##42467
		..turnin Hatred Runs Deep##26376
		..turnin Unsolid Ground##26377
		..accept Violent Gale##26426
	step //142
		goto 51.7,31.6
		.' Get next to Felsen the Enduring
		.' Find Felsen the Enduring |q 26426/1
		' |modelnpc 43805
	step //143
		goto 58.4,25.7
		.' Fly to the mouth of this cave
		.' Find the entrance to the Crumbling Depths |q 26426/2
		.' Click the Quest Complete box that displays on the right side of the screen under your minimap
		..turnin Violent Gale##26426
		..accept Depth of the Depths##26869
	step //144
		goto 64.5,21.7 |n
		.' Follow the path |goto 64.5,21.7,0.5 |noway |c
	step //145
		goto 65.3,18.4 |n
		.' Follow the path |goto 65.3,18.4,0.5 |noway |c
	step //146
		goto 66.4,20.6
		.click Gigantic Painite Cluster##9815
		..turnin Depth of the Depths##26869
		..accept A Rock Amongst Many##26871
	step //147
		goto 64.3,23.5
		.' Follow the path to this spot, then jump down |goto 64.3,23.5,0.5 |noway |c
	step //148
		goto 58.3,25.5 |n
		.' Leave the cave |goto 58.3,25.5,0.5 |noway |c
	step //149
		goto 56.5,42.7
		.talk Diamant the Patient##42467
		..turnin A Rock Amongst Many##26871
		..accept Entrenched##26436
	step //150
		goto 34.3,34.3
		.talk Kor the Immovable##42469
		..turnin Entrenched##26436
		..accept Intervention##26438
		..accept Making Things Crystal Clear##26437
	step //151
		goto 34.1,35.2
		.talk Berracite##43344
		..accept Putting the Pieces Together##26439
	step //152
		goto 30.5,46.8
		.from Jaspertip Borer##42524+, Jaspertip Swarmer##42521+, Jaspertip Ravager##42525+
		.kill 12 Jaspertip flayers |q 26438/1
		.click Chalky Crystal Formation##9715+
		.get 8 Chalky Crystal Formation |q 26437/1 
		.clicknpc Dormant Stonebound Elemental##43115
		.' Reform 6 Stonebound Elementals |q 26439/1
	step //153
		goto 34.3,34.3
		.talk Kor the Immovable##42469
		..turnin Intervention##26438
		..turnin Making Things Crystal Clear##26437
	step //154
		goto 34.1,35.2
		.talk Berracite##43344
		..turnin Putting the Pieces Together##26439
	step //156
		'Next to you:
		.talk Pebble##43116
		..accept Clingy##26440
	step //157
		goto 30.1,47.7
		.' Get next to the huge green crystals
		.' Bring Pebble to the crystal formation |q 26440/1
	step //158
		'Next to you:
		.talk Pebble##43116
		..turnin Clingy##26440
		..accept So Big, So Round...##26441
	step //159
		goto 34.3,34.3
		.talk Kor the Immovable##42469
		..turnin So Big, So Round...##26441
		..accept Petrified Delicacies##26507
		..accept Rock Bottom##26575
	step //160
		goto 47.6,26.8
		.kill Gorgonite##43339 |q 26575/1
	step //161
		goto 47.5,26.8
		.clicknpc Petrified Stone Bat##43182+
		.get 12 Petrified Stone Bat |q 26507/1
	step //162
		'Next to you:
		.talk Pebble##43116
		..turnin Petrified Delicacies##26507
	step //163
		goto 34.3,34.3
		.talk Kor the Immovable##42469
		..turnin Rock Bottom##26575
		..accept Steady Hand##26576
		..accept Rocky Upheaval##26577
	step //164
		goto 39.9,19.4
		.talk Terrath the Steady##42466
		..turnin Steady Hand##26576
		..accept Don't. Stop. Moving.##26656
	step //165
		goto 39.9,19.4
		.talk Terrath the Steady##42466
		..' Tell him you are ready to escort a group of elementals across the open.
		.' Speak to Terrath the Steady |q 26656/1
	step //166
		goto 51.1,14.7
		.' Go to this spot
		.' Escort 5 Opalescent Guardians to safety |q 26656/2 |tip Run on the ground with your mount, don't fly or you the rock elementals will disappear when you get too far away from them.
		' |modelnpc 43591
	step //167
		goto 39.9,19.4
		.talk Terrath the Steady##42466
		..turnin Don't. Stop. Moving.##26656
		..accept Hard Falls##26657
		..accept Fragile Values##26658
	step //168
		goto 35.4,22.5
		.from Stone Trogg Beast Tamer##43598 |tip He moves all around this area capturing basilisks, so you may need to look around a bit for him.
		.get Stonework Mallet |q 26658/1
	step //169
		goto 36.5,18.8
		.kill 6 Stone Drake##42522 |q 26657/1 |tip They will fall to the ground with half health, so you can kill them, even though they are elite.
	step //170
		goto 40.0,19.4
		.talk Terrath the Steady##42466
		..turnin Hard Falls##26657
		..turnin Fragile Values##26658
		..accept Resonating Blow##26659
	step //171
		goto 32.7,24.3
		.' Use your Stonework Mallet next to the Pale Resonating Crystal |use Stonework Mallet##60266 
		.' Strike the Pale Resonating Crystal |q 26659/1
		.from Aeosera##43641 |tip Click the Boulder Platforms to jump from rock to rock while fighting Aeosera.  When she is casting her Searing Breath ability, jump to another rock and attack her while she is breathing fire to the other rock.  Repeat this until she surrenders.
		.' Defeat Aeosera |q 26659/2
		|model Pale Resonating Crystal##6415
	step //172
		goto 33.1,24.1
		.talk Terrath the Steady##42466
		..turnin Resonating Blow##26659
		.' If Terrath the Steady doesn't spawn at the appropriate spot, go to [40.0,19.4]
	step //174
		goto 72.2,54.0
		.talk Gorsik the Tumultuous##42472
		..turnin Rocky Upheaval##26577
		..accept Doomshrooms##26578
		..accept Gone Soft##26579
		..accept Familiar Intruders##26580
	step //175
		goto 71.8,47.6
		.talk Windspeaker Lorvarius##43395
		..turnin Familiar Intruders##26580
		..accept A Head Full of Wind##26581
	step //176
		goto 73.6,40.8
		.kill 8 Fungal Behemoth##42475+ |q 26579/1
		.from Doomshroom##43388+
		.' Destroy 10 Doomshrooms |q 26578/1
		.' Gather a sample of the red mist |q 26581/1 |tip There are small clouds of red mist that float around on the ground around this area.  Walk into one of them to gather a sample.
		.' You will be able to find more Fungal Behemoths and Doomshrooms around [76.6,44.4]
	step //177
		goto 71.8,47.6
		.talk Windspeaker Lorvarius##43395
		..turnin A Head Full of Wind##26581
		..accept Unnatural Causes##26582
	step //178
		goto 72.2,54.0
		.talk Gorsik the Tumultuous##42472
		..turnin Doomshrooms##26578
		..turnin Gone Soft##26579
		..turnin Unnatural Causes##26582
		..accept Shaken and Stirred##26584
		..accept Corruption Destruction##26585
	step //179
		goto 68.5,26.4
		.talk Ruberick##43442
		..accept Wrath of the Fungalmancer##26583
	step //180
		goto 68.6,29.1 |n
		.' Enter the cave |goto 68.6,29.1,0.5 |noway |c
	step //181
		goto 69.8,31.9
		.talk Earthmender Norsala##43503
		..' Tell her you're ready when she is |q 26583/1
		.kill Fungalmancer Glop##43372 |q 26583/2 |tip Follow him each time he runs away.  Avoid the mushrooms as you walk, they will give you a debuff.  While fighting Fungalmancer Glop, avoid the Boomshrooms he creates.
	step //182
		goto 70.2,33.8 |n
		.' Follow the path up |goto 70.2,33.8,0.5 |noway |c
	step //183
		goto 68.6,29.1 |n
		.' Leave the cave |goto 68.6,29.1,0.5 |noway |c
	step //184
		goto 68.5,26.3
		.talk Ruberick##43442
		..turnin Wrath of the Fungalmancer##26583
	step //185
		goto 69.4,24.8
		.kill 8 Verlok Pillartumbler##43513+ |q 26584/1
		.click Verlok Miracle-Grow##6895
		.get 8 Verlok Miracle-Grow |q 26585/1
	step //186
		goto 72.2,54.0
		.talk Gorsik the Tumultuous##42472
		..turnin Shaken and Stirred##26584
		..turnin Corruption Destruction##26585
		..accept At the Stonemother's Call##26750
	step //187
		goto 56.3,12.2
		.talk Therazane##42465
		..turnin At the Stonemother's Call##26750
		..accept Audience with the Stonemother##26752
	step //189
		'Watch the dialogue
		.' Attend the Stonemother's Audience |q 26752/1
	step //190
		goto 56.1,13.5
		.talk Earthcaller Torunscar##43809
		..turnin Audience with the Stonemother##26752
		..accept Rallying the Earthen Ring##26827
	step //188
		ding 83
	step //191
		'Hearth to the Temple of Earth |goto 49.2,51.9,0.5 |use Hearthstone##6948 |noway |c
	step //192
		goto 47.3,51.4
		.talk Explorer Mowi##44799
		..accept The Twilight Plot##27004
	step //193
		goto 47.3,51.4
		.talk Prospector Brewer##44802
		..accept Fly Over##27006
	step //194
		goto 39.0,74.2
		.' Go to this spot next to the big white portal
		.' Investigate the Master's Gate |q 27006/1
	step //195
		goto 40.1,72.2
		.from Twilight Cryptomancer##44855+, Twilight Crusher##44849+, Twilight Armsman##44847+
		.get Masters' Gate Plans |q 27004/1
	step //196
		goto 47.3,51.4
		.talk Explorer Mowi##44799
		..turnin The Twilight Plot##27004
	step //197
		goto 47.3,51.4
		.talk Prospector Brewer##44802
		..turnin Fly Over##27006
		..accept Fight Fire and Water and Air with...##27042
	step //198
		goto 47.3,51.4
		.talk Explorer Mowi##44799
		..accept Decryption Made Easy##27040
	step //199
		goto 40.8,66.3
		.from Bound Water Elemental##44886
		.' Acquire the Water Ward |q 27042/2
	step //200
		goto 36.0,67.4
		.from Bound Fire Elemental##44887
		.' Acquire the Fire Ward |q 27042/1
	step //201
		goto 40.5,72.4
		.from Bound Air Elemental##44885
		.' Acquire the Air Ward |q 27042/3
	step //202
		goto 40.2,67.5
		.click One-Time Decryption Engine##9842+
		.' Decrypt 6 Plans |q 27040/1
		.' Click the Quest Complete box that displays on the right side of the screen under your minimap
		..turnin Decryption Made Easy##27040
		..accept The Wrong Sequence##27058
	step //203
		goto 39.1,73.9
		.click the Waygate Controller##9849
		.' Destroy the Waygate |q 27058/1
	step //204
		goto 39.9,62.2
		.kill Haethen Kaul##44835 |q 27042/4 |tip He's up on a huge floating rock.
	step //205
		goto 47.3,51.4
		.talk Explorer Mowi##44799
		..turnin The Wrong Sequence##27058
		..accept That's No Pyramid!##28292
	step //206
		goto 47.3,51.4
		.talk Prospector Brewer##44802
		..turnin Fight Fire and Water and Air with...##27042
	step //207
		goto 48.0,53.7
		.' Talk with Windspeaker Lorvarius, Yuldris Smolderfury, Tawn Winterbluff, Earthcaller Yevaa and Tharm Wildfire at the below locations:
		.' [48.5,50.1]
		.' [47.4,50.9]
		.' [48.1,49.9]
		..' Tell them you are joining an assault on Lorthuna's Gate and they are needed.
		.' Rally 5 Earthen Ring |q 26827/1
		' |modelnpc Windspeaker Lorvarius##43836+
		' |modelnpc Yuldris Smolderfury##45034+
		' |modelnpc Earthcaller Yevaa##44646+
		' |modelnpc Tawn Winterbluff##44634+
		' |modelnpc Tharm Wildfire##44631+
	step //208
		goto 49.6,53.0
		.talk Maruut Stonebinder##43065
		..turnin Rallying the Earthen Ring##26827
		..accept Our Part of the Bargain##26828
	step //209
		goto 63.3,25.0
		.talk Therazane##44025
		..turnin Our Part of the Bargain##26828
		..accept The Stone March##26829
		..accept Therazane's Mercy##26832
	step //210
		goto 62.6,26.9
		.talk Boden the Imposing##44080
		..accept The Twilight Flight##26831
	step //211
		goto 62.4,31.8
		.from High Priestess Lorthuna##42914 |tip She is in a small room on the top of this building.  She is elite, but you can still kill her.  She will run away when she is almost dead.
		.' Defeat High Priestess Lorthuna |q 26832/2
	step //212
		goto 58.9,32.9
		.from Boldrich Stonerender##42923
		.' Defeat Boldrich Stonerender |q 26832/1
	step //213
		goto 63.1,38.1
		.from Zoltrik Drakebane##42918 |tip You will eventually get on a stone drake and fly after Zoltrik Drakebane.  You can use your Jump ability to jump onto his drake, if you are a melee class.  Either way, you will land on a rock with him and kill him there.
		.' Defeat Zoltrik Drakebane |q 26831/1
	step //214
		goto 64.1,36.9
		.talk Terrath the Steady##42614
		..turnin The Twilight Flight##26831
	step //215
		goto 60.3,33.2
		.from Defaced Earthrager##44076+, Twilight Soulreaper##42916+, Twilight Priestess##42823+
		.kill 15 Twilight Precipice Cultists |q 26829/1
	step //216
		goto 63.3,25.0
		.talk Therazane##44025
		..turnin The Stone March##26829
		..turnin Therazane's Mercy##26832
		..accept Word In Stone##26833
	step //217
		goto 49.6,53.0
		.talk Maruut Stonebinder##43818
		..turnin Word In Stone##26833
		..accept Undying Twilight##26875
	step //218
		goto 50.7,49.6
		.kill 12 Twilight Invaders |q 26875/1
		.kill Desecrated Earthrager##44683 |q 26875/2
		.' Click the Quest Complete box that displays on the right side of the screen under your minimap
		..turnin Undying Twilight##26875
		..accept The Binding##26971
		' |modelnpc 44681
	step //219
		goto 49.6,52.9
		.kill High Priestess Lorthuna##43837 |q 26971/1 
	step //220
		goto 49.6,52.9
		.talk Earthcaller Torunscar##43835
		..turnin The Binding##26971
	step //221
		goto 49.8,53.4
		.talk Therazane##43792
		..accept The Stone Throne##26709
	step //222
		goto 56.4,12.1
		.talk Therazane##42465
		..turnin The Stone Throne##26709
]])
ZygorGuidesViewer:RegisterInclude("A_Therazane_DailyQuest", [[
		'Increasing your Therazane reputation to Revered will unlock more daily quests. |tip Use the THERAZANE guide in the Cataclysm Reputation section to do this.
		.' Skip to the next step in the guide
	step
		goto Deepholm,56.1,14.4
		.talk Felsen the Enduring##43805
		..accept Fear of Boring##27046 |daily
		..accept Motes##27047 |daily
		..accept Beneath the Surface##28488 |daily |tip This quest can be offered at random and may not be offered everyday.
	step
		goto 56.6,14.1
		.talk Terrath the Steady##43806
		..accept The Restless Brood##28391 |daily |tip This quest can be offered at random if you have at least Revered reputation with Therazane.  However, the quest may not be offered everyday.
		only if rep ('Therazane') >= Revered
	step
		goto 55.4,14.2
		.talk Pyrite Stonetender##44945
		..accept Lost In The Deeps##26710 |daily |tip This quest can be offered at random and may not be offered everyday.	
	step
		goto 57.3,12.5
		.talk Gorsik the Tumultuous##43804
		..accept Soft Rock##27049 |daily
		..accept Fungal Fury##27050 |daily
	step
		goto 59.6,14.0
		.talk Ruberick##44973
		..accept Through Persistence##27051 |daily
		..accept Glop, Son of Glop##28390 |daily |only if rep ('Therazane') >= Revered |tip This quest can be offered at random if you have at least Revered reputation with Therazane.  However, the quest may not be offered everyday.
	step
		goto 32.7,24.3
		.' Use your Stonework Mallet next to the Pale Resonating Crystal |use Stonework Mallet##60266 |tip It's a huge green crystal sitting on the ground.
		.' Strike the Pale Resonating Crystal |q 28391/1
		.from Aeosera##43641 |tip Click the Boulder Platforms to jump from rock to rock while fighting Aeosera.  When she is casting her Breath Fire ability, jump to another rock and attack her while she is breathing fire to the other rock.  Repeat this until she surrenders.
		.' Defeat Aeosera |q 28391/2
		only if rep ('Therazane') >= Revered
	step
		goto 56.6,14.1
		.talk Terrath the Steady##43806
		..turnin The Restless Brood##28391
		only if rep ('Therazane') >= Revered
	step
		goto 58.3,25.6 |n
		.' Enter the cave |goto 58.3,25.6,0.5 |noway |c
	step
		goto 61.3,26.2
		.talk Ricket##44968
		..accept Underground Economy##27048 |daily |tip This quest can be offered at random and may not be offered everyday.
	step
		goto 66.1,28.1
		.' Follow the path inside the cave
		.' Click the Ruby Gemstone Cluster |tip It looks like 3 dark colored spinning rings with a bunch of red crystals spinning above them.
		.from Enormous Gyreworm##48533
		.get Ruby Crystal Cluster |q 28488/1
	step
		goto 63.6,23.0
		.' Use Ricket's Tickers next to Deep Alabaster Crystals |use Ricket's Tickers##65514 |tip They look like huge white rocks around this area.
		.get 3 Deep Alabaster Crystal |q 27048/1
	step
		goto 62.6,23.9 |n
		.' Follow this path |goto 62.6,23.9,0.5 |noway |c
	step
		goto 61.8,19.7
		.' Use Ricket's Tickers next to Deep Celestite Crystals |use Ricket's Tickers##65514 |tip They look like huge blue rocks around this area.
		.get 3 Deep Celestite Crystal |q 27048/2
	step
		goto 62.0,18.0 |n
		.' Follow this path |goto 62.0,18.0,0.5 |noway |c
	step
		goto 64.4,18.6
		.' Use Ricket's Tickers next to Deep Amethyst Crystals |use Ricket's Tickers##65514 |tip They look like huge purple rocks around this area.
		.get 3 Deep Amethyst Crystal |q 27048/3
	step
		goto 65.3,18.4 |n
		.' Follow this path |goto 65.3,18.4,0.5 |noway |c
	step
		goto 66.4,20.2
		.' Use Ricket's Tickers next to Deep Garnet Crystals |use Ricket's Tickers##65514 |tip They look like huge red rocks around this area.
		.get 3 Deep Garnet Crystal |q 27048/4	
	step
		goto 63.6,23.9
		.' All around inside this cave:
		.from Gorged Gyreworm##42766+, Gyreworm##44257+
		.kill 10 Gyreworm |q 27046/1
		.' Click Painite Shards |tip They look like small green glowing crystals sitting on the ground all around inside this cave.
		.get 10 Painite Mote |q 27047/1
	step
		goto 63.1,20.8
		.talk Pebble##49956
		..' Tell him to follow you
	step
		goto 64.2,17.6 |n
		.' Follow this path |goto 64.2,17.6,0.5 |noway |c
	step
		goto 61.3,26.2
		.talk Ricket##44968
		..turnin Underground Economy##27048
	step
		goto 58.3,25.6 |n
		.' Leave the cave |goto 58.3,25.6,0.5 |noway |c
	step
		goto 58.3,25.6
		.' Wait in this spot until Pebble bobbles around appreciatively and then disappears into the distance
		.' Bring Pebble to safety |q 26710/1
	step
		goto 74.0,41.2
		.kill 8 Fungal Behemoth |q 27049/1
		.from Verlok Grubthumper##43367+, Verlok Shroomtender##43368+
		.get Bag of Verlok Miracle-Grow |q 27051/1
		.' Click Sprouting Crimson Mushrooms |tip They look like tiny mushrooms on the ground around this area.  Try to only click the solid blue, solid red or white-brown ones.  The blue ones with red spots will explode and hurt you. 
		.' Destroy 10 Freshly Sprouted Mushrooms |q 27050/1
	step
		goto 68.6,29.1 |n
		.' Enter the cave |goto 68.6,29.1,0.5 |noway |c
	step
		goto 69.8,31.9
		.talk Earthmender Norsala##43503
		..' Tell her you're ready when she is
		.kill Fungalmancer Glop |q 28390/1 |tip Follow him each time he runs away.  Avoid the mushrooms as you walk, they will give you a debuff.  While fighting Fungalmancer Glop, kill the Boomshrooms he creates.  Don't let them grow too big, they will explode and deal a lot of damage.
	step
		goto 70.2,33.8 |n
		.' Follow the path up |goto 70.2,33.8,0.5 |noway |c
	step
		goto 68.6,29.1 |n
		.' Leave the cave |goto 68.6,29.1,0.5 |noway |c
	step
		goto Deepholm,56.1,14.4
		.talk Felsen the Enduring##43805
		..turnin Fear of Boring##27046
		..turnin Motes##27047
		..turnin Beneath the Surface##28488
	step
		goto 55.4,14.2
		.talk Pyrite Stonetender##44945
		..turnin Lost In The Deeps##26710
	step
		goto 57.3,12.5
		.talk Gorsik the Tumultuous##43804
		..turnin Soft Rock##27049
		..turnin Fungal Fury##27050
	step
		goto 59.6,14.0
		.talk Ruberick##44973
		..turnin Through Persistence##27051
		..turnin Glop, Son of Glop##28390 |only if rep ('Therazane') >= Revered
]])

ZygorGuidesViewer:RegisterInclude("A_Baradin_Base_Camp_Dailies", [[
	step
		goto Stormwind City,73.2,18.4
		.' Click the Portal to Tol Barad |tip It looks like a small white glowing portal.
		.' Teleport to Tol Barad |goto Tol Barad Peninsula |noway |c
	step
		goto Tol Barad Peninsula,72.9,60.9
		.talk Sergeant Gray##48254
		..accept Bomb's Away!##28275 |daily |or
		..accept Cannonball!##27987 |daily |or
		..accept Ghostbuster##27978 |daily |or
		..accept Taking the Overlook Back##27991 |daily |or
		..accept WANTED: Foreman Wellson##27975 |daily |or
		..accept Watch Out For Splinters!##27973 |daily |or
	step
		goto 73.4,59.2
		.talk Commander Marcus Johnson##47240
		..accept Claiming The Keep##28059 |daily |or
		..accept Leave No Weapon Behind##28063 |daily |or
		..accept Not The Friendliest Town##28130 |daily |or
		..accept Teach A Man To Fish.... Or Steal##28137 |daily |or
		..accept Walk A Mile In Their Shoes##28065 |daily |or
	step
		goto 73.7,57.6
		.talk Camp Coordinator Brack##48255
		..accept A Sticky Task##27948 |daily |or 2
		..accept Boosting Morale##27972 |daily |or 2 
		..accept Captain P. Harris##27970 |daily |or 2
		..accept Rattling Their Cages##27971 |daily |or 2
		..accept Shark Tank##28050 |daily |or 2
		..accept Thinning the Brood##27944 |daily |or 2
	step 
		goto 74.8,59.6
		.talk Lieutenant Farnsworth##48250
		..accept Finish The Job##28046 |daily |or 2
		..accept First Lieutenant Connor##27967 |daily |or 2
		..accept Magnets, How Do They Work?##27992 |daily |or 2
		..accept Salvaging the Remains##27966 |daily |or 2
		..accept The Forgotten##27949 |daily |or 2
	step
		goto 74.3,42.8 |n
		.' Follow the path up |goto 74.3,42.8,0.5 |noway |c
	step
		goto 78.6,42.0
		.kill Commander Largo##47304 |q 27991/1 |tip He's at the top of the tower.
	step
		goto 78.2,49.0
		.from Overlook Spectre##47182+, Ghastly Worker##47183+, Overlook Spirit##47181+
		.' Slay 14 Largo's Overlook Ghosts |q 27978/1
		.click Cannonball Stack##4177
		.get 4 Stack of Cannonballs |q 27987/1
	step
		goto 69.3,23.1
		.click String of Fish##6705+
		.get 22 Rustberg Seabass |q 28137/1
	step
		goto 67.6,37.1
		.from Suspicious Villager##47657+, Apprehensive Worker##47659+, Rustberg Bandit##47627+
		.kill 14 Rustberg Village Residents |q 28130/1
	step
		goto 54.2,47.0
		.kill 12 Darkwood Lurker##46508+ |q 27944/1
	step	
		goto 54.2,47.0
		.from Darkwood Broodmother##46507+
		.get 4 Sticky Silk Gland |q 27948/1
	step
		goto 47.9,8.1
		.kill Captain P. Harris##47287 |q 27970/1 |tip He's walking around on this broken boat.
	step
		goto 49.4,19.8
		.kill Tank##46608 |q 28050/1 |tip He's an elite shark that swims in the water around this area.  This is a group quest, so you will probably need help.
		.click Barrel of Southsea Rum##9095+
		.get 6 Barrel of Southsea Rum |q 27972/1
	step
		goto 49.0,29.4
		.kill 8 Shipwrecked Sailor##46605+ |q 27971/1
	step
		goto 36.1,27.3
		.kill Keep Lord Farson##47447 |q 28059/1 |tip He's upstairs in the fort.
	step
		goto 37.8,29.1
		.talk Farson Hold Prisoner##48308
		..' Tell you're here to help him escape
		.' Escort the Farson Prisoner |q 28065/1 |tip Follow the Farson Hold Prisoner and protect him.
	step
		goto 41.2,35.8
		.click Rack of Rifles##8972
		.get 12 Rusty Rifle |q 28063/1
	step
		goto 27.2,47.7
		.kill Foreman Wellson##46648 |q 27975/1
	step
		goto 22.2,36.3
		.clicknpc Wellson Cannon##48283
		.' Shoot the boats
		.' Destroy 10 Wellson Supply Boats |q 28275/1
	step
		goto 30.1,43.9
		.click Shipyard Lumber##1109
		.get 15 Shipyard Lumber |q 27973/1
	step
		goto 40.2,57.9
		.kill 5 Restless Infantry##46823 |q 28046/1
		.' Use your Magnatized Scrap Collector |use Magnatized Scrap Collector##62829
		.click Siege Scrap##6868+
		.get 7 Siege Engine Scrap |q 27992/1
	step
		goto 38.4,77.6
		.kill First Lieutenant Connor##46571 |q 27967/1
	step
		goto 38.1,71.5
		.from Wandering Soul##46586+, Forgotten Ghoul##46569+
		.get 9 Cursed Femur |q 27966/1
		.click Forgotten Soldier's Tombstone##2452
		.' Release 6 Tortured Souls |q 27949/1
	step
		goto 72.9,60.9
		.talk Sergeant Gray##48254
		..turnin Bomb's Away!##28275
		..turnin Cannonball!##27987
		..turnin Ghostbuster##27978
		..turnin Taking the Overlook Back##27991
		..turnin WANTED: Foreman Wellson##27975
		..turnin Watch Out For Splinters!##27973
	step
		goto 73.4,59.2
		.talk Commander Marcus Johnson##47240
		..turnin Claiming The Keep##28059
		..turnin Leave No Weapon Behind##28063
		..turnin Not The Friendliest Town##28130
		..turnin Teach A Man To Fish.... Or Steal##28137
		..turnin Walk A Mile In Their Shoes##28065
	step
		goto 73.7,57.6
		.talk Camp Coordinator Brack##48255
		..turnin A Sticky Task##27948
		..turnin Boosting Morale##27972
		..turnin Captain P. Harris##27970
		..turnin Rattling Their Cages##27971
		..turnin Shark Tank##28050
		..turnin Thinning the Brood##27944
	step
		goto 74.8,59.6
		.talk Lieutenant Farnsworth##48250
		..turnin Finish The Job##28046
		..turnin First Lieutenant Connor##27967
		..turnin Magnets, How Do They Work?##27992
		..turnin Salvaging the Remains##27966
		..turnin The Forgotten##27949
]])

ZygorGuidesViewer:RegisterInclude("A_Baradin_Hold_Dailies", [[
	step
		'These daily quests will only be available if the Alliance faction currently controls Tol Barad.
		|confirm
	step
		goto Tol Barad,50.9,49.7
		.talk Sergeant Parker##48066
		..accept A Huge Problem##28122 |daily
		..accept Swamp Bait##28162 |daily
		..accept The Leftovers##28163 |daily
	step
		goto 51.4,49.6
		|modelnpc 2nd Lieutenant Wansworth##48061 
		..Click here if 2nd Lieutenant Wansworth is present. |confirm |next wansworth_is_here
		|modelnpc Commander Stevens##48039
		..Click here if Commander Stevens is present. |confirm |next stevens_is_here
		|modelnpc Marshal Fallows##48074
		..Click here if Marshal Fallows is present. |confirm |next fallows_is_here
		'Only one of these NPCs will be available.
	step
	label "wansworth_is_here"
		goto 51.4,49.6
		.talk 2nd Lieutenant Wansworth##48061
		..accept D-Block##28165 |daily
		..accept Svarnos##28185 |daily
		..accept Cursed Shackles##28186 |daily
		|next exit
	step
	label "stevens_is_here"
		goto 51.5,49.5
		.talk Commander Stevens##48039
		..accept Clearing the Depths##28117 |daily
		..accept Learning From The Past##28120 |daily
		..accept The Imprisoned Archmage##28118 |daily
		|next exit
	step
	label "fallows_is_here"
		goto 51.5,49.6
		.talk Marshal Fallows##48074
		..accept Food From Below##28232 |daily
		..accept Prison Revolt##28188 |daily
		..accept The Warden##28223 |daily
		|next exit
	step
	label "exit"
		goto 42.7,39.1 |n
		.' Enter the underground jail |goto 42.7,39.1,0.5 |noway |c
	step
		goto 48.3,30.7
		.from Svarnos##47544+
		.get Svarnos' Cursed Collar |q 28185/1
	step
		goto 44.4,30.5
		.from Imprisoned Imp##47549+, Cell Watcher##47542+, Shivan Destroyer##47540+, Jailed Wrathguard##47548+
		.' Slay 10 Demons |q 28165/1
		.click Cursed Shackle##181
		.get 8 Cursed Shackles |q 28186/1
	step
		goto 42.1,41.8
		.from Baradin Crocolisk##47591+
		.get 8 Crocolisk Hide |q 28162/1
	step
		goto 44.0,69.2 |n
		.' Enter the underground jail |goto 44.0,69.2,0.5 |noway |c
	step
		goto 37.5,71.7
		.from Warden Silva##48036
		.get Warden's Keys |q 28223/1
	step
		goto 40.9,78.2
		.from Imprisoned Worker##47550+, Exiled Mage##47552+
		.' Slay 10 Prisoners |q 28188/1
		.click Crate of Cellblock Rations##347+
		.get 12 Cellblock Ration |q 28232/1
	step
		goto 60.8,50.1 |n
		.' Enter the underground jail |goto 60.8,50.1,0.5 |noway |c
	step
		goto 56.8,54.8
		.from Archmage Galus##47537
		.get Archmage Galus' Staff |q 28118/1
	step
		goto 51.4,49.5
		.from Captive Spirit##47531+, Ghastly Convict##47590+
		.' Slay 9 Ghosts |q 28117/1
		.click Dusty Prison Journal##8051+
		.get 4 Dusty Prison Journal |q 28120/1
	step
		goto 51.1,29.7
		.from Horde Mage Infantry##47608+, Horde Shaman Infantry##47610+, Horde Rogue Infantry##47609+, Horde Druid Infantry##47607+
		.kill 12 Horde Infantry |q 28163/1
	step
		goto 52.8,36.7
		.kill Problim##47593 |q 28122/1 |tip He patrols around Baradin Hold.  Some searching may be required.
	step
		goto Tol Barad,50.9,49.7
		.talk Sergeant Parker##48066
		..turnin A Huge Problem##28122
		..turnin Swamp Bait##28162
		..turnin The Leftovers##28163
	step
		goto 51.4,49.6
		.talk 2nd Lieutenant Wansworth##48061
		..turnin D-Block##28165
		..turnin Svarnos##28185
		..turnin Cursed Shackles##28186
	step
		goto 51.5,49.5
		.talk Commander Stevens##48039
		..turnin Clearing the Depths##28117
		..turnin Learning From The Past##28120
		..turnin The Imprisoned Archmage##28118
	step
		goto 51.5,49.6
		.talk Marshal Fallows##48074
		..turnin Food From Below##28232
		..turnin Prison Revolt##28188
		..turnin The Warden##28223
]])

ZygorGuidesViewer:RegisterInclude("Golden_Lotus",[[
	step
		'Proceeding to Pre-Quests |next |only if default
		'Proceeding to The Golden Lotus Dailies |next "dailies" |only if completedq(30638)
	step
		goto Vale of Eternal Blossoms 84.4,62.4
		.talk Xari the Kind##64031
		..accept The Shrine of Seven Stars##30631
	step
		goto 61.3,22.0
		.talk Mokimo the Strong##59959
		.' Ask him how the refuges are settling in.
		.' Speak to Mokimo the Strong. |q 30631/2
	step
		goto Shrine of Two Moons/1 68.4,47.7
		.talk Madam Vee Luo##62996
		.' Ask her what you can find in the city.
		.' Speak to Madam Vee Luo. |q 30631/3
	step
		goto Vale of Eternal Blossoms 62.0,20.5
		.talk Elder Liao##63996
		.' Ask him what what this place is.
		.' Speak to Elder Liao. |q 30631/4
	step
		goto 74.2,42.6
		.talk Jaluu the Generous##59908
		.' Ask him if he has seen anything suspicious.
		.' Speak to Jaluu the Generous. |q 30631/1
	step
		goto 56.7,42.7
		.talk Sun Tenderheart##58468
		..turnin The Golden Lotus##30631
	step
		goto 56.7,43.6
		.talk Leven Dawnblade##58408
		..accept The Ruins of Guo-Lai##30632
	step
		goto 34.0,38.0
		.talk Anji Autumnlight##58465
		..turnin The Ruins of Guo-Lai##30632
		..accept Out with the Scouts##30633
	step
		goto 33.7,38.4
		.talk Kun Autumnlight##58471
		..accept Barring Entry##30634
	step
		goto 33.8,22.6
		.talk Lao Softfoot##65252
		.' Tell him you're ready to infiltrate the cave. |q 30634/1
	step
		'Follow Lao Softfoot up the hill. |tip Do not stray far from him, he will keep you stealthed as long as you are close.
		.' Wait for the patrol to be at a safe distance and place the explosives at the mouth of the cave [27.6,15.3] |use Explosive Keg##80484
		.' Explosives Planted |q 30634/2
	step
		goto 30.6,29.6
		.kill 8 Shao-Tien Precursor##59914+ |q 30633/1
	step
		goto 33.7,38.4
		.talk Kun Autumnlight##58471
		..turnin Barring Entry##30634
	step
		goto 34.0,38.0
		.talk Anji Autumnlight##58465
		..turnin Out with the Scouts##30633
		..accept Killing the Quilen##30635
		..accept Stones of Power##30636
	step
		goto 22.5,27.0
		'Click the Quest Discovered box that displays on the right side of the screen under your minimap
		..accept The Guo-Lai Halls##30637
	step
		.' Enter the Ruins of Guo-Lai. |goto 22.5,26.9 <5 |c
	step
		'Go in this building and down to [22.0,16.1]
		.' Attack Zhao-Jin the Bloodletter, he will run. |modelnpc Zhao-Jin the Bloodletter##59921
		.kill Dagou##59977 |q 30637/1
	step
		.' Click the Quest Auto-Complete box in the top right corner:
		..turnin The Guo-Lai Halls##30637
	step
		'Leave the building |goto 22.4,26.6 <5 |c
	step
		goto 21.6,30.6
		.kill 9 Stone Guardian##59973+ |q 30635/1
		.click Revelite Crystal
		.get 7 Relelite Crystal##80511+ |q 30636/1
	step
		goto 34.0,38.0
		.talk Anji Autumnlight##58465
		..turnin Killing the Quilen##30635
		..turnin Stones of Power##30636
		..turnin The Guo-Lai Halls##30637
		..accept Leaving an Opening##30638
	step
		goto 56.7,43.6
		.talk Leven Dawnblade##58408
		..turnin Leaving an Opening##30638
	step
	label dailies
		.' You will only be able to accept 5 quests from the following NPCs.
		|confirm
	step
		goto 56.7,43.6
		.talk Leven Dawnblade##58408
		..accept The Eternal Vigil##30307 |daily
	step
		goto 56.6,43.6
		.talk Anji Autumnlight##58465
		..accept Stone Hard Quilen##30308 |daily |or 2
		..accept Set in Stone##30309 |daily |or 2
		..accept Thundering Skies##30310 |daily |or 2
		..accept Crumbling Behemoth##31762 |daily |or 2
		..accept Unleashed Spirits##31757 |daily |or 2 
		..accept Striking First##31760 |daily |or 2
	step
		goto 56.6,43.6
		.talk Kun Autumnlight##58471
		..accept High Standards##30311 |daily |or
		..accept Laosy Scouting##31758 |daily |or
		..accept Cannonfire##31754 |daily |or
		..accept High Chance of Rain##31756 |daily |or
	step
		goto 56.6,43.1
		.talk Sun Tenderheart##58468
		..accept Given a Second Chance##30312 |daily |or
		..accept Free Spirits##30320 |daily |or
		..accept Acts of Cruelty##31755 |daily |or
	step
		goto 39.7,26.0
		.click Shao-Tien Cage##9667  |tip If he is not in this cage try one of the other coordinates below.
		.' [39.2,19.2]
		.' [40.5,18.4]
		.' [43.2,15.9] 
		.' [47.5,19.1]
		.' [50.5,23.6]
		.' Rescue Lao Softfoot |q 31758/1
		|only if havequest(31758)
	step
		goto 44.2,15.8
		.' Kill the Shao-Tien Soul-Renders surrounding the Behemoth.
		.' Shao-Tien Behemoth ritual stopped. |q 31760/1
		|modelnpc 58460
		|only if havequest(31760)
	step
		goto 50.9,22.3
		.click Shao-Tien Stormcaller##11827
		.' Destroy the Eastern Stormcaller |q 31756/1
		|only if havequest(31756)
	step
		goto 47.8,19.1
		.click Shao-Tien Stormcaller##11827
		.' Destroy the Northern Stormcaller |q 31756/2
		|only if havequest(31756)
	step
		goto 43.1,27.
		.click Shao-Tien Stormcaller##11827
		.' Destroy the Southern Stormcaller |q 31756/3
		|only if havequest(31756)
	step
		goto 36.8,18.
		.click Shao-Tien Stormcaller##11827
		.' Destroy the Western Stormcaller |q 31756/4
		|only if havequest(31756)
	step
		goto 44.0,21.8
		.from Shao-Tien Soul-Render##58460+, Shao-Tien Marauder##58412+ |only if havequest(30307)
		.' Kill 12 Shao-Tien Marauders. |q 30307/1 |only if havequest(30307)
		.' Free 5 Torture victims. |q 31755/1 |only if havequest(31755)
		.kill 6 Mogu Effigy##59156+ |q 30309/1 |only if havequest(30309)
		.kill 3 Subjugated Serpent##59158+ |q 30310/1 |only if havequest(30310)
		.kill 30 Unleashed Spirit |q 31757/1 |only if havequest(31757)
		.' You can find more Unleashed Spirits at [46.9,34.3] |only if havequest(31757)
		.kill 8 Granite Quilen##59157 |q 30308/1 |only if havequest(30308)
		.click Golden Lotus Banner |only if havequest(30311)
		.' Raise 6 Golden Lotus Standards |q 30311/1 |only if havequest(30311)
		.click Soul Vortex |only if havequest(30320)
		.clicknpc Captive Pandaren Soul##59231 |only if havequest(30320)
		.' Free 15 Captive Pandaren Spirits |q 30320/1 |only if havequest(30320)
		.kill Shao-Tien Behemoth |q 31762/1 |only if havequest(31762)
		.' Use your Wu Kao Explosive near a Shao-Tien Cannon. |use Wu Kao Explosive##89123 |only if havequest(31754)
		.' Destroy 7 Shao-Tien Cannons. |q 31754/1 |only if havequest(31754)
	step
		goto 52.3,28.8 
		.' Use Shado-Pan Bandages on Wounded Defenders |use Shado-Pan Bandages##84242
		.' Heal 6 Wounded Defenders |q 30312/1
		|only if havequest(30312)
	step
		goto 56.6,43.1
		.talk Sun Tenderheart##58468
		..turnin Given a Second Chance##30312 |daily
		..turnin Free Spirits##30320 |daily
		..turnin Acts of Cruelty##31755 |daily
	step
		goto 56.6,43.6
		.talk Anji Autumnlight##58465
		..turnin Stone Hard Quilen##30308 |daily
		..turnin Set in Stone##30309 |daily
		..turnin Thundering Skies##30310 |daily
		..turnin Crumbling Behemoth##31762 |daily
		..turnin Unleashed Spirits##31757 |daily
		..turnin Anji's Diplomacy##31760 |daily
	step
		goto 56.6,43.6
		.talk Kun Autumnlight##58471
		..turnin High Standards##30311 |daily
		..turnin Laosy Scouting##31758 |daily
		..turnin Cannonfire##31754 |daily
		..turnin High Chance of Rain##31756 |daily
	step
		goto 56.7,43.6
		.talk Leven Dawnblade##58408
		..turnin The Eternal Vigil##30307 |daily
		..accept Whitepetal Lake##31131 |daily |or |next "whitepetal"
		..accept Mistfall Village##31242 |daily |or |next "mistfall"
		..accept Attack on Mistfall Village##31243 |daily |or |next "mistfall3"
		.' If Leven has no available quests after turning in The Eternal Vigil click here. |confirm 
	step
		goto 56.7,43.2
		.talk Ren Firetongue##58469
		..accept A Smashing Impression##30283 |daily
	step
		goto 56.5,43.4
		.talk He Softfoot##58470
		..accept The Silent Approach##30281 |daily
	step
		goto 56.5,43.7
		.talk Anji Autumnlight##58465
		..accept Burning Away the Filth##30282 |daily
	step
		goto 56.5,43.7
		.talk Kun Autumnlight##58471
		..accept Rude Awakenings##30292 |daily |or
		..accept In Enemy Hands##30293 |daily |or
	step
		goto 43.4,42.9
		.clicknpc Shao-Tien Ritual Statue##63090
		.' Click all four statues and fight off whatever creature spawns to defend them.
		.' Shao-Tien Ritual Statues destroyed |q 30283/1
		|only if havequest(30283)
	step
		goto 45.2,41.7
		.kill 8 Paleblade Flesheater##63082+ |q 30292/1 |only if havequest(30292)
		.from Shao-Tien Mindbender##63129+, Shao-Tien Reclaimer##63081+ |only if havequest(30281)
		.' Kill 10 Whitepetal mogu |q 30281/1 |only if havequest(30281)
		.' Use the Shado-Pan Torch in your bags near the Shao-Tien Banners in this area. |use Shado-Pan Torch##84781 |only if havequest(30282)
		.' Burn 10 Shao-Tien Banners |q 30282/1 |only if havequest(30282)
		.' Rescue 8 Dominated Defenders by killing the Shao-Tien Mindbender's controlling them. |q 30293/1 |only if havequest(30293)
	step
		'Click the Complete Quest box that displays on the right side of the screen under your minimap
		..turnin The Silent Approach##30281 |daily
		..accept The Soul-Gatherer##30482
	step
		goto 40.8,48.0
		.from Shadowmaster Sydow##63240+ |tip You can stand on the Lily Pads in the water.
		.get Soul-Gatherer's Beads |q 30482/1
		|only if havequest(30482)
	step
		goto 56.6,43.2
		.talk He Softfoot##58470
		..turnin The Soul-Gatherer##30482
	step
		goto 56.7,43.2
		.talk Ren Firetongue##58469
		..turnin A Smashing Impression##30283 |daily
	step
		goto 56.5,43.7
		.talk Anji Autumnlight##58465
		..turnin Burning Away the Filth##30282 |daily
	step
		goto 56.5,43.7
		.talk Kun Autumnlight##58471
		..turnin Rude Awakenings##30292 |daily
		..turnin In Enemy Hands##30293 |daily
	step
		goto 56.7,43.6
		.talk Leven Dawnblade##58408
		 ..accept Behind Our Lines##31136 |daily |or |next "behind"
		..accept The Ruins of Guo-Lai##31248 |daily |or |next "ruins"
		..accept Setting Sun Garrision##31250 |daily |or |next "ssg"
		..accept Mistfall Village##31249 |daily |or |next "mistfall"
	step
	label	"behind"
		goto 69.2,54.8
		.' Walk along this path until you find General Tamuja
		.kill General Temuja##63101+ |q 31136/1
	step
		goto 56.7,43.6
		.talk Leven Dawnblade##58408
		 ..turnin Behind Our Lines##31136
		|next "end" |only if rep('Golden Lotus')<=Friendly
		|next "honored" |only if rep('Golden Lotus')==Honored
		|next "revered" |only if rep('Golden Lotus')==Revered 
		|next "exalted" |only if rep('Golden Lotus')==Exalted 
	step
	label ruins
		goto 34.0,38.1
		.talk Anji Autumnlight##58503
		..turnin The Ruins of Guo-Lai##31248 |only if havequest(31248)
		..turnin The Ruins of Guo-Lai##31294 |only if havequest(31294)
		..turnin Guo-Lai Infestation##31240 |only if havequest(31240)
		..turnin The Ruins of Guo-Lai##31296 |only if havequest(31296)
		..accept In Ashen Webs##30200 |daily 
		..accept Troubling the Troublemakers##30228 |daily 
		..accept Blood on the Rise##30226 |daily 
		|confirm
	step
		goto 34.0,38.1
		.talk Kun Autumnlight##58504
		..accept Hard as a Rock##30304 |daily |or
		..accept That's Not a Rock!##30204 |daily |or
	step
		goto 33.5,40.8
		.talk Sinan the Dreamer##63266
		..accept Runelocked##30205 |daily 
		..accept Runes in the Ruins##30206 |daily 
		|confirm
	step
		goto 31.2,31.0
		.' Around this ruin there will be four blue runic symbols on the ground, walk over each of them to unlock the Ancient Mogu Artifact
		.click Ancient Mogu Artifact
		.get Ancient Mogu Artifact##85204 |q 30205/1
		.' The relic may also be at [26.9,19.6]
		|only if havequest(30205)
	step
		goto 30.7,20.4
		.from Stonebark Trickster##58545 |only if havequest(30228)
		.' Kill 8 Stonebark sprites |q 30228/1 |only if havequest(30228)
		.from Shao-Tien Fist##65134+, Shao-Tien Sorcerer##65133+ |only if havequest(30226)
		.' Kill 8 Ruin's Rise mogu. |q 30226/1 |only if havequest(30226)
	step
		goto 26.3,29.2
		.click Mogu Statue |only if havequest(30304)
		.from Mogu Statue##63447+ |only if havequest(30304)
		.' Destroy 10 Mogu Statues |q 30304/1 |only if havequest(30304)
		.from Ashweb Weaver##58459+, Ashweb Piercer##58475+ |only if havequest(30200)
		.' Kill 10 Ashweb Spiders |q 30200/1 |only if havequest(30200)
		.' Use your Shado-Pan Torch on the small rocks around this area. |use Shado-Pan Torch##85261 |only if havequest(30204)
		.kill 50 Ashweb Hatchling##58568+ |q 30204/1 |only if havequest(30204)
		.click Guo-Lai Runestone##6714 |only if havequest(30206)
		.get 12 Guo-Lai Runestone |q 30206/1 |only if havequest(30206)
		.' You can find more of the objectives in this step at [25.2,38.7]
	step
		goto 34.0,38.1
		.talk Kun Autumnlight##58504
		..turnin Hard as a Rock##30304 |daily 
		..turnin That's Not a Rock!##30204 |daily 
	step
		goto 34.0,38.1
		.talk Anji Autumnlight##58503
		..turnin In Ashen Webs##30200 |daily 
		..turnin Troubling the Troublemakers##30228 |daily 
		..turnin Blood on the Rise##30226 |daily 
		..accept Wulon, the Granite Sentinel##30227 |daily |or 
		..accept The Ashweb Matriarch##30225 |daily |or
	step
		goto 33.5,40.8
		.talk Sinan the Dreamer##63266
		..turnin Runelocked##30205 |daily 
		..turnin Runes in the Ruins##30206 |daily 
	step
		goto Vale of Eternal Blossoms/18 77.6,72.9
		.kill Wulon##63510 |q 30227/1
		|only if havequest(30227)
	step
		goto Vale of Eternal Blossoms/18 75.7,47.9
		.kill Bloodtip##58474 |q 30225/1 |tip Every 20% Bloodtip casts Call Swarmers which brings out many small spiders, they are easily killed and need to be killed immediately.
		|only if havequest(30225)
	step
		goto 56.1,49.1
		'Traverse the following rooms by only stepping on the pale tiles, colored tiles will harm you.
		|confirm
		|only if havequest(30280)
	step
		goto Vale of Eternal Blossoms/19 53.9,68.3
		.kill Milau##64965 |q 30280/1 |tip Milau has several deadly abilities. He will cast a Lightning Breath in any direction, do not be in front of him when he does this. He also starts casting Lightning Pools, constantly move until he is done. Periodically he will pull you to the middle of the room and cast Lightning Sweep. While he is casting get as much distance on him as you can.
		|only if havequest(30280)
	step
		'Follow this hallway. |goto 18.5,16.1 <5 |c
		|only if havequest(30277)
	step
		goto 17.3,11.9
		.click Deactivate First Spirit Wall
		.' Deactivate the First Spirit Wall |q 30277/1
		|only if havequest(30277)
	step
		goto 13.9,10.0
		.click Deactivate Second Spirit Wall
		.' Deactivate the Second Spirit Wall |q 30277/2
		|only if havequest(30277)
	step
		goto 18.6,7.4
		.click Deactivate Final Spirit Wall
		.' Deactivate the Final Spirit Wall |q 30277/3
		|only if havequest(30277)
	step
		goto 20.6,10.5
		.click Ancient Guo-Lai Artifact
		.get Ancient Guo-Lai Artifact |q 30277/4
		|only if havequest(30277)
	step
		goto Vale of Eternal Blossoms 34.0,38.1
		.talk Anji Autumnlight##58503
		..turnin The Thunder Below##30280 
		|only if havequest(30280)
	step
		goto 34.0,38.1
		.talk Anji Autumnlight##58503
		..turnin The Crumbling Hall##30277 
		|only if havequest(30277)
	step
		goto 34.0,38.1
		.talk Anji Autumnlight##58503
		..turnin The Ashweb Matriarch##30225 |daily |or 
		..turnin Wulon, the Granite Sentinel##30227 |daily |or
		|next "end" |only if rep('Golden Lotus')<=Honored
		|next "revered" |only if rep('Golden Lotus')==Revered 
		|next "exalted" |only if rep('Golden Lotus')==Exalted 
	step
	label mistfall
		goto 33.9,72.2
		.talk Che Wildwalker##59338
		..turnin Mistfall Village##31242 |daily |only if havequest(31242)
		..turnin Mistfall Village##31245 |daily |only if havequest(31245)
		..turnin Mistfall Village##31249 |daily |only if havequest(31249)
		..accept Clearing in the Forest##30263 |daily |or 2
		..accept Ferocious Feralmaw##30194 |daily |or 2
		..accept Ruffling Some Feathers##30232 |daily |or 2
		..accept The Pandaren Uprising Relived##30237 |daily |or 2
		..accept Return to Rest##30238 |daily |or 2
		.'_
		.' Click here if these quests are not available |confirm
	step
		goto 35.4,74.1
		.talk Mayor Shiyo##58819
		..accept Sprite Plight##30190 |daily |or 2
		..accept My Town, It's on Fire##30192 |daily |or 2
		..accept Steer Clear of the Beer Here##30191 |daily |or 2
		.'_
		.' If these quests are not available click here |confirm
	step
		goto 33.9,70.4
		.talk Cook Tope##58818
		..accept Meating Expectations##30193 |daily |or 2
		..accept Pomfruit Pickup##30231 |daily |or 2
		..accept Lushroom Rush##30196 |daily |or 2
		.'_
		.' If these quests are not available click here. |confirm
	step
		goto 33.8,69.7
		.talk Merchant Tantan##58820
		..accept Blooming Blossoms##30195 |daily
		.'_
		.' If this quest is not available click here. |confirm
	step
		goto 26.1,53.1
		.kill 8 Thundermaw##58456+ |q 30194/1 |only if havequest(30194)
		.from Fairlands Gazelle##58454+ |only if havequest(30193)
		.get 10 Fairlands Gazelle Meat##79244+ |q 30193/1 |only if havequest(30193)
		.' Use the Pomharvest Firework in your bags to knock Pomfruits out of the trees in the area |use Pomharvest Firework##79344 |only if havequest(30231)
		.clicknpc Pomfruit##58767 |only if havequest(30231)
		.get 12 Pomfruit##79250+ |q 30231/1 |only if havequest(30231)
		.from Silkfeather Hawk##58457 |only if havequest(30232)
		.get 120 Silken Feather##84121+ |q 30232/1 |only if havequest(30232)
		.click Eternal Blossom |tip These can be found most abundantly along the river. |only if havequest(30195)
		.get 10 Eternal Blossom##79246+ |q 30195/1 |only if havequest(30195)
	step
		 goto 29.9,53.5
		.from Shao-Tien Painweaver##65131+, Shao-Tien Conqueror##65132+
		.' Kill 10 Winterbough Glade mogu. |q 30263/1
		|only if havequest(30263)
	step
		goto 37.3,81.4
		.from 12 Slateskin Troublemaker##58673+ |q 30190/1 |only if havequest(30190)
		.click Stolen Mistfall Keg |only if havequest(30191)
		.get 10 Stolen Mistfall Keg##85778+ |q 30191/1 |only if havequest(30191)
		.click Brazier Fire |only if havequest(30192)
		.' Put out 30 Brazier Fires |q 30192/1 |only if havequest(30192)
	step
		goto 49.5,67.6
		.kill 8 Ancient Mogu Spirit##58671+ |q 30237/1 |only if havequest(30237)
		.click Lushroom |only if havequest(30196)
		.get 12 Lushroom##85681+ |q 30196/1 |only if havequest(30196)
		.click Pandaren Gravestone |only if havequest(30238)
		.' Honor 6 Pandaren Gravestones |q 30238/1 |only if havequest(30238)
	step
		'Click the Complete Quest box that displays on the right side of the screen under your minimap
		..turnin The Pandaren Uprising Relived##30237 |daily
	step
		goto 35.4,74.1
		.talk Mayor Shiyo##58819
		..turnin Sprite Plight##30190 |daily
		..turnin My Town, It's on Fire##30192 |daily
		..turnin Steer Clear of the Beer Here##30191 |daily
	step
		goto 33.9,70.4
		.talk Cook Tope##58818
		..turnin Meating Expectations##30193 |daily
		..turnin Pomfruit Pickup##30231 |daily
		..turnin Lushroom Rush##30196 |daily
	step
		goto 33.8,69.7
		.talk Merchant Tantan##58820
		..turnin Blooming Blossoms##30195 |daily
	step
		goto 33.9,72.2
		.talk Che Wildwalker##59338
		..turnin Ferocious Feralmaw##30194 |daily
		..turnin Ruffling Some Feathers##30232 |daily
		..turnin Clearing in the Forest##30263 |daily
		..turnin Return to Rest##30238 |daily
		..accept Lao-Fe the Slavebinder##30239 |daily |or |next "slave"
		..accept Aetha##30236 |daily |or |next "aetha"
		..accept The Ruins of Guo-Lai##31294 |daily |or |next "ruins"
		..accept Mogu within the Ruins of Guo-Lai##31295 |daily |or |next honored
		..accept Setting Sun Garrison##30385 |daily |or |next "ssg"
		..accept Quid Pro Quo##30235 |daily |or
	step
		goto 30.8,79.4
		.' Use the Stone of the Water to walk on water |use Stone of the Water Strider##87807
		.kill Quid##58771 |q 30235/1
		|only if havequest(30235)
	step
		goto 33.9,72.2
		.talk Che Wildwalker##59338
		..turnin Quid Pro Quo##30235
	step
	label aetha
		goto 35.0,90.0
		.from Aetha##58778 |tip Aetha will constantly summon Tornadoes, simply kite Aetha to a new location out of the range. With your Stone of the Water Strider buff, you should easily be able to kite on the water.
		.' Subdue Aetha |q 30236/1
	step
		goto 33.9,72.2
		.talk Che Wildwalker##59338
		..turnin Aetha##30236 |daily
		|next "end" |only if rep('Golden Lotus')<=Friendly
		|next "honored" |only if rep('Golden Lotus')==Honored 
		|next "revered" |only if rep('Golden Lotus')==Revered
		|next "exalted" |only if rep('Golden Lotus')==Exalted 
	step
	label slave
		goto 47.4,65.8
		.kill Spirit of Lao-Fe##58817 |q 30239/1
	step
		goto 33.9,72.2
		.talk Che Wildwalker##59338
		..turnin Lao-Fe the Slavebinder##30239 |daily
		|next "end" |only if rep('Golden Lotus')<=Friendly
		|next "honored" |only if rep('Golden Lotus')==Honored 
		|next "revered" |only if rep('Golden Lotus')==Revered 
		|next "exalted" |only if rep('Golden Lotus')==Exalted 
	step
	label mistfall2
		goto 35.1,75.4
		.talk Sun Tenderheart##59337
		..turnin Attack on Mistfall Village##31243 |daily
		..accept Wu Kao Scouting Reports##30285 |daily // Not Available
	step
		goto 35.3,74.9
		.talk Rook Stonetoe##58911
		..accept Freeing Mind and Body##30289 |daily |or 2
		..accept Mogu Make Poor House Guests##30287 |daily |or 2
		..accept Stonebound Killers##30290 |daily |or 2
	step
		goto 35.3,76.8
		.talk Mayor Shiyo##59336
		..accept My Town, It's On Fire Again##30288 |daily
	step
		goto 37.8,73.2
		.click Miftfall Water Bucket##11350 
		.collect Mistfall Water Bucket##85950 |n
		.' Use the Miftfall Water Bucket to put out 60 fires around town. |use Mistfall Water Bucket##85950
		.' 60 Mistfall Village fires doused. |q 30288/1
		|only if havequest(30288)
	step
		goto 33.8,72.6
		.from Shao-Tien Pillager##63948+, Shao-Tien Subjugator##63947+ |only if havequest(30287)
		.' Kill 12 Shao-Tien attackers. |q 30287/1 |only if havequest(30287)
		.get 3 Wu Kao Scouting Report##86099 |q 30285/1 |only if havequest(30285)
		.' Free 6 Dominated Guards by killing the Subjugator controlling them. |q 30289/1 |only if havequest(30289)
	step
		goto 35.1,75.4
		.talk Sun Tenderheart##59337
		..turnin Wu Kao Scouting Reports##30285 |daily
	step
		goto 35.3,74.9
		.talk Rook Stonetoe##58911
		..turnin Mogu Make Poor House Guests##30287 |daily
		..turnin Freeing Mind and Body##30289 |daily
	step
		goto 35.3,76.8
		.talk Mayor Shiyo##59336
		..turnin My Town, It's On Fire Again##30288 |daily
	step
		goto 35.1,75.4
		.talk Sun Tenderheart##59337
		..accept Setting Sun Garrison##31297 |daily |next "ssg"
		..accept The Ruins of Guo-Lai##31296 |daily |next "ruins"
	step
	label whitepetal
		goto 43.6,46.1
		.talk He Softfoot##59342
		..turnin Whitepetal Lake##31131 |daily
		..accept Under Watchful Eyes##30341 |daily |or
		..accept The Displaced Paleblade##30314 |daily |or
		..accept The Moving Mists##30313 |daily |or
	step
		goto 42.3,46.0
		.talk Ren Firetongue##59343
		..accept A Thousand Pointy Teeth##30284 |daily |or 2
		..accept Sparkle in the Eye##30265 |daily |or 2
		..accept Stunning Display##30291 |daily |or 2
		..accept Fiery Tongue, Fragile Feet##30342 |daily |or 2
		..accept A Weighty Task##30338 |daily |or 2
	step
		goto 42.3,46.0
		.talk Merchant Tantan##59341
		..accept Stick in the Mud##30340 |daily |or
		..accept Getting your Hands Dirty##30339 |daily |or
	step
		goto 41.1,47.0
		.kill 15 Knifetooth Swarmer##59404+ |q 30284/1 |only if havequest(30284)
		.kill 8 Stillwater Crocodile##58455+ |q 30342/1 |only if havequest(30342)
		.click Ruby Eye |tip These are inside of the Mogu heads underwater. |only if havequest(30265)
		.get 8 Ruby Eye##84646+ |q 30265/1 |only if havequest(30265)
		.clicknpc Stunned Whitepetal##62984 Carp |only if havequest(30291)
		.get 12 Stunned Whitepetal Carp##84656 |q 30291/1 |only if havequest(30291)
		.click Mogu Artifact |only if havequest(30338)
		.get 8 Mogu Artifact##84655 |q 30338/1 |only if havequest(30338)
	step
		goto 44.1,53.2
		.' Use the Shado-Pan Flare in your bags to illuminate Shao-Tien Surveyors. |use Shado-Pan Flare##89366 |only if havequest(30341)
		.kill 8 Shao-Tien Surveyor##59379+ |q 30341/1 |only if havequest(30341)
		.kill 8 Fog Walker##58672+ |q 30313/1 |only if havequest(30313)
		.from Paleblade Flesheater##59378+, Paleblade Slithertongue##63044+ |only if havequest(30314)
		.' Kill 8 Paleblade Saurok |q 30314/1 |only if havequest(30314)
		.click Whitepetal Reeds##10817 |only if havequest(30340)
		.get 12 Whitepetal Reed##84241 |q 30340/1 |only if havequest(30340)
		.click Fresh Dirt##20 |only if havequest(30339)
		.get 12 Fresh Whitepetal Worm##84240 |q 30339/1 |only if havequest(30339)
	step
		goto 42.3,46.0
		.talk Ren Firetongue##59343
		..turnin A Thousand Pointy Teeth##30284 |daily
		..turnin Sparkle in the Eye##30265 |daily
		..turnin Stunning Display##30291 |daily
		..turnin Fiery Tongue, Fragile Feet##30342 |daily
		..turnin A Weighty Task##30338 |daily
	step
		goto 42.3,46.0
		.talk Merchant Tantan##59341
		..turnin Stick in the Mud##30340 |daily
		..turnin Getting your Hands Dirty##30339 |daily
	step
		goto 43.6,46.1
		.talk He Softfoot##59342
		..turnin Under Watchful Eyes##30341 |daily
		..turnin The Displaced Paleblade##30314 |daily
		..turnin The Moving Mists##30313 |daily
	step
		goto 42.3,46.0
		.talk Ren Firetongue##59343
		..accept Vicejaw##30234 |daily |or |next "vicejaw"
		..accept Setting Sun Garrison##31247 |daily |or |next "ssg"
		..accept Guo-Lai Infestation##31240 |daily |or |next "ruins"
		..accept Mistfall Village##31245 |daily |or |next "mistfall"
		..accept Attack on Mistfall Village##31246 |daily |or |next "mistfall3"
		..accept Guo-Lai Encampment##31244 |daily |or |next "ruins2"
	step
	label vicejaw
		goto 37.3,51.1
		.kill Vicejaw##58769 |q 30234/1 |tip When you first pull Vicejaw, kite him through the corpses of Paleblade Flesheaters that are lying all around, when he eats 10 of them he will begin casting Upchuck. When he does this he wil not move and will only attack in front of himself, walk around to his backside and attack until his energy meter resets to 0. When he is weak Vicejaw will pick you up and begin to eat you. Kill him before he is able to chew you to death. He will not try to eat you if he is using Upchuck, time it right and you won't have to race to kill him.
	step
		goto 42.3,46.0
		.talk Ren Firetongue##59343
		..turnin Vicejaw##30234 |daily
		|next "end" |only if rep('Golden Lotus')<=Friendly
		|next "honored" |only if rep('Golden Lotus')==Honored 
		|next "revered" |only if rep('Golden Lotus')==Revered 
		|next "exalted" |only if rep('Golden Lotus')==Exalted 
	step
	label ruins2
		goto 33.8,38.5
		.talk Leven Dawnblade##59332
		..turnin Guo-Lai Encampment##31244
		..accept Painting the Ruins Red##30298 |daily
		..accept Offering a Warm Welcome##30301 |daily
	step
		goto 33.1,39.0
		.talk Wounded Defender##63753
		..accept No Stone Unturned##30299 |daily 
		..accept The Key to Success##30300 |daily
		.'_
		.' Click here if no quest is available |confirm
	step
		goto 33.4,38.0
		.talk Rook Stonetoe##59333
		..accept Carved in Stone##30481 |daily
		.'_
		.' Click here if this quest is not available today |confirm
	step
		map Vale of Eternal Blossoms
		path loose; loop; curved
		path	31.5,34.1	25.8,34.5	24.4,32.9
		path	22.0,27.7	19.2,30.6	20.3,34.3
		path	23.9,39.1
		.from Shao-Tien Torturer##63641
		.' He walks along this path
		.get Shao-Tien Cage Key |q 30300/1
		|only if havequest(30300)
	step
		goto 25.4,28.8
		.from Shao-Tien Dominator##63610+, Shao-Tien Soul-Caller##63611+, Shao-Tien Torturer##63641+ |only if havequest(30298)
		.click Guo-Lai Runestone##6714+ |only if havequest(30481)
		.' Kill 15 Guo-Lai mogu. |q 30298/1 |only if havequest(30298)
		.get 1 Shao-Tien Cage Key |q 30300/1 |only if havequest(30300)
		.get 12 Guo-Lai Runestone |q 30481/1 |only if havequest(30481)
		.click Shao-Tien Cage |only if havequest(30300)
		.' Free 6 Golden Lotus Prisoners. |q 30300/2 |only if havequest(30300)
		.click Mogu Statue |only if havequest(30299)
		.from Mogu Statue##63447+ |only if havequest(30299)
		.' Destroy 10 Mogu Statues |q 30299/1 |only if havequest(30299)
		.' Use your Shado-Pan Torch on the Tents around this area. |use Shado-Pan Torch##85581 |only if havequest(30301)
		.' Burn 6 Shao-Tien Tents |q 30301/1 |only if havequest(30301)
	step
		goto 33.1,39.0
		.talk Wounded Defender##63753
		..turnin No Stone Unturned##30299 
		..turnin The Key to Success##30300 
	step
		goto 33.8,38.5
		.talk Leven Dawnblade##59332
		..turnin Painting the Ruins Red##30298 
		..turnin Offering a Warm Welcome##30301 
		..accept The Imperion Threat##30302 |daily
	step
		goto 68.6,71.0
		.from Gochao the Ironfist##62880
		.' Kill the Shao-Tien Imperion |q 30302/1
		|only if havequest(30302)
	step
		goto 33.8,38.5
		.talk Leven Dawnblade##59332
		..turnin The Imperion Threat##30302
		|next "end" |only if rep('Golden Lotus')<=Friendly
		|next "honored" |only if rep('Golden Lotus')==Honored 
		|next "revered" |only if rep('Golden Lotus')==Revered 
		|next "exalted" |only if rep('Golden Lotus')==Exalted
	step
	label ssg
		goto 21.4,71.6
		.talk Anji Autumnlight##58919
		..turnin Setting Sun Garrison##31247 |daily |only if havequest(31247)
		..turnin Setting Sun Garrison##30385 |daily |only if havequest(30385)
		..turnin Setting Sun Garrison##31297 |daily |only if havequest(31297)
		..turnin Setting Sun Garrision##31250 |daily |only if havequest(31250)
		..accept The Battle Ring##30306 |daily
	step
		goto 21.5,71.2
		.talk Leven Dawnblade##59340
		..accept Survival Ring: Flame##30240 |daily |or
		..accept Survival Ring: Blades##30242 |daily |or
	step
		goto 19.7,74.2
		.from Shado-Pan Trainee##58992+
		.' Defeat 20 Shado-Pan Trainees. |q 30306/1
		|only if havequest(30306)
	step
		goto 19.2,67.5
		.' Stay within the circle and avoid getting hit by the fireworks.
		.' Live through the Survival Ring for 90 seconds |q 30240/1
		|only if havequest(30240)
	step
		goto 19.2,67.5
		.' Stay within the circle and avoid the posts with blades surrounding them and the running pandas.
		.' Live through the Survival Ring for 90 seconds |q 30242/1
		|only if havequest(30242)
	step
		goto 21.5,71.2
		.talk Leven Dawnblade##59340
		..turnin Survival Ring: Flame##30240 |daily |or
		..turnin Survival Ring: Blades##30242 |daily |or
	step
		goto 21.4,71.6
		.talk Anji Autumnlight##58919
		..turnin The Battle Ring##30306 |daily
		..accept Upon the Ramparts##30246 |daily |or
		..accept Enemy at the Gates##30264 |daily |or
		..accept No Reprieve##30444 |daily |or
	step
		goto 21.4,71.5
		.talk Kun Autumnlight##58920
		..accept Mantid Under Fire##30243 |daily |or
		..accept Along the Serpent's Spine##30244 |daily |or
		.'_
		.' If these quests are unavailable today, click here. |confirm
	step
		goto 21.5,71.2
		.talk Leven Dawnblade##59340
		..accept Bloodied Skies##30266 |daily
		.'_
		.' If this quest is unavailable today, click here. |confirm
	step
		goto 18.2,63.6
		.talk Kelari Featherfoot##58704
		..accept Roll Club: Serpent's Spine##30261 |daily
		.'_
		.' If this quest is unavailable today, click here. |confirm
	step
		goto 17.0,47.5
		.from Shao-Tien Antiquator##58928+, Shao-Tien Fist##58927+
		.kill 8 Shao-Tien mogu |q 30444/1
		|only if havequest(30444)
	step
		goto 18.2,63.6
		.talk Kelari Featherfoot##58704
		.' Let's roll. |q 30261/1
		|only if havequest(30261)
	step
		'Hold down your right mouse button to help you maneuver through the course. |tip Grab as many speed boosts as you can to make it go quicker.
		.' Complete the Serpent's Spine Roll Course. |q 30261/2
		|only if havequest(30261)
	step
		goto 18.2,63.6
		.talk Kelari Featherfoot##58704
		..turnin Roll Club: Serpent's Spine##30261 |daily
	step
		goto 15.6,66.1
		.clicknpc War Serpent##65336
		.' Mount a War Serpent |invehicle |q 30264/1
		|only if havequest(30264)
	step
		'Use the abilities on your hotbar to do the following:
		.kill 60 Krik'thik Hiveling##63972+ |q 30264/2
		.kill 3 Krik'thik War Wagon##64274+ |q 30264/3
		.kill 3 Krik'thik Catapult##64275+ |q 30264/4
		|only if havequest(30264)
	step
		'Click the Return to Setting Sun Garrison button. |outvehicle
		|only if havequest(30264)
	step
		goto 5.4,72.3
		.click Setting Sun Turret 
		.' Mount a turret. |invehicle |c
		|only if havequest(30266)
	step
		.kill 30 Krik'thik Swarmer##63973+ |q 30266/1
		|only if havequest(30266)
	step
		'Click the Leave Vehicle button. |outvehicle
		|only if havequest(30266)
	step
		goto 11.4,58.8
		.from Krik'thik Locust-Guard##63974+, Krik'thik Needler##63976+
		.' Kill 10 Kir'thik wall attackers |q 30246/1
	step
		goto 6.9,68.8
		.from Krik'thik Locust-Guard##63974+, Krik'thik Needler##63976+
		.' Kill 10 Kir'thik wall attackers |q 30244/1
		|only if havequest(30244)
	step
		'Click the Complete Quest box that displays on the right side of the screen under your minimap
		..turnin Along the Serpent's Spine##30244 |daily
		..accept Under the Setting Sun##30249 |daily
		|only if havequest(30244)
	step
		goto 6.0,58.8
		.kill Kri'chon##63978 |q 30249/1
		|only if havequest(30249)
	step
		goto 21.5,71.2
		.talk Leven Dawnblade##59340
		..turnin Bloodied Skies##30266 |daily
	step
		goto 21.4,71.6
		.talk Anji Autumnlight##58919
		..turnin Upon the Ramparts##30246 |daily
		..turnin No Reprieve##30444
		..accept Vyraxxis, the Krik'thik Swarm-Lord##30251 |daily |only if completedq(30246)
	step
		goto 7.9,33.9
		.kill Vyraxxis##63977 |q 30251/1
		|only if havequest(30251)
	step
		goto 21.4,71.6
		.talk Anji Autumnlight##58919
		..turnin Vyraxxis, the Krik'thik Swarm-Lord##30251 |daily
	step
		goto 21.4,71.5
		.talk Anji Autumnlight##58919
		..turnin Enemy at the Gates##30264 |daily
	step
		goto 21.4,71.5
		.talk Kun Autumnlight##58920
		..turnin Mantid Under Fire##30243 |daily
		..turnin Under the Setting Sun##30249 |daily
		|next "end" |only if rep('Golden Lotus')<=Friendly
		|next "honored" |only if rep('Golden Lotus')==Honored 
		|next "revered" |only if rep('Golden Lotus')==Revered 
		|next "exalted" |only if rep('Golden Lotus')==Exalted
	step
	label mistfall3
		goto 35.2,74.9
		.talk Rook Stonetoe##58911
		..turnin Attack on Mistfall Village##31246 |daily
		..accept Mogu Make Poor House Guests##30287 |daily |or 2
		..accept Stonebound Killers##30290 |daily |or 2
		..accept Freeing Mind and Body##30289 |daily |or 2
	step
		goto 35.1,75.4
		.talk Sun Tenderheart##59337
		..accept Wu Kao Scouting Reports##30285 |daily |or
		..accept Backed Into a Corner##30286 |daily |or
	step
		goto 35.3,76.7
		.talk Mayor Shiyo##59336
		..accept My Town, It's On Fire Again##30288 |daily
	step
		goto 37.8,73.2
		.click Miftfall Water Bucket
		.collect Mistfall Water Bucket##85950 |n
		.' Use the Miftfall Water Bucket to put out 60 fires around town. |use Mistfall Water Bucket##85950
		.' 60 Mistfall Village fires doused. |q 30288/1
		|only if havequest(30288)
	step
		goto 33.6,72.8
		.from Shao-Tien Pillager##63948+, Shao-Tien Subjugator##63947+ |only if havequest(30287)
		.' Kill 6 Shao-Tien attackers |q 30287/1 |only if havequest(30287)
		.click Wu Kao Scouting Report |tip These scrolls are very small and can be hard to find. |only if havequest(30285)
		.get 3 Wu Kao Scouting Report##86099 |q 30285/1 |only if havequest(30285)
		.kill 8 Stonebound Quilen##63950+ |q 30290/1 |only if havequest(30290)
		.' Rescue 6 Cornered Villagers |q 30286/1 |tip Attack the Subjugators or Quilen that are pinning them down. |only if havequest(30286)
		.' Free 6 Dominated Guards by killing the Subjugator controlling them. |q 30289/1 |only if havequest(30289)
	step
		goto 35.2,74.9
		.talk Rook Stonetoe##58911
		..turnin Mogu Make Poor House Guests##30287 |daily
		..turnin Stonebound Killers##30290 |daily
		..turnin Freeing Mind and Body##30289 |daily
	step
		goto 35.1,75.4
		.talk Sun Tenderheart##59337
		..turnin Wu Kao Scouting Reports##30285 |daily 
		..turnin Backed Into a Corner##30286 |daily 
	step
		goto 35.3,76.7
		.talk Mayor Shiyo##59336
		..turnin My Town, It's On Fire Again##30288 |daily
	step
		goto 35.2,74.9
		.talk Rook Stonetoe##58911
		..accept Gaohun the Soul-Severer##30296 |daily |or
		..accept Baolai the Immolator##30297 |daily |or
	step
		goto 39.2,74.6
		.kill Gaohun the Soul-Severer##62881 |q 30296/1
		|only if havequest(30296)
	step
		goto 37.5,81.5
		.kill Baolai the Immolator##63695 |q 30297/1 |tip  WARNING! Do not be near a ledge when he does his cleave, it will send you flying back dealing heavy falling damage.
		|only if havequest(30297)
	step
		goto 35.2,74.9
		.talk Rook Stonetoe##58911
		..turnin Gaohun the Soul-Severer##30296 |daily 
		..turnin Baolai the Immolator##30297 |daily 
		|next "end" |only if rep('Golden Lotus')<=Friendly
		|next "honored" |only if rep('Golden Lotus')==Honored 
		|next "revered" |only if rep('Golden Lotus')==Revered 
		|next "exalted" |only if rep('Golden Lotus')==Exalted
	step
	label revered
		goto 57.2,42.9
		.talk Zhi the Harmonious##59905
		..accept Battle Spear of the Thunder King##30640
	step
		goto 21.4,19.7
		.click Battle Spear of the Thunder King
		.get Battle Spear of the Thunder King##80808 |q 30640/1
	step
		goto 57.2,42.9
		.talk Zhi the Harmonious##59905
		..turnin Battle Spear of the Thunder King##30640
		..accept Battle Helm of the Thunder King##30641
	step
		'Enter the building here. |goto 22.3,26.4 <5 |c
	step
		goto Vale of Eternal Blossoms/18 56.2,48.7
		'Traverse the following rooms by only stepping on the pale tiles, colored tiles will harm you.
		|confirm
		|only if havequest(30641)
	step
		goto 58.5,44.4
		.talk Ren Firetongue##63571
		.' Tell him Zhi sent you.
		.' Enter the Hall of Tiles |q 30641/1
	step
		'Follow Ren Firetongue |goto Vale of Eternal Blossoms/19 44.7,67.1 <5 |c
	step
		goto 52.0,76.1
		.from Zhao-Jin the Bloodletter##60359 |tip He constantly shoots lighting at you so keep on the move. If you are in melee range he will try to cleave you, step around him as he begins casting.
		.click Battle Helm of the Thunder King
		.get Battle Helm of the Thunder King##80222 |q 30641/2
	step
		'While exiting the building be careful of the tiles. The safe path is along the pale tiles.
		.' Exit the building. |goto Vale of Eternal Blossoms/18 56.1,93.7 <5 |c
	step
		goto Vale of Eternal Blossoms 57.2,42.9
		.talk Zhi the Harmonious##59905
		..turnin Battle Helm of the Thunder King##30641
		..accept Battle Axe of the Thunder King##30642 //// Cannot get gate to drop.
	step
		'Enter the building here. |goto 40.4,77.1 <5 |c
	step
		goto 44.3,76.5
		.' Fight off the Jade Constructs that attack you. |tip If you need help defeating them walk into the orbs around this room. Blue will give a damage and haste buff, green will heal you.
		.from Jade Construct##60297+
		.' Pass the Trial of the Constructs |q 30642/1
	step
		goto 45.4,76.2
		.click Battle Axe of the Thunder King
		.get Battle Axe of the Thunder King##80807 |q 30642/2
	step
		goto 44.8,76.3
		.talk Zhi the Harmonious##59905
		..turnin Battle Axe of the Thunder King##30642
		|next "end"
	step
	label honored
		goto 33.8,38.5
		.talk Leven Dawnblade##58408
		..turnin Mogu within the Ruins of Guo-Lai##31295 |only if havequest(31295)
		..accept The Secrets of Guo-Lai##30639
		..accept Painting the Ruins Red##30298 |daily
		.'_
		.' Click here if the Daily quest is not available today |confirm
	step
		goto 33.4,38.0
		.talk Rook Stonetoe##59333
		..accept He Knows What He's Doing##30305 |daily |or 2
		..accept Carved in Stone##30481 |daily |or 2
		.'_
		.' Click here if these quests are not available |confirm
	step
		goto 33.1,39.0
		.talk Sun Tenderheart##59334
		..accept No Stone Unturned##30299 |daily
		..accept The Key to Success##30300 |daily
		.'_
		.' Click here if this quest is not available |confirm
	step
		map Vale of Eternal Blossoms
		path loose; loop; curved
		path	31.5,34.1	25.8,34.5	24.4,32.9
		path	22.0,27.7	19.2,30.6	20.3,34.3
		path	23.9,39.1
		.from Shao-Tien Torturer##63641
		.' He walks along this path
		.get Shao-Tien Cage Key |q 30300/1
		|only if havequest(30300)
	step
		goto 24.6,29.6
		.' All around this area:
		.click Shao-Tien Cage##9667
		.' Release Golden Lotus Prisoners |q 30300/2
		.' You can find more cages here [24.6,38.3]
		.' And more cages here: [29.9,29.4]
		|only if havequest(30300)
	step
		goto 31.8,33.0 |only if havequest(30298) or havequest(30481) or havequest(30305)
		.click Guo-Lai Runestone##6714+ |only if havequest(30481)
		.from Shao-Tien Soul-Caller##63611+, Shao-Tien Dominator##63610+ |only if havequest(30298) or havequest(30481)
		.kill 15 Guo-Lai mogu |q 30298/1 |only if havequest(30298)
		.get 12 Guo-Lai Runestone |q 30481/1 |only if havequest(30481)
		.' Stand on the Poison Traps and attack enemies in this area |model 10547 |only if havequest(30305)
		.' Lure 8 enemies into Poison Traps |q 30305/1 |only if havequest(30305)
	step
		goto 18.4,15.8
		.talk He Softfoot##64647
		.' Let's go. |q 30639/1
	step
		goto 19.1,9.6
		'Engage Zhao-Jin the Bloodletter and defeat the Crumbling Jade Warriors he sends at you.
		'After you defeat the Crumbling Jade Warriors, Zhao-Jin will summon a Jade Collossus, weaken it as fast as you can.
		.' Uncover the mogu plan in the Hall of Statues |q 30639/2
		|modelnpc Zhao-Jin the Bloodletter##64663
		|modelnpc Crumbling Jade Warrior##64883
	step
		goto 33.4,38.0
		.talk Rook Stonetoe##59333
		..turnin He Knows What He's Doing##30305
		..turnin Carved in Stone##30481
	step
		goto 33.8,38.5
		.talk Leven Dawnblade##58408
		..turnin Painting the Ruins Red##30298
		..accept The Imperion Threat##30302 |daily
	step
		goto 33.1,39.0
		.talk Sun Tenderheart##59334
		..turnin The Key to Success##30300
	step
		goto 78.0,73.1
		.kill Shao-Tien Imperion##62880 |q 30302/1
	step
		goto 33.8,38.5
		.talk Leven Dawnblade##58408
		..turnin The Imperion Threat##30302
	step
		goto 56.8,43.8
		.talk Leven Dawnblade##58408
		..turnin The Secrets of Guo-Lai##30639
		|next "end"
	step
	label exalted
		goto 56.7,43.7
		.talk Leven Dawnblade##58408
		..accept The Mogu's Message##30643
	step
		'Enter the building here. |goto 40.4,77.2 <5 |c
	step
		goto 44.8,76.3
		.talk Zhi the Harmonious##59905
		..turnin The Mogu's Message##30643 |tip WARNING! Turning in this quest will spawn enemy ambushers.
		..accept What Comes to Pass##30644
	step
		goto 56.5,43.3
		.talk Sun Tenderheart##58468
		..turnin What Comes to Pass##30644
		..accept The Might of Three##30645
	step
		goto 64.4,41.5
		.from Shao-Tien Marauder##60225+, Granite Quilen##60223+, Shao-Tien Spiritrender##60224+, Reanimated Jade Warrior##60121+
		.' Kill 100 Mogu Invaders |q 30645/1 |tip While doing this quest you will get some help from the Jade Serpent, Xeun the White Tiger, and Niuzao the Black Ox. Kills 1-34 will aided by the Jade Serpent, use the AoE buff given to take down many foes at once. Kill 34-67 will be aided by the White Tiger, use his buff to focus down individual targets in larger packs, when they are shattered they will deal extreme AoE damage. Kills 67-100 will be aided by Niuzao, use his buff to damage enemies in a cone. Periodically you will instantly kill enemies with a knockback.
	step
		goto 74.2,41.8
		.talk Sinan the Dreamer##59906
		..turnin The Might of Three##30645
		..accept The Final Power##30646
	step
		goto 77.6,37.2
		.' Use the Red Crane's power to jump over the wall of flame.
		|confirm
		|only if havequest(30646)
	step
		goto 78.7,35.8
		'Zhao-Jin will periodically throw Lightning Spears. Click them to pick them up and then use the new button on your screen to hurl the spear back at him. this will be your main source of damage.
		'Zhao-Jin will also summon Lightning Waves. With the Red Crane's buff you can easily jump over these.
		.kill Zhao-Jin the Bloodletter##60273 |q 30646/1
	step
		goto 56.5,43.6
		.talk Anji Autumnlight##58465
		..turnin The Final Power##30646
		|next "end"
]])

ZygorGuidesViewer:RegisterInclude("A_Tillers_PreQuest", [[
		goto Vale of Eternal Blossoms 60.2,22.9
		.talk Farmer Doran##64011
		..accept The Tillers##31374
	step
		goto Valley of the Four Winds 52.0,48.0
		.talk Farmer Yoon##58721
		..turnin The Tillers##31374
		..accept A Helping Hand##30252
	step
		goto 51.8,48.8
		.click Unbudging Rock
		.' Clear 8 Unbudging Rocks |q 30252/1
	step
		goto 52.8,47.9
		.talk Farmer Yoon##58646
		..turnin A Helping Hand##30252
	step
		goto 52.3,48.8
		.talk Farmer Yoon##58646
		..accept Learn and Grow I: Seeds##30535
	step
		goto 52.9,52.2
		.talk Merchant Greenfield##58718
		.' Tell him you're there to pick up seeds.
		.' Get a Packet of Green Cabbage Seeds |q 30535/1
	step
		goto 52.3,48.8
		.talk Farmer Yoon##58646
		..turnin Learn and Grow I: Seeds##30535
		..accept Learn and Grow II: Tilling and Planting##30254
	step
		goto 52.0,48.3
		.clicknpc Untilled Soil##59985+
		.' Till 2 patches of Soil. |q 30254/1
		.' Use the EZ-Gro Green Cabbage Seeds in your bags on the Tilled Soil. |use EZ-Gro Green Cabbage Seeds##80302
		.' Plant seeds in 2 patches of Tilled Soil. |q 30254/2
		|modelnpc Tilled Soil##59990+
	step
		goto 52.3,48.8
		.talk Farmer Yoon##58646
		..turnin Learn and Grow II: Tilling and Planting##30254
		..accept Learn and Grow III: Tending Crops##30255
	step
		goto 52.0,48.3
		.' Use the Rusty Watering Can on the Parched EZ-Gro Green Cabbage |use Rusty Watering Can##79104
		.' Water 2 parched Ez-Gro Green Cabbage |q 30255/1
		|modelnpc Parched EZ-Gro Green Cabbage##59987
	step
		goto 52.3,48.8
		.talk Farmer Yoon##58646
		..turnin Learn and Grow III: Tending Crops##30255
		..accept Learn and Grow IV: Harvesting##30256
	step
		goto 52.0,48.3
		.clicknpc Ripe EZ-Gro Green Cabbage##59833
		.get 2 EZ-Gro Green Cabbage |q 30256/1
	step
		goto 52.3,48.8
		.talk Farmer Yoon##58646
		..turnin Learn and Grow IV: Harvesting##30256
		..accept Learn and Grow V: Halfhill Market##30257
	step
		goto 52.8,48.0
		.click Dark Soil
		.get Marsh Lily |q 30257/1
	step
		goto 53.1,51.8
		.talk Gina Mudclaw##58706
		..turnin Learn and Grow V: Halfhill Market##30257 
		..accept Learn and Grow VI: Gina's Vote##31945
	step
		goto 52.9,52.2
		.talk Merchant Greenfield##58718
		.buy 1 Scallion Seeds##80591
	step
		goto 52.0,48.4
		.clicknpc Untilled Soil##58562
		.' Use your Scallion Seeds on the Tilled Soil |use Scallion Seeds##80591
		.' Plant Scallion Seeds |q 31945/1
		|modelnpc Tilled Soil##59990+
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
		.talk Gina Mudclaw##58706
		..turnin Learn and Grow VI: Gina's Vote##31945
]])
ZygorGuidesViewer:RegisterInclude("A_Tillers_DailyQuest", [[
	label dailies
		goto 52.3,48.8
		.talk Farmer Yoon##58646
		..accept The Kunzen Hunter-Chief##30336 |daily |or 2
		..accept That Dangling Carrot##31670 |daily |or 2
		..accept Stealing is Bad... Re-Stealing is OK##30334 |daily |or 2
		..accept The Cabbage Test##31669 |daily |or 2
		..accept It's Melon Time##31942 |daily |or 2
		..accept A Pumpkin-y Perfume##31672 |daily |or 2
		..accept Stalling the Ravage##30335 |daily |or 2
		..accept Red Blossom Leeks, You Make the Croc-in' World Go Down##31673 |daily |or 2
		..accept Squash Those Foul Odors##31941 |or 2
		..accept The Lesser of Two Evils##30333 |or 2
		..accept The White Turnip Treatment##31675 |or 2
	step
		goto 52.7,50.5
		.talk Andi##64464
		..accept A Gift For Fung##30475 |daily |or
		..accept A Gift For Chee Chee##30471 |daily |or
		..accept A Gift For Haohan##30477 |daily |or
		..accept A Gift For Jogu##30478 |daily |or
		..accept A Gift For Sho##30472 |daily |or
		..accept A Gift For Tina##30470 |daily |or
		..accept A Gift For Ella##30474 |daily |or
	step
		goto 53.1,51.7
		.talk Ella##58647
		..accept You Have to Burn the Ropes##30327 |daily
		.' Click here if Ella is not in town |confirm
	step
		goto 53.0,51.7
		.talk Haohan Mudclaw##57402
		..accept Pest Problems##30319
		.' Click here if Haohan is not in town |confirm
	step
		goto 53.1,51.7
		.talk Tina Mudclaw##58761
		..accept They Don't Even Wear Them##30323
		.' Click here if Tina is not in town |confirm
	step
		goto 53.1,52.1
		.talk Chee Chee##58709
		..accept Not in Chee-Chee's Backyard##30324 |daily
		.' Click here if Chee-Chee is not in town |confirm
	step
		goto 52.9,51.7
		.talk Farmer Fung##57298
		..accept Water, Water Everywhere##30317 |daily
		.' Click here if Farmer Fung is not in town |confirm
	step
		goto 53.1,52.1
		.talk Sho##58708
		..accept Where It Counts##30325
		.' Click here if Sho is not in town |confirm
	step
		goto 53.6,52.5
		.talk Jogu the Drunk##58710
		..accept Weed War II##30321 |daily
		.' Click here if Jogu has no available quests. |confirm
	step
		goto 53.0,51.8
		.talk Old Hillpaw##58707
		..accept Chasing the Chicken##30318
		.' Click here if Old Hillpaw is not in town. |confirm
	step
		goto 53.2,51.8
		.talk Gina Mudclaw##58706
		..accept Money Matters##30322
		.' If this quest is unavailable click here. |confirm
	step
		goto 55.1,50.3
		.talk Innkeeper Lei Lan##59582
		.' Tell her you are here on behalf of Gina Mudclaw.
		.' Innkeeper Lei Lan's Payment |q 30322/3
		|only if havequest(30322)
	step
		goto 55.6,52.1
		.talk Lolo Lio##59585
		.' Tell him you are here on behalf of Gina Mudclaw.
		.' Lolo Lio's Payment |q 30322/4
		|only if havequest(30322)
	step
		goto 56.1,49.6
		.talk Trader Jambeezi##59583
		.' Tell him you are here on behalf of Gina Mudclaw.
		.' Trader Jambeezi's Payment |q 30322/2
		|only if havequest(30322)
	step
		goto 56.7,47.1
		.talk Spicemaster Jin Jao##59581
		.' Tell him you are here on behalf of Gina Mudclaw.
		.' Spicemaster Jin Jao's Payment |q 30322/1
		|only if havequest(30322)
	step
		goto 52.9,52.1
		.talk Merchant Greenfield##58718
		.buy 1 Juicycrunch Carrot Seeds##80590 
		|only if havequest(31670)
	step
		goto 52.9,52.1
		.talk Merchant Greenfield##58718
		.buy 1 Green Cabbage Seeds##79102 
		|only if havequest(31669)
	step
		goto 52.9,52.1
		.talk Merchant Greenfield##58718
		.buy 1 White Turnip Seeds##80595 
		|only if havequest(31675)
	step
		goto 52.9,52.1
		.talk Merchant Greenfield##58718
		.buy 1 Jade Squash Seeds##89328 
		|only if havequest(31941)
	step
		goto 52.9,52.1
		.talk Merchant Greenfield##58718
		.buy 1 Striped Melon Seeds##89329 
		|only if havequest(31942)
	step
		goto 52.9,52.1
		.talk Merchant Greenfield##58718
		.buy 1 Mogu Pumpkin Seeds##80592 
		|only if havequest(31672)
	step
		goto 52.9,52.1
		.talk Merchant Greenfield##58718
		.buy 1 Red Blossom Leek Seeds##80593
		|only if havequest(31673)
	step
		goto 52.0,48.4
		.clicknpc Untilled Soil##58562
		.' Use your Juicycrunch Carrot Seeds on the Tilled Soil |use Juicycrunch Carrot Seeds##80590
		.' Plant Juicycrunch Carrot Seeds |q 31670/1
		|modelnpc Tilled Soil##59990+
		|only if havequest(31670)
	step
		goto 52.0,48.4
		.clicknpc Untilled Soil##58562
		.' Use your Jade Squash Seeds on the Tilled Soil |use Jade Squash Seeds##89328 
		.' Plant Jade Squash Seeds |q 31941/1
		|modelnpc Tilled Soil##59990+
		|only if havequest(31941)
	step
		goto 52.0,48.4
		.clicknpc Untilled Soil##58562
		.' Use your White Turnip Seeds on the Tilled Soil |use White Turnip Seeds##80595
		.' Plant White Turnip Seeds |q 31675/1
		|modelnpc Tilled Soil##59990+
		|only if havequest(31675)
	step
		goto 52.0,48.4
		.clicknpc Untilled Soil##58562
		.' Use your Green Cabbage Seeds on the Tilled Soil |use Green Cabbage Seeds##79102
		.' Plant Green Cabbage Seeds |q 31669/1
		|modelnpc Tilled Soil##59990+
		|only if havequest(31669)
	step
		goto 52.0,48.4
		.clicknpc Untilled Soil##58562
		.' Use your Striped Melon Seeds on the Tilled Soil |use Striped Melon Seeds##89329
		.' Plant Striped Melon Seeds |q 31942/1
		|modelnpc Tilled Soil##59990+
		|only if havequest(31942)
	step
		goto 52.0,48.4
		.clicknpc Untilled Soil##58562
		.' Use your Red Blossom Leek Seeds on the Tilled Soil |use Red Blossom Leek Seeds##80593
		.' Plant Red Blossom Leek Seeds |q 31673/1
		|modelnpc Tilled Soil##59990+
		|only if havequest(31673)
	step
		goto 53.8,50.9
		.talk Wing Nga##60231
		.' Tell her that you'd like to borrow one of Farmer Fung's kites.
		.' Ride a kite. |invehicle |c
		|only if havequest(30317)
	step
		.' Use your Water Buckest ability on the Dusty Spots below you. |tip They are outlined by a yellow circle.
		.' Water 35 Dusty Spots |q 30317/1
		|only if havequest(30317)
	step
		goto 38.5,51.7
		.talk Gai Lan##57385
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
		.collect Bloody Planshawk Leg
		|only if havequest(30475)
	step
		goto 39.6,45.3
		.talk Wika-Wika##59532
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
		goto 32.0,32.1
		.click Kunzen Rope
		.' Burn 6 ropes |q 30327/1
		|only if havequest(30327)
	step
		goto 53.0,51.3
		.talk Kol Ironpaw##58712
		.' Ask him if he could grill your plainshawk leg.
		.get Grilled Plainshawk Leg##80233 |q 30475/1
		|only if havequest(30475)
	step
		goto 29.7,34.5
		.click Yu-Ping Soup Cauldron
		.get Yu-Ping Soup##79870 |q 30472/1
		|only if havequest(30472)
	step
		goto 29.7,34.5
		.kill 1 Kunzen Ritualist##59123 |q 30325/3
		.click Blazing Ember
		.' Kick 4 Blazing Ember |q 30325/2
		.click Kunzen Ritual Candle
		.' Throw 8 Kunzen Ritual Candles |q 30325/1
		|only if havequest(30325)
	step
		goto 33.6,23.9
		.click Authentic Valley Stir Fry 
		.get Authentic Valley Stir Fry |q 30471/1
		|only if havequest(30471)
	step
		goto 34.2,23.5
		.from Kunzen Rockflinger##59120+, Kunzen Collector##59124+, Kunzen Ravager##59119+, Kunzen Hunter##59121+  
		.get Spicy Shrimp Dumplings |q 30474/1
		|only if havequest(30474)
	step
		goto 34.2,23.5
		.from Kunzen Rockflinger##59120+, Kunzen Collector##59124+, Kunzen Ravager##59119+, Kunzen Hunter##59121+  
		.' Kill 12 Kunzen hozen |q 30335/1
		.collect 1 Nice Necklace##86433 |n |only if not completedq(31325)
		.' Click the Nice Necklace in your bags. |use Nice Necklace##86433 |only if not completedq(31325)
		..accept A Very Nice Necklace##31325 |only if not completedq(31325)
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
		'Before you leave this Warren
		.click Chrysoberyl Outcropping
		.get Uncut Chrysoberyl |q 30470/1
		|only if havequest(30470)
	step
		'Leave the warren. |goto 44.0,22.3 <5 |c
		|only if havequest(30470)
	step
		goto 45.1,33.8
		.talk Tina Mudclaw##58761
		..turnin A Very Nice Necklace##31325
		|only if havequest(31325)
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
		.talk Bobo Ironpaw##58717
		.' Tell him you've got all this fruit here.
		.get Apple-Berry Hooch |q 30478/1
		|only if havequest(30478)
	step
		goto 52.3,48.8
		.talk Farmer Yoon##58646
		..turnin The Kunzen Hunter-Chief##30336 
		..turnin That Dangling Carrot##31670
		..turnin Stealing is Bad... Re-Stealing is OK##30334
		..turnin The Cabbage Test##31669
		..turnin It's Melon Time##31942
		..turnin A Pumpkin-y Perfume##31672
		..turnin Stalling the Ravage##30335 
		..turnin Red Blossom Leeks, You Make the Croc-in' World Go Down##31673
		..turnin Squash Those Foul Odors##31941
		..turnin The Lesser of Two Evils##30333 
		..turnin The White Turnip Treatment##31675 
	step
		goto 52.9,51.7
		.talk Farmer Fung##57298
		..turnin Water, Water Everywhere##30317
		..turnin A Gift For Fung##30475 |only if havequest(30475)
	step
		goto  53.0,51.7
		.talk Ella##58647
		..turnin You Have to Burn the Ropes##30327
		..turnin A Gift For Ella##30474 |only if havequest(30474)
	step
		goto 53.1,52.1
		.talk Sho##58708
		..turnin Where It Counts##30325
		..turnin A Gift For Sho##30472 |only if havequest(30472)
	step
		goto 53.2,51.8
		.talk Gina Mudclaw##58706
		..turnin Money Matters##30322
	step
		goto 53.1,51.9
		.talk Old Hillpaw##58707
		..turnin Chasing the Chicken##30318
	step
		goto 53.1,51.7
		.talk Tina Mudclaw##58761
		..turnin A Gift For Tina##30470 |only if havequest(30470)
		..turnin They Don't Even Wear Them##30323
	step
		goto 53.0,51.7
		.talk Haohan Mudclaw##57402
		..turnin Pest Problems##30319
		..turnin A Gift For Haohan##30477 |only if havequest(30477)
	step
		goto 53.6,52.5
		.talk Jogu the Drunk##58710
		..turnin Weed War II##30321
		..turnin A Gift For Jogu##30478 |only if havequest(30478)
	step
		goto 53.1,52.1
		.talk Chee Chee##58709
		..turnin Not in Chee-Chee's Backyard##30324
		..turnin A Gift For Chee Chee##30471 |only if havequest(30471)
		|next "honored" |only if rep('The Tillers')>=Honored
		|next "end"|only if rep('The Tillers')<=Friendly
	step
	label honored
		goto 52.3,48.8
		.talk Farmer Yoon##58646
		..accept Growing the Farm I: The Weeds##30260
	step
		goto 38.6,51.7
		.talk Gai Lan##57385
		..turnin Growing the Farm I: The Weeds##30260
		..accept Growing the Farm I: A Little Problem##30516
	step
		goto 36.5,51.1
		.click Spideroot
		.get 6 Spideroot |q 30516/1
	step
		goto 38.6,51.7
		.talk Gai Lan##57385
		..turnin Growing the Farm I: A Little Problem##30516
	step
	label mungmung
		goto 52.3,48.8
		.talk Farmer Yoon##58646
		..accept Mung-Mung's Vote I: A Hozen's Problem##30258
	step
		goto 44.2,34.3
		.talk Mung-Mung##57401
		..turnin Mung-Mung's Vote I: A Hozen's Problem##30258
		..accept Mung-Mung's Vote II: Rotten to the Core##30259
	step
		goto 42.7,38.2
		.click Partially Chewed Carrot
		.get 10 Partially Chewed Carrot##80116 |q 30259/1
	step
		goto 44.2,34.3
		.talk Mung-Mung##57401
		..turnin Mung-Mung's Vote II: Rotten to the Core##30259
		..accept Mung-Mung's Vote III: The Great Carrot Caper##31946
	step
		goto 52.9,52.1
		.talk Merchant Greenfield##58718
		.buy 2 Juicycrunch Carrot Seeds##80590 
	step
		goto 52.0,48.4
		.clicknpc Untilled Soil##58562
		.' Use your Juicycrunch Carrot Seeds on the Tilled Soil |use Juicycrunch Carrot Seeds##80590
		.' Plant 2 Juicycrunch Carrot Seeds |q 31946/1
		|modelnpc Tilled Soil##59990+
	step
		'Wait a day for the carrots to grow and then harvest them.
		.' Harvest 2 Ripe Juicycrunch Carrots |q 31946/2
		.get 10 Juicycrunch Carrot##74841 l|q 31946/3
]])


ZygorGuidesViewer:RegisterInclude("August_Celestials",[[
		goto Vale of Eternal Blossoms 84.6,63.7
		.talk Sage Whiteheart##64032
		..accept A Celestial Task##32011
	step
		'You will need to earn _Revered_ with _The Golden Lotus_ before you can do these dailies.
		.' Earn _Neutral_ Status with The Golden Lotus |condition rep("Golden Lotus")>=Neutral
		.' Earn _Friendly_ Status with The Golden Lotus |condition rep("Golden Lotus")>=Friendly
		.' Earn _Honored_ Status with The Golden Lotus |condition  rep("Golden Lotus")>=Honored
		.' Earn _Revered_ Status With The Golden Lotus |condition  rep("Golden Lotus")>=Revered
	step
	label start
		goto Vale of Eternal Blossoms 62.8,23.4
		.talk Sage Lotusbloom##64001
		.' The following quests will only be available the first time you are sent to a new area. They are random and Sage Lotusbloom will only have one at a time.
		..accept Challenge At The Temple of the Red Crane##31379 |or |next "crane" |only if not completedq(31379)
		..accept Attack At The Temple of the Jade Serpent##31377  |or |next "serpent" |only if not completedq(31377)
		..accept Defense At Niuzao Temple##31383 |or |next "ox" |only if not completedq(31383)
		..accept Trial At The Temple of the White Tiger##31381 |or |next "tiger" |only if not completedq(31381)
		.' If no quest is available, ask her how you can help the August Celestials today. Then click on whichever spirit needs you today.
		.' Niuzao the Black Ox |confirm |next "ox"
		.' Yu'lon the Jade Serpent |confirm |next "serpent"
		.' Xuen the White Tiger |confirm |next "tiger"
		.' Chi-Ji the Red Crane |confirm |next "crane"
	step
	label crane
		goto Krasarang Wilds 31.3,63.4
		.talk Thelonius##60506
		..turnin Challenge At The Temple of the Red Crane##31379
		|only if not completedq(31379)
	step
		goto 31.3,63.4
		.talk Thelonius##60506
		..accept Students of Chi-Ji##30718 |daily
		..accept Champion of Chi-Ji##30740 |daily |only if achieved(7287)
	step
		goto 31.3,63.6
		.talk Yan Quillpaw##60529
		..accept Gifts of the Great Crane##30717 |daily
	step
		goto 31.3,63.6
		.talk Kuo-Na Quillpaw##60528
		..accept Chasing Hope##30716 |daily
	step
		goto 34.6,82.0
		.talk Champion of Chi-Ji##60546
		.' Let's fight!
		.' Defeat a Champion of Chi-Ji |q 30740/1
		|only if havequest(30740)
	step
		goto 31.2,73.9
		.from 10 Student of Chi-Ji##60601+
		.' Duel 10 Students of Chi-Ji |q 30718/1
		.click Cerulean Gift of the Crane
		.click Crimson Gift of the Crane
		.click Bronze Gift of the Crane
		.get 10 Gift of the Great Crane##80938+ |q 30717/1
		.' Find 3 Spirits of the Crane |q 30716/1 |tip They look like stealthed birds roaming around the isle in set paths. Run into them.
	step
		goto 31.3,63.6
		.talk Kuo-Na Quillpaw##60528
		..turnin Chasing Hope##30716 |daily
	step
		goto 31.3,63.6
		.talk Yan Quillpaw##60529
		..turnin Gifts of the Great Crane##30717 |daily
	step
		goto 31.3,63.4
		.talk Thelonius##60506
		..turnin Students of Chi-Ji##30718 |daily
		..accept Ellia Ravenmane##30725 |daily |or
		..accept Minh Do-Tan##30726 |daily |or
		..accept Ellia Ravenmane: Rematch##30727 |daily |or
		..accept Fat Long-Fat##30728 |daily |or
		..accept Julia Bates##30729 |daily |or
		..accept Dextrous Izissha##30730 |daily |or
		..accept Kuo-Na Quillpaw##30731 |daily |or
		..accept Ellia Ravenmane: Revenge##30732 |daily |or
		..accept Tukka-Tuk##30733 |daily |or
		..accept Huck Wheelbarrow##30734 |daily |or
		..accept Mindel Sunspeaker##30735 |daily |or
		..accept Yan Quillpaw##30736 |daily |or
		..accept Fat Long-Fat: Rematch##30737 |daily |or
		..accept Thelonius##30738 |daily |or
		..accept Ellia Ravenmane: Redemption##30739 |daily |or
		|only if not achieved(7287)
	step
		goto 31.3,63.4
		.talk Thelonius##60506
		..turnin Students of Chi-Ji##30718 |daily
		..turnin Champion of Chi-Ji##30740 |daily
		|only if achieved(7287)
		|next "end"
	step
		goto 32.0,70.7
		.talk Fat Long-Fat##60534 |tip He is on the very top of this building.
		.' Let's fight!
		.' Defeat Fat Long-Fat |q 30728/1
	step
		goto 31.8,71.2
		.talk Ellia Ravenmane##60530
		.' Let's fight!
		.' Defeat Ellia Ravenmane |q 30725/1
	step
		goto 32.1,69.9
		.talk Mindel Sunspeaker##60541
		.' Let's fight!
		.' Defeat Mindel Sunspeaker |q 30735/1
	step
		goto 32.0,76.5
		.talk Minh Do-Tan##60532
		.' Let's fight!
		.' Defeat Minh Do-Tan |q 30726/1
	step
		goto 34.1,75.1
		.talk Tukka-Tuk##60539
		.' Let's fight!
		.' Defeat Tukka-Tuk |q 30733/1
	step
		goto 36.4,75.6
		.talk Ellia Ravenmane##60545
		.' Let's fight!
		.' Defeat Ellia Ravenmane |q 30739/1
	step
		goto 31.7,80.3
		.talk Dextrous Izissha##60536
		.' Let's fight!
		.' Defeat Dextrous Izissha |q 30730/1
	step
		goto 34.8,82.6
		.talk Fat Long-Fat##60543
		.' Let's fight!
		.' Defeat Fat Long-Fat |q 30737/1
	step
		goto 36.6,74.8
		.talk Kuo-Na Quillpaw##60537
		.' Let's fight!
		.' Defeat Kuo-Na Quillpaw |q 30731/1
	step
		goto 35.2,75.1
		.talk Ellia Ravenmane##60533
		.' Let's fight!
		.' Defeat Ellia Ravenmane |q 30727/1
	step
		goto 28.9,75.5
		.talk Julia Bates##60535
		.' Let's fight!
		.' Defeat Julia Bates |q 30729/1
	step
		goto 27.9,70.3
		.talk Huck Wheelbarrow##60540
		.' Let's fight!
		.' Defeat Huck Wheelbarrow |q 30734/1
	step
		goto 36.5,76.2
		.talk Yan Quillpaw##60542
		.' Let's fight!
		.' Defeat Yan Quillpaw |q 30736/1
	step
		goto 34.5,83.3
		.talk Ellia Ravenmane##60538
		.' Let's fight!
		.' Defeat Ellia Ravenmane |q 30732/1
	step
		goto 28.8,72.4
		.talk Thelonius##60544
		.' Let's fight!
		.' Defeat Thelonius |q 30738/1
	step
		goto 31.3,63.4
		.talk Thelonius##60506
		..turnin Ellia Ravenmane##30725 |daily |or
		..turnin Minh Do-Tan##30726 |daily |or
		..turnin Ellia Ravenmane: Rematch##30727 |daily |or
		..turnin Fat Long-Fat##30728 |daily |or
		..turnin Julia Bates##30729 |daily |or
		..turnin Dextrous Izissha##30730 |daily |or
		..turnin Kuo-Na Quillpaw##30731 |daily |or
		..turnin Ellia Ravenmane: Revenge##30732 |daily |or
		..turnin Tukka-Tuk##30733 |daily |or
		..turnin Huck Wheelbarrow##30734 |daily |or
		..turnin Mindel Sunspeaker##30735 |daily |or
		..turnin Yan Quillpaw##30736 |daily |or
		..turnin Fat Long-Fat: Rematch##30737 |daily |or
		..turnin Thelonius##30738 |daily |or
		..turnin Ellia Ravenmane: Redemption##30739 |daily |or
		|only if not achieved(7287)
		|next "end"
////Not always here,
	step
	label serpent
		goto The Jade Forest 53.9,61.9
		.talk Elder Sage Tai-Feng##57324
		..turnin Attack At The Temple of the Jade Serpent##31376 |only if havequest(31376)
		..accept Arrows of Fortune##30065 |daily
		..accept Hidden Power##30066 |daily
	step
		goto 53.9,61.9
		.talk Elder Sage Storm-Sing##57319
		..accept Behind the Masks##30063 |daily
		..accept Saving the Sutras##30064 |daily
	step
		goto 56.5,53.6
		.click Ancient Sutra
		.get 6 Ancient Sutra##77432 |q 30064/1
		|only if havequest(30064)
	step
		goto 55.3,57.4
		.from Final Doubt##57330+, Lingering Doubt##57396+ |only if havequest(30063)
		.get 8 Mask of Doubt##77419+ |q 30063/1 |only if havequest(30063)
		.click Defender's Arrow |only if havequest(30065)
		.get 10 Defender's Arrow##77452+ |q 30065/1 |only if havequest(30065)
		.' Use the Stack of Mantras in your bags on Yu'lon Adepts and Yu'lon Guardians |use Stack of Mantras##77475 |only if havequest(30066)
		.' Deliver 6 Ancient Mantras |q 30066/1 |only if havequest(30066)
		|modelnpc Yu'lon Guardian##57400
		|modelnpc Yu'lon Adept##57316
	step
		goto 53.9,61.9
		.talk Elder Sage Storm-Sing##57319
		..turnin Behind the Masks##30063
		..turnin Saving the Sutras##30064 
	step
		goto The Jade Forest 53.9,61.9
		.talk Elder Sage Tai-Feng##57324
		..turnin Arrows of Fortune##30065 
		..turnin Hidden Power##30066
		..accept Flames of the Void##30068 |daily
		..accept The Shadow of Doubt##30067 |daily
	step
		goto 57.5,62.3
		.kill Shadow of Doubt##57389 |q 30067/1
		|only if havequest(30067)
	step
		goto 54.1,60.9
		.clicknpc War Serpent##57871
		.' Ride the War Serpent |invehicle
		|only if havequest(30068)
	step
		'Fly around the Jade Temple Grounds and extinguish Void Flames. |tip they look like black fire.
		.' If you run out of water you can refill it in the river [53.9,58.0]
		.' Douse 6 Void Flames |q 30068/1
		|only if havequest(30068)
	step
		goto 53.9,61.9
		.' Click the Leave Vehicle button. |outvehicle
		|only if havequest(30068)
	step
		goto 53.9,61.9
		.talk Elder Sage Tai-Feng##57324
		..turnin The Shadow of Doubt##30067
		..turnin Flames of the Void##30068
	step
		'Click here if you have not done dailies at The Cradle of Chi-Ji today. |confirm |next "crane"
		'Click here if you have done dailies at The Cradle of Chi-Ji today |confirm |next "end"
/// Temple of the White Tiger. Not giving rep for August Celstials.
	step
	label tiger
		goto Kun-Lai Summit 67.2,55.9
		.talk Xuen##60968
		..turnin Trial At The Temple of the White Tiger##31381 
		|only if havequest(31381)
	step
		goto 67.2,55.9
		.talk Xuen##60968
		..accept Round 1: Brewmaster Chani##30879 |daily |or
		..accept Round 1: The Streetfighter##30880 |daily |or 
		..accept Contending With Bullies##31517 |daily |tip This quest may not be available.
		|confirm
	step
		goto 71.1,55.8
		.kill Shonuf##64757 |q 31517/1
		|only if havequest(31517)
	step
		goto 71.0,51.8
		.talk Brewmaster Chani##60996
		.' Challenge her. |tip She has a lot of health but isn't too difficult to kill. She will toss Bitter Brew on the ground, so kite her out of it. She also has an AoE cone called The Steamer, you can avoid this by either moving out of it, or interrupting the channel.
		.'Defeat Brewmaster Chani |q 30879/1
		|only if havequest(30879)
	step
		goto 71.0,51.8
		.talk Lun-Chi##60994
		.' Challenge her.
		.' Defeat The Streetfighter |q 30880/1
		|only if havequest(30880)
	step
		goto 70.3,51.3
		.talk Xuen##60968
		..turnin Round 1: Brewmaster Chani##30879 
		..turnin Round 1: The Streetfighter##30880 
		..turnin Contending With Bullies##31517
		..accept Round 2: Clever Ashyo & Ken-Ken##30881 |daily |or
		..accept Round 2: Kang Bramblestaff##30882 |daily |or
	step
		goto 71.7,45.4
		.talk Kang Bramblestaff##60978
		.' Challenge him.
		.' Defeat Kang Bramblestaff |q 30882/1
		|only if havequest(30882)
	step
		goto 71.7,45.4
		.talk Clever Ashyo##60980
		.' Challenge him. |tip Kill Ken-Ken first as he is the weaker of the two. He will cast Ken-Ken Rampage causing him to whirlwind, when he does momentarily switch to Ashyo. Ashyo will summon Water Spouts and Healing Spheres. The Spheres are top priority and the Spouts are easily avoidable.
		.' Defeat Clever Ashyo |q 30881/1
		.' Defeat Ken-Ken |q 30881/2
		|modelnpc Ken-Ken##60979
		|only if havequest(30881)
	step
		goto 71.8,44.9
		.talk Xuen##60968
		..turnin Round 2: Clever Ashyo & Ken-Ken##30881 |daily
		..turnin Round 2: Kang Bramblestaff##30882 |daily
		..accept Round 3: The Wrestler##30883 |daily |or
		..accept Round 3: Master Boom Boom##30885 |daily |or
	step
		goto 66.7,46.5
		.talk Master Boom Boom##61013
		.' Challenge him. |tip He will constantly toss Dynamite at you that will put a landmine on the ground if you walk over it. When he starts the fuse on his boom box, be out of the middle of the arena by the time it finishes.
		.' Defeat Master Boom Boom |q 30885/1
		|only if havequest(30885)
	step
		goto 66.7,46.5
		.talk The Wrestler##60997
		.' Challenge him. |tip Click on the chairs around the room to increase your damage and cause The Wrestler to be stunned for 10 seconds. If you space these out enough, you could potentially kill him before he can hurt you. Periodically he will grapple and throw you, it does not do much damage but it prevents control of your character. Finally, he uses a Sling Sweat ability which puts a blue puddle on the ground that reduces your movement speed and does damage.
		.' Defeat The Wrestler |q 30883/1
		|only if havequest(30883)
	step
		goto 66.4,46.3
		.talk Xuen##60968
		..turnin Round 3: The Wrestler##30883 |daily
		..turnin Round 3: Master Boom Boom##30885 |daily
		..accept Round 4: The P.U.G.##30907 |daily |or
		..accept Round 4: Master Windfur##30902 |daily |or
	step
		goto 68.8,43.8
		.talk Master Windfur##61012
		.' Challenge him.
		.' Defeat Master Windfur. |q 30902/1
		|only if havequest(30902)
	step
		'Enter the building and go to [69.0,43.7]
		.talk Healiss##61004
		.' Challenge him. |tip Defeat the P.U.G. by first kill Healiss. He will attempt to run away and only has one healing spell that he may try to use, it is called Jungle Remedy, save Interrupts and Stuns for this ability. Next deal with Tankiss, he has more health but is a greater threat than Hackiss, his only ability is called Ground Pummel which will knock you can and deal some damage. Finally kill Hackiss, his only ability is Backstab. This will leave a small bleed on you.
		.' Defeat Hackiss |q 30907/1
		.' Defeat Healiss |q 30907/2
		.' Defeat Tankiss |q 30907/3
		|modelnpc Hackiss##61007
		|modelnpc Tankiss##61006
		|only if havequest(30907)
	step
		goto 68.5,44.6
		.talk Xuen##60968
		..turnin Round 4: The P.U.G.##30907 |daily
		..turnin Round 4: Master Windfur##30902 |daily
	step
		'Click here if you have not done dailies at The Cradle of Chi-Ji today. |confirm |next "crane"
		'Click here if you have done dailies at The Cradle of Chi-Ji today |confirm |next "end"
/// Niuzao Temple. Possible unlock hub at revered.
	step
	label ox
		goto Townlong Steppes 39.3,62.3
		.talk Ogo the Elder##61580
		..turnin Defense At Niuzao Temple##31383 |only if havequest(31383)
		..accept The Siege Swells##30956 |daily |or
		..accept The Unending Siege##30952 |daily |or
	step
		goto 39.3,62.3
		.talk Ogo the Younger##61581
		..accept The Big Guns##30959 |daily |or
		..accept A Blade is a Blade##30954 |daily |or
	step
		goto 39.2,62.1
		.talk Yak-Keeper Kyana##61585
		..accept Fallen Sentinels##30953 |daily
		.' If this quest is unavailable today, click here. |confirm
	step
		goto 39.4,61.9
		.talk Sentinel Commander Qipan##61584
		..accept The Overwhelming Swarm##30957 |daily
		.' If this quest is unavailable today, click here. |confirm
	step
		goto 38.9,62.4
		.talk High Adept Paosha##61583
		..accept In Battle's Shadow##30958 |daily |or
		..accept Paying Tribute##30955 |daily |or
	step
		'The following can all be done around Niuzao Temple:
		.' Use your Pot of Fire on Sra'thik War Wagons |use Pot of Fire##82346 |modelnpc Sra'thik War Wagon##61510 |only if havequest(30959)
		.' Cause 3 Sri'thik War Wagons to explode. |q 30959/1 |only if havequest(30959)
		.from Sra'thik Swiftclaw##61508+, Sra'thik Warcaller##61502+, Sra'thik Fleshrender##61514+ |only if havequest(30956)
		.' Kill 25 Sri'thik attackers |q 30956/1 |only if havequest(30956)
		.kill 4 Sra'thik Kunchong##61509+ |q 30957/1 |only if havequest(30957)
		.click Loose Brick |only if havequest(30958)
		.' Throw 10 Loose Stones up to Niuzao Stonemasons |q 30958/1 |only if havequest(30958)
		.' Use your Yak's Milk Flask on Wounded Niuzao Sentinels. |use Yak's Milk Flask##82381 |tip Normal healing spells will also heal the Sentinels if you have them. |only if havequest(30953)
		.' Heal 8 Niuzao Sentinels |q 30953/1 |only if havequest(30953)
		.click Niuzao Food Supply |only if havequest(30955)
		.' Gather 6 Food for Niuzao |q 30955/1 |only if havequest(30955)
		.from Sra'thik Warcaller##61502+, Sra'thik Swiftclaw##61508+ |only if havequest(30952)
		.' Kill 12 Sra'thik attackers |q 30952/1 |only if havequest(30952)
		.click Sra'thik Weapon |tip After you kill a Sra'thik a weapon may drop. |only if havequest(30954)
		.get 10 Sra'thik Weapon##82353 |q 30954/1 |only if havequest(30954)
	step
		goto 39.3,62.3
		.talk Ogo the Elder##61580
		..turnin The Siege Swells##30956 |daily 
		..turnin The Unending Siege##30952 |daily 
	step
		goto 39.3,62.3
		.talk Ogo the Younger##61581
		..turnin The Big Guns##30959 |daily 
		..turnin A Blade is a Blade##30954 |daily 
	step
		goto 39.2,62.1
		.talk Yak-Keeper Kyana##61585
		..turnin Fallen Sentinels##30953 |daily 
		..turnin In Battle's Shadow##30958 |daily 
	step
		goto 39.4,61.9
		.talk Sentinel Commander Qipan##61584
		..turnin The Overwhelming Swarm##30957 |daily
	step
		goto 38.9,62.4
		.talk High Adept Paosha##61583
		..turnin Paying Tribute##30955 |daily
]])

ZygorGuidesViewer:RegisterInclude("Shado_Pan_Daily_A",[[
		goto Vale of Eternal Blossoms 84.2,61.4
		.talk Lao Lang##64030
		..accept The Shado-Pan##31455
		|only if not completedq(31455)
	step
		goto Townlong Steppes 49.0,70.4
		.talk Ban Bearheart##62304
		..turnin The Shado-Pan##31389
		|only if not completedq(31389)
	step
	label dailies
		goto 49.3,71.0
		'Click here if Master Snowdrift is the questgiver today |next |confirm |modelnpc 63009
		.' He can be found here: [49.5,70.6]
		'Click here if Ban Bearheart is the questgiver today |next "bearheart" |confirm |modelnpc 62304
		.' He can be found here [49.0,70.5]
		'Click here if Ling of the Six Pools is the questgiver today |next "ling" |confirm |modelnpc 63614
		.' She can be found here: [49.0,71.3]
	step
		goto 49.4,70.6
		.talk Master Snowdrift##63009
		..accept The Challenger's Ring: Chao the Voice##31127
		|only if not completedq(31127)
	step
		goto 49.4,70.6
		.talk Master Snowdrift##63009
		..accept The Challenger's Ring: Lao-Chin the Iron Belly##31128
		|only if rep('Shado-Pan')>=Revered
	step
		goto 49.3,72.0
		.talk Lao-Chin the Iron Belly##62978
		.' I'm here to challenge you! |q 31128/1
		|only if havequest(31128)
	step
		goto 50.6,67.8
		.talk Lao-Chin the Iron Belly##63135
		.' All right, let's do this!
		.' Defeat Lao-Chin the Iron Belly |q 31128/2
		|only if havequest(31128)
	step
		goto 49.6,70.5
		.talk Master Snowdrift##63009
		..turnin The Challenger's Ring: Lao-Chin the Iron Belly##31128
		|only if havequest(31128)
	step
		goto 49.7,70.5
		.talk Chao the Voice##62550
		.' Tell her you're here to challenge her! |q 31127/1
		|only if havequest(31127)
	step
		goto 50.1,68.3
		.talk Chao the Voice##63125
		.' Let's do this.
		.' Defeat Chao the Voice |q 31127/2
		|only if havequest(31127)
	step
		goto 49.4,70.6
		.talk Master Snowdrift##63009
		..turnin The Challenger's Ring: Chao the Voice##31127
		|only if havequest(31127)
	step
		goto 49.4,70.6
		.talk Master Snowdrift##63009 |tip You will only be able to accept 4 of the following dailies.
		..accept Assault Fire Camp Gai-Cho##31113 |daily |or 4
		..accept Assault Deadtalker's Plateau##31114 |daily |or 4
		..accept The Enemy of My Enemy... Is Still My Enemy!##31119 |daily |or 4
		..accept Spirit Dust##31116 |daily |or 4 
		..accept The Deadtalker Cipher##31118 |daily |or 4
	step
		'Talk to Chao the Voice or Protector Yi and ask one of them to come with you. They will help you in combat and allow you to turnin your quests outside of this questing hub.|tip Yi patrols so you may need to search for him.
		.' Chao the Voice at [49.7,70.5] |modelnpc 62550
		.' Protector Yi at [49.3,71.3] |modelnpc 62546
		|confirm
		|only if not completedq(31128)
	step
		'Talk to Chao the Voice, Protector Yi or Lao-Chin the Iron Belly and ask one of them to come with you. They will help you in combat and allow you to turn in your quests outside of this questing hub.|tip Yi patrols so you may need to search for him.
		.' Chao the Voice at [49.7,70.5] |modelnpc 62550
		.' Protector Yi at [49.3,71.3] |modelnpc 62546
		.' Lao-Chin the Iron Belly at [49.3,71.9] |modelnpc 62978
		|confirm
		|only if completedq(31128)
	step
		goto 63.4,43.3
		.from Gai-Cho Yaungol##62552+, Gai-Cho Earthtalker##62553+, Gai-Cho Pitchthrower##62608+ |only if havequest(31113)
		.' Kill 16 Gai-Cho Yaungol, Earthtalkers, or Pitchthrowers. |q 31113/1 |only if havequest(31113)
		.click Highly Explosive Yaungol Oil Barrel |only if havequest(31119)
		.collect Highly Explosive Yaungol Oil##84762 |n |tip You can only carry 10 at a time, so you may need to make multiple trips. |only if havequest(31119)
	step
		goto 60.2,48.6
		'Use your Highly Explosive Yaungol Oil to kill as many enemies in this area as you can in 1 hit. |use Highly Explosive Yaungol Oil Barrel##84762
		.from Gai-Cho Boltshooter##62589+, Gai-Cho Cauterizer##62577+, Gai-Cho Gatewatcher##62568+, Kri'thik Aggressor##62572+, Kri'thik Screecher##62602+
		.' Kill 100 Gai-Cho Battledfired Combatants |q 31119/1
		.' If you run out of oil, you can find more here [63.4,43.3]
		|only if havequest(31119)
	step
		goto 51.1,51.8
		.kill 8 Deadtalker Corpsedefiler##62677+ |q 31114/1 |only if havequest(31114)
		.kill Deadtalker Crusher##62844 |q 31114/2 |tip He is elite but with your companion you should be able to defeat him. |only if havequest(31114)
		.from Defiled Spirit##62679 |only if havequest(31116)
		.collect Ancient Spirit Dust##84727 |n |only if havequest(31116)
		.click Defiled Yaungol Remains |only if havequest(31116)
		.' Return 8 Spirits to Their Remains |q 31116/1 |only if havequest(31116)
	step
		goto 51.1,51.8
		.from Deadtalker Crusher##62844+, Deadtalker Corpsedefiler##62677+ |only if havequest(31118)
		.get Ciphered Scroll##84759 |q 31118/1 |only if havequest(31118)
	step
		'Next to you will either be Chao the Voice or Protector Yi:
		.'Talk to Chao the Voice |modelnpc 62550
		.'Talk to Protector Yi |modelnpc 62546
		..turnin Assault Fire Camp Gai-Cho##31113 |daily
		..turnin Assault Deadtalker's Plateau##31114  |daily
		..turnin The Enemy of My Enemy... Is Still My Enemy!##31119 |daily
		..turnin Spirit Dust##31116 |daily
		..turnin The Deadtalker Cipher##31118 |daily
		|only if not completedq(31128)
	step
		'Next to you will either be Chao the Voice, Protector Yi, or Lao-Chin the Iron Belly:
		.'Talk to Chao the Voice |modelnpc 62550
		.'Talk to Protector Yi |modelnpc 62546
		.'Talk to Lao-Chin the Iron Belly |modelnpc 62978
		..turnin Assault Fire Camp Gai-Cho##31113 |daily
		..turnin Assault Deadtalker's Plateau##31114  |daily
		..turnin The Enemy of My Enemy... Is Still My Enemy!##31119 |daily
		..turnin Spirit Dust##31116 |daily
		..turnin The Deadtalker Cipher##31118 |daily
		|only if completedq(31128)
	step
		'Click the Quest Discovered box that displays on the right side of the screen under your minimap
		..accept Uruk!##31117 |daily |or
		..accept Cheng Bo!##31120 |daily |or
	step
		goto 50.4,48.9
		.kill Uruk##62613 |q 31117/1
	step
		goto 60.7,42.1
		.kill Cheng Bo##62554 |q 31120/1
	step
		goto 49.6,70.5
		.talk Master Snowdrift##63009
		..turnin Uruk!##31117 |daily |or
		..turnin Cheng Bo!##31120 |daily |or
		|next "end"
///New questgiver today?
	step
	label bearheart
		goto 49.0,70.4
		.talk Ban Bearheart##62304
		..accept The Challenger's Ring: Snow Blossom##31038
		|only if not completedq(31038)
	step
		goto 49.0,70.4
		.talk Ban Bearheart##62304
		..accept The Challenger's Ring: Yalia Sagewhisper##31104
		|only if rep('Shado-Pan')>=Revered
	step
		goto 48.9,70.1
		.talk Snow Blossom##62380
		.' Ask her to meet in the Challenger's Ring. |q 31038/1
		|only if havequest(31038)
	step
		goto 50.2,67.9
		.talk Snow Blossom##62834
		.' I challenge you!
		.' Defeat Snow Blossom |q 31038/2
		|only if havequest(31038)
	step
		goto 49.0,70.4
		.talk Ban Bearheart##62304
		..turnin The Challenger's Ring: Snow Blossom##31038
		|only if havequest(31038)
	step
		goto 48.9,70.0
		.talk Yalia Sagewhisper##62303
		.' Ask her to meet you in the Challenger's Ring. |q 31104/1
		|only if havequest(31104)
	step
		goto 50.4,67.7
		.talk Yalia Sagewhisper##62850
		.' I challenge you!
		.' Defeat Yalia Sagewhisper |q 31104/2
		|only if havequest(31104)
	step
		goto 49.0,70.4
		.talk Ban Bearheart##62304
		..turnin The Challenger's Ring: Yalia Sagewhisper##31104
		|only if havequest(31104)
	step
		goto 49.0,70.4
		.talk Ban Bearheart##62304
		..accept The Mogu Menace##31105 |daily |or 4
		..accept Bronze Claws##31044 |daily |or 4
		..accept Illusions Of The Past##31045 |daily |or 4
		..accept Grave Consequences##31048 |daily |or 4
		..accept Dark Arts##31043 |daily |or 4
		..accept Onyx Hearts##31042 |daily |or 4
		..accept Born Free##31047 |daily |or 4
		..accept Spiteful Sprites##31040 |daily |or 4
		..accept Egg Rescue!##31041 |daily |or 4
		..accept Little Hatchlings##31046 |daily |or 4
	step
		'Talk to Snow Blossom or Fei Li and ask one of them to come with you. They will help you in combat and allow you to turn in your quests outside of this questing hub.
		.' Snow Blossom at [48.9,70.1] |modelnpc 62380
		.' Fei Li at [48.8,70.2] |modelnpc 62354
		|confirm
		|only if not completedq(31104)
	step
		'Talk to Snow Blossom, Fei Li, or Yalia Sagewhisper and ask one of them to come with you. They will help you in combat and allow you to turn in your quests outside of this questing hub.
		.' Snow Blossom at [48.9,70.1] |modelnpc 62380
		.' Fei Li at [48.8,70.2] |modelnpc 62354
		.' Yalia Sagewhisper at [48.8,70.0] |modelnpc 62303
		|confirm
		|only if completedq(31104)
	step
		goto 28.8,22.4
		.talk Moshu the Arcane##62810
		..accept Through the Portal##31110
		|only if not completedq(31110)
	step
		goto 32.8,25.1
		.clicknpc Ball and Chain##62539 |only if havequest(31047)
		.' Free 6 Wild Cloudriders |q 31047/1 |only if havequest(31047)
		.click Shan'ze Cage |only if havequest(31046)
		.' Free 20 Cloudrider Hatchlings. |q 31046/1 |only if havequest(31046)
		.click Shiny Egg |only if havequest(31041)
		.get 8 Cloudrunner Egg |q 31041/1 |only if havequest(31041)
	step
		goto 24.4,15.2
		.kill 3 Shan'ze Illusionist##62440+ |q 31045/1|only if havequest(31045)
		.click Shan'ze Tablet |only if havequest(31043)
		.get 8 Shan'ze Tablet |q 31043/1 |only if havequest(31043)
		.click Mogu Burial Urn |only if havequest(31048)
		.kill 24 Shan'ze Ancestor##62285+ |q 31048/1 |only if havequest(31048)
		.from Onyx Stormclaw##62448 |only if havequest(31042)
		.get 4 Onyx Heart |q 31042/1 |only if havequest(31042)
	step
		goto 28.5,18.5
		.from Shan'ze Serpentbinder##62293+, Shan'ze Beastmaster##62530+ |only if havequest(31105)
		.' Kill 12 Shan'ze Serpentbinders or Beastmasters |q 31105/1 |only if havequest(31105)
		.from Bronze Quilen##62266+ |only if havequest(31044)
		.get 20 Bronze Claw##83153+ |q 31044/1 |only if havequest(31044)
	step
		goto 23.0,19.5
		.from Darkwoods Pixie##62268+, Darkwoods Charmer##62457+
		.' Kill 30 Darkwoods Sprites or Darkwoods Charmers. |q 31040/1
		|only if havequest(31040)
	step
		.from Shan'ze Serpentbinder##62293+, Shan'ze Illusionist##62440+, Shan'ze Ancestor##62285+, Shan'ze Beastmaster##62515+, Darkwoods Charmer##62520
		.get 1000 Ancient Arcane Powder##84102+ |q 31110/1
		|only if havequest(31110)
	step
		'Next to you will either be Fei Li or Snow Blossom
		.talk Fei Li##62354
		.talk Snow Blossom##62380
		..turnin The Mogu Menace##31105 |daily
		..turnin Bronze Claws##31044 |daily
		..turnin Illusions Of The Past##31045 |daily
		..turnin Grave Consequences##31048 |daily
		..turnin Dark Arts##31043 |daily
		..turnin Onyx Hearts##31042 |daily
		..turnin Born Free##31047 |daily
		..turnin Spiteful Sprites##31040 
		..turnin Egg Rescue!##31041 
		..turnin Little Hatchlings##31046 
		..accept When The Dead Speak##31062 |daily |or
		..accept Riding the Storm##31061 |daily |or
		..accept In Sprite Of Everything##31049 |daily |or
		|only if not completedq(31104)
	step
		'Next to you will either be Fei Li, Snow Blossom, or Yalia Sagewhisper
		.talk Fei Li##62354
		.talk Snow Blossom##62380
		.talk Yalia Sagewhisper##62303
		..turnin The Mogu Menace##31105 |daily
		..turnin Bronze Claws##31044 |daily
		..turnin Illusions Of The Past##31045 |daily
		..turnin Grave Consequences##31048 |daily
		..turnin Dark Arts##31043 |daily
		..turnin Onyx Hearts##31042 |daily
		..turnin Born Free##31047 |daily
		..turnin Spiteful Sprites##31040 
		..turnin Egg Rescue!##31041 
		..turnin Little Hatchlings##31046 
		..accept When The Dead Speak##31062 |daily |or
		..accept Riding the Storm##31061 |daily |or
		..accept In Sprite Of Everything##31049 |daily |or
		|only if completedq(31104)
	step
		goto 30.9,12.6
		.' Use the Bronze Claws on the Cloudrunners around this area. |use Bronze Claws##83134
		.from Shan'ze Cloudrunner##62584 
		.' Free 8 Shan'ze Cloudriders |q 31061/1
		|only if havequest(31061)
	step
		'Click the Leave Vehicle button. |outvehicle
		|only if havequest(31061)
	step
		'Enter the tunnel here. |goto 20.3,15.8 <5 |c
		|only if havequest(31049)
	step
		goto 19.5,13.8
		.kill Darkwoods Faerie##62522 |q 31049/1
		|only if havequest(31049)
	step
		'Leave the tunnel here. |goto 20.3,15.8 <5 |c
		|only if havequest(31049)
	step
		goto 32.3,9.5
		.kill Shan'ze Deathspeaker##62559 |q 31062/1 |tip Make sure you destroy his Spirit Gems, if you let them pile up they can overwhelm you.
		|only if havequest(31062)
	step
		goto 28.8,22.4
		.talk Moshu the Arcane##62810
		..turnin Through the Portal##31110
		|only if havequest(31110)
	step
		goto 49.0,70.4
		.talk Ban Bearheart##62304
		..turnin When The Dead Speak##31062 
		..turnin Riding the Storm##31061 
		..turnin In Sprite Of Everything##31049 
		|next "end"
/// New Questigver today
	step
	label ling
		goto 49.0,71.3
		.talk Ling of the Six Pools##63614
		..accept The Challenger's Ring: Hawkmaster Nurong##31220
		|only if not completedq(31220)
	step
		goto 49.0,71.3
		.talk Ling of the Six Pools##63614
		..accept The Challenger's Ring: Tenwu of the Red Smoke##31221
		|only if rep('Shado-Pan')>=Revered 
	step
		goto 48.9,71.2
		.talk Tenwu of the Red Smoke##63616
		.' Ask him to meet you in the Challenger's Ring. |q 31221/1
		|only if havequest(31221)
	step
		goto 50.6,68.5
		.talk Tenwu of the Red Smoke##64471
		.' Let's see if you can back that talk up.
		.' Defeat Temwu of the Red Smoke |q 31221/2
		|only if havequest(31221)
	step
		goto 49.0,71.3
		.talk Ling of the Six Pools##63614
		..turnin The Challenger's Ring: Tenwu of the Red Smoke##31221
		|only if havequest(31221)
	step
		goto 49.0,70.9
		.talk Hawkmaster Nurong##63618
		.' Ask him to meet you in the Challenger's Ring. |q 31220/1
		|only if havequest(31220)
	step
		goto 50.7,68.2
		.talk Hawkmaster Nurong##64470
		.' Let's go!
		.' Defeat Hawkmaster Nurong |q 31220/2
		|only if havequest(31220)
	step
		goto 49.0,71.3
		.talk Ling of the Six Pools##63614
		..turnin The Challenger's Ring: Hawkmaster Nurong##31220
		|only if havequest(31220)
	step
		goto 49.0,71.3
		.talk Ling of the Six Pools##63614
		..accept Sra'vess Wetwork##31196 |daily |or 4
		..accept The Bigger They Come...##31197 |daily |or 4
		..accept A Morale Victory##31198 |daily |or 4
		..accept Destroy the Siege Weapons!##31199 |daily |or 4
		..accept Fumigation##31200 |daily |or 4
		..accept Friends, Not Food!##31201 |daily |or 4
	step
		'Talk to Hawkmaster Nurong or Taoshi and ask one of them to come with you. They will help you in combat and allow you to turn in your quests outside of this questing hub.
		'Hawkmaster Nurong at [48.7,71.2] |modelnpc 63618
		'Taoshi at [48.7,71.0] |modelnpc 63617
		|confirm
		|only if not completedq(31221)
	step
		'Talk to Hawkmaster Nurong, Taoshi, or Tenwu of the Red Smoke and ask one of them to come with you. They will help you in combat and allow you to turn in your quests outside of this questing hub.
		'Hawkmaster Nurong at [48.7,71.2] |modelnpc 63618
		'Taoshi at [48.7,71.0] |modelnpc 63617
		'Tenwu of the Red Smoke [48.9,71.2] |modelnpc 63616
		|confirm
		|only if completedq(31221)
	step
		goto 48.7,71.1
		.talk Ku-Mo##65341
		..accept Seeking Father##30933
		.' If this quest is unavailable, click here. |confirm
		|only if not completedq(30933)
	step
		goto 27.5,54.6
		.click Sra'thik Siege Weapon
		.' Small Southern Siege Weapon destroyed |q 31199/2
		|only if havequest(31199)
	step
		goto 25.8,53.8
		.click Sra'thik Siege Weapon
		.' Large Southern Siege Weapon destroyed |q 31199/1
		|only if havequest(31199)
	step
		goto 23.5,55.5
		.click Sra'thik Idol
		.' Southern Idol destroyed |q 31198/1
		|only if havequest(31198)
	step
		goto 21.5,49.2
		.click Sra'thik Idol
		.' Central Idol destroyed |q 31198/3
		|only if havequest(31198)
	step
		goto 27.2,41.2
		.click Sra'thik Siege Weapon
		.' Large Northern Siege Weapon destroyed |q 31199/3
		|only if havequest(31199)
	step
		goto 26.2,39.8
		.click Sra'thik Siege Weapon
		.' Small Northern Siege Weapon destroyed |q 31199/4
		|only if havequest(31199)
	step
		goto 27.8,41.9
		.click Sra'thik Idol
		.' Eastern Idol destroyed |q 31198/4
		|only if havequest(31198)
	step
		goto 23.6,44.7 
		'Use the Bag of Shado-Pan Gas Bombs at this location. |use Bag of Shado-Pan Gas Bombs##86532
		.' Egg Chamber bombed |q 31200/3
		|only if havequest(31200)
	step
		goto 22.0,41.6 
		'Use the Bag of Shado-Pan Gas Bombs at this location. |use Bag of Shado-Pan Gas Bombs##86532
		.' Torture Cell bombed |q 31200/4
		|only if havequest(31200)
	step
		goto 21.2,43.2 
		'Use the Bag of Shado-Pan Gas Bombs at this location. |use Bag of Shado-Pan Gas Bombs##86532
		.' Slaughtering Pit bombed |q 31200/5
		|only if havequest(31200)
	step
		goto 21.0,45.9 
		'Use the Bag of Shado-Pan Gas Bombs at this location. |use Bag of Shado-Pan Gas Bombs##86532
		.' Amber Vault bombed |q 31200/1
		|only if havequest(31200)
	step
		goto 16.2,45.8
		.click Sra'thik Idol
		.' Western Idol destroyed |q 31198/2
		|only if havequest(31198)
	step
		goto 17.6,58.0
		.talk Shado-Pan Trainee##64459
		.' Tell them "No you're not!"
		.' Shado-Pan Trainee at Southern Feeding Pit freed. |q 31201/3
		|only if havequest(31201)
	step
		goto 17.4,57.0
		.talk Shado-Pan Trainee##64460
		.' Tell them "No you're not!"
		.' Shado-Pan Trainee at Southern Feeding Pit freed. |q 31201/2
		|only if havequest(31201)
	step
		goto 17.4,57.0
		.talk Sentinel Ku-Yao##61694
		.' Tell him his son has been looking for him.
		.' Search for Sentinel Ku-Yao. |q 30933/1
		|only if havequest(30933)
	step
		goto 18.0,53.5
		.talk Shado-Pan Trainee##64461
		.' Tell them "No you're not!"
		.' Shado-Pan Trainee at Southern Feeding Pit freed. |q 31201/1
		|only if havequest(31201)
	step
		goto 23.9,47.3
		'Use the Bag of Shado-Pan Gas Bombs at this location. |use Bag of Shado-Pan Gas Bombs##86532
		.' Nutriment Cell bombed |q 31200/2
		|only if havequest(31200)
	step
		'Make sure you have done the following around Sra'vess:
		.from Sra'thik Mutilator##63678+, Sra'thik Cacophyte##63680+, Sra'thik Drone##63677+, Sra'thik Regenerator##63681+, Sra'thik Swiftwing##63683+ |only if havequest(31196)
		.' Kill 15 Lesser Sra'thik mantid. |q 31196/1 |only if havequest(31196)
		.from Sra'thik Swarm-Leader##63685+, Sra'thik Vessguard##63686+, Sra'thik Will-Breaker##63684+, Sra'thik Deathmixer##63688+ |only if havequest(31197)
		.' Kill 4 Greater Sra'thik mantid. |q 31197/1 |only if havequest(31197)
	step
		'Next to you is either Hawkmaster Nurong or Taoshi
		.talk Taoshi##63617
		.talk to Hawkmaster Nurong##63618
		..turnin Sra'vess Wetwork##31196 |daily
		..turnin The Bigger They Come...##31197 |daily
		..turnin A Morale Victory##31198 |daily
		..turnin Destroy the Siege Weapons!##31199 |daily
		..turnin Fumigation##31200 |daily
		..turnin Friends, Not Food!##31201 |daily 
		|only if not completedq(31221)
	step
		'Next to you is either Hawkmaster Nurong, Taoshi, or Tenwu.
		.'Talk to Taoshi |modelnpc 63617
		.'Talk to Hawkmaster Nurong |modelnpc 63618
		.'Talk to Tenwu of the Red Smoke |modelnpc 63616
		..turnin Sra'vess Wetwork##31196 |daily
		..turnin The Bigger They Come...##31197 |daily
		..turnin A Morale Victory##31198 |daily
		..turnin Destroy the Siege Weapons!##31199 |daily
		..turnin Fumigation##31200 |daily
		..turnin Friends, Not Food!##31201 |daily 
		|only if completedq(31221)
	step
		'Click the Quest Discovered box that displays on the right side of the screen under your minimap
		..accept Target of Opportunity: Sra'thik Hivelord##31204 |daily |or
		..accept Target of Opportunity: Sra'thik Swarmlord##31203 |daily |or
	step
		goto 16.4,40.9
		.kill Sra'thik Swarmlord##63693 |q 31203/1
		|only if havequest(31203)
	step
		'Enter the building here. |goto 27.1,44.1 <5 |c
		|only if havequest(31204)
	step
		goto 24.3,44.0
		.kill Sra'thik Hivelord##63694 |q 31204/1
		|only if havequest(31204)
	step
		'Leave the building. |goto 27.1,44.1 <5 |c
		|only if havequest(31204)
	step
		goto 48.7,71.1
		.talk Ku-Mo##65341
		..turnin Seeking Father##30933
		|only if havequest(30933)
	step
		goto 49.0,71.4
		.talk Ling of the Six Pools##63614
		..turnin Target of Opportunity: Sra'thik Hivelord##31204 |daily |or
		..turnin Target of Opportunity: Sra'thik Swarmlord##31203 |daily |or
		|next "end"
/// Exalted Reputation
	step
	label end
		goto 49.4,70.6
		.talk Master Snowdrift##63009
		..accept Mogu Incursions##31266
		|only if rep('Shado-Pan')==Exalted and not completedq(31266)
	step
		goto 48.8,58.6
		.kill Shan'ze Spymaster##63888 |q 31266/1
		|only if rep('Shado-Pan')==Exalted and not completedq(31266)
	step
		goto 49.4,70.6
		.talk Master Snowdrift##63009
		..turnin Mogu Incursions##31266
		..accept Surprise Attack!##31277
		|only if rep('Shado-Pan')==Exalted and not completedq(31277)
	step
		goto 42.6,63.9
		.talk Ban Bearheart##63908
		.' Tell him "Let's go".
		.' Join the battle of Niuzao Temple |q 31277/1
		|only if havequest(31277)
	step
		goto 41.3,60.0
		'Wait for the dialogue to end and fight off the invasion.
		.from Shan'ze Brutalizer##63933+
		.from Hei Feng##63920 |tip When he casts Deep Breath step behind him.
		.' Defeat the Mogu Invasion |q 31277/2
		|only if havequest(31277) 
	step
		goto 49.2,71.0
		.talk Ban Bearheart##62304
		..turnin Surprise Attack!##31277
		|only if havequest(31277)
	step
		'You have reached the end of this daily guide.
		.' Click here to return to the start of the dailies. |next "dailies" |confirm
]])
--------------------------------------------------------------------------------------------------------------------------------------
-- ACHIEVEMENTS
--------------------------------------------------------------------------------------------------------------------------------------

ZygorGuidesViewer:RegisterInclude("Explorer_Kalimdor",[[
	step
		' This guide assumes you have a flying mount and can fly in Azeroth as well. You can do this
		.' without having a flying mount but it will be much more efficient with one.
		|confirm always
	step
		#include "ratchet"
	step
	label	"start"
		' Explore Azshara |achieve 852
		' Explore Durotar |achieve 728
		' Explore Northern Barrens |achieve 750
		' Explore Southern Barrens |achieve 4996
		' Explore Dustwallow Marsh |achieve 850
		' Explore Thousand Needles |achieve 846
		' Explore Tanaris |achieve 851
		' Explore Un'Goro Crater |achieve 854
		' Explore Uldum |achieve 4865
		' Explore Silithus |achieve 856
		' Explore Feralas |achieve 849
		' Explore Desolace |achieve 848
		' Explore Mulgore |achieve 736
		' Explore Stonetalon Mountains |achieve 847
		' Explore Ashenvale |achieve 845
		' Explore Mount Hyjal |achieve 4863
		' Explore Winterspring |achieve 857
		' Explore Moonglade |achieve 855
		' Explore Felwood |achieve 853
		' Explore Darkshore |achieve 844
		' Explore Teldrassil |achieve 842
		' Explore Azuremyst Isle |achieve 860
		' Explore Bloodmyst Isle |achieve 861
	step
		'Skipping next part of guide |next "+n_barrens" |only if step:Find("+durotar"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Orgrimmar,45.4,8.5
		.' Discover Orgrimmar |achieve 728/12
	step
		goto Durotar,54.0,9.0 
		.' Discover Skull Rock |achieve 728/11
	step
		goto 52.4,24.2
		.' Discover Drygulch Ravine |achieve 728/10
	step
		goto 53.5,43.4 
		.' Discover Razor Hill |achieve 728/7
	step
		goto 58.1,60.2 
		.' Discover Tiragarde Keep |achieve 728/6
	step
		goto 66.6,82.9 
		.' Discover Echo Isles |achieve 728/5
	step
		goto 56.1,75.8 
		.' Discover Sen'jin Village |achieve 728/4
	step
		goto 48.5,79.1 
		.' Discover Northwatch Foothold |achieve 728/2
	step
		goto 44.5,62.2 
		.' Discover Valley of Trials |achieve 728/1
	step
		goto 44.6,50.6 
		.' Discover Razormane Grounds |achieve 728/8
	step
		goto 40.5,40.0 
		.' Discover Southfury Watershed |achieve 728/3
	step
		goto 40.3,24.7 
		.' Discover Thunder Ridge |achieve 728/9
	step
	label	"durotar"
		'Explore Durotar |achieve 728
	step
	label	"n_barrens"
		'Skipping next part of guide |next "+s_barrens" |only if step:Find("+n_barrens1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Northern Barrens,67.2,12.1 
		.' Discover Boulder Lode Mine |achieve 750/1
	step
		goto 55.7,18.5 
		.' Discover The Sludge Fen |achieve 750/4
	step
		goto 39.6,14.1 
		.' Discover The Mor'shan Rampart |achieve 750/3
	step
		goto 25.5,31.7 
		.' Discover The Dry Hills |achieve 750/6
	step
		goto 36.8,45.9 
		.' Discover The Forgotten Pools |achieve 750/7
	step
		goto 43.1,35.4 
		.' Discover Dreadmist Peak |achieve 750/5
	step
		goto 54.9,41.1 
		.' Discover Grol'dom Farm |achieve 750/8
	step
		goto 67.0,41.3 
		.' Discover Far Watch Post |achieve 750/9
	step
		goto 58.8,50.0 
		.' Discover Thorn Hill |achieve 750/10
	step
		goto 50.2,57.3 
		.' Discover The Crossroads |achieve 750/11
	step
		goto 40.3,73.9 
		.' Discover Lushwater Oasis |achieve 750/2
	step
		goto 55.7,78.6 
		.' Discover The Stagnant Oasis |achieve 750/12
	step
		goto 70.3,84.1 
		.' Discover The Merchant Coast |achieve 750/14
	step
	label	"n_barrens1"
		'Explore Northern Barrens |achieve 750
	step
	label	"s_barrens"
		'Skipping next part of guide |next "+dustwallow" |only if step:Find("+s_barrens1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Southern Barrens,68.8,49.1 
		.' Discover Northwatch Hold |achieve 4996/7
	step
		goto 52.2,48.6 
		.' Discover Forward Command |achieve 4996/3
	step
		goto 47.8,33.68
		.' Discover The Overgrowth |achieve 4996/10
	step
		goto 39.3,22.3
		.' Discover Hunter's Hill |achieve 4996/6
	step
		goto 36.5,11.1 
		.' Discover Honor's Stand |achieve 4996/5
	step
		goto 42.4,44.0
		.' Discover Vendetta Point |achieve 4996/11
	step
		goto 44.9,54.3
		.' Discover Ruins of Taurajo |achieve 4996/9
	step
		goto 41.0,78.2
		.' Discover Frazzlecraz Motherlode |achieve 4996/4
	step
		goto 50.7,84.0
		.' Discover Bael Modan |achieve 4996/1
	step
	label	"s_barrens1"
		'Explore Southern Barrens |achieve 4996
	step
	label	"dustwallow"
		'Skipping next part of guide |next "+thousand" |only if step:Find("+dustwallow1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Dustwallow Marsh,29.7,49.0 
		.' Discover Shady Rest Inn |achieve 850/5
	step
		goto 36.3,30.4 
		.' Discover Brackenwall Village |achieve 850/7
	step
		goto 41.4,12.4 
		.' Discover Blackhoof Village |achieve 850/2
	step
		goto 76.0,17.5 
		.' Discover Alcaz Island |achieve 850/9
	step
		goto 61.5,30.2 
		.' Discover Dreadmurk Shore |achieve 850/6
	step
		goto 67.1,49.8 
		.' Discover Theramore Isle |achieve 850/1
	step
		goto 46.6,46.1 
		.' Discover Direhorn Post |achieve 850/3
	step
		goto 41.4,75.1 
		.' Discover Mudsprocket |achieve 850/4
	step
		goto 43.4,75.5 
		.' Discover Wyrmbog |achieve 850/8
	step
	label	"dustwallow1"
		' Explore Dustwallow Marsh |achieve 850
	step
	label	"thousand"
		'Skipping next part of guide |next "+tanaris" |only if step:Find("+thousand1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Thousand Needles,88.4,47.8 
		.' Discover Splithoof Heights |achieve 846/10
	step
		goto 51.7,30.0 
		.' Discover Razorfen Downs |achieve 846/2
	step
		goto 33.6,38.6 
		.' Discover Darkcloud Pinnacle |achieve 846/8
	step
		goto 32.1,18.3 
		.' Discover The Great Lift |achieve 846/1
	step
		goto 13.4,10.3 
		.' Discover Westreach Summit |achieve 846/7
	step
		goto 13.1,37.5 
		.' Discover Highperch |achieve 846/12
	step
		goto 31.1,58.8 
		.' Discover Twilight Bulwark |achieve 846/6
	step
		goto 47.0,50.7 
		.' Discover Freewind Post |achieve 846/9
	step
		goto 54.9,63.2 
		.' Discover The Twilight Withering |achieve 846/5
	step
		goto 67.1,85.7 
		.' Discover Sunken Dig Site |achieve 846/3
	step
		goto 92.4,78.8 
		.' Discover Southsea Holdfast |achieve 846/4
	step
	label	"thousand1"
		' Explore Thousand Needles |achieve 846
	step
	label	"tanaris"
		'Skipping next part of guide |next "+ungoro" |only if step:Find("+tanaris1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Tanaris,37.3,14.3 
		.' Discover Zul'Farrak |achieve 851/15
	step
		goto 40.9,27.3 
		.' Discover Sandsorrow Watch |achieve 851/2
	step
		goto 52.3,45.4 
		.' Discover Broken Pillar |achieve 851/6
	step
		goto 55.1,40.9 
		.' Discover Abyssal Sands |achieve 851/5
	step
		goto 64.2,50.0 
		.' Discover Caverns of Time |achieve 851/16
	step
		goto 71.6,49.4 
		.' Discover Lost Rigger Cove |achieve 851/4
	step
		goto 63.0,59.2 
		.' Discover Southbreak Shore |achieve 851/9
	step
		goto 53.7,67.6 
		.' Discover The Gaping Chasm |achieve 851/10
	step
		goto 53.6,91.7 
		.' Discover Land's End Beach |achieve 851/12
	step
		goto 37.8,77.7 
		.' Discover Valley of the Watchers |achieve 851/3
	step
		goto 40.8,70.6
		.' Discover  Southmoon Ruins |achieve 851/13
	step
		goto 47.2,64.9
		.' Discover Eastmoon Ruins |achieve 851/11
	step
		goto 30.4,66.4
		.' Discover Thistleshrub Valley |achieve 851/14
	step
		goto 41.0,55.5
		.' Discover Dunemaul Compound |achieve 851/8
	step
		goto 34.3,45.3
		.' Discover The Noxious Lair |achieve 851/7
	step
	label	"tanaris1"
		' Explore Tanaris |achieve 851
	step
	label	"ungoro"
		'Skipping next part of guide |next "+uldum" |only if step:Find("+ungoro1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Un'Goro Crater,77.1,39.2 
		.' Discover Ironstone Plateau |achieve 854/11
	step
		goto 39.2,34.3
		.' Discover The Roiling Gardens |achieve 854/5
	step
		goto 65.7,14.3
		.' Discover Fungal Rock |achieve 854/2
	step
		goto 51.4,25.6
		.' Discover Lakkari Tar Pits |achieve 854/12
	step
		goto 42.2,41.7
		.' Discover Mossy Pile |achieve 854/4
	step
		goto 29.0,35.8
		.' Discover The Screaming Reaches |achieve 854/6
	step
		goto 34.4,54.0
		.' Discover Golakka Hot Springs |achieve 854/7
	step
		goto 33.2,70.7
		.' Discover Terror Run |achieve 854/8
	step
		goto 54.5,48.0
		.' Discover Fire Plume Ridge |achieve 854/1
	step
		goto 54.0,60.9
		.' Discover Marshal's Stand |achieve 854/3
	step
		goto 67.9,54.8
		.' Discover The Marshlands |achieve 854/10
	step
		goto 51.1,77.5
		.' Discover The Slithering Scar |achieve 854/9
	step
	label	"ungoro1"
		' Explore Un'Goro Crater |achieve 854
	step
	label	"uldum"
		'Skipping next part of guide |next "+silithus" |only if step:Find("+uldum1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Uldum,64.5,16.1
		.' Discover Khartut's Tomb |achieve 4865/3
	step
		goto 69.0,21.8
		.' Discover The Gate of Unending Cycles |achieve 4865/19
	step
		goto 64.6,31.8 
		.' Discover Obelisk of the Stars |achieve 4865/9
	step
		goto 67.1,40.9 
		.' Discover Nahorn |achieve 4865/6
	step
		goto 84.7,52.8
		.' Discover The Cursed Landing |achieve 4865/18
	step
		goto 80.3,60.0
		.' Discover The Trail of Devastation |achieve 4865/21
	step
		goto 63.9,73.3
		.' Discover Lost City of the Tol'vir |achieve 4865/4
	step
		goto 51.2,82.0
		.' Discover Neferset City |achieve 4865/7
	step
		goto 43.7,70.4
		.' Discover Cradle of the Ancients |achieve 4865/2
	step
		goto 45.6,56.2
		.' Discover Obelisk of the Sun |achieve 4865/10
	step
		goto 54.3,52.2
		.' Discover Akhenet Fields |achieve 4865/1
	step
		goto 58.3,40.9
		.' Discover Vir'naal Dam |achieve 4865/22
	step
		goto 60.5,39.2
		.' Discover Tahret Grounds |achieve 4865/16
	step
		goto 54.8,32.4
		.' Discover Ramkahen |achieve 4865/12
	step
		goto 49.0,38.4
		.' Discover Mar'at |achieve 4865/5
	step
		goto 46.1,15.5
		.' Discover Ruins of Ahmtul |achieve 4865/13
	step
		goto 40.8,22.9
		.' Discover Obelisk of the Moon |achieve 4865/8
	step
		goto 33.7,30.9
		.' Discover Temple of Uldum |achieve 4865/17
	step
		goto 40.5,39.9
		.' Discover Orsis |achieve 4865/11
	step
		goto 32.1,65.5
		.' Discover Ruins of Ammon |achieve 4865/14
	step
		goto 20.8,61.8
		.' Discover Schnottz's Landing |achieve 4865/15
	step
	label	"uldum1"
		' Explore Uldum |achieve 4865
	step
	label	"silithus"
		'Skipping next part of guide |next "+feralas" |only if step:Find("+silithus1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Silithus,60.0,71.7
		.' Discover Hive'Regal |achieve 856/5
	step
		goto 32.0,78.9
		.' Discover The Scarab Wall |achieve 856/6
	step
		goto 31.4,53.8
		.' Discover Hive'Zora |achieve 856/4
	step
		goto 30.9,16.0
		.' Discover The Crystal Vale |achieve 856/1
	step
		goto 49.4,22.4
		.' Discover Hive'Ashi |achieve 856/7
	step
		goto 54.4,34.2
		.' Discover Cenarion Hold |achieve 856/3
	step
		goto 65.3,47.4
		.' Discover Southwind Village |achieve 856/2
	step
		goto 81.3,17.8
		.' Discover Valor's Rest |achieve 856/8
	step
	label	"silithus1"
		' Explore Silithus |achieve 856
	step
	label	"feralas"
		'Skipping next part of guide |next "+desolace" |only if step:Find("+feralas1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto  Feralas,75.9,62.4
		.' Discover The Writhing Deep |achieve 849/8
	step
		goto 83.0,40.9
		.' Discover Lower Wilds |achieve 849/1
	step
		goto 76.5,44.4
		.' Discover Camp Mojache |achieve 849/9
	step
		goto 75.6,29.8
		.' Discover Gordunni Outpost |achieve 849/11
	step
		goto 68.7,40.3
		.' Discover Grimtotem Compound |achieve 849/10
	step
		goto 60.4,35.6
		.' Discover Dire Maul |achieve 849/5
	step
		goto 67.7,58.5
		.' Discover Darkmist Ruins |achieve 849/12
	step
		goto 58.6,73.0
		.' Discover Ruins of Isildien |achieve 849/7
	step
		goto 55.4,56.2
		.' Discover Feral Scar Vale |achieve 849/6
	step
		goto 49.7,49.2
		.' Discover The Forgotten Coast |achieve 849/4
	step
		goto 45.8,49.6
		.' Discover Feathermoon Stronghold |achieve 849/13
	step
		goto 28.5,49.1
		.' Discover Ruins of Feathermoon |achieve 849/2
	step
		goto 46.3,17.9
		.' Discover The Twin Colossals |achieve 849/3
	step
	label	"feralas1"
		' Explore Ferals |achieve 849
	step
	label	"desolace"
		'Skipping next part of guide |next "+mulgore" |only if step:Find("+desolace1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Desolace,36.1,88.6
		.' Discover Gelkis Village |achieve 848/12
	step
		goto 51.3,78.5
		.' Discover Mannoroc Coven |achieve 848/13
	step
		goto 36.5,69.9
		.' Discover Thargad's Camp |achieve 848/2
	step
		goto 24.2,70.9
		.' Discover Shadowprey Village |achieve 848/11
	step
		goto 35.34,57.2
		.' Discover Valley of Spears |achieve 848/9
	step
		goto 29.9,29.4
		.' Discover Slitherblade Shore |achieve 848/16
	step
		goto 28.7,9.01
		.' Discover Ranazjar Isle |achieve 848/8
	step
		goto 51.5,10.0
		.' Discover Tethris Aran |achieve 848/1
	step
		goto 54.5,25.2
		.' Discover Thunder Axe Fortress |achieve 848/5
	step
		goto 66.7,8.7
		.' Discover Nijel's Point |achieve 848/3
	step
		goto 78.2,21.6
		.' Discover Sargeron |achieve 848/4
	step
		goto 74.7,45.6
		.' Discover Magram Territory |achieve 848/7
	step
		goto 56.1,47.3
		.' Discover Cenarion Wildlands |achieve 848/6
	step
		goto 50.7,59.0
		.' Discover Kodo Graveyard |achieve 848/10
	step
		goto 70.6,74.8 
		.' Discover Shok'Thokar |achieve 848/14
	step
		goto 80.3,79.3
		.' Discover Shadowbreak Ravine |achieve 848/15
	step
	label	"desolace1"
		' Explore Desolace |achieve 848
	step
	label	"mulgore"
		'Skipping next part of guide |next "+stonetalon" |only if step:Find("+mulgore1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Mulgore,32.3,50.6
		.' Discover Bael'dun Digsite |achieve 736/10
	step
		goto 35.5,61.3
		.' Discover Palemane Rock |achieve 736/2
	step
		goto 53.8,85.8
		.' Discover Red Cloud Mesa |achieve 736/1
	step
		goto 53.7,66.7
		.' Discover Winterhoof Water Well |achieve 736/4
	step
		goto 47.8,58.4
		.' Discover Bloodhoof Village |achieve 736/3
	step
		goto 61.1,60.5
		.' Discover The Rolling Plains |achieve 736/5
	step
		goto 62.7,42.6
		.' Discover The Venture Co. Mine |achieve 736/6
	step
		goto 54.2,47.9
		.' Discover Ravaged Caravan |achieve 736/7
	step
		goto 44.9,43.5
		.' Discover Thunderhorn Water Well |achieve 736/9
	step
		goto 59.82,19.9
		.' Discover Red Rocks |achieve 736/11
	step
		goto 54.2,20.9
		.' Discover The Golden Plains |achieve 736/8
	step
		goto 43.1,14.2
		.' Discover Wildmane Water Well |achieve 736/13
	step
	label	"mulgore1"
		' Explore Mulgore |achieve 736
	step
	label "stonetalon"
		'Skipping next part of guide |next "+ashenvale" |only if step:Find("+stonetalon1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Stonetalon Mountains,72.6,92.4
		.' Discover Malaka'jin |achieve 847/9
	step
		goto 76.7,75.8
		.' Discover Unearthed Grounds |achieve 847/5
	step
		goto 69.6,85.1
		.' Discover Greatwood Vale |achieve 847/12
	step
		goto 63.4,88.7
		.' Discover Boulderslide Ravine |achieve 847/11
	step
		goto 59.6,78.9
		.' Discover Webwinder Path |achieve 847/10
	step
		goto 57.2,72.7
		.' Discover Webwinder Hollow |achieve 847/6
	step
		goto 48.8,76.3
		.' Discover Ruins of Eldre'thar |achieve 847/3
	step
		goto 49.3,63.4
		.' Discover Sun Rock Retreat |achieve 847/12
	step
		goto 31.6,71.5
		.' Discover The Charred Vale |achieve 847/15
	step
		goto 37.0,54.3
		.' Discover Battlescar Valley |achieve 847/1
	step
		goto 35.8,31.5
		.' Discover Thal'darah Overlook |achieve 847/4
	step
		goto 40.9,19.9
		.' Discover Stonetalon Peak |achieve 847/17
	step
		goto 45.1,30.2
		.' Discover Cliffwalker Post |achieve 847/8
	step
		goto 51.6,47.3
		.' Discover Mirkfallon Lake |achieve 847/16
	step
		goto 59.1,57.7
		.' Discover Windshear Hold |achieve 847/7
	step
		goto 66.9,66.2
		.' Discover Krom'gar Fortress |achieve 847/2
	step
		goto 66.9,49.3
		.' Discover Windshear Crag |achieve 847/13
	step
	label	"stonetalon1"
		' Explore Stonetalon Mountains |achieve 847
	step
	label	"ashenvale"
		'Skipping next part of guide |next "+hyjal" |only if step:Find("+ashenvale1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Ashenvale,32.6,65.6
		.' Discover The Ruins of Stardust |achieve 845/10
	step
		goto 35.9,50.2
		.' Discover Astranaar |achieve 845/9
	step
		goto 21.4,55.3
		.' Discover The Shrine of Aessina |achieve 845/8
	step
		goto 20.2,41.1
		.' Discover Lake Falathim |achieve 845/5
	step
		goto 27.5,37.7
		.' Discover Maestra's Post |achieve 845/6
	step
		goto 26.0,19.7
		.' Discover Orendil's Retreat |achieve 845/2
	step
		goto 37.0,32.9
		.' Discover Thistlefur Village |achieve 845/7
	step
		goto 48.9,46.4
		.' Discover Thunder Peak |achieve 845/4
	step
		goto 53.2,32.6
		.' Discover The Howling Vale |achieve 845/11
	step
		goto 59.7,50.0
		.' Discover Raynewood Retreat |achieve 845/12
	step
		goto 68.2,47.9
		.' Discover Splintertree Post |achieve 845/14
	step
		goto 80.4,49.7
		.' Discover Satyrnaar |achieve 845/15
	step
		goto 83.1,65.3
		.' Discover Felfire Hill |achieve 845/18
	step
		goto 87.4,58.6
		.' Discover Warsong Lumber Camp |achieve 845/17
	step
		goto 93.4,39.2
		.' Discover Bough Shadow |achieve 845/16
	step
	label	"ashenvale1"
		' Explore Ashenvale |achieve 845 
	step
	label "hyjal"
		'Skipping next part of guide |next "+winter" |only if step:Find("+hyjal1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Mount Hyjal,72.5,76.7
		.' Discover Gates of Sothann |achieve 4863/5
	step
		goto 76.0,64.9
		.' Discover Darkwhisper Gorge |achieve 4863/4
	step
		goto 53.4,55.1
		.' Discover The Scorched Plain |achieve 4863/10
	step
		goto 45.3,80.5
		.' Discover The Throne of Flame |achieve 4863/11
	step
		goto 31.4,84.9
		.' Discover Sethria's Roost |achieve 4863/7
	step
		goto 25.5,64.5
		.' Discover Rim of the World |achieve 4863/1
	step
		goto 31.8,53.5
		.' Discover Ashen Lake |achieve 4863/3
	step
		goto 32.9,51.2
		.' Discover The Flamewake |achieve 4863/9
	step
		goto 28.5,27.5
		.' Discover Shrine of Goldrinn |achieve 4863/8
	step
		goto 45.1,26.0
		.' Discover The Circle of Cinders |achieve 4863/2
	step
		goto 63.4,21.0
		.' Discover Nordrassil |achieve 4863/6
	step
	label	"hyjal1"
		' Explore Mount Hyjal |achieve 4863
	step
	label	"winter"
		'Skipping next part of guide |next "+azshara" |only if step:Find("+winter1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Winterspring,59.8,85.5
		.' Discover Frostwhisper Gorge |achieve 857/12
	step
		goto 64.5,77.2
		.' Discover Owl Wing Thicket |achieve 857/9
	step
		goto 67.8,64.4
		.' Discover Ice Thistle Hills |achieve 857/8
	step
		goto 68.1,48.5
		.' Discover Winterfall Village |achieve 857/9
	step
		goto 59.9,48.9
		.' Discover Everlook |achieve 857/6
	step
		goto 62.7,24.7
		.' Discover The Hidden Grove |achieve 857/10
	step
		goto 45.3,15.4
		.' Discover Frostsaber Rock |achieve 857/11
	step
		goto 47.7,39.1
		.' Discover Starfall Village |achieve 857/4
	step
		goto 51.1,55.1
		.' Discover Lake Kel'Theril |achieve 857/3
	step
		goto 54.8,62.9
		.' Discover Mazthoril |achieve 857/5
	step
		goto 36.4,56.7
		.' Discover Timbermaw Post |achieve 857/2
	step
		goto 31.9,49.3
		.' Discover Frostfire Hot Springs |achieve 857/1
	step
	label	"winter1"
		' Explore Winterspring |achieve 857
	step
	label	"azshara"
		'Skipping next part of guide |next "+moon" |only if step:Find("+azshara1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Azshara,52.25,26.95 
		.' Discover Darnassian Base Camp |achieve 852/7
	step
		goto 73.69,20.98
		.' Discover Bitter Reaches |achieve 852/4
	step
		goto 80.90,32.34
		.' Discover Tower of Eldara |achieve 852/5
	step
		goto 69.89,34.83
		.' Discover Ruins of Arkkoran |achieve 852/6
	step
		goto 58.29,51.00
		.' Discover Bilgewater Harbor |achieve 852/3
	step
		goto 68.41,75.62
		.' Discover Southridge Beach |achieve 852/13
	step
		goto 64.65,79.31
		.' Discover Ravencrest Monument |achieve 852/14
	step
		goto 56.99,76.50
		.' Discover Storm Cliffs |achieve 852/17
	step
		goto 46.54,76.25
		.' Discover The Secret Lab |achieve 852/8
	step
		goto 39.83,84.67
		.' Discover The Ruined Reaches |achieve 852/16
	step
		goto 35.72,73.99
		.' Discover Lake Mennar |achieve 852/15
	step
		goto 26.75,77.96
		.' Discover Orgrimmar Rear Gate |achieve 852/11
	step
		goto 21.04,57.1
		.' Discover Gallywix Pleasure Palace |achieve 852/1
	step
		goto 39.21,55.46
		.' Discover The Shattered Strand |achieve 852/2
	step
		goto 31.95,50.02
		.' Discover Ruins of Eldarath |achieve 852/12
	step
		goto 25.47,38.00
		.' Discover Bear's Head |achieve 852/9
	step
		goto 33.06,32.76
		.' Discover Blackmaw Hold |achieve 852/10
	step
	label	"azshara1"
		' Explore Azshara |achieve 852
	step
	label	"moon"
		'Skipping next part of guide |next "+felwood" |only if step:Find("+moon1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Moonglade,67.8,53.8
		.' Discover Stormrage Barrow Dens |achieve 855/4
	step
		goto 52.5,55.4
		.' Discover Lake Elune'ara |achieve 855/1
	step
		goto 48.2,37.9
		.' Discover Nighthaven |achieve 855/2
	step
		goto 36.3,38.8
		.' Discover Shrine of Remulos |achieve 855/3
	step
	label	"moon1"
		' Explore Moonglade |achieve 855
	step
	label	"felwood"
		'Skipping next part of guide |next "+darkshore" |only if step:Find("+felwood1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Felwood,61.2,11.5
		.' Discover Felpaw Village |achieve 853/1
	step
		goto 62.6,26.7
		.' Discover Talonbranch Glade |achieve 853/2
	step
		goto 50.3,26.0
		.' Discover Irontree Woods |achieve 853/3
	step
		goto 43.6,18.6
		.' Discover Jadefire Run |achieve 853/4
	step
		goto 43.1,41.9
		.' Discover Shatter Scar Vale |achieve 853/5
	step
		goto 52.2,78.2
		.' Discover Emerald Sanctuary |achieve 853/10
	step
		goto 56.6,86.8
		.' Discover Morlos'Aran |achieve 853/12
	step
		goto 48.0,89.2
		.' Discover Deadwood Village |achieve 853/11
	step
		goto 41.8,85.4
		.' Discover Jadefire Glen |achieve 853/9
	step
		goto 38.0,72.3
		.' Discover Ruins of Constellas |achieve 853/8
	step
		goto 37.0,59.1
		.' Discover Jaedenar |achieve 853/7
	step
	label	"felwood1"
		' Explore Felwood |achieve 853
	step
	label	"darkshore"
		'Skipping next part of guide |next "+teldrassil" |only if step:Find("+darkshore1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Darkshore,40.3,86.2
		.' Discover The Master's Glaive |achieve 844/11
	step
		goto 32.0,84.0
		.' Discover Nazj'vel |achieve 844/10
	step
		goto 42.5,69.5
		.' Discover Wildbend River |achieve 844/4
	step
		goto 43.7,60.5
		.' Discover Ameth'Aran |achieve 844/8
	step
		goto 43.96,39.82 
		.' Discover Withering Thicket |achieve 844/5
	step
		goto 42.9,54.9
		.' Discover The Eye of the Vortex |achieve 844/7
	step
		goto 37.9,44.1
		.' Discover Ruins of Auberdine |achieve 844/1
	step
		goto 51.2,19.2
		.' Discover Lor'danel |achieve 844/9
	step
		goto 63.9,21.9
		.' Discover Ruins of Mathystra |achieve 844/6
	step
		goto 72.5,17.3 
		.' Discover Shatterspear Vale |achieve 844/2
	step
		goto 65.9,7.0
		.' Discover Shatterspear War Camp |achieve 844/3
	step
	label	"darkshore1"
		' Explore Darkshore |achieve 844
	step
	label	"teldrassil"
		'Skipping next part of guide |next "+azure" |only if step:Find("+teldrassil1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Teldrassil,55.0,61.0
		.' Discover Lake Al'Ameth |achieve 842/6
	step
		goto 55.6,51.2
		.' Discover Dolanaar |achieve 842/3
	step
		goto 64.7,49.1
		.' Discover Starbreeze Village |achieve 842/8
	step
		goto 55.0,91.0
		.' Rut'theran Village |achieve 842/12
	step
		goto 58.4,33.0
		.' Discover Shadowglen |achieve 842/1
	step
		goto 50.7,38.0
		.' Discover The Cleft |achieve 842/2
	step
		goto 46.16,50.68 
		.' Ban'ethil Hollow |achieve 842/4
	step
		goto 44.4,34.4
		.' Discover Wellspring Lake |achieve 842/10
	step
		goto 40.0,26.7
		.' Discover The Oracle Glade |achieve 842/9
	step
		goto 30.4,50.1
		.' Discover Darnassus |achieve 842/11
	step
		goto 41.9,56.9
		.' Discover Pools of Arlithrien |achieve 842/7
	step
		goto 44.8,67.4
		.' Discover Gnarlpine Hold |achieve 842/5
	step
	label	"teldrassil1"
		' Explore Teldrassil |achieve 842
	step
	label	"azure"
		'Skipping next part of guide |next "+blood" |only if step:Find("+azure1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto 52.4,89.3 
		.' Ride the boat to Azuremyst Isle |tip Make sure to avoid Alliance Guards as best you can
		.' Ride to Azuremyst Isle |goto Azuremyst Isle |noway |c
	step
		goto Azuremyst Isle,23.7,54.0
		.' Discover Valaar's Berth |achieve 860/16
	step
		goto 26.5,65.1
		.' Discover Bristlelimb Village |achieve 860/4
	step
		goto 12.7,78.6
		.' Discover Silvermyst Isle |achieve 860/13
	step
		goto 32.0,79.3
		.' Discover Wrathscale Point |achieve 860/17
	step
		goto 37.0,58.4
		.' Discover Pod Cluster |achieve 860/10
	step
		goto 49.3,50.7
		.' Discover Azure Watch |achieve 860/3
	step
		goto 46.6,72.4
		.' Discover Odesyus' Landing |achieve 860/9
	step
		goto 52.7,61.3
		.' Discover Pod Wreckage |achieve 860/11
	step
		goto 58.3,67.0
		.' Discover Geezle's Camp |achieve 860/7
	step
		goto 61.3,53.6
		.' Discover Ammen Ford |achieve 860/2
	step
		goto 77.6,43.7
		.' Discover Ammen Vale |achieve 860/1
	step
		goto 52.7,41.8
		.' Discover Moongraze Woods |achieve 860/8
	step
		goto 29.2,35.1
		.' Discover The Exodar |achieve 860/15
	step
		goto 35.3,12.4
		.' Discover Silting Shore |achieve 860/12
	step
		goto 46.0,20.0
		.' Discover Stillpine Hold |achieve 860/14
	step
		goto 58.8,17.6
		.' Discover Emberglade |achieve 860/5
	step
		goto 47.7,6.6
		.' Discover Fairbridge Strand |achieve 860/6
	step
	label	"azure1"
		' Explore Azuremyst Isle |achieve 860
	step
	label	"blood"
		'Skipping next part of guide |next "+end" |only if step:Find("+blood1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Bloodmyst Isle,61.9,90.0 |kessel's crossing
	step
		goto 57.4,81.0
		.' Discover The Lost Fold |achieve 861/22
	step
		goto 67.0,78.2
		.' Discover Bristlelimb Enclave |achieve 861/7
	step
		goto 69.0,66.6
		.' Discover Wrathscale Lair |achieve 861/27
	step
		goto 85.4,52.8
		.' Discover Bloodcurse Isle |achieve 861/5
	step
		goto 72.0,29.6
		.' Discover Wyrmscar Island |achieve 861/28
	step
		goto 73.4,20.9
		.' Discover Talon Stand |achieve 861/14
	step
		goto 81.0,20.1
		.' Discover The Bloodcursed Reef |achieve 861/16
	step
		goto 74.4,7.5
		.' Discover Veridian Point |achieve 861/25
	step
		goto 62.6,25.4
		.' Discover The Crimson Reach |achieve 861/16
	step
		goto 54.2,17.1
		.' Discover The Warp Piston |achieve 861/24
	step
		goto 56.1,34.9
		.' Discover Ragefeather Ridge |achieve 861/12
	step
		goto 61.6,45.2
		.' Discover Ruins of Loreth'Aran |achieve 861/13
	step
		goto 54.6,55.4
		.' Discover Blood Watch |achieve 861/6
	step
		goto 51.7,76.6
		.' Discover Middenvale |achieve 861/9
	step
		goto 43.9,84.7
		.' Discover Mystwood |achieve 861/10
	step
		goto 33.2,90.3
		.' Discover Blacksilt Shore |achieve 861/3
	step
		goto 37.9,75.7
		.' Discover Nazzivian |achieve 861/11
	step
		goto 38.5,59.5
		.' Discover The Cryo-Core |achieve 861/19
	step
		goto 45.9,45.1
		.' Discover Bladewood |achieve 861/4
	step
		goto 40.8,33.0
		.' Discover Axxarien |achieve 861/2
	step
		goto 38.7,21.9
		.' Discover The Bloodwash |achieve 861/17
	step
		goto 32.7,19.8
		.' Discover The Hidden Reef |achieve 861/21
	step
		goto 29.2,36.8
		.' Discover The Foul Pool |achieve 861/20
	step
		goto 30.2,46.2
		.' Discover Vindicator's Rest |achieve 861/26
	step
		goto 24.4,41.2
		.' Discover Tel'athion's Camp |achieve 861/15
	step
		goto 18.8,30.9
		.' Discover Amberweb Pass |achieve 861/1
	step
		goto 18.0,53.4
		.' Discover The Vector Coil |achieve 861/23
	step
	label	"blood1"
		' Explore Bloodmyst Isle |achieve 861
	step
	label "end"
		' Congratulations! You have Explored Kalimdor |achieve 43 |only if achieved(43)
		' Congratulations! You have Explored Cataclysm |achieve 4868 |only if achieved(4868)
		' Congratulations! You have Earned the Achievement World Explorer! |achieve 46 |only if achieved(46)
		.' You have not fully explored Kalimdor |only if not achieved(43)
		|confirm |next "start" |only if not achieved(43)
]])

ZygorGuidesViewer:RegisterInclude("Explorer_EasternKingdoms",[[
	step
		' This guide assumes you have a flying mount and can fly in Azeroth as well. You can do this
		.' without having a flying mount but it will be much more efficient with one.
		|confirm always
	step
	label	"start"
		' Explore Elwynn Forest |achieve 776
		' Explore Badlands |achieve 765
		' Explore Burning Steppes |achieve 775
		' Explore Duskwood |achieve 778
		' Explore Loch Modan |achieve 779
		' Explore Tirisfal Glades |achieve 768
		' Explore Searing Gorge |achieve 774
		' Explore Ghostlands |achieve 858
		' Explore The Cape of Stranglethorn |achieve 4995
		' Explore The Hinterlands |achieve 773
		' Explore Wetlands |achieve 841
		' Explore Western Plaguelands |achieve 770
		' Explore Isle of Quel'Danas |achieve 868
		' Explore Arathi Highlands |achieve 761
		' Explore Blasted Lands |achieve 766
		' Explore Dun Morogh |achieve 627
		' Explore Hillsbrad Foothills |achieve 772
		' Explore Redridge Mountains |achieve 780
		' Explore Eversong Woods |achieve 859
		' Explore Silverpine Forest |achieve 769
		' Explore Northern Stranglethorn |achieve 781
		' Explore Swamp of Sorrows |achieve 782
		' Explore Westfall |achieve 802
		' Explore Deadwind Pass |achieve 777
		' Explore Eastern Plaguelands |achieve 771     
		' Explore Vashj'ir |achieve 4825
		' Explore Deepholm |achieve 4864
		' Explore Twilight Highlands |achieve 4866
		|confirm
	step
		'Skipping next part of guide |next "+vashj'ir" |only if step:Find("+deepholm1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		#include "portal_deepholm"
	step
		goto Deepholm,55.8,75.4
		.' Discover Storm's Fury Wreckage |achieve 4864/5
	step
		goto 68.3,77.8
		.' Discover Twilight Overlook |achieve 4864/10
	step
		goto 62.9,58.5
		.' Discover Deathwing's Fall |achieve 4864/1
	step
		goto 74.2,40.7
		.' Discover Crimson Expanse |achieve 4864/12
	step
		goto 56.6,10.9
		.' Discover Therazane's Throne |achieve 4864/8
	step
		goto 39.8,18.6
		.' Discover The Pale Roost |achieve 4864/7
	step
		goto 26.8,32.6
		.' Discover Needlerock Chasm |achieve 4864/2
	step
		goto 21.7,47.7
		.' Discover Needlerock Slag |achieve  4864/3
	step
		goto 26.3,69.5
		.' Discover Stonehearth |achieve 4864/4
	step
		goto 35.2,80.3
		.' Discover The Quaking Fields |achieve 4864/9
	step
		goto 39.2,69.1
		.' Discover Masters' Gate |achieve 4864/11
	step
	label	"deepholm1"
		' Explore Deepholm |achieve 4864
	step
		goto Deepholm,48.5,53.8
		.' Click on the Portal to Stormwind |tip It looks like a blue and red swirling portal.
		.' Teleport to Stormwind|goto Stormwind City |noway |c
	step
	label	"vashj'ir"
		'Skipping next part of guide |next "+strangle" |only if step:Find("+vashj'ir1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		#include "portal_vashjir"
	step
		goto Abyssal Depths,54.1,63.9
		.' Discover Korthun's End |achieve 4825/5
	step
		goto 42.2,70.0
		.' Discover Underlight Canyon |achieve 4825/3
	step
		goto 22.1,80.2
		.' Discover Abandoned Reef |achieve 4825/1
	step
		goto 32.3,54.1
		.' Discover L'ghorek |achieve 4825/6
	step
		goto 39.4,19.3
		.' Discover Deepfin Ridge |achieve 4825/4
	step
		goto 54.9,43.5
		.' Discover Seabrush |achieve 4825/7
	step
		goto 71.5,29.8
		.' Discover Abyssal Breach |achieve 4825/2
	step
		goto Shimmering Expanse,50.9,21.5
		.' Discover Shimmering Grotto |achieve 4825/20
	step
		goto 47.9,37.8
		.' Discover Silver Tide Hollow |achieve 4825/21
	step
		goto 43.6,48.4
		.' Discover Glimmerdeep Gorge |achieve 4825/9
	step
		goto 33.7,72.4
		.' Discover Ruins of Vashj'ir |achieve 4825/19
	step
		goto 55.4,83.0
		.' Discover Beth'mora Ridge |achieve 4825/16
	step
		goto 59.2,56.5
		.' Discover Nespirah |achieve 4825/17
	step
		goto 66.4,41.7
		.' Discover Ruins of Thelserai Temple |achieve 4825/18
	step
		goto Kelp'thar Forest,58.8,81.4
		.' Discover The Clutch |achieve 4825/12
	step
		goto 61.5,58.9
		.' Discover Gnaws' Boneyard |achieve 4825/10
	step
		goto 53.2,56.2
		.' Discover Gurboggle's Ledge |achieve 4825/11
	step
		goto 39.7,29.7
		.' Discover Legion's Fate |achieve 4825/14
	step
		goto 50.3,24.1 
		.' Discover Seafarer's Tomb |achieve 4825/13
	step
		goto Kelp'thar Forest,64.8,49.3
		.' Discover The Skeletal Reef |achieve 4825/15
	step
	label	"vashj'ir1"
		' Explore Vashj'ir |achieve 4825
	step
		#include "hearth"
	step
	label	"strangle"
		'Skipping next part of guide |next "+n_strangle" |only if step:Find("+strangle1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto The Cape of Stranglethorn,39.7,71.0
		.' Discover Booty Bay |achieve 4995/1
	step
		goto 43.5,81.4
		.' Discover The Wild Shore |achieve 4995/10
	step
		goto 60.8,81.6
		.' Discover Jaquero Isle |achieve 4995/5
	step
		goto 50.5,58.1
		.' Discover Mistvale Valley |achieve 4995/6
	step
		goto 43.0,49.1
		.' Discover Nek'mani Wellspring |achieve 4995/7
	step
		goto 34.1,32.4
		.' Discover Hardwrench Hideaway |achieve 4995/4
	step
		goto 46.3,22.5
		.' Discover Gurubashi Arena |achieve 4995/3
	step
		goto 54.4,30.3
		.' Discover Ruins of Jubuwal |achieve 4995/9
	step
		goto 62.2,43.7
		.' Discover Ruins of Aboraz |achieve 4995/8
	step
		goto 62.4,28.1
		.' Discover Crystalvein Mine |achieve 4995/2
	step
	label	"strangle1"
		' Explore The Cape of Stranglethorn |achieve 4995
	step
	label	"n_strangle"
		'Skipping next part of guide |next "+westfall" |only if step:Find("+n_strangle1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Northern Stranglethorn,53.2,66.0
		.' Discover Fort Livingston |achieve 781/4
	step
		goto 59.0,55.2
		.' Discover Balia'mah Ruins |achieve 781/2
	step
		goto 66.9,50.9
		.' Discover Mosh'Ogg Ogre Mound |achieve 781/11
	step
		goto 64.7,39.7
		.' Discover Bambala |achieve 781/3
	step
		goto 83.9,32.5
		.' Discover Zul'Gurub |achieve 781/16
	step
		goto 60.2,19.9
		.' Discover Kurzen's Compound |achieve 781/8
	step
		goto 46.7,9.5
		.' Discover Rebel Camp |achieve 781/7
	step
		goto 44.1,19.8
		.' Discover Nesingwary's Expedition |achieve 781/6
	step
		goto 42.2,38.4
		.' Discover Kal'ai Ruins |achieve 781/9
	step
		goto 46.1,52.9
		.' Discover Mizjah Ruins |achieve 781/10
	step
		goto 37.8,48.4
		.' Discover Grom'gol Base Camp |achieve 781/1
	step
		goto 33.0,42.5
		.' Discover The Vile Reef |achieve 781/14
	step
		goto 34.3,36.2
		.' Discover Bal'lal Ruins |achieve 781/13
	step
		goto 19.2,25.6
		.' Discover Zuuldaia Ruins |achieve 781/5
	step
		goto 26.4,20.2
		.' Discover Ruins of Zul'Kunda |achieve 781/15
	step
	label	"n_strangle1"
		' Explore Northern Stranglethorn |achieve 781
	step
	label	"westfall"
		'Skipping next part of guide |next "+duskwood" |only if step:Find("+westfall1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto 44.9,82.0
		.' Discover The Dagger Hills |achieve 802/12
	step
		goto 30.0,86.8
		.' Discover Westfall Lighthouse |achieve 802/11
	step
		goto 33.9,73.6
		.' Discover Demont's Place |achieve 802/10
	step
		goto 42.4,65.5
		.' Discover Moonbrook |achieve 802/8
	step
		goto 38.2,52.3
		.' Discover Alexston Farmstead |achieve 802/9
	step
		goto 39.2,43.2
		.' Discover The Raging Chasm |achieve 802/13
	step
		goto 45.3,34.9
		.' Discover the Molsen Farm |achieve 802/6
	step
		goto 44.9,23.9
		.' Discover Jangolode Mine |achieve 802/5
	step
		goto 51.0,21.4
		.' Discover Furlbrow's Pumpkin Farm |achieve 802/3
	step
		goto 57.7,15.8
		.' Discover The Jansen Stead |achieve 802/4
	step
		goto 54.4,32.3
		.' Discover Saldean's Farm |achieve 802/2
	step
		goto 55.9,49.3
		.' Discover Sentinel Hill |achieve 802/1
	step
		goto 61.5,59.2
		.' Discover the Dead Acre |achieve 802/7
	step
	label	"westfall1"
		' Explore Westfall |achieve 802
	step
	label	"duskwood"
		'Skipping next part of guide |next "+deadwind" |only if step:Find("+duskwood1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Duskwood,10.1,44.3
		.' Discover The Hushed Bank |achieve 778/1
	step
		goto 19.6,41.3
		.' Discover Raven Hill Cemetery |achieve 778/4
	step
		goto 19.8,55.2
		.' Discover Raven Hill |achieve 778/3
	step
		goto 21.4,69.9
		.' Discover Addle's Stead |achieve 778/2
	step
		goto 35.8,72.7
		.' Discover Vul'Gol Ogre Mound |achieve 778/5
	step
		goto 51.0,74.0
		.' Discover The Yorgen Farmstead |achieve 778/7
	step
		goto 63.8,71.9
		.' Discover The Rotting Orchard |achieve 778/9
	step
		goto 46.8,38.6
		.' Discover Twilight Grove |achieve 778/6
	step
		goto 54.6,21.2
		.' Discover The Darkened Bank |achieve 778/13
	step
		goto 64.7,37.7
		.' Discover Brightwood Grove |achieve 778/8
	step
		goto 77.1,35.9
		.' Discover Manor Mistmantle |achieve 778/12
	step
		goto 74.5,46.2
		.' Discover Darkshire |achieve 778/11
	step
		goto 79.7,66.1
		.' Discover Tranquil Gardens Cemetery |achieve 778/10
	step
	label	"duskwood1"
		' Explore Duskwood |achieve 778
	step
	label	"deadwind"
		'Skipping next part of guide |next "+blasted" |only if step:Find("+deadwind1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Deadwind Pass,45.1,35.8
		.' Discover Deadman's Crossing |achieve 777/1
	step
		goto 42.6,68.8
		.' Discover Karazhan |achieve 777/3
	step
		goto 58.6,64.7
		.' Discover The Vice |achieve 777/2
	step
	label	"deadwind1"
		' Explore Deadwind Pass |achieve 777
	step
	label	"blasted"
		'Skipping next part of guide |next "+swamp" |only if step:Find("+blasted1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Blasted Lands,39.5,12.9
		.' Discover Dreadmaul Hold |achieve 766/1
	step
		goto 45.1,26.7
		.' Discover Rise of the Defiler |achieve 766/9
	step
		goto 47.1,40.1
		.' Discover Dreadmaul Post |achieve 766/7
	step
		goto 54.4,52.9
		.' Discover The Dark Portal |achieve 766/5
	step
		goto 32.3,45.7
		.' Discover The Tainted Scar |achieve 766/8
	step
		goto 34.2,72.3
		.' Discover The Tainted Forest |achieve 766/14
	step
		goto 44.5,86.1
		.' Discover Surwich |achieve 766/12
	step
		goto 50.7,70.9
		.' Discover Sunveil Excursion |achieve 766/11
	step
		goto 65.8,78.0
		.' Discover The Red Reaches |achieve 766/13
	step
		goto 69.1,33.5
		.' Discover Shattershore |achieve 766/10
	step
		goto 60.3,28.4
		.' Discover Serpent's Coil |achieve 766/4
	step
		goto 64.3,15.8
		.' Discover Nethergare Keep |achieve 766/3
	step
	label	"blasted1"
		' Explore Blasted Lands |achieve 766
	step
	label	"swamp"
		'Skipping next part of guide |next "+redridge" |only if step:Find("+swamp1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Swamp of Sorrows,67.8,74.9
		.' Discover Stagalbog |achieve 782/7
	step
		goto 84.2,38.9
		.' Discover Sorrowmurk |achieve 782/8
	step
		goto 77.3,13.7
		.' Discover Misty Reed Strand |achieve 782/10
	step
		goto 72.3,12.8
		.' Discover Bogpaddle |achieve 782/9
	step
		goto 68.4,35.8
		.' Discover Marshtide Watch |achieve 782/12
	step
		goto 62.6,50.0
		.' Discover Pool of Tears |achieve 782/6
	step
		goto 48.8,42.1
		.' Discover The Shifting Mire |achieve 782/4
	step
		goto 47.1,54.2
		.' Discover Stonard |achieve 782/5
	step
		goto 18.6,68.1
		.' Discover Purespring Cavern |achieve 782/11
	step
		goto 22.3,49.4
		.' Discover Splinterspear Junction |achieve 782/3
	step
		goto 14.7,35.8
		.' Misty Valley |achieve 782/1
	step
		goto 28.8,32.1
		.' Discover The Harborage |achieve 782/2
	step
	label	"swamp1"
		' Explore Swamp of Sorrows |achieve 782
	step
	label	"redridge"
		'Skipping next part of guide |next "+elwynn" |only if step:Find("+redridge1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Redridge Mountains,38.2,68.5
		.' Discover Lakeridge Highway |achieve 780/4
	step
		goto 41.9,52.6
		.' Discover Lake Everstill |achieve 780/2
	step
		goto 53.4,54.7
		.' Discover Camp Everstill |achieve 780/13
	step
		goto 60.9,52.5
		.' Discover Stonewatch Keep |achieve 780/10
	step
		goto 64.7,71.3
		.' Discover Render's Valley |achieve 780/8
	step
		goto 81.0,62.4
		.' Discover Shalewind Canyon |achieve 780/12
	step
		goto 47.2,39.2
		.' Discover Alther's Mill |achieve 780/6
	step
		goto 35.1,12.8
		.' Discover Render's Camp |achieve 780/9
	step
		goto 30.2,26.1
		.' Discover Redridge Canyons |achieve 780/5
	step
		goto 25.5,43.4
		.' Discover Lakeshire |achieve 780/1
	step
		goto 19.7,59.1
		.' Discover Three Corners |achieve 780/3
	step
	label	"redridge1"
		' Explore Redridge Mountains |achieve 780
	step
	label	"elwynn"
		'Skipping next part of guide |next "+burning" |only if step:Find("+elwynn1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Elwynn Forest,83.5,66.9
		.' Discover Eastvale Logging Camp |achieve 776/8
	step
		goto 84.8,79.4
		.' Discover Ridgepoint Tower |achieve 776/9
	step
		goto 69.4,79.4
		.' Discover Brackwell Pumpkin Patch |achieve 776/7
	step
		goto 64.6,69.3
		.' Discover Tower of Azora |achieve 776/6
	step
		goto 52.9,66.2
		.' Discover Crystal Lake |achieve 776/10
	step
		goto 48.5,85.8
		.' Discover Jerod's Landing |achieve 776/5
	step
		goto 39.5,80.3
		.' Discover Fargodeep Mine |achieve 776/4
	step
		goto 24.5,73.3
		.' Discover Westbrook Garrison |achieve 776/2
	step
		goto 42.1,64.7
		.' Discover Goldshire |achieve 776/3
	step
		goto 50.4,42.5
		.' Discover Northshire Valley |achieve 776/1
	step
		goto 74.0,51.5
		.' Discover Stone Cairn Lake |achieve 776/11
	step
	label	"elwynn1"
		' Explore Elwynn Forest |achieve 776
	step
	label	"burning"
		'Skipping next part of guide |next "+badlands" |only if step:Find("+burning1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Burning Steppes,66.7,77.5
		.' Discover Blackrock Pass |achieve 775/4
	step
		goto 73.5,68.0
		.' Discover Morgan's Vigil |achieve 775/2
	step
		goto 73.9,53.4
		.' Discover Terror Wing Path |achieve 775/3
	step
		goto 69.7,40.5
		.' Discover Dreadmaul Rock |achieve 775/1
	step
		goto 56.6,37.4
		.' Discover Ruins of Thaurissan |achieve 775/5
	step
		goto 36.1,53.5
		.' Discover Black Tooth Hovel |achieve 775/6
	step
		goto 24.3,57.7
		.' Discover The Whelping Downs |achieve 775/8
	step
		goto 32.3,36.5
		.' Discover Blackrock Stronghold |achieve 775/7
	step
		goto 20.7,29.2
		.' Discover Blackrock Mountain |achieve 775/10
	step
		goto 9.4,27.5
		.' Discover Altar of Storms |achieve 775/9
	step
	label	"burning1"
		' Explore Burning Steppes |achieve 775
	step
	label	"badlands"
		'Skipping next part of guide |next "+searing" |only if step:Find("+badlands1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Badlands 68.0,48.2
		.' Discover Lethlor Ravine |achieve 765/1
	step
		goto 60.1,20.7
		.' Discover Camp Kosh |achieve 765/8
	step
		goto 38.3,11.6
		.' Discover Uldaman |achieve 765/3
	step 
		goto 41.1,26.5
		.' Discover Angor Fortress |achieve 765/7
	step
		goto 27.4,38.
		.' Discover The Dustbowl |achieve 765/6
	step
		goto 17.7,41.7
		.' Discover New Kargath |achieve 765/10
	step
		goto 17.2,63.0
		.' Discover Camp Cagg |achieve 765/4
	step
		goto 31.7,54.6
		.' Discover Scar of the Worldbreaker |achieve 765/5
	step
		goto 46.5,57.4
		.' Discover Agmond's End |achieve 765/2
	step
		goto 52.3,51.2
		.' Discover Bloodwatcher Point |achieve 765/9
	step
	label	"badlands1"
		' Explore Badlands |achieve 765
	step
	label	"searing"
		'Skipping next part of guide |next "+dun" |only if step:Find("+searing1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Searing Gorge,39.9,82.9
		.' Discover Blackrock Mountain |achieve 774/8
	step
		goto 21.2,80.1
		.' Discover Balckchar Cave |achieve 774/3
	step
		goto 23.8,31.8
		.' Discover Firewatch Ridge |achieve 774/1
	step
		goto 37.7,29.9
		.' Discover Thorium Point |achieve 774/7
	step
		goto 52.7,49.6
		.' Discover The Cauldron |achieve 774/2
	step
		goto 71.8,26.8
		.' Discover Dustfire Valley |achieve 774/6
	step
	label	"searing1"
		' Explore Searing Gorge |achieve 774
	step
	label	"dun"
		'Skipping next part of guide |next "+loch" |only if step:Find("+dun1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Dun Morogh,84.1,51.8
		.' Discover Helm's Bed Lake |achieve 627/10
	step
		goto 76.5,57.2
		.' Discover Gol'Bolar Quarry |achieve 627/11
	step
		goto 71.5,46.2
		.' Discover Amberstill Ranch |achieve 627/9
	step
		goto 67.2,53.9
		.' Discover The Tundrid Hills |achieve 627/8
	step
		goto 58.6,57.7
		.' Discover Frostmane Front |achieve 627/3
	step
		goto 53.6,50.5
		.' Discover Kharanos |achieve 627/7
	step
		goto 48.3,52.8
		.' Discover The Grizzled Den |achieve 627/14
	step
		goto 43.9,64.5
		.' Discover Coldridge Pass |achieve 627/1
	step
		goto 34.6,75.6
		.' Discover Coldridge Valley |achieve 627/2
	step
		goto 31.5,51.9
		.' Discover Frostmane Hold |achieve 627/13
	step
		goto 33.8,37.5
		.' Discover New Tinkertown |achieve 627/4
	step
		goto 41.4,40.2
		.' Discover Iceflow Lake |achieve 627/15
	step
		goto 48.3,37.9
		.' Discover Shimmer Ridge |achieve 627/6
	step
		goto 59.6,33.8
		.' Discover Gates of Ironforge |achieve 627/16
	step
		goto 78.0,24.2
		.' Discover Ironforge Airfield |achieve 627/5
	step
		goto 90.3,37.6
		.' Discover North Gate Outpost |achieve 627/12
	step
	label	"dun1"
		' Explore Dun Morogh |achieve 627
	step
	label	"loch"
		'Skipping next part of guide |next "+twilight" |only if step:Find("+loch1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Loch Modan,20.3,78.5
		.' Discover Valley of Kings |achieve 779/11
	step
		goto 32.5,78.3
		.' Discover Stonesplinter Valley |achieve 779/10
	step
		goto 38.0,60.7
		.' Discover Grizzlepaw Ridge |achieve 779/8
	step
		goto 69.4,65.3
		.' Discover Ironband's Excavation Site |achieve 779/7
	step
		goto 82.3,65.0
		.' Discover The Farstrider Lodge |achieve 779/6
	step
		goto 71.0,23.8
		.' Discover Mo'grosh Stronghold |achieve 779/3
	step
		goto 35.2,47.6
		.' Discover Thelsamar |achieve 779/9
	step
		goto 20.2,17.1
		.' Discover North Gate Pass |achieve 779/5
	step
		goto 34.8,21.5
		.' Discover Silver Stream Mine |achieve 779/4
	step
		goto 48.0,11.4
		.' Discover Stonewrought Dam |achieve 779/2
	step
	label	"loch1"
		' Explore Loch Modan |achieve 779
	step
	label	"twilight"
		'Skipping next part of guide |next "+wetlands" |only if step:Find("+twilight1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Twilight Highlands,18.9,51.4
		.' Discover Grim Batol |achieve 4866/10
	step
		goto 28.18,37.67
		.' Discover Dragonmaw Pass |achieve 4866/4 
	step
		goto 29.0,47.8
		.' Discover Wyrms' Bend |achieve 4866/26
	step
		goto 36.39,38.03 
		.' The Gullet |achieve 4866/19
	step
		goto 39.9,46.6
		.' The Twilight Breach |achieve 4866/21
	step
		goto 43.2,58.1
		.' Discover Victor's Point |achieve 4866/25
	step
		goto 46.1,77.2
		.' Discover Crushblow |achieve 4866/3
	step
		goto 49.5,68.8
		.' Discover Dunwald Ruins |achieve 4866/6
	step
		goto 64.4,78.9
		.' Discover Obsibian Forest |achieve 4866/15
	step
		goto 71.0,70.9
		.' Discover Twilight Shore |achieve 4866/23
	step
		goto 80.7,76.8
		.' Discover Highbank |achieve 4866/11
	step
		goto 76.0,53.0
		.' Discover Dragonmaw Port |achieve 4866/5
	step
		goto 59.9,57.0
		.' Discover Firebeards's Patrol |achieve 4866/7
	step
		goto 54.0,62.9
		.' Discover Highland Forest |achieve 4866/12
	step
		goto 50.7,56.9
		.' Discover Crucible of Carnage |achieve 4866/2
	step
		goto 54.1,42.7
		.' Discover Bloodgulch |achieve 4866/1
	step
		goto 62.7,46.0
		.' Discover Gorshak War Camp |achieve 4866/9
	step
		goto 71.0,38.8
		.' Discover Slithering Cove |achieve 4866/17
	step
		goto 76.8,14.5
		.' Discover The Krazzworks |achieve 4866/20
	step
		goto 54.9,17.3
		.' Discover Kirthaven |achieve 4866/14
	step
		goto 57.9,30.3
		.' Discover The Black Breach |achieve 4866/18
	step
		goto 50.2,29.1
		.' Discover Thundermar |achieve 4866/22
	step
		goto 47.8,10.6
		.' The Maw of Madness |achieve 4866/27
	step
		goto 43.6,18.1
		.' Ruins of Drakgor |achieve 4866/16
	step
		goto 44.3,27.3
		.' Discover Humboldt Conflagration |achieve 4866/13
	step
		goto 38.3,29.0
		.' Discover Glopgut's Hollow |achieve 4866/8
	step
		goto 25.3,21.0
		.' Discover Vermillion Redoubt |achieve 4866/24
	step
	label	"twilight1"
		' Explore Twilight Highlands |achieve 4866
	step
	label	"wetlands"
		'Skipping next part of guide |next "+arathi" |only if step:Find("+wetlands1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Wetlands,67.9,34.9
		.' Discover Raptor Ridge |achieve 841/16
	step
		goto 57.9,40.6
		.' Discover Greenwarden's Grove |achieve 841/11
	step
		goto 61.9,56.6
		.' Discover Mosshide Fen |achieve 841/12
	step
		goto 58.4,71.0
		.' Discover Slabchisel's Survey |achieve 841/15
	step
		goto 50.0,76.4
		.' Discover Dun Algaz |achieve 841/14
	step
		goto 52.2,61.4
		.' Discover Thelgen Rock |achieve 841/10
	step
		goto 48.5,48.0
		.' Discover Angerfang Encampment |achieve 841/9
	step
		goto 35.8,48.9
		.' Discover Whelgar's Excavation Site |achieve 841/4
	step
		goto 10.2,58.2
		.' Discover Menethil Harbor |achieve 841/1
	step
		goto 19.3,46.9
		.' Discover Black Channel Marsh |achieve 841/2
	step
		goto 18.9,36.0
		.' Discover Bluegill Marsh |achieve 841/3
	step
		goto 24.5,24.3
		.' Discover Sundown Marsh |achieve 841/5
	step
		goto 32.5,17.6
		.' Discover Saltspray Glen |achieve 841/6
	step
		goto 43.6,25.9
		.' Discover Ironbeard's Tomb |achieve 841/7
	step
		goto 46.9,16.5
		.' Discover Dun Modr |achieve 841/8
	step
	label	"wetlands1"
		' Explore Wetland |achieve 841
	step
	label	"arathi" 
		'Skipping next part of guide |next "+hillsbrad" |only if step:Find("+arathi1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Arathi Highlands,41.3,91.0
		.' Discover Thandol Span |achieve 761/8
	step
		goto 49.1,78.9
		.' Discover Boulderfist Hall |achieve 761/9
	step
		goto 61.6,70.3
		.' Discover Witherbark Village |achieve 761/12
	step
		goto 56.4,57.6
		.' Discover Go'Shek Farm |achieve 761/13
	step
		goto 69.3,37.2
		.' Discover Hammerfall |achieve 761/16
	step
		goto 59.3,32.8
		.' Discover Circle of East Binding |achieve 761/15
	step
		goto 49.9,41.3
		.' Discover Dabyrie's Farmstead |achieve 761/14
	step
		goto 47.3,51.4
		.' Discover Circle of Outer Binding |achieve 761/11
	step
		goto 39.8,46.4
		.' Discover Refuge Pointe |achieve 761/10
	step
		goto 30.1,59.3
		.' Discover Circle of Inner Binding |achieve 761/7
	step
		goto 23.8,81.8
		.' Discover Faldir's Cove |achieve 761/6
	step
		goto 16.5,64.1
		.' Discover Stromgarde Keep |achieve 761/5
	step
		goto 27.5,44.2
		.' Discover Boulder'gor |achieve 761/3
	step
		goto 27.0,27.1
		.' Discover Northfold Manor |achieve 761/2
	step
		goto 13.0,36.4
		.' Discover Galen's Fall |achieve 761/4
	step
	label	"arathi1"
		' Explore Arathi Highlands |achieve 761
	step
	label	"hillsbrad"
		'Skipping next part of guide |next "+silver" |only if step:Find("+hillsbrad1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Hillsbrad Foothills,68.3,60.0
		.' Discover Durnholde Keep |achieve 772/10
	step
		goto 68.1,32.9
		.' Discover Chillwind Point |achieve 772/5
	step
		goto 58.3,23.4
		.' Discover Strahnbrad |achieve 772/22
	step
		goto 57.51,74.96
		.' Discover Nethander Stead |achieve 772/15
	step
		goto 52.4,12.6
		.' Discover The Uplands |achieve 772/26
	step
		goto 44.9,9.1
		.' Discover Dandred's Fold |achieve 772/7
	step
		goto 45.3,29.0
		.' Discover Ruins of Alterac |achieve 772/17
	step
		goto 43.2,38.5
		.' Discover Growless Cave |achieve 772/13
	step
		goto 55.6,38.5
		.' Discover Sofera's Naze |achieve 772/20
	step
		goto 56.7,46.9
		.' Discover Tarren Mill |achieve 772/23
	step
		goto 49.6,46.7
		.' Discover Corrahn's Dagger |achieve 772/3
	step
		goto 48.97,71.89
		.' Discover Ruins of Southshore |achieve 772/18
	step
		goto 44.2,48.6
		.' Discover The Headland |achieve 772/24
	step
		goto 40.0,47.6
		.' Discover Gavin's Naze |achieve 772/12
	step
		goto 35.06,26.14
		.' Discover Misty Shore |achieve 772/14
	step
		goto 33.8,46.5
		.' Discover Brazie Farmstead |achieve 772/2
	step
		goto 30.4,36.2
		.' Discover Dalaran Crater |achieve 772/6
	step
		goto 29.5,63.6
		.' Discover Southpoint Gate |achieve 772/21
	step
		goto 34.0,73.8
		.' Discover Azurlode Mine |achieve 772/1
	step
		goto 27.0,85.6
		.' Discover Purgation Isle |achieve 772/16
	step
	label	"hillsbrad1"
		' Explore Hillsbrad Foothills |achieve 772
	step
	label	"silver"
		'Skipping next part of guide |next "+tirisfal" |only if step:Find("+silver1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Silverpine Forest,46.1,79.5
		.' Discover The Battlefront |achieve 769/1
	step
		goto 42.2,63.2
		.' Discover Shadowfang Keep |achieve 769/12
	step
		goto 50.9,66.6
		.' Discover The Forsaken Front |achieve 769/3
	step
		goto 61.2,62.4
		.' Discover Ambermill |achieve 769/11
	step
		goto 46.1,51.0
		.' Discover Olsen's Farthing |achieve 769/10
	step
		goto 45.0,40.0
		.' Discover The Sepulcher |achieve 769/8
	step
		goto 37.3,28.0
		.' Discover North Tide's Beachead |achieve 769/5
	step
		goto 34.8,12.4
		.' Discover The Skittering Dark |achieve 769/4
	step
		goto 44.9,18.8
		.' Discover Forsaken Rear Guard |achieve 769/15
	step
		goto 53.2,25.6
		.' Discover Valgan's Field |achieve 769/7
	step
		goto 56.5,34.7
		.' Discover The Decrepit Fields |achieve 769/2
	step
		goto 59.3,45.4
		.' Discover Deep Elem Mine |achieve 769/9
	step
		goto 69.1,26.8
		.' Discover Fenris Isle |achieve 769/6
	step
		goto 62.0,8.7
		.' Discover Forsaken High Command |achieve 769/13
	step
	label	"silver1"
		' Explore Silverpine Forest |achieve 769
	step
	label	"tirisfal"
		'Skipping next part of guide |next "+w_plague" |only if step:Find("+tirisfal1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Tirisfal Glades,32.2,63.8
		.' Discover Deathknell |achieve 768/1
	step
		goto 45.1,65.4
		.' Discover Nightmare Vale |achieve 768/4
	step
		goto 53.8,58.7
		.' Discover Cold Hearth Manor |achieve 768/5
	step
		goto 46.2,51.4
		.' Discover Calston Estate |achieve 768/16
	step
		goto 38.4,48.9
		.' Discover Solliden Farmstead |achieve 768/9
	step
		goto 45.6,32.9
		.' Discover Agamand Mills |achieve 768/3
	step
		goto 56.9,35.6
		.' Discover Garren's Haunt |achieve 768/7
	step
		goto 59.7,50.9
		.' Discover Brill |achieve 768/6
	step
		goto 68.3,45.0
		.' Discover Brightwater Lake |achieve 768/8
	step
		goto 78.4,26.9
		.' Discover Scarlet Watch Post |achieve 768/11
	step
		goto 87.00,47.2
		.' Discover Venomweb Vale |achieve 768/12
	step
		goto 79.1,54.7
		.' Discover Crusader Outpost |achieve 768/10
	step
		goto 73.7,60.0
		.' Discover Balnir Farmstead |achieve 768/9
	step
		goto 84.9,69.4
		.' Discover The Bulwark |achieve 768/15
	step
	label	"tirisfal1"
		' Explore Tirisfal Glades |achieve 768
	step
	label	"w_plague"
		'Skipping next part of guide |next "+hinterlands" |only if step:Find("+w_plague1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Western Plaguelands,27.0,57.7
		.' Discover The Bulwark |achieve 770/5
	step
		goto 36.5,54.6
		.' Discover Felstone Field |achieve 770/6
	step
		goto 45.1,51.2
		.' Discover Dalson's Farm |achieve 770/7
	step
		goto 46.0,45.5
		.' Discover Redpine Dell |achieve 770/11
	step
		goto 47.2,33.4
		.' Northridge Lumber Camp |achieve 770/9
	step
		goto 44.9,17.0
		.' Discover Hearthglen |achieve 770/10
	step
		goto 64.4,40.1
		.' Discover The Weeping Cave |achieve 770/13
	step
		goto 69.6,50.7
		.' Discover Thondroril River |achieve 770/14
	step
		goto 63.9,58.2
		.' Discover Gahrron's Withering |achieve 770/12
	step
		goto 54.9,66.2
		.' Discover The Writhing Haunt |achieve 770/8
	step
		goto 54.6,85.5
		.' Discover Sorrow Hill |achieve 770/3
	step
		goto 68.3,81.1
		.' Discover Caer Darrow |achieve 770/2
	step
	label	"w_plague1"
		' Explore Western Plaguelands |achieve 770
	step
	label	"hinterlands"
		'Skipping next part of guide |next "+e_plague" |only if step:Find("+hinterlands1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto The Hinterlands,13.9,45.0
		.' Discover Aerie Peak |achieve 773/1
	step
		goto 23.1,33.5
		.' Discover Plaguemist Ravine |achieve 773/2
	step
		goto 33.3,45.6
		.' Discover Quel'Danil Lodge |achieve 773/4
	step
		goto 34.6,72.0
		.' Discover Shadra'Alor |achieve 773/5
	step
		goto 40.5,59.3
		.' Discover Valorwind Lake |achieve 773/6
	step
		goto 48.4,66.9
		.' Discover The Altar of Zul |achieve 773/9
	step
		goto 49.0,52.1
		.' Discover The Creeping Ruin |achieve 773/8
	step
		goto 63.1,74.7
		.' Discover Jintha'Alor |achieve 773/13
	step
		goto 72.7,66.1
		.' Discover The Overlook Cliffs |achieve 773/14
	step
		goto 73.2,54.2
		.' Discover Shaol'watha |achieve 773/12
	step
		goto 57.6,42.6
		.' Discover Skulk Rock |achieve 773/11
	step
		goto 62.7,24.1
		.' Discover Seradane |achieve 773/10
	step
	label	"hinterlands1"
		' Explore The Hinterlands |achieve 773
	step
	label	"e_plague"
		'Skipping next part of guide |next "+ghost" |only if step:Find("+e_plague1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Eastern Plaguelands,35.1,84.2
		.' Discover Darrowshire |achieve 771/6
	step
		goto 24.0,78.8
		.' Discover The Undercroft |achieve 771/3
	step
		goto 22.6,66.0
		.' The Marris Stead |achieve 771/2
	step
		goto 12.5,26.3
		.' Discover Terrordale |achieve 771/20
	step
		goto 26.8,9.8
		.' Discover Statholme |achieve 771/22
	step
		goto 33.6,24.4
		.' Discover Plaguewood |achieve 771/21
	step
		goto 36.1,44.8
		.' Discover The Fungal Vale |achieve 771/5
	step
		goto 35.7,68.5
		.' Discover Crown Guard Tower |achieve 771/4
	step
		goto 57.4,74.1
		.' Discover Lake Mereldar |achieve 771/9
	step
		goto 55.6,62.9
		.' Discover Corin's Crossing |achieve 771/8
	step
		goto 46.3,43.5
		.' Discover Blackwood Lake |achieve 771/15
	step
		goto 48.1,13.1
		.' Discover Quel'Lithien Lodge |achieve 771/19
	step
		goto 50.5,20.5
		.' Discover Northpass Tower |achieve 771/18
	step
		goto 62.4,41.7
		.' Discover Eastwall Tower |achieve 771/14
	step
		goto 68.7,56.5
		.' Discover Pestilent Scar |achieve 771/7
	step
		goto 75.6,75.2
		.' Discover Tyr's Hand |achieve 771/10
	step
		goto 87.1,78.5
		.' Discover Ruins of the Scarlet Enclave |achieve 771/23
	step
		goto 76.8,53.9
		.' Discover Light's Hope Chapel |achieve 771/11
	step
		goto 78.1,35.8
		.' Discover The Noxious Glade |achieve 771/13
	step
		goto 66.1,25.0
		.' Discover Northdale |achieve 771/16
	step
		goto 66.4,10.3
		.' Discover Zul'Mashar |achieve 771/17
	step
	label	"e_plague1"
		' Explore Eastern Plaguelands |achieve 771
	step //2611
	label	"ghost"
		'Skipping next part of guide |next "+eversong" |only if step:Find("+ghost1"):IsComplete()
		'Proceeding next step |next |only if default
	step //2612
		goto 54.4,7.0
		.' Go through the Portal to Ghostlands |tip It looks like a big swirling portal.
		.' Teleport to Ghostlands |goto Ghostlands |noway |c
	step //2613
		goto Ghostlands,48.2,84.3
		.' Discover Thalassian Pass |achieve 858/16
	step //2614
		goto 33.1,79.9
		.' Discover Deatholme |achieve 858/10
	step //2615
		goto 12.4,57.0
		.' Discover Windrunner Spire |achieve 858/13
	step //2616
		goto 17.9,41.4
		.' Discover Windrunner Village |achieve 858/4
	step //2617
		goto 25.0,15.0
		.' Discover Goldenmist Village |achieve 858/3
	step //2618
		goto 33.4,32.2
		.' Discover Sanctum of the Moon |achieve 858/5
	step //2619
		goto 34.3,47.6
		.' Discover Bleeding Ziggurat |achieve 858/14
	step //2620
		goto 40.4,49.8
		.' Discover Howling Ziggurat |achieve 858/9
	step //2621
		goto 47.12,32.8
		.' Discover Tranquillien |achieve 858/1
	step //2622
		goto 54.7,49.7
		.' Sanctum of the Sun |achieve 858/6
	step //2623
		goto 66.6,58.9
		.' Discover Zeb'Nowa |achieve 858/11
	step //2624
		goto 77.3,64.4
		.' Discover Amani Pass |achieve 858/12
	step
		goto 77.2,32.1
		.' Discover Farstrider Enclave |achieve 858/8
	step
		goto 78.6,18.7
		.' Discover Dawnstart Spire |achieve 858/7
	step //2627
		goto 60.46,11.7
		.' Discover Suncrown Village |achieve 858/2
	step //2628
		goto 48.39,11.51
		.' Discover Elrendar Crossing |achieve 858/15
	step //2629
		goto 48.39,11.51
		.' Discover Elrendar Crossing |achieve 858/15
	step
	label	"ghost1"
		' Explore Ghostlands |achieve 858
	step
	label	"eversong"
		'Skipping next part of guide |next "+isle_q" |only if step:Find("+eversong1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Eversong Woods,36.2,86.0
		.' Discover The Scorched Grove |achieve 859/13
	step
		goto 44.1,85.8
		.' Discover Runestone Falithas |achieve 859/19
	step
		goto 55.8,84.2
		.' Discover Rusestone Shan'dor |achieve 859/20
	step
		goto 62.2,79.3
		.' Discover Zeb'Watha |achieve 859/25
	step
		goto 65.9,78.6
		.' Discover Lake Elrendar |achieve 859/18
	step
		goto 72.0,79.3
		.' Discover Tor'Watha |achieve 859/12
	step
		goto 64.6,73.1
		.' Discover Elreandar Falls |achieve 859/16
	step
		goto 61.2,63.7
		.' Discover Farstrider Rereat |achieve 859/7
	step
		goto 55.7,56.4
		.' Discover Stillwhisper Pond |achieve 859/8
	step
		goto 60.6,54.2
		.' Discover Thuron's Livery |achieve 859/23
	step
		goto 71.6,45.3
		.' Discover Azurebreeze Coast |achieve 859/15
	step
		goto 52.4,39.4
		.' Disocver Silvermoon City |achieve 859/14
	step
		goto 31.3,16.0
		.' Discover Sunstrider Isle |achieve 859/1
	step
		goto 42.9,39.3
		.' Discover Ruins of Silvermoon |achieve 859/2
	step
		goto 42.7,50.4
		.' Discover North Sanctum |achieve 859/5
	step
		goto 35.3,57.6
		.' Discover West Sanctum |achieve 859/3
	step
		goto 28.5,57.8
		.' Discover Tranquil Shore |achieve 859/24
	step
		goto 29.4,69.3
		.' Discover Sunsail Anchorage |achieve 859/4
	step
		goto 23.5,74.8
		.' Discover Golden Strand |achieve 859/22
	step
		goto 33.4,77.6
		.' Discover Goldenbough Pass |achieve 859/17
	step
		goto 38.3,73.5
		.' Discover Saltheril's Haven |achieve 859/21
	step
		goto 43.9,73.7
		.' Discover Fairbreeze Village |achieve 859/10
	step
		goto 52.3,73.1
		.' Discover East Sanctum |achieve 859/6
	step
		goto 54.2,71.9
		.' Discover The Living Wood |achieve 859/11
	step
		goto 36.2,86.0
		.' Discover The Scorched Grove |achieve 859/13
	step
	label	"eversong1"
		' Explore Eversong Woods |achieve 859
	step
	label	"isle_q"
		'Skipping next part of guide |next "+end" |only if step:Find("+isle_q1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		|fly Shattered Sun Staging Area
	step
	label	"isle_q1"
		' Explore Isle of Quel'Danas |achieve 868
	step
	label	"end"
		' Congratulations! You have Explored the Eastern Kingdoms |achieve 42 |only if achieved(42)
		.' Congratulations! You have Explored Cataclysm |achieve 4868 |only if achieved(4868)
		' Congratulations! You have Earned the Achievement World Explorer! |achieve 46 |only if achieved(46)
		.' You have not explored all of Eastern Kingdoms yet |only if not achieved(42)
		|confirm |next "start" |only if not achieved(42)
]])

ZygorGuidesViewer:RegisterInclude("Explorer_Outlands",[[
	step
		' This guide assumes you have a flying mount. You can do this guide
		.' without having a flying mount but it will be much more efficient with one.
		|confirm always
	step
	label	"start"
		' Explore Hellfire Peninsula |achieve 862
		' Explore Terokkar Forest |achieve 867
		' Explore Shadowmoon Valley |achieve 864
		' Explore Nagrand |achieve 866
		' Explore Zangarmarsh |achieve 863
		' Explore Blade's Edge Mountains |achieve 865
		' Explore Netherstorm |achieve 843                 
		|confirm always
	step
		#include "darkportal"
	step
		'Skipping next part of guide |next "+terokkar" |only if step:Find("+hellfire1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Hellfire Peninsula,87.7,50.3
		.' Discover The Stair of Destiny |achieve 862/1
	step
		goto 62.0,17.8
		.' Discover Throne of Kil'jaeden |achieve 862/12
	step
		goto 58.9,31.2
		.' Discover Forge Camp: Mageddon |achieve 862/18
	step
		goto 55.4,38.7
		.' Disocver Thrallmar |achieve 862/11
	step
		goto 70.0,50.4
		.' Discover The Legion Front |achieve 862/10
	step
		goto 79.1,72.9
		.' Discover Void Ridge |achieve 862/16
	step
		goto 70.1,73.6
		.' Discover Zeth'Gor |achieve 862/13
	step
		goto 54.3,84.3
		.' Discover Expedition Armory |achieve 862/2
	step
		goto 45.3,82.5
		.' Discover The Warp Fields |achieve 862/17
	step
		goto 54.8,64.5
		.' Discover Honor Hold |achieve 862/5
	step
		goto 47.2,52.9
		.' Discover Hellfire Citadel |achieve 862/4 
	step
		goto 41.2,32.6
		.' Discover Pools of Aggonar |achieve 862/7
	step
		goto 31.3,26.9
		.' Discover Mag'har Post |achieve 862/6
	step
		goto 23.5,40.0
		.' Discover Temple of Telhamat |achieve 862/9 
	step
		goto 26.9,62.3
		.' Discvoer Falcon Watch |achieve 862/3
	step
		goto 27.5,77.0
		.' Discover Den of Haal'esh |achieve 862/14
	step
		goto 14.3,41.0
		.' Discover Fallen Sky Ridge |achieve 862/15
	step
		goto 13.3,59.4
		.' Discover Ruins of Sha'naar |achieve 862/8
	step
	label	"hellfire1"
		' Explore Hellfire Peninsula |achieve 862
	step
	label	"terokkar"
		'Skipping next part of guide |next "+shadowmoon" |only if step:Find("+terokkar1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Terokkar Forest,59.9,17.0
		.' Discover Razorthorn Shelf |achieve 867/11
	step
		goto 53.0,29.1
		.' Discover Tuurem |achieve 867/7
	step
		goto 43.8,20.2
		.' Discover Cenarion Thicket |achieve 867/3
	step
		goto 29.1,23.3
		.' Discover Shattrath City |achieve 867/8
	step
		goto 22.4,10.5
		.' Discover The Barrier Hills |achieve 867/10
	step
		goto 17.8,65.4
		.' Discover Bleeding Hollow Ruins |achieve 867/1
	step
		goto 24.4,59.9
		.' Discover Veil Rhaze |achieve 867/19
	step
		goto 31.3,52.5
		.' Discover Shadow Tomb |achieve 867/17
	step
		goto 37.5,49.6
		.' Discover Refugee Caravan |achieve 867/15
	step
		goto 42.9,51.0
		.' Discover Carrion Hill |achieve 867/14
	step
		goto 39.5,39.4
		.' Discover Grangol'var Village |achieve 867/5
	step
		goto 46.6,43.0
		.' Discover Stonebreaker Hold |achieve 867/6
	step
		goto 60.6,40.2
		.' Discover Raastok Glade |achieve 867/9
	step
		goto 71.7,34.7
		.' Discover Firewing Point |achieve 867/4
	step
		goto 66.5,52.3
		.' Discover Bonechewer Ruins |achieve 867/12
	step
		goto 57.1,56.6
		.' Discover Allerian Stronghold |achieve 867/2
	step
		goto 49.1,66.0
		.' Discover Writhing Mound |achieve 867/20
	step
		goto 39.5,65.5
		.' Discover Ring of Observance |achieve 867/16
	step
		goto 33.0,71.8
		.' Discover Auchenai Grounds |achieve 867/13
	step
		goto 43.9,76.1
		.' Discover Derelict Caravan |achieve 867/18
	step
		goto 58.9,76.4
		.' Discover Skettis |achieve 867/21
	step
	label	"terokkar1"
		' Explore terokkar Forest |achieve 867
	step
	label	"shadowmoon"
		'Skipping next part of guide |next "+nagrand" |only if step:Find("+shadowmoon1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Shadowmoon Valley,24.1,39.2
		.' Discover Legion Hold |achieve 864/3
	step
		goto 29.8,52.3
		.' Discover Illidari Point |achieve 864/12
	step
		goto 35.5,60.2
		.' Discover Wildhammer Stronghold |achieve 864/10 
	step
		goto 44.9,66.8
		.' Discover Eclipse Point |achieve 864/2
	step
		goto 70.8,85.7
		.' Discover Netherwing Ledge |achieve 864/4
	step
		goto 64.2,58.5
		.' Discover Netherwing Fields |achieve 864/13
	step
		goto 57.3,50.1
		.' Discover Warden's Cage |achieve 864/9
	step
		goto 49.8,41.2
		.' Discover The Hand of Gul'dan |achieve 864/8 
	step
		goto 39.6,39.6
		.' Discover The Deathforge |achieve 864/7
	step
		goto 29.4,26.1
		.' Discover Shadowmoon Village |achieve 864/5
	step
		goto 45.3,26.3
		.' Discover Coilskar Point |achieve 864/1
	step
		goto 61.5,26.1
		.' Discover Altar of Sha'tar |achieve 864/11
	step
		goto 77.6,40.6
		.' Discover The Black Temple |achieve 864/6
	step
	label	"shadowmoon1"
		' Explore Shadowmoon Valley |achieve 864
	step
	label	"nagrand"
		'Skipping next part of guide |next "+zangar" |only if step:Find("+nagrand1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Nagrand,74.3,52.9
		.' Discover Windyreed Village |achieve 866/18
	step
		goto 75.1,66.8
		.' Discover Burning Blade Ruins |achieve 866/12
	step
		goto 68.9,79.9
		.' Discover Kil'sorrow Fortress |achieve 866/4
	step
		goto 62.5,64.3
		.' Discover Clan Watch |achieve 866/13
	step
		goto 65.8,54.0
		.' Discover The Ring of Trials |achieve 866/9
	step
		goto 49.8,55.9
		.' Discover Southwind Cleft |achieve 866/15
	step
		goto 52.8,69.1
		.' Discover Telaar |achieve 866/8
	step
		goto 42.0,71.8
		.' Discover Spirit Fields |achieve 866/6
	step
		goto 42.5,44.0
		.' Discover Halaa |achieve 866/3
	step
		goto 33.5,44.7
		.' Discover Sunspring Post |achieve 866/7
	step
		goto 20.6,51.3
		.' Discover Forge Camp: Fear |achieve 866/1
	step
		goto 10.8,39.2
		.' Discover The Twilight Ridge |achieve 866/16
	step
		goto 25.9,37.1
		.' Discover Forge Camp: Hate |achieve 866/14
	step
		goto 29.7,24.6
		.' Discover Warmaul Hill |achieve 866/11
	step
		goto 33.9,18.4
		.' Discover Zangar Ridge |achieve 866/19
	step
		goto 46.9,18.9
		.' Discover Laughing Skull Ruins |achieve 866/5
	step
		goto 56.1,36.4
		.' Discover Garadar |achieve 866/2
	step
		goto 60.8,21.1
		.' Discover Throne of the Elements |achieve 866/10
	step
		goto 72.4,36.3
		.' Discover Windyreed Pass |achieve 866/17
	step
	label	"nagrand1"
		' Explore Nagrand |achieve 866
	step
	label	"zangar"
		'Skipping next part of guide |next "+blade" |only if step:Find("+zangar1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Zangarmarsh,70.6,79.9
		.' Discover Darkcrest Shore |achieve 863/18
	step
		goto 83.5,82.0
		.' Discover Umbrafen Village |achieve 863/11
	step
		goto 81.1,63.4
		.' Discover Cenarion Refuge |achieve 863/1
	step
		goto 82.5,37.5
		.' Discover The Dead Mire |achieve 863/8
	step
		goto 68.5,49.2
		.' Discover Teredor |achieve 863/7
	step
		goto 62.7,41.2
		.' Discover Bloodscale Grounds |achieve 863/14
	step
		goto 58.6,61.8
		.' Discover The Lagoon |achieve 863/9
	step
		goto 47.8,51.7
		.' Discover Twin Spire Ruins |achieve 863/10
	step
		goto 44.9,66.3
		.' Discover Feralfen Village |achieve 863/3
	step
		goto 31.8,52.3
		.' Discover Zabra'jin |achieve 863/17
	step
		goto 29.0,60.7
		.' Discover Quagg Ridge |achieve 863/6
	step
		goto 14.5,61.9
		.' Discover The Spawning Glen |achieve 863/16 
	step
		goto 17.8,49.6
		.' Discover Sporeggar |achieve 863/12
	step
		goto 21.7,39.6
		.' Discover Marshlight Lake |achieve 863/5
	step
		goto 18.0,23.1
		.' Disocver Ango'rosh Grounds |achieve 863/2
	step
		goto 18.6,8.0
		.' Discover Ango'rosh Stronghold |achieve 863/13
	step
		goto 33.6,35.3
		.' Discover Hewn Bog |achieve 863/4
	step
		goto 44.9,25.2
		.' Discover Orebor Harborage |achieve 863/15
	step
	label	"zangar1"
		' Explore Zangarmarsh |achieve 863
	step
	label	"blade"
		'Skipping next part of guide |next "+nether" |only if step:Find("+blade1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Blade's Edge Mountains,29.1,81.0
		.' Discover Forge Camp: Terror |achieve 865/10
	step
		goto 30.5,59.5
		.' Discover Vortex Summit |achieve 865/26
	step
		goto 33.5,41.1
		.' Discover Forge Camp: Wrath |achieve 865/11
	step
		goto 31.9,27.5
		.' Discover Raven's Wood |achieve 865/16
	step
		goto 39.6,19.9
		.' Discover Grishnath |achieve 865/12
	step
		goto 51.7,16.7
		.' Discover Bash'ir Landing |achieve 865/1
	step
		goto 68.0,10.8
		.' Discover Crystal Spine |achieve 865/21
	step
		goto 77.9,25.9
		.' Discover Broken Wilds |achieve 865/6
	step
		goto 72.0,22.9
		.' Discover Skald |achieve 865/19
	step
		goto 67.7,23.5
		.' Discover Gruul's Lair |achieve 865/13 
	step
		goto 55.6,26.2
		.' Discover Bloodmaul Camp |achieve 865/4
	step
		goto 40.7,53.0
		.' Discover Bladespire Hold |achieve 865/3
	step
		goto 37.0,65.4
		.' Discover Sylvanaar |achieve 865/20
	step
		goto 36.4,78.7
		.' Discover Veil Lashh |achieve 865/23
	step
		goto 46.3,77.2
		.' Discover Bloodmaul Outpost |achieve 865/5 
	step
		goto 48.0,64.9
		.' Discover Jagged Ridge |achieve 865/14
	step
		goto 56.0,69.0
		.' Discover Razor Ridge |achieve 865/17
	step
		goto 64.2,61.0
		.' Discover Death's Door |achieve 865/8
	step
		goto 53.1,54.7
		.' Discover Thunderlord Stronghold |achieve 865/22
	step
		goto 53.6,43.9
		.' Discover Circle of Blood |achieve 865/7
	step
		goto 61.2,36.5
		.' Discover Ruuan Weald |achieve 865/18
	step
		goto 65.1,31.6
		.' Discover Veil Ruuan |achieve 865/24
	step
		goto 65.9,36.8
		.' Discover Bladed Gulch |achieve 865/2
	step
		goto 74.7,41.8
		.' Discover Forge Camp: Anger |achieve 865/9
	step
		goto 73.9,62.6
		.' Discover Mok'Nathal Village |achieve 865/15
	step
		goto 77.1,75.2
		.' Discover Vekhaar Stand |achieve 865/25
	step
	label	"blade1"
		' Explore Blade's Edge Mountains |achieve 865 
	step
	label	"nether"
		'Skipping next part of guide |next "+end" |only if step:Find("+nether1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Netherstorm,23.5,72.9
		.' Discover Manaforge B'naar |achieve 843/2
	step
		goto 28.4,77.5
		.' Discover The Heap |achieve 843/9
	step
		goto 33.5,66.0
		.' Discover Area 52 |achieve 843/1
	step
		goto 39.7,73.5
		.' Discover Arklon Ruins |achieve 843/10
	step
		goto 48.8,84.5
		.' Discover Manaforge Coruu |achieve 843/3
	step
		goto 57.1,88.5
		.' Discover Kirin'Var Village |achieve 843/12
	step
		goto 56.0,77.8
		.' Discover Sunfury Hold |achieve 843/15
	step
		goto 59.6,68.2
		.' Discover Maforge Duro |achieve 843/4
	step
		goto 75.8,62.5
		.' Discover Tempest Keep |achieve 843/8
	step
		goto 72.5,38.7
		.' Discover Celestial Ridge |achieve 843/11
	step
		goto 61.7,38.2
		.' Discover Manaforge Ultris |achieve 843/6
	step
		goto 55.1,43.5
		.' Discover Ethereum Staging Grounds |achieve 843/19
	step
		goto 54.4,21.3
		.' Discover Ruins of Farahlon |achieve 843/7
	step
		goto 49.5,17.0
		.' Discover Netherstone |achieve 843/13
	step
		goto 46.1,9.6
		.' Discover Eco-Dome Farfield |achieve 843/18
	step
		goto 29.9,16.0
		.' Discover Socrethar's Seat |achieve 843/20
	step
		goto 37.5,26.4
		.' Discover Forge Base: Oblivion |achieve 843/21
	step
		goto 45.1,35.8
		.' Discover The Stormspire |achieve 843/16
	step
		goto 45.3,53.7
		.' Discover Eco-Dome Midrealm |achieve 843/22
	step
		goto 32.9,54.9
		.' Discover ruins of Enkaat |achieve 843/14
	step
		goto 23.2,55.9
		.' Discover Gyro-Plank Bridge |achieve 843/17
	step
		goto 26.8,39.3
		.' Discover Manaforge Ara |achieve 843/5
	step
	label	"nether1"
		' Explore Netherstorm |achieve 843
	step
	label	"end"
		' Congratulations! You have Explored Outlands! |achieve 44 |only if achieved(44)
		' Congratulations! You have Earned the Achievement World Explorer! |achieve 46 |only if achieved(46)
		' You have not fully explored Outlands yet |only if not achieved(44)
		|confirm |next "start" |only if not achieved(44)	
]])

ZygorGuidesViewer:RegisterInclude("Explorer_Northrend",[[
	step
		' This guide requires that you have a flying mount. You can _NOT_ do this guide
		.' without having a flying mount.
		|confirm always
	step
	label	"start"
		' Explore Borean Tundra |achieve 1264
		' Explore Dragonblight |achieve 1265
		' Explore Zul'Drak |achieve 1267
		' Explore Crystalsong Forest |achieve 1457
		' Explore Icecrown |achieve 1270
		' Explore Howling Fjord |achieve 1263
		' Explore Grizzly Hills |achieve 1266
		' Explore Sholazar Basin |achieve 1268
		' Explore Storm Peaks |achieve 1269     
		|confirm always
	step
		#include "rideto_borean"
	step
	label	"borean"
		'Skipping next part of guide |next "+sholazar" |only if step:Find("+borean1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Borean Tundra,57.7,69.3
		.' Discover Valiance Keep |achieve 1264/11
	step
		goto 43.4,53.2
		.' Discover Warsong Hold |achieve 1264/10
	step
		goto 47.4,81.1
		.' Discover Riplash Stand |achieve 1264/3
	step
		goto 27.9,51.6
		.' Discover Garrosh's Landing |achieve 1264/5
	step
		goto 25.8,38.4
		.' Discover Coldarra |achieve 1264/7
	step
		goto 46.1,34.8
		.' Discover Amber Ledge |achieve 1264/9
	step
		goto 50.2,24.3
		.' Discover Steeljaw's Carvan |achieve 1264/2
	step
		goto 50.2,10.3
		.' Discover Bor'gorok Outpost |achieve 1264/8
	step
		goto 66.3,28.5
		.' Discover The Geyser Fields |achieve 1264/12
	step
		goto 66.2,51.1
		.' Discover Kaskala |achieve 1264/4
	step
		goto 82.4,46.4
		.' Discover Death's Stand |achieve 1264/6
	step
		goto 87.6,25.1
		.' Discover Temple City of En'kilah |achieve 1264/1
	step
		goto 76.4,16.4
		.' Discover The Dens of the Dying |achieve 1264/13
	step
	label	"borean1"
		' Explore Borean Tundra |achieve 1264
	step
	label	"sholazar"
		'Skipping next part of guide |next "+icecrown" |only if step:Find("+sholazar1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Sholazar Basin,81.0,55.4
		.' Discover Makers' Overlook |achieve 1268/4
	step
		goto 65.9,60.1
		.' Discover The Lifeblood Pillar |achieve 1268/8
	step
		goto 53.7,52.5
		.' Discover Rainspeaker Canopy |achieve 1268/7
	step
		goto 48.0,63.2
		.' Discover River's Heart |achieve 1268/1
	step
		goto 36.0,75.3
		.' Discover The Mosslight Pillar |achieve 1268/3
	step
		goto 24.3,81.7
		.' Discover Kartak's Hold |achieve 1268/11
	step
		goto 33.3,52.3
		.' Discover The Suntouched Pillar |achieve 1268/6
	step
		goto 29.7,40.1
		.' Discover Makers' Perch |achieve 1268/5
	step
		goto 24.5,33.5
		.' Discover The Stormwright's Shelf |achieve 1268/12
	step
		goto 46.8,26.1
		.' Discover The Savage Thicket |achieve 1268/2
	step
		goto 29.5,36.3
		.' Discover The Glimmering Pillar |achieve 1268/10
	step
		goto 74.5,34.6
		.' Discover The Avalanche |achieve 1268/9
	step
	label	"sholazar1"
		' Explore Sholazar Basin |achieve 1268
	step
	label	"icecrown"
		'Skipping next part of guide |next "+dragon" |only if step:Find("+icecrown1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Icecrown,8.9,42.9
		.' Discover Onslaught Harbor |achieve 1270/3
	step
		goto 27.1,39.0
		.' Discover Jotunheim |achieve 1270/13
	step
		goto 36.5,24.1
		.' Discover Valhalas |achieve 1270/8
	step
		goto 44.4,22.6
		.' Discover The Shadow Vault |achieve 1270/15
	step
		goto 52.8,30.6
		.' Discover Aldur'thar: The Desolation Gate |achieve 1270/6
	step
		goto 63.7,44.0
		.' Discover The Bombardment |achieve 1270/1
	step
		goto 74.0,37.7
		.' Discover Sindragosa's Fall |achieve 1270/7
	step
		goto 78.4,60.2
		.' Discover Scourgeholme |achieve 1270/14
	step
		goto 83.8,73.4
		.' Valley of Echoes |achieve 1270/9
	step
		goto 69.2,64.4
		.' Discover The Broken Front |achieve 1270/4
	step
		goto 54.9,56.2
		.' Discover Ymirheim |achieve 1270/10
	step
		goto 43.6,56.5
		.' Discover The Conflagration |achieve 1270/11
	step
		goto 33.1,66.4
		.' Discover The Fleshwerks |achieve 1270/5
	step
		goto 48.4,70.6
		.' Discover Corp'rethar: The Horror Gate |achieve 1270/12
	step
		goto 54.2,85.8
		.' Discover Icecrown Citadel |achieve 1270/2
	step
	label	"icecrown1"
		' Explore Icecrown |achieve 1270
	step
	label	"dragon"
		'Skipping next part of guide |next "+crystal" |only if step:Find("+dragon1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Dragonblight,36.0,15.0
		.' Discover Angrathar the Wrath Gate |achieve 1265/10
	step
		goto 38.4,31.9
		.' Discover Obsidian Dragonshrine |achieve 1265/3
	step
		goto 25.1,43.2
		.' Discover Icemist Village |achieve 1265/7
	step
		goto 13.8,46.2
		.' Discover Westwind Refugee Camp |achieve 1265/13
	step
		goto 36.9,47.8
		.' Discover Agmar's Hammer |achieve 1265/11
	step
		goto 39.7,67.0
		.' Discover Lake Indu'le |achieve 1265/2
	step
		goto 47.3,48.7
		.' Discover Ruby Dragonshrine |achieve 1265/3
	step
		goto 54.9,32.7
		.' Discover Galakrond's Rest |achieve 1265/1
	step
		goto 59.7,49.8
		.' Discover Wyrmrest Temple |achieve 1265/12
	step
		goto 63.5,72.7
		.' Discover Emerald Dragonshrine |achieve 1265/8
	step
		goto 71.0,75.2
		.' Discover New Hearthglen |achieve 1265/4
	step
		goto 77.1,60.0
		.' Discover Venomspite |achieve 1265/14
	step
		goto 82.5,70.7
		.' Discover The Forgotten Shore |achieve 1265/15
	step
		goto 88.9,44.0
		.' Discover Naxxramas |achieve 1265/5
	step
		goto 83.6,25.6
		.' Discover Light's Trust |achieve 1265/6
	step
		goto 72.7,25.6
		.' Discover Scarlet Point |achieve 1265/17
	step
		goto 61.8,19.5
		.' Discover The Crystal Vice |achieve 1265/16
	step
		goto 50.0,17.5
		.' Discover Coldwind Heights |achieve 1265/9
	step
	label	"dragon1"
		' Explore Dragonblight |achieve 1265
	step
	label	"crystal"
		'Skipping next part of guide |next "+storm" |only if step:Find("+crystal1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Crystalsong Forest,26.4,61.4
		.' Discover The Azure Front |achieve 1457/1
	step
		goto 14.5,44.1
		.' Discover Violet Stand |achieve 1457/7
	step
		goto 13.1,33.9
		.' Discover The Great Tree |achieve 1457/6
	step
		goto 16.0,15.4
		.' Discover The Decrepit Flow |achieve 1457/2
	step
		goto 43.0,42.5
		.' Discover Forlorn Woods |achieve 1457/4
	step
		goto 64.7,60.4
		.' Discover The Unbound Thicket |achieve 1457/8
	step
		goto 75.2,83.0
		.' Discover Windrunner's Overlook |achieve 1457/5
	step
		goto 76.9,46.3
		.' Discover Sunreaver's Command |achieve 1457/3
	step
	label	"crystal1"
		' Explore Crystalsong Forest |achieve 1457
	step
	label	"storm"
		'Skipping next part of guide |next "+zul" |only if step:Find("+storm1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto The Storm Peaks,35.1,84.0
		.' Discover Sparksocket Minefield |achieve 1269/7
	step
		goto 35.3,68.7
		.' Discover Bor's Breath |achieve 1269/4
	step
		goto 35.9,58.0
		.' Discover Temple of Storms |achieve 1269/12
	step
		goto 29.4,73.8
		.' Discover Frosthold |achieve 1269/15
	step
		goto 24.0,60.5
		.' Discover Valkyrion |achieve 1269/5
	step
		goto 23.9,50.1
		.' Discover Nidavelir |achieve 1269/16
	step
		goto 27.3,41.9
		.' Discover Snowdrift Plains |achieve 1269/13
	step
		goto 32.2,39.6
		.' Discover Narvir's Cradle |achieve 1269/2
	step
		goto 41.3,17.4
		.' Discover Ulduar |achieve 1269/10
	step
		goto 50.3,44.7
		.' Discover Terrace of the Makers |achieve 1269/6
	step
		goto 64.8,44.8
		.' Discover Temple of Life |achieve 1269/9
	step
		goto 72.9,48.5
		.' Discover Thunderfall |achieve 1269/11
	step
		goto 64.4,59.1
		.' Discover Dun Niffelem |achieve 1269/3
	step
		goto 40.9,57.2
		.' Discover Engine of the Makers |achieve 1269/8
	step
		goto 47.8,68.2
		.' Discover Brunnhildar Village |achieve 1269/1
	step
		goto 47.1,81.6
		.' Discover Garm's Bane |achieve 1269/14
	step
	label	"storm1"
		' Explore The Storm Peaks |achieve 1269
	step
	label	"zul"
		'Skipping next part of guide |next "+grizzly" |only if step:Find("+zul1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Zul'Drak,17.0,57.3
		.' Discover Thrym's End |achieve 1267/12
	step
		goto 28.2,45.1
		.' Discover Voltarus |achieve 1267/11
	step
		goto 40.5,38.8
		.' Discover Altar of Sseratus |achieve 1267/4
	step
		goto 53.3,36.5
		.' Discover Altar of Rhunok |achieve 1267/5
	step
		goto 83.7,16.7
		.' Discover Gundrak |achieve 1267/1
	step
		goto 73.2,45.6
		.' Discover Altar of Mam'toth |achieve 1267/7
	step
		goto 76.9,59.3
		.' Discover Altar of Quetz'lun |achieve 1267/6
	step
		goto 59.3,57.8
		.' Discover Zim'Torga |achieve 1267/9
	step
		goto 64.4,68.9
		.' Discover Altar of Har'koa |achieve 1267/8
	step
		goto 62.0,77.6
		.' Discover Kolrama |achieve 1267/14
	step
		goto 48.2,56.4
		.' Discover Ampitheater of Anguish |achieve 1267/3
	step
		goto 41.7,76.8
		.' Discover Drak'Sorta Fields |achieve 1267/2
	step
		goto 32.0,76.4
		.' Discover Light's Breach |achieve 1267/13
	step
		goto 21.1,75.2
		.' Discover Zeramas |achieve 1267/10
	step
	label	"zul1"
		' Explore Zul'Drak |achieve 1267
	step
	label	"grizzly"
		'Skipping next part of guide |next "+howling" |only if step:Find("+grizzly1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Grizzly Hills,17.5,23.6
		.' Discover Drak'Tharon Keep |achieve 1266/2
	step
		goto 15.8,49.6
		.' Discover Granite Springs |achieve 1266/5
	step
		goto 21.3,65.3
		.' Discover Conquest Hold |achieve 1266/1
	step
		goto 14.5,84.4
		.' Discover Venture Bay |achieve 1266/9
	step
		goto 29.0,76.5
		.' Discover Voldrune |achieve 1266/10
	step
		goto 31.4,57.9
		.' Discover Amberpine Lodge |achieve 1266/11
	step
		goto 36.0,37.9
		.' Discover Blue Sky Logging Grounds |achieve 1266/12
	step
		goto 48.2,42.2
		.' Discover Grizzlemaw |achieve 1266/6
	step
		goto 56.8,28.4
		.' Discover Westfall Brigade Encampment |achieve 1266/14
	step
		goto 68.1,14.8
		.' Discover Thor Modan |achieve 1266/8
	step
		goto 71.8,27.9
		.' Discover Drakil'jin Ruins |achieve 1266/3
	step
		goto 64.9,45.6
		.' Discover Camp Oneqwah |achieve 1266/13
	step
		goto 77.9,59.3
		.' Discover Dun Argol |achieve 1266/4
	step
		goto 50.3,57.2
		.' Discover Rage Fang Shrine |achieve 1266/7
	step
	label	"grizzly1"
		' Explore Grizzly Hills |achieve 1266
	step
	label	"howling"
		'Skipping next part of guide |next "+end" |only if step:Find("+howling1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Howling Fjord,36.6,9.5
		.' Discover Gjalerbron |achieve 1263/9
	step
		goto 47.8,12.1
		.' Discover Camp Winterhoof |achieve 1263/3
	step
		goto 54.2,16.8
		.' Discover The Twisted Glade |achieve 1263/17
	step
		goto 60.7,12.8
		.' Discover Fort Wildervar |achieve 1263/12
	step
		goto 68.6,26.5
		.' Discover Giant's Run |achieve 1263/9
	step
		goto 78.1,27.3
		.' Discover Vengeance Landing |achieve 1263/5
	step
		goto 78.2,46.2
		.' Discover Ivald's Ruin |achieve 1263/13
	step
		goto 72.5,71.3
		.' Discover Baelgun's Excavation Site |achieve 1263/20
	step
		goto 67.9,52.8
		.' Discover Nifflevar |achieve 1263/8
	step
		goto 66.6,39.1
		.' Discover Baleheim |achieve 1263/21
	step
		goto 57.6,35.9
		.' Discover Cauldros Isle |achieve 1263/2
	step
		goto 58.3,45.9
		.' Discover Utgarde Keep |achieve 1263/18
	step
		goto 50.1,54.1
		.' Discover Halgrind |achieve 1263/14
	step
		goto 52.9,69.0
		.' Discover New Agamand |achieve 1263/15
	step
		goto 34.3,75.5
		.' Discover Scalawag Point |achieve 1263/7
	step
		goto 24.9,57.7
		.' Discover Kamagua |achieve 1263/1
	step
		goto 40.0,50.6
		.' Discover Ember Clutch |achieve 1263/10
	step
		goto 45.1,33.1
		.' Discover Skorn |achieve 1263/16
	step
		goto 30.3,41.4
		.' Discover Westguard Keep |achieve 1263/19
	step
		goto 31.3,25.9
		.' Discover Steel Gate |achieve 1263/6
	step
		goto 27.0,24.1
		.' Discover Apothecary Camp |achieve 1263/4
	step
	label	"howling1"
		' Explore Howling Fjord |achieve 1263
	step
	label	"end"
		' Congratulations! You have Explored Northrend |achieve 45 |only if achieved(45)
		' Congratulations! You have Earned the Achievement World Explorer! |achieve 46 |only if achieved(46)
		.' You have not fully discovered Northrend yet |only if not achieved(45)
		|confirm |next "start" |only if not achieved(45)
]])

ZygorGuidesViewer:RegisterGuideSorting({
	"Leveling",
	"Loremaster",
	"Dailies",
	"Events",
	"Dungeons",
	"Gear",
	"Professions",
	"Achievements",
	"Pets & Mounts",
	"Titles",
	"Reputations",
	"Macros",
})

ZygorGuidesViewer:RegisterInclude("A_Explorer_Pandaria",[[
	step
		.' [INSERT JADE FOREST HERE]
	step
		goto Kun-Lai Summit 71.8,92.2
		.' Discover Binan Village |achieve 6976/1
	step
		goto 68.1,73.2
		.' Discover Muskpaw Ranch |achieve 6976/8
	step
		goto 68.6,46.6
		.' Discover the Temple of the White Tiger |achieve 6976/11
	step
		goto 75.5,11.9
		.' Discover the Isle of Reckoning |achieve 6976/4
	step
		goto 62.4,29.4
		.' Discover Zouchin Village |achieve 6976/14
	step
		goto 53.4,48.3
		.' Discover the Valley of Emperors |achieve 6976/13
	step //GRAYED OUT FOR SOME REASON
		goto 49.3,42.9
		.' Discover Peak of Serenity |achieve 6976/9
	step
		goto 36.7,47.9
		.' Discover Shado-Pan Monastery |achieve 6976/10
	step
		goto 44.5,55.9
		.' Discover Mount Neverest |achieve 6976/7
	step
		goto 55.4,65.9
		.' Discover the Burlap Trail |achieve 6976/12
	step
		goto 58.0,74.8
		.' Discover Mogujia |achieve 6976/6
	step
		goto 38.0,75.1
		.' Discover Kota Peak |achieve 6976/5
	step
		goto 45.4,86.2
		.' Discover Firebough Nook |achieve 6976/2
	step
		goto 55.5,92.0
		.' Discover the Gate of the August Celestials |achieve 6976/3
	step
		goto Townlong Steppes 67.3,44.9
		.' Discover Fire Camp Osul |achieve 6977/5
	step
		goto 56.1,53.5
		.' Discover Kri'vess |achieve 6977/2
	step
		goto 39.3,62.0
		.' Discover Niuzao Temple |achieve 6977/4
	step //GRAYED OUT FOR SOME REASON
		goto Townlong Steppes 28.6,25.8
		.' Discover Shan'ze Dao |achieve 6977/8
	step
		goto 49.2,71.0
		.' Discover Shado-Pan Garrison |achieve 6977/7
	step
		goto 44.6,77.5
		.' Discover Sik'vess |achieve6977/9
	step
		goto 54.3,79.0
		.' Discover Rensai's Watchpost |achieve 6977/3
	step
		goto 66.3,69.3
		|confirm
	step
		goto 71.3,70.5
		.' Discover the Slumprushes |achieve 6977/10
	step
		goto 82.5,72.4
		.' Discover Hatred's Vice |achieve 6977/6
	step
		goto 75.5,82.5
		.' Discover the Gao-Ran Battlefront |achieve 6977/1
	step
		goto Dread Wastes 63.2,18.4
		.' Discover Kypari Vor |achieve 6978/3
	step
		goto 68.3,30.4
		.' Discover Terace of Gurthan |achieve 6978/7
	step
		goto 66.0,42.2
		.' Discover Writhingwood |achieve 6978/11
	step
		goto 53.6,34.9
		.' Discover Klaxxi'vess |achieve 6978/2
	step
		goto 50.5,12.2
		.' Discover The Sunset Brewgarden |achieve 6978/10
	step
		goto 34.6,20.0
		.' Discover Rikkitun Village |achieve 6978/5
	step
		goto 39.6,35.0
		.' Discover the Heart of Fear |achieve 6978/1
	step
		goto 46.2,34.5
		.' Discover The Clutches of Shek'zeer |achieve 6978/9
	step
		goto 38.7,62.2
		.'Discover The Briny Muck |achieve 6978/8
	step
		goto 30.5,73.6
		.' Discover Zan'vess |achieve 6978/12
	step
		goto 59.2,60.6
		.' Discover Kypari Zar |achieve 6978/4
	step
		goto 55.9,70.3
		.' Discover Soggy's Gamble |achieve 6978/6
	step
		goto Krasarang Wilds 14.1,39.0
		.' Discover The Forbidden Jungle |achieve 6975/13
	step
		goto 30.2,38.3
		.' Discover Fallsong Village |achieve 6975/4
	step
		goto 24.0,47.1
		.' Discover the Ruins of Korja |achieve 6975/10
	step //GRAYED OUT FOR SOME REASON
		goto 12.7,59.9
		.' Discover The Southern Isle |achieve 6975/14 //BUGGED
	step
		goto 31.2,63.2
		.' Discover the Cradle of Chi-Ji |achieve 6975/2
	step
		goto 40.7,82.9
		.' Discover Nayeli Lagoon |achieve 6975/7
	step
		goto 43.3,90.2
		.' Discover Unga Ingoo |achieve 6975/15
	step
		goto 39.1,56.8
		.' Discover the Temple of the Red Crane |achieve 6975/11
	step
		goto 40.0,32.5
		.' Discover Crane Wing Refuge |achieve 6975/8
	step
		goto 45.5,31.8
		.' Discover The Deepwild |achieve 6975/12
	step
		goto 53.9,37.4
		.' Discover the Ruins of Dojan |achieve 6975/9
	step
		goto 65.3,32.9
		.' Discover the Dojan River |achieve 6975/3
	step
		goto 68.0,44.2
		.' Discover the Anglers Wharf |achieve 6975/1
	step
		goto 68.5,22.8
		.' Discover The Krasari Ruins |achieve 6975/6
	step
		goto 80.6,25.6
		.' Discover Krasarang Cove |achieve 6975/5
	step
		goto 76.6,8.7
		.' Discover Zhu's Watch |achieve 6975/16
	step
		goto Valley of the Four Winds 73.2,58.3
		.' Discover the Rumbling Terrace |achieve 6969/12
	step
		goto 68.6,43.3
		.' Discover Mudmug's Place |achieve 6969/8
	step
		goto 65.2,57.4
		.' Discover Silken Fields |achieve 6969/13
	step
		goto 56.1,49.8
		.' Discover Halfhill |achieve 6969/5
	step
		goto 52.4,63.0
		.' Discover The Imperial Granary |achieve 6969/4
	step
		goto 50.1,75.1
		.' Discover Winds' Edge |achieve 6969/1
	step
		goto 35.9,68.0
		.' Discover Stormstout Brewery |achieve 6969/15
	step
		goto 16.1,82.7
		.' Discover the Nesingwary Safari |achieve 6969/9
	step
		goto 13.0,75.5
		.' Discover Dustback Gorge |achieve 6969/2
	step
		goto 19.0,57.0
		.' Discover Stoneplow |achieve 6969/6
	step
		goto 16.6,38.7
		.' Discover Paoquan Hollow |achieve 6969/10
	step
		goto 25.0,43.6
		.' Discover Singing Marshes |achieve 6969/14
	step
		goto 33.1,23.5
		.' Discover the Kunzen Village |achieve 6969/7
	step
		goto 40.4,43.1
		.' Discover the Heartland |achieve 6969/16
	step
		goto 54.2,38.7
		.' Discover the Gilded Fan |achieve 6969/3
	step
		goto 60.7,27.6
		.' Discover the Pools of Purity |achieve 6969/11
	step
		goto Vale of Eternal Blossoms 86.4,62.5
		.' Discover the Shrine of Seven Stars |achieve 6979/6
	step //GRAYED OUT FOR SOME REASON
		goto 79.1,36.1
		.' Discover the Mogu'shan Palace |achieve 6979/3
	step
		goto 62.0,22.6
		.' Discover the Shrine of Two Moons |achieve 6979/9
	step
		goto 56.7,43.2
		.' Discover the Golden Pagoda |achieve 6979/7
	step
		goto 44.2,15.2
		.' Discover The Golden Stair |achieve 6979/5
	step
		goto 40.5,47.0
		.' Discover Whitepetal Lake |achieve 6979/10
	step
		goto 26.6,37.2
		.' Discover the Ruins of Guo-Lai |achieve 6979/1
	step
		goto 17.4,47.9
		.' Discover The Five Sisters |achieve 6979/11
	step
		goto 18.5,71.7
		.' Discover the Setting Sun Garrison |achieve 6979/4
	step //GRAYED OUT FOR SOME REASON
		goto 36.3,72.0
		.' Discover Mistfall Village |achieve 6979/2
	step //GRAYED OUT FOR SOME REASON
		goto 48.3,69.1
		.' Discover the Tu Shen Burial Ground |achieve 6979/8
]])

ZygorGuidesViewer:RegisterInclude("A_Marista_Hub",[[
		goto Krasarang Wilds 52.4,76.6
		.talk Nan-Po##60441
		.fpath Marista
	step
		goto 51.7,75.3
		.talk Tony Tuna##60182
		..accept Particular Plumage##30667
	step
		goto 51.5,76.9
		.talk Jay Cloudfall##60173
		..accept Sudden, Unexpected Crocolisk Aggression##30666
	step
		goto 46.4,68.6
		.from Crimson Lory##60198+
		.get 6 Crimson Tailfeather##80678+ |q 30667/2
		.from Emerald Lory##60200+
		.get 6 Emerald Tailfeather##80677+ |q 30667/1
		.from Dusky Lory##60196+
		.get 6 Dusky Tailfeather##80679+ |q 30667/3
 		.from Mortbreath Skulker##60202+, Mortbreath Snapper##60201+
 		.' Kill 8 Mortbreath crocolisk |q 30666/1
	step
		goto 51.7,75.3
		.talk Tony Tuna##60182
		..turnin Particular Plumage##30667
	step
		goto 51.5,76.9
		.talk Jay Cloudfall##60173
		..turnin Sudden, Unexpected Crocolisk Aggression##30666
		..accept Build Your Own Raft##30668
	step
		goto 52.3,77.9
		.click Tough Kelp
		.get Tough Kelp##80804 |q 30668/2
	step
		goto 52.4,76.2
		.click Spare Plank
		.get 4 Spare Plank##80685 |q 30668/1
	step
		goto 51.5,76.9
		.talk Jay Cloudfall##60173
		..turnin Build Your Own Raft##30668
		..accept The Lorewalker on the Lake##30669
	step
		goto 51.7,76.6
		.click Your Raft
		.' Pick up your raft |q 30669/1
	step
		goto 46.0,78.9
		.talk Wise Ana Wu##60139
		..turnin The Lorewalker on the Lake##30669
		..accept Wisdom Has A Price##30671
		..accept Misery##30691
	step
		.' Go underwater and enter the cave |goto 46.0,79.9 <5 |c
	step
		goto 46.2,83.5
		.from Nahassa##60203+ |tip Nahassa will use an ability called Feverish Deathbite that will cause you to hallucinate many more crocolisks have spawned, they aren't really there so don't panic.
		.' Put Nahassa out of his misery |q 30691/1
	step
		'Click the Complete Quest box that displays on the right side of the screen under your minimap
		..turnin Misery##30691
	step
		.' Exit the cave |goto 46.0,79.9 <5 |c
	step
		goto 46.0,79.0
		.from Great Grey Shark##60204+, Nayeli Hammerhead##60432+
		.get 5 Shark Fillet##80810+ |q 30671/1
	step
		goto 46.0,78.9
		.talk Wise Ana Wu##60139
		..turnin Wisdom Has A Price##30671
		..accept Balance##30672
	step
		goto 45.1,84.9
		'Run over one of the piles of fish along the beach.
		'Click the Quest Discovered box that displays on the right side of the screen under your minimap
		..accept Balance Without Violence##30674
	step
		.from Unga Fish-Getter##60299+
		.collect 1 Confusing Treasure Map##80827 |n
		.' Click the Confusing Treasure Map in your bags |use Confusing Treasure Map##80827
		..accept Buried Hozen Treasure##30675
	step
		goto 46.1,86.7
		.clicknpc Flailing Carp |tip You can find these all along the beach
		.' Throw 6 Flailing Carp back into the water |q 30674/1
		.kill 10 Unga Fish-Getter##60299+ |q 30672/1
		.click Lump of Sand
		.get Buried Hozen Treasure##80817 |q 30675/1
	step
		'Click the Complete Quest box that displays on the right side of the screen under your minimap
		..turnin Balance Without Violence##30674
		..turnin Buried Hozen Treasure##30675
	step
		goto 51.5,76.8
		.talk Jay Cloudfall##60173
		..turnin Balance##30672
	step
		goto Krasarang Wilds 29.7,39.0
		.talk Tired Shushen##58278
		..accept Thieving Raiders##30168
		..accept Raid Leader Slovan##30169
	step
		goto 31.8,29.0
		.kill Slovan##58285 |q 30169/1
		.from Riverblade Flesh-hunter##58274
		.get 5 Pillaged Jinyu Loot##78958 |q 30168/1
	step
		goto Krasarang Wilds 29.7,39.1
		.talk Tired Shushen##58278
		..turnin Thieving Raiders##30168
		..turnin Raid Leader Slovan##30169
	step
		goto 24.6,39.2
		.clicknpc Dawnchaser Captive##58608
		.' Rescue 8 Captives |q 30163/1
		.kill 8 Korjan Reclaimer##58614+ |q 30229/1
		.click Mogu Artifact
		.get 10 Mogu Artifact##79120+ |q 30230/1
	step
		goto 28.8,50.6
		.talk Kang Bramblestaff##56112
		..turnin Re-Reclaim##30230
	step
		goto 28.7,50.9
		.talk Kor Bloodtusk##58114
		..turnin For the Tribe##30163
		..turnin The Greater Danger##30229
	step
		goto 29.1,51.1
		.talk Ambassador Han##58630
		..accept The Mantid##30175
	step
		goto 16.0,39.8
		.talk Sunwalker Dezco##58607
		..accept The Stoneplow Convoy##30164
	step
		goto 15.3,35.3
		.clicknpc Stoneplow Envoy##58955
		.' Save 7 Stoneplow Envoy |q 30164/1
		.from Ik'thallik Precursor##58367+, Ik'thallik Vanguard##58368+
		.' Kill 10 Ik'thallik Mantid |q 30175/1
	step
		goto 16.0,39.8
		.talk Sunwalker Dezco##58607
		..turnin The Stoneplow Convoy##30164
	step
		goto 15.7,39.7
		.talk Ambassador Len##58954
		..turnin The Mantid##30175
	step
		goto 16.0,39.8
		.talk Sunwalker Dezco##58607
		..accept For Family##30174
	step
		goto 23.6,48.8
		.talk Kor Bloodtusk##58670
		.' Try to free Kor from his bonds
		.kill Groundbreaker Brojai##58224 |q 30174/1 |tip He will summon adds one at a time. They aren't too difficult to kill.
	step
		goto 28.9,50.8
		.talk Sunwalker Dezco##58607
		..turnin For Family##30174
		..accept Warn Stoneplow##30241
	step
		goto Valley of the Four Winds 19.5,56.8
		.talk Watch Commander Loon Mai##56720
		..turnin Warn Stoneplow##30241
	step
		goto 18.1,55.9
		.talk Mudmug##56474
		..accept It Does You No Good In The Keg##30653
	step
		goto Valley of the Four Winds 18.0,56.3
		.talk Watch Commander Loon Mai##56720
		..accept The Swarm Begins##30622
	step
		goto Valley of the Four Winds 18.0,56.5
		.talk Mei Barrelbottom##59855
		..accept The Mantidote##30623
	step
		goto Valley of the Four Winds 17.5,50.2
		.' Deliver beer to Zhu's Wardens |q 30653/1
	step
		goto Valley of the Four Winds 15.2,55.4
		.' Deliver beer to Crane Wing Priests |q 30653/2
	step
		goto Valley of the Four Winds 13.0,56.0
		.' Deliver beer to Tauren Settlers |q 30653/4
	step
		goto Valley of the Four Winds 10.7,55.5
		.' Deliver beer to Shado-Pan |q 30653/3
	step
		.' Click the Complete Quest box that displays on the right side of the screen under your minimap
		..turnin It Does You No Good In The Keg##30653
	step
		goto 13.4,54.6
		.from Ik'thallik Infestor##56721+, Ik'thik Warrior##56722+
		.' Kill 15 Ik'thallik Infestors or Warriors |q 30622/1
		.' Use Ken-Ken's mask on Ik'thik Wing Commanders. |use Ken-Ken's Mask##80337
		.from Manifestation of Fear##59874+ 
		.' Defeat 5 Manifestation of Fear that come out of Ik'thik Wing Commanders. |q 30623/1 
	step
		.' Click the Complete Quest box that displays on the right side of the screen under your minimap
		..turnin The Mantidote##30623
// BUGGED
	step
		goto 11.6,49.5
		.talk Guard Captain Oakenshield##57198
		..turnin The Swarm Begins##30622
		..accept Students No More##30625 /////Currently Bugged
	step
		'The students you are looking for can be at one of four locations fighting one of the quest mobs below. Find the students and kill the follow monsters:
		.'Ik'thallik Tendon-Slicer at [9.5,54.0]
		.kill Ik'thallik Tendon-Slicer##59888 |q 30625/3
		.'Ik'thallik Fearmonger at [9.5,58.2]
		.kill Ik'thallik Fearmonger##59889 |q 30625/4
		.'Ik'thallik Bloodrager at [8.9,54.2]
		.kill Ik'thallik Bloodrager##59887 |q 30625/1
		.'Ik'thik Incubator at [8.9,51.0]
		.kill Ik'thik Incubator##59890 |q 30625/2
	step
		goto 11.6,49.5
		.talk Guard Captain Oakenshield##57198
		..turnin Students No More##30625
		..accept Retreat!##30626
	step
		goto 18.0,56.3
		.talk Watch Commander Loon Mai##56720
		..turnin Retreat!##30626
	step
		goto 17.9,55.7
		.talk Master Bruised Paw##59856
		..accept The Savior of Stoneplow##30627
	step
		goto 18.0,56.7 |n
		.talk Miss Fanny##59857
		.' Tell her "Let's go". |invehicle
	step
		'Use your Unyielding Fist ability to defeat the Mantid Collossus. |tip Use your Unyielding Fist ability when the new icon on your screens flashes orange
		.kill Mantid Colossus##56703 |q 30627/1
	step
		goto 18.0,56.3
		.talk Watch Commander Loon Mai##56720
		..turnin The Savior of Stoneplow##30627
		..accept The Gratitude of Stoneplow##30628
]])

--------------------------------------------------------------------------------------------------------------------------------------
-- Trainers
--------------------------------------------------------------------------------------------------------------------------------------
ZygorGuidesViewer:RegisterInclude("trainer_Alchemy",[[
		goto Stormwind City,55.7,86.1
		.talk Lilyssia Nightbreeze##5499
]])

ZygorGuidesViewer:RegisterInclude("trainer_Archaeology",[[
		goto Stormwind City,85.8,25.9
		.talk Harrison Jones##44238
]])

ZygorGuidesViewer:RegisterInclude("trainer_Blacksmithing",[[
		goto Stormwind City 63.7,37.0
		.talk Therum Deepforge##5511
]])

ZygorGuidesViewer:RegisterInclude("trainer_Blacksmithing_Shatt",[[
		goto Shattrath City,69.4,43.3
		.talk Kradu Grimblade##20124
]])

ZygorGuidesViewer:RegisterInclude("trainer_Cooking",[[
		goto Stormwind City,77.3,53.2
		.talk Stephen Ryback##5482
]])

ZygorGuidesViewer:RegisterInclude("trainer_Enchanting",[[
		goto Stormwind City,52.9,74.5
		.talk Lucan Cordell##1317
]])

ZygorGuidesViewer:RegisterInclude("trainer_Engineering",[[
		goto Stormwind City,62.8,32.0
		.talk Lilliam Sparkspindle##5518
]])

ZygorGuidesViewer:RegisterInclude("trainer_FirstAid",[[
		goto Stormwind City 52.2,45.4
		.talk Shaina Fuller##2327
]])

ZygorGuidesViewer:RegisterInclude("trainer_Fishing",[[
		goto Stormwind City 54.8,69.6
		.talk Arnold Leland##5493
]])

ZygorGuidesViewer:RegisterInclude("trainer_Herbalism",[[
		goto Stormwind City 54.3,84.1
		.talk Tannysa##5566
]])

ZygorGuidesViewer:RegisterInclude("trainer_Inscription",[[
		goto Stormwind City,49.8,74.8
		.talk Catarina Stanford##30713
]])

ZygorGuidesViewer:RegisterInclude("trainer_Jewelcrafting",[[
		goto Stormwind City 63.5,61.8
		.talk Theresa Denman##44582
]])

ZygorGuidesViewer:RegisterInclude("trainer_Mining",[[
		goto Stormwind City,59.6,37.6 
		.talk Gelman Stonehand##5513
]])

ZygorGuidesViewer:RegisterInclude("trainer_Skinning",[[
		goto Stormwind City,72.2,62.2
		.talk Maris Granger##1292
]])

ZygorGuidesViewer:RegisterInclude("trainer_Skinning_IF",[[
		goto Ironforge,39.9,32.6
		.talk Balthus Stoneflayer##6291
]])

ZygorGuidesViewer:RegisterInclude("trainer_Tailoring",[[
		goto Stormwind City,53.1,81.3
		.talk Georgio Bolero##1346
]])

ZygorGuidesViewer:RegisterInclude("trainer_Leatherworking",[[
		goto Stormwind City,71.7,63.0
		.talk Simon Tanner##5564
]])

--------------------------------------------------------------------------------------------------------------------------------------
-- Supply Vendors
--------------------------------------------------------------------------------------------------------------------------------------

ZygorGuidesViewer:RegisterInclude("vendor_Alchemy",[[
		goto 55.9,85.6
		.talk Maria Lumere##1313
]])

ZygorGuidesViewer:RegisterInclude("vendor_Blacksmithing",[[
		goto Stormwind City,63.3,37.8
		.talk Kaita Deepforge##5512
]])

ZygorGuidesViewer:RegisterInclude("vendor_Cooking",[[
		goto 77.6,53.1
		.talk Erika Tate##5483
]])

ZygorGuidesViewer:RegisterInclude("vendor_Enchanting",[[
		goto 52.8,74.3
		.talk Jessara Cordell##1318
]])

ZygorGuidesViewer:RegisterInclude("vendor_Engineering",[[
		goto 63.1,32.0
		.talk Billibub Cogspinner##5519
]])

ZygorGuidesViewer:RegisterInclude("vendor_Fishing",[[
		goto 55.0,69.7
		.talk Catherine Leland##5494
]])

ZygorGuidesViewer:RegisterInclude("vendor_Inscription",[[
		goto 49.6,74.9
		.talk Stanly McCormick##30730
]])

ZygorGuidesViewer:RegisterInclude("vendor_Jewelcrafting",[[
		goto 63.2,61.7
		.talk Terrance Denman##44583
]])

ZygorGuidesViewer:RegisterInclude("vendor_Mining",[[
		goto 59.2,37.5
		.talk Brooke Stonebraid##5514
]])

ZygorGuidesViewer:RegisterInclude("vendor_Skinning",[[
		goto 71.6,62.8
		.talk Jillian Tanner##5565
]])

ZygorGuidesViewer:RegisterInclude("vendor_Tailoring",[[
		goto 53.1,81.8
		.talk Alexandra Bolero##1347
]])

ZygorGuidesViewer:RegisterInclude("vendor_Leatherworking",[[
		goto Stormwind City,71.6,62.8
		.talk Jillian Tanner##5565	
]])


--------------------------------------------------------------------------------------------------------------------------------------
-- Buying
--------------------------------------------------------------------------------------------------------------------------------------

ZygorGuidesViewer:RegisterInclude("auctioneer",[[
		goto Stormwind City 61.1,70.6
		.talk Auctioneer Fitch##8719
]])

ZygorGuidesViewer:RegisterInclude("auctioneer_dwarven",[[
		goto Stormwind City,60.1,32.2
		.talk Auctioneer Lauffer##43841
]])

ZygorGuidesViewer:RegisterInclude("shatt_auctioneer",[[
]])

ZygorGuidesViewer:RegisterInclude("auctioneer_dwarven",[[
		goto Stormwind City,60.1,32.2
		.talk Auctioneer Lauffer##43841
]])

ZygorGuidesViewer:RegisterInclude("goto_shatt_auctioneer",[[
		goto Shattrath City,51.0,26.5 |only if rep ('The Aldor') >= Neutral
		.talk Auctioneer Itoran##50143 |only if rep ('The Aldor') >= Neutral
		goto Shattrath City,57.0,63.2 |only if rep ('The Scryers') >= Friendly
		.talk Auctioneer Kalaren##50139|only if rep ('The Scryers') >= Friendly
]])


--------------------------------------------------------------------------------------------------------------------------------------
-- Anvils
--------------------------------------------------------------------------------------------------------------------------------------

ZygorGuidesViewer:RegisterInclude("shatt_anvil",[[
		goto Shattrath City,69.7,42.7
		.' Stand next to this anvil
]])

ZygorGuidesViewer:RegisterInclude("hell_anvil",[[
		goto Hellfire Peninsula,56.8,63.8
		.' Stand next to this anvil
]])

ZygorGuidesViewer:RegisterInclude("twil_anvil",[[
		goto Twilight Highlands,79.2,76.3
		.' Stand next to this anvil
]])

ZygorGuidesViewer:RegisterInclude("maincity_anvil2",[[
]])

ZygorGuidesViewer:RegisterInclude("maincity_anvil",[[
		goto Stormwind City,63.6,37.0
		.' Stand next to this anvil
]])


--------------------------------------------------------------------------------------------------------------------------------------
-- Other
--------------------------------------------------------------------------------------------------------------------------------------
ZygorGuidesViewer:RegisterInclude("cast_campfire",[[
		'Create a basic campfire |cast Basic Campfire##818
]])

ZygorGuidesViewer:RegisterInclude("dalaran_enter_sewer",[[
		Enter the Dalaran sewers |goto Dalaran/2 %q%
		'|goto Dalaran/1 60.2,47.7 <0.3 "Sewer entrance" |n %q%
		'|goto Dalaran/1 34.8,45.5 <0.3 "Sewer entrance" |n %q%
]])

ZygorGuidesViewer:RegisterInclude("dalaran_leave_sewer",[[
		Leave the Dalaran sewers |goto Dalaran/1 %q%
		'|goto Dalaran/2 60.2,47.7 <0.3 "Sewer entrance" |n %q%
		'|goto Dalaran/2 34.8,45.5 <0.3 "Sewer entrance" |n %q%
]])