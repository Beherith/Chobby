--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Planet config

local function GetPlanet(planetUtilities, planetID)
	
	--local image = planetUtilities.planetImages[math.floor(math.random()*#planetUtilities.planetImages) + 1]
	local image = LUA_DIRNAME .. "images/planets/terran03.png"
	
	local planetData = {
		name = "Sirlanna",
		startingPlanet = false,
		mapDisplay = {
			x = (planetUtilities.planetPositions and planetUtilities.planetPositions[planetID][1]) or 0.29,
			y = (planetUtilities.planetPositions and planetUtilities.planetPositions[planetID][2]) or 0.93,
			image = image,
			size = planetUtilities.PLANET_SIZE_MAP,
		},
		infoDisplay = {
			image = image,
			size = planetUtilities.PLANET_SIZE_INFO,
			backgroundImage = planetUtilities.backgroundImages[math.floor(math.random()*#planetUtilities.backgroundImages) + 1],
			terrainType = "Terran",
			radius = "6760 km",
			primary = "Neacahamo",
			primaryType = "G8V",
			milRating = 1,
			feedbackLink = "http://zero-k.info/Forum/Thread/24469",
			text = [[Launch an amphibious attack on the beach with heavy Grizzly assault walkers. You have 25 minutes to push past the Gauss defensive emplacements and secure a beachhead by destroying the Garrisons.]]
		},
		tips = {
			{
				image = "unitpics/turretgauss.png",
				text = [[Gauss turrets can fire at underwater targets. They may also retreat within an armoured shell to repair and hide from artillery attacks.]]
			},
			{
				image = "unitpics/amphassault.png",
				text = [[Grizzlies are armed with two heavy laser turrets similar to those of the Stinger. This weapon is generally bad against raiders but good against most other targets. Protect your Grizzlies with riots to get around this limitation.]]
			},
			{
				image = "unitpics/dronelight.png",
				text = [[The Garrisons on this beach are protected by light drones. They fly low enough to be killed by most weaponry (not just anti-air), but the Garrisons will keep rebuilding them. Destroy the Garrisons to get rid of the drones.]]
			},
		},
		gameConfig = {

			mapName = "TheBeachBeta",
			playerConfig = {
				startX = 3684,
				startZ = 6981,
				allyTeam = 0,
				commanderParameters = {
					facplop = false,
					defeatIfDestroyedObjectiveID = 3,
				},
				extraUnlocks = {
					"factoryamph",
					"amphcon",
					"amphassault",
					"turretgauss",
					"energywind",
				},
				startUnits = {
					{
							name = "staticmex",
							x = 440,
							z = 6104,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 344,
							z = 6840,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 1352,
							z = 6776,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 6232,
							z = 6936,
							facing = 1,
						},
						{
							name = "staticmex",
							x = 2616,
							z = 6840,
							facing = 1,
						},
						{
							name = "staticmex",
							x = 3128,
							z = 6312,
							facing = 1,
						},
						{
							name = "staticmex",
							x = 4568,
							z = 6824,
							facing = 1,
						},
						{
							name = "staticmex",
							x = 3832,
							z = 6232,
							facing = 1,
						},
						{
							name = "staticmex",
							x = 3832,
							z = 6936,
							facing = 1,
						},
						{
							name = "staticmex",
							x = 6936,
							z = 6904,
							facing = 1,
						},
						{
							name = "staticmex",
							x = 6872,
							z = 6152,
							facing = 2,
						},
						{
							name = "factoryamph",
							x = 3448,
							z = 6968,
							facing = 2,
						},
						{
							name = "staticcon",
							x = 3150,
							z = 7048,
							facing = 0,
							commands = {
								{cmdID = planetUtilities.COMMAND.PATROL, pos = {3448, 6968}},
							},
						},
						{
							name = "staticcon",
							x = 3352,
							z = 7048,
							facing = 0,
							commands = {
								{cmdID = planetUtilities.COMMAND.PATROL, pos = {3448, 6968}},
							},
						},
						{
							name = "staticcon",
							x = 3448,
							z = 7096,
							facing = 0,
							commands = {
								{cmdID = planetUtilities.COMMAND.PATROL, pos = {3448, 6968}},
							},
						},
						{
							name = "staticcon",
							x = 3576,
							z = 7048,
							facing = 0,
							commands = {
								{cmdID = planetUtilities.COMMAND.PATROL, pos = {3448, 6968}},
							},
						},
						{
							name = "energywind",
							x = 6840,
							z = 6232,
							facing = 2,
						},
						{
							name = "energywind",
							x = 6920,
							z = 6216,
							facing = 2,
						},
						{
							name = "energywind",
							x = 6872,
							z = 6968,
							facing = 2,
						},
						{
							name = "energywind",
							x = 6952,
							z = 7000,
							facing = 2,
						},
						{
							name = "energywind",
							x = 6200,
							z = 7000,
							facing = 2,
						},
						{
							name = "energywind",
							x = 6280,
							z = 7016,
							facing = 2,
						},
						{
							name = "energywind",
							x = 2552,
							z = 6856,
							facing = 2,
						},
						{
							name = "energywind",
							x = 2616,
							z = 6904,
							facing = 2,
						},
						{
							name = "energywind",
							x = 376,
							z = 6120,
							facing = 2,
						},
						{
							name = "energywind",
							x = 456,
							z = 6152,
							facing = 2,
						},
						{
							name = "energywind",
							x = 3064,
							z = 6344,
							facing = 2,
						},
						{
							name = "energywind",
							x = 3128,
							z = 6392,
							facing = 2,
						},
						{
							name = "energywind",
							x = 280,
							z = 6856,
							facing = 2,
						},
						{
							name = "energywind",
							x = 344,
							z = 6904,
							facing = 2,
						},
						{
							name = "energywind",
							x = 4536,
							z = 6904,
							facing = 2,
						},
						{
							name = "energywind",
							x = 4616,
							z = 6888,
							facing = 2,
						},
						{
							name = "energywind",
							x = 3912,
							z = 6968,
							facing = 2,
						},
						{
							name = "energywind",
							x = 1288,
							z = 6776,
							facing = 2,
						},
						{
							name = "energywind",
							x = 3832,
							z = 7000,
							facing = 2,
						},
						{
							name = "energywind",
							x = 1336,
							z = 6840,
							facing = 2,
						},
						{
							name = "energywind",
							x = 3848,
							z = 6312,
							facing = 2,
						},
						{
							name = "energywind",
							x = 3896,
							z = 6248,
							facing = 2,
						},
						{
							name = "energywind",
							x = 2940,
							z = 6900,
							facing = 2,
						},
						{
							name = "energywind",
							x = 2880,
							z = 6900,
							facing = 2,
						},
						{
							name = "energywind",
							x = 3000,
							z = 6900,
							facing = 2,
						},
						{
							name = "energywind",
							x = 2880,
							z = 6960,
							facing = 2,
						},
						{
							name = "energywind",
							x = 3000,
							z = 6960,
							facing = 2,
						},
						{
							name = "energywind",
							x = 2940,
							z = 6960,
							facing = 2,
						},
						{
							name = "energywind",
							x = 2880,
							z = 7020,
							facing = 2,
						},
						{
							name = "energywind",
							x = 3000,
							z = 7020,
							facing = 2,
						},
						{
							name = "energywind",
							x = 2940,
							z = 7020,
							facing = 2,
						},
						{
							name = "amphassault",
							x = 3100,
							z = 6200,
							facing = 2,
						},
						{
							name = "amphassault",
							x = 3200,
							z = 6200,
							facing = 2,
						},
						{
							name = "amphassault",
							x = 3300,
							z = 6200,
							facing = 2,
						},
						{
							name = "staticradar",
							x = 1840,
							z = 5696,
							facing = 2,
						},
						{
							name = "staticradar",
							x = 5552,
							z = 6000,
							facing = 2,
						},
						{
							name = "amphfloater",
							x = 3400,
							z = 6100,
							facing = 2,
						},
						{
							name = "amphfloater",
							x = 3300,
							z = 6100,
							facing = 2,
						},
						{
							name = "amphfloater",
							x = 3000,
							z = 6100,
							facing = 2,
						},
						{
							name = "amphfloater",
							x = 3100,
							z = 6100,
							facing = 2,
						},
						{
							name = "amphfloater",
							x = 3200,
							z = 6100,
							facing = 2,
						},
						{
							name = "amphimpulse",
							x = 3000,
							z = 5950,
							facing = 2,
						},
						{
							name = "amphimpulse",
							x = 3100,
							z = 5950,
							facing = 2,
						},
						{
							name = "amphimpulse",
							x = 3200,
							z = 5950,
							facing = 2,
						},
						{
							name = "amphimpulse",
							x = 3300,
							z = 5950,
							facing = 2,
						},
						{
							name = "amphimpulse",
							x = 3400,
							z = 5950,
							facing = 2,
						},
						{
							name = "amphcon",
							x = 3100,
							z = 6300,
							facing = 0,
						},
						{
							name = "amphcon",
							x = 3200,
							z = 6300,
							facing = 0,
						},
						{
							name = "amphcon",
							x = 3300,
							z = 6300,
							facing = 0,
						},
				}
			},
			aiConfig = {
				{
					startX = 3088,
					startZ = 309,
					humanName = "Sword",
					--aiLib = "Null AI",
					--bitDependant = false,
					aiLib = "Circuit_difficulty_autofill",
					bitDependant = true,
					commanderParameters = {
						facplop = false,
					},
					allyTeam = 1,
					unlocks = {
						"staticcon",
						"staticradar",
						"staticmex",
						"energywind",
						"turretaalaser",
						"turretmissile",
						"factorycloak",
						"cloakcon",
						"cloakraid",
						"cloakskirm",
						"cloakarty",
						"cloakassault",
						"cloakriot",
						"cloakaa",
						"cloakbomb",
						"factorytank",
						"tankcon",
						"tankheavyraid",
						"tankassault",
						"tankriot",
						"tankarty",
						"tankaa",
					},
					difficultyDependantUnlocks = {
						[3] = {"cloakheavyraid","tankheavyassault"},
						[4] = {"cloakheavyraid","tankheavyassault","cloaksnipe","striderdante"},
					},
					commanderLevel = 3,
					commander = {
						name = "The Fox",
						chassis = "recon",
						decorations = {
						  "skin_recon_leopard",
						},
						modules = {
							"commweapon_beamlaser",
							"module_high_power_servos",
							"module_high_power_servos",
							"module_high_power_servos",
							"module_heavy_armor",
						}
					},
					midgameUnits = {
						{
							name = "spiderassault",
							x = 3660,
							z = 2040,
							facing = 0,
							spawnRadius = 100,
							delay = 3*30*60,
							orbitalDrop = true,
						},
						{
							name = "spiderassault",
							x = 3660,
							z = 2040,
							facing = 0,
							spawnRadius = 100,
							delay = 3*30*60,
							orbitalDrop = true,
						},
						{
							name = "spiderassault",
							x = 3660,
							z = 2040,
							facing = 0,
							spawnRadius = 100,
							delay = 3*30*60,
							orbitalDrop = true,
						},
						{
							name = "spidercrabe",
							x = 3660,
							z = 2040,
							facing = 0,
							difficultyAtLeast = 3,
							spawnRadius = 100,
							delay = 3*30*60,
							orbitalDrop = true,
						},
						{
							name = "vehassault",
							x = 2150,
							z = 2650,
							facing = 0,
							spawnRadius = 100,
							delay = 6*30*60,
							orbitalDrop = true,
						},
						{
							name = "vehassault",
							x = 2150,
							z = 2650,
							facing = 0,
							spawnRadius = 100,
							delay = 6*30*60,
							orbitalDrop = true,
						},
						{
							name = "vehassault",
							x = 2150,
							z = 2650,
							facing = 0,
							spawnRadius = 100,
							delay = 6*30*60,
							orbitalDrop = true,
						},
						{
							name = "vehassault",
							x = 2150,
							z = 2650,
							facing = 0,
							difficultyAtLeast = 3,
							spawnRadius = 100,
							delay = 6*30*60,
							orbitalDrop = true,
						},
						{
							name = "vehassault",
							x = 2150,
							z = 2650,
							facing = 0,
							difficultyAtLeast = 3,
							spawnRadius = 100,
							delay = 6*30*60,
							orbitalDrop = true,
						},
						{
							name = "vehheavyarty",
							x = 2150,
							z = 2650,
							facing = 0,
							spawnRadius = 100,
							delay = 6*30*60,
							orbitalDrop = true,
						},
						{
							name = "vehassault",
							x = 5100,
							z = 2800,
							facing = 0,
							spawnRadius = 100,
							delay = 6*30*60,
							orbitalDrop = true,
						},
						{
							name = "vehassault",
							x = 5100,
							z = 2800,
							facing = 0,
							spawnRadius = 100,
							delay = 6*30*60,
							orbitalDrop = true,
						},
						{
							name = "vehassault",
							x = 5100,
							z = 2800,
							facing = 0,
							spawnRadius = 100,
							delay = 6*30*60,
							orbitalDrop = true,
						},
						{
							name = "vehassault",
							x = 5100,
							z = 2800,
							facing = 0,
							difficultyAtLeast = 3,
							spawnRadius = 100,
							delay = 6*30*60,
							orbitalDrop = true,
						},
						{
							name = "vehassault",
							x = 5100,
							z = 2800,
							facing = 0,
							difficultyAtLeast = 3,
							spawnRadius = 100,
							delay = 6*30*60,
							orbitalDrop = true,
						},
						{
							name = "vehheavyarty",
							x = 5100,
							z = 2800,
							facing = 0,
							difficultyAtLeast = 4,
							spawnRadius = 100,
							delay = 6*30*60,
							orbitalDrop = true,
						},
						{
							name = "jumpassault",
							x = 3660,
							z = 2040,
							facing = 0,
							spawnRadius = 100,
							delay = 9*30*60,
							orbitalDrop = true,
						},
						{
							name = "jumpassault",
							x = 3660,
							z = 2040,
							facing = 0,
							difficultyAtLeast = 2,
							spawnRadius = 100,
							delay = 9*30*60,
							orbitalDrop = true,
						},
						{
							name = "jumpassault",
							x = 3660,
							z = 2040,
							facing = 0,
							difficultyAtLeast = 3,
							spawnRadius = 100,
							delay = 9*30*60,
							orbitalDrop = true,
						},
						{
							name = "jumpblackhole",
							x = 3660,
							z = 2040,
							facing = 0,
							difficultyAtLeast = 4,
							spawnRadius = 100,
							delay = 9*30*60,
							orbitalDrop = true,
						},
						{
							name = "shieldfelon",
							x = 1430,
							z = 2050,
							facing = 0,
							spawnRadius = 100,
							delay = 12*30*60,
							orbitalDrop = true,
						},
						{
							name = "shieldshield",
							x = 1430,
							z = 2050,
							facing = 0,
							spawnRadius = 100,
							delay = 12*30*60,
							orbitalDrop = true,
						},
						{
							name = "shieldassault",
							x = 1430,
							z = 2050,
							facing = 0,
							spawnRadius = 100,
							delay = 12*30*60,
							orbitalDrop = true,
						},
						{
							name = "shieldassault",
							x = 1430,
							z = 2050,
							facing = 0,
							spawnRadius = 100,
							delay = 12*30*60,
							orbitalDrop = true,
						},
						{
							name = "shieldassault",
							x = 1430,
							z = 2050,
							facing = 0,
							spawnRadius = 100,
							delay = 12*30*60,
							orbitalDrop = true,
						},
						{
							name = "shieldassault",
							x = 1430,
							z = 2050,
							facing = 0,
							spawnRadius = 100,
							delay = 12*30*60,
							orbitalDrop = true,
						},
						{
							name = "striderfunnelweb",
							x = 6058,
							z = 2250,
							facing = 0,
							difficultyAtLeast = 4,
							spawnRadius = 100,
							delay = 12*30*60,
							orbitalDrop = true,
						},
						{
							name = "vehriot",
							x = 6058,
							z = 2250,
							facing = 0,
							difficultyAtLeast = 4,
							spawnRadius = 100,
							delay = 12*30*60,
							orbitalDrop = true,
						},
						{
							name = "vehriot",
							x = 6058,
							z = 2250,
							facing = 0,
							difficultyAtLeast = 4,
							spawnRadius = 100,
							delay = 12*30*60,
							orbitalDrop = true,
						},
						{
							name = "vehriot",
							x = 6058,
							z = 2250,
							facing = 0,
							difficultyAtLeast = 4,
							spawnRadius = 100,
							delay = 12*30*60,
							orbitalDrop = true,
						},
					},
					startUnits = {
					-- mission objectives
						{
							name = "pw_garrison",
							x = 2104,
							z = 2200,
							facing = 0,
							difficultyAtMost = 2,
							mapMarker = {
								text = "Garrison",
								color = "red_small",
							},
						},
						{
							name = "pw_garrison",
							x = 500,
							z = 2070,
							facing = 0,
							difficultyAtLeast = 3,
							mapMarker = {
								text = "Garrison",
								color = "red_small",
							},
						},
						{
							name = "pw_garrison",
							x = 3256,
							z = 2344,
							facing = 1,
							mapMarker = {
								text = "Garrison",
								color = "red_small",
							},
						},
						{
							name = "pw_garrison",
							x = 4776,
							z = 2344,
							facing = 0,
							difficultyAtMost = 2,
							mapMarker = {
								text = "Garrison",
								color = "red_small",
							},
						},
						{
							name = "pw_garrison",
							x = 6020,
							z = 2250,
							facing = 0,
							difficultyAtLeast = 3,
							mapMarker = {
								text = "Garrison",
								color = "red_small",
							},
						},
						-- difficulty dependent stuff
						{
							name = "turretheavylaser",
							x = 320,
							z = 2230,
							facing = 0,
							difficultyAtLeast = 3,
						},
						{
							name = "turretheavylaser",
							x = 680,
							z = 2230,
							facing = 0,
							difficultyAtLeast = 3,
						},
						{
							name = "turretaaclose",
							x = 320,
							z = 1900,
							facing = 0,
							difficultyAtLeast = 3,
						},
						{
							name = "turretaaclose",
							x = 680,
							z = 1900,
							facing = 0,
							difficultyAtLeast = 3,
						},
						{
							name = "turretheavylaser",
							x = 6200,
							z = 2450,
							facing = 0,
							difficultyAtLeast = 3,
						},
						{
							name = "turretheavylaser",
							x = 5800,
							z = 2450,
							facing = 0,
							difficultyAtLeast = 3,
						},
						{
							name = "turretaaclose",
							x = 6500,
							z = 2000,
							facing = 0,
							difficultyAtLeast = 3,
						},
						{
							name = "turretaaclose",
							x = 5800,
							z = 2000,
							facing = 0,
							difficultyAtLeast = 3,
						},
						{
							name = "staticmex",
							x = 3965,
							z = 1305,
							facing = 0,
							difficultyAtLeast = 2,
						},
						{
							name = "staticmex",
							x = 785,
							z = 1850,
							facing = 0,
							difficultyAtLeast = 3,
						},
						{
							name = "staticmex",
							x = 6567,
							z = 1835,
							facing = 0,
							difficultyAtLeast = 3,
						},
						{
							name = "pw_metal",
							x = 3126,
							z = 140,
							facing = 0,
							difficultyAtLeast = 4,
						},
						{
							name = "staticmex",
							x = 216,
							z = 232,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 776,
							z = 168,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 408,
							z = 984,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 2120,
							z = 280,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 3544,
							z = 152,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 3976,
							z = 632,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 4280,
							z = 200,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 5080,
							z = 424,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 6168,
							z = 424,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 6888,
							z = 184,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 6984,
							z = 776,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 2888,
							z = 664,
							facing = 0,
						},
						{
							name = "energypylon",
							x = 2808,
							z = 1048,
							facing = 0,
						},
						{
							name = "energywind",
							x = 408,
							z = 904,
							facing = 0,
						},
						{
							name = "energywind",
							x = 200,
							z = 296,
							facing = 0,
						},
						{
							name = "energywind",
							x = 264,
							z = 248,
							facing = 0,
						},
						{
							name = "energywind",
							x = 712,
							z = 168,
							facing = 0,
						},
						{
							name = "energywind",
							x = 744,
							z = 216,
							facing = 0,
						},
						{
							name = "energywind",
							x = 2040,
							z = 312,
							facing = 0,
						},
						{
							name = "energywind",
							x = 2120,
							z = 344,
							facing = 0,
						},
						{
							name = "energywind",
							x = 2824,
							z = 712,
							facing = 0,
						},
						{
							name = "energywind",
							x = 2904,
							z = 744,
							facing = 0,
						},
						{
							name = "energywind",
							x = 3496,
							z = 200,
							facing = 0,
						},
						{
							name = "energywind",
							x = 3592,
							z = 184,
							facing = 0,
						},
						{
							name = "energywind",
							x = 3912,
							z = 648,
							facing = 0,
						},
						{
							name = "energywind",
							x = 4040,
							z = 648,
							facing = 0,
						},
						{
							name = "energywind",
							x = 4232,
							z = 232,
							facing = 0,
						},
						{
							name = "energywind",
							x = 4328,
							z = 216,
							facing = 0,
						},
						{
							name = "energywind",
							x = 5016,
							z = 424,
							facing = 0,
						},
						{
							name = "energywind",
							x = 5128,
							z = 376,
							facing = 0,
						},
						{
							name = "energywind",
							x = 6088,
							z = 424,
							facing = 0,
						},
						{
							name = "energywind",
							x = 6200,
							z = 360,
							facing = 0,
						},
						{
							name = "energywind",
							x = 6824,
							z = 152,
							facing = 0,
						},
						{
							name = "energywind",
							x = 6920,
							z = 232,
							facing = 0,
						},
						{
							name = "energywind",
							x = 6904,
							z = 744,
							facing = 0,
						},
						{
							name = "energywind",
							x = 7016,
							z = 824,
							facing = 0,
						},
						{
							name = "staticcon",
							x = 1144,
							z = 168,
							facing = 0,
						},
						{
							name = "factorytank",
							x = 1152,
							z = 336,
							facing = 0,
						},
						{
							name = "striderhub",
							x = 6376,
							z = 72,
							facing = 0,
						},
						{
							name = "factorycloak",
							x = 6376,
							z = 176,
							facing = 0,
						},
						{
							name = "staticradar",
							x = 3440,
							z = 3424,
							facing = 0,
						},
						{
							name = "staticradar",
							x = 1280,
							z = 2416,
							facing = 0,
						},
						{
							name = "staticradar",
							x = 4032,
							z = 2160,
							facing = 0,
						},
						{
							name = "staticradar",
							x = 5696,
							z = 2400,
							facing = 0,
						},
						{
							name = "staticradar",
							x = 3872,
							z = 1536,
							facing = 0,
						},
						{
							name = "energypylon",
							x = 248,
							z = 1128,
							facing = 0,
						},
						{
							name = "turretaafar",
							x = 5936,
							z = 672,
							facing = 0,
						},
						{
							name = "energypylon",
							x = 2632,
							z = 488,
							facing = 0,
						},
						{
							name = "energypylon",
							x = 3592,
							z = 504,
							facing = 0,
						},
						{
							name = "turretaafar",
							x = 1680,
							z = 656,
							facing = 0,
						},
						{
							name = "energypylon",
							x = 5784,
							z = 1160,
							facing = 0,
						},
						{
							name = "energypylon",
							x = 5592,
							z = 408,
							facing = 0,
						},
						{
							name = "turretaafar",
							x = 3728,
							z = 784,
							facing = 0,
						},
						{
							name = "energypylon",
							x = 7096,
							z = 1112,
							facing = 0,
						},
						{
							name = "turretgauss",
							x = 4920,
							z = 2584,
							facing = 0,
						},
						{
							name = "turretheavy",
							x = 1512,
							z = 1304,
							facing = 0,
						},
						{
							name = "energyfusion",
							x = 4056,
							z = 128,
							facing = 0,
						},
						{
							name = "energypylon",
							x = 456,
							z = 536,
							facing = 0,
						},
						{
							name = "turretheavy",
							x = 6008,
							z = 1608,
							facing = 0,
						},
						{
							name = "energypylon",
							x = 1640,
							z = 1144,
							facing = 0,
						},
						{
							name = "energypylon",
							x = 1336,
							z = 232,
							facing = 0,
						},
						{
							name = "turretgauss",
							x = 4536,
							z = 2568,
							facing = 0,
						},
						{
							name = "turretheavy",
							x = 4840,
							z = 1384,
							facing = 0,
						},
						{
							name = "energypylon",
							x = 6632,
							z = 472,
							facing = 0,
						},
						{
							name = "turretheavy",
							x = 664,
							z = 1160,
							facing = 0,
						},
						{
							name = "energypylon",
							x = 4568,
							z = 984,
							facing = 0,
						},
						{
							name = "turretgauss",
							x = 2264,
							z = 2296,
							facing = 0,
						},
						{
							name = "energypylon",
							x = 4568,
							z = 440,
							facing = 0,
						},
						{
							name = "turretheavy",
							x = 6936,
							z = 1192,
							facing = 0,
						},
						{
							name = "turretheavy",
							x = 3160,
							z = 1416,
							facing = 0,
						},
						{
							name = "energypylon",
							x = 1800,
							z = 376,
							facing = 0,
						},
						{
							name = "turretgauss",
							x = 1880,
							z = 2360,
							facing = 0,
						},
						{
							name = "turretheavylaser",
							x = 3800,
							z = 5096,
							facing = 0,
						},
						{
							name = "turretheavylaser",
							x = 5672,
							z = 2648,
							facing = 0,
						},
						{
							name = "turretheavylaser",
							x = 4168,
							z = 5192,
							facing = 0,
						},
						{
							name = "turretheavylaser",
							x = 5656,
							z = 4536,
							facing = 0,
						},
						{
							name = "turretheavylaser",
							x = 2024,
							z = 4824,
							facing = 0,
						},
						{
							name = "turretheavylaser",
							x = 1256,
							z = 4008,
							facing = 0,
						},
						{
							name = "turretheavylaser",
							x = 4888,
							z = 3512,
							facing = 0,
						},
						{
							name = "turretheavylaser",
							x = 2216,
							z = 3336,
							facing = 0,
						},
						{
							name = "turretheavylaser",
							x = 4152,
							z = 3992,
							facing = 0,
						},
						{
							name = "turretheavylaser",
							x = 1448,
							z = 2744,
							facing = 0,
						},
						{
							name = "turretgauss",
							x = 3608,
							z = 5256,
							facing = 0,
						},
						{
							name = "turretgauss",
							x = 4312,
							z = 5320,
							facing = 0,
						},
						{
							name = "turretgauss",
							x = 4008,
							z = 5368,
							facing = 0,
						},
						{
							name = "turretgauss",
							x = 1848,
							z = 5064,
							facing = 0,
						},
						{
							name = "turretgauss",
							x = 2184,
							z = 5048,
							facing = 0,
						},
						{
							name = "turretgauss",
							x = 5496,
							z = 4632,
							facing = 0,
						},
						{
							name = "turretgauss",
							x = 5848,
							z = 4680,
							facing = 0,
						},
						{
							name = "turretgauss",
							x = 3992,
							z = 4088,
							facing = 0,
						},
						{
							name = "turretgauss",
							x = 4344,
							z = 4120,
							facing = 0,
						},
						{
							name = "turretgauss",
							x = 1112,
							z = 4120,
							facing = 0,
						},
						{
							name = "turretgauss",
							x = 1464,
							z = 4072,
							facing = 0,
						},
						{
							name = "turretgauss",
							x = 2008,
							z = 3480,
							facing = 0,
						},
						{
							name = "turretgauss",
							x = 2472,
							z = 3432,
							facing = 0,
						},
						{
							name = "turretgauss",
							x = 984,
							z = 2888,
							facing = 0,
						},
						{
							name = "turretgauss",
							x = 1720,
							z = 2808,
							facing = 0,
						},
						{
							name = "turretgauss",
							x = 4744,
							z = 3576,
							facing = 0,
						},
						{
							name = "turretgauss",
							x = 5048,
							z = 3592,
							facing = 0,
						},
						{
							name = "turretheavylaser",
							x = 3240,
							z = 3704,
							facing = 0,
						},
						{
							name = "turretgauss",
							x = 3560,
							z = 3768,
							facing = 0,
						},
						{
							name = "turretgauss",
							x = 3272,
							z = 2552,
							facing = 0,
						},
						{
							name = "turretgauss",
							x = 2856,
							z = 2648,
							facing = 0,
						},
						{
							name = "turretaalaser",
							x = 1128,
							z = 2568,
							facing = 0,
						},
						{
							name = "turretaalaser",
							x = 3304,
							z = 3496,
							facing = 0,
						},
						{
							name = "turretaalaser",
							x = 5544,
							z = 2632,
							facing = 0,
						},
						{
							name = "turretaalaser",
							x = 3944,
							z = 4920,
							facing = 0,
						},
						{
							name = "turretaaflak",
							x = 2024,
							z = 4648,
							facing = 0,
						},
						{
							name = "turretaaflak",
							x = 5800,
							z = 4376,
							facing = 0,
						},
						{
							name = "turretaaflak",
							x = 3976,
							z = 2440,
							facing = 0,
						},
						{
							name = "turretaaclose",
							x = 1928,
							z = 2088,
							facing = 0,
						},
						{
							name = "turretaaclose",
							x = 2280,
							z = 2056,
							facing = 0,
						},
						{
							name = "turretaaclose",
							x = 2936,
							z = 2344,
							facing = 0,
						},
						{
							name = "turretaaclose",
							x = 3288,
							z = 2152,
							facing = 0,
						},
						{
							name = "turretaaclose",
							x = 4872,
							z = 2184,
							facing = 0,
						},
						{
							name = "tankassault",
							x = 1046,
							z = 657,
							facing = 0,
						},
						{
							name = "tankassault",
							x = 6409,
							z = 640,
							facing = 0,
							difficultyAtLeast = 2,
						},
						{
							name = "tankassault",
							x = 3549,
							z = 1934,
							facing = 0,
							difficultyAtLeast = 3,
						},
						{
							name = "tankriot",
							x = 3907,
							z = 872,
							facing = 0,
							difficultyAtLeast = 3,
						},
						{
							name = "tankriot",
							x = 1160,
							z = 1999,
							facing = 0,
							difficultyAtLeast = 2,
						},
						{
							name = "tankriot",
							x = 6296,
							z = 2192,
							facing = 0,
						},
						{
							name = "cloakraid",
							x = 898,
							z = 659,
							facing = 0,
						},
						{
							name = "cloakraid",
							x = 1046,
							z = 765,
							facing = 0,
						},
						{
							name = "cloakraid",
							x = 1158,
							z = 686,
							facing = 0,
						},
						{
							name = "cloakraid",
							x = 1102,
							z = 557,
							facing = 0,
						},
						{
							name = "cloakraid",
							x = 6291,
							z = 606,
							facing = 0,
						},
						{
							name = "cloakraid",
							x = 6387,
							z = 738,
							facing = 0,
						},
						{
							name = "cloakraid",
							x = 6504,
							z = 777,
							facing = 0,
						},
						{
							name = "cloakraid",
							x = 6551,
							z = 514,
							facing = 0,
						},
						{
							name = "cloakraid",
							x = 3374,
							z = 1843,
							facing = 0,
						},
						{
							name = "cloakraid",
							x = 3378,
							z = 1961,
							facing = 0,
						},
						{
							name = "cloakraid",
							x = 3588,
							z = 2049,
							facing = 0,
						},
						{
							name = "cloakraid",
							x = 3650,
							z = 1942,
							facing = 0,
						},
						{
							name = "cloakskirm",
							x = 1024,
							z = 2042,
							facing = 0,
						},
						{
							name = "cloakskirm",
							x = 1237,
							z = 1878,
							facing = 0,
						},
						{
							name = "cloakskirm",
							x = 1262,
							z = 2084,
							facing = 0,
						},
						{
							name = "cloakskirm",
							x = 3810,
							z = 978,
							facing = 0,
						},
						{
							name = "cloakskirm",
							x = 4046,
							z = 839,
							facing = 0,
						},
						{
							name = "cloakskirm",
							x = 3964,
							z = 991,
							facing = 0,
						},
						{
							name = "cloakskirm",
							x = 6324,
							z = 2051,
							facing = 0,
						},
						{
							name = "cloakskirm",
							x = 6212,
							z = 2155,
							facing = 0,
						},
						{
							name = "cloakskirm",
							x = 6335,
							z = 2308,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 1798,
							z = 1450,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 5880,
							z = 1420,
							facing = 0,
						},
						{
							name = "turretheavylaser",
							x = 3084,
							z = 2523,
							facing = 0,
						},
						{
							name = "turretheavylaser",
							x = 2140,
							z = 2300,
							facing = 0,
						},
						{
							name = "turretheavylaser",
							x = 4720,
							z = 2460,
							facing = 0,
						},
						{
							name = "staticcon",
							x = 4200,
							z = 2100,
							facing = 0,
						},
						{
							name = "factorycloak",
							x = 4200,
							z = 2300,
							facing = 0,
						},
					}
				},
			},
			defeatConditionConfig = {
				-- Indexed by allyTeam.
				[0] = {
					loseAfterSeconds = 25*60,
					timeLossObjectiveID = 2,
				},
				[1] = {
					ignoreUnitLossDefeat = false,
					vitalCommanders = false,
					vitalUnitTypes = {
						"pw_garrison",
					},
					loseAfterSeconds = false,
					allyTeamLossObjectiveID = 1,
				},
			},
			objectiveConfig = {
				-- This is just related to displaying objectives on the UI.
				[1] = {
					description = "Destroy all three Garrisons",
				},
				[2] = {
					description = "Win before 25:00",
				},
				[3] = {
					description = "Protect your Commander",
				},
			},
			bonusObjectiveConfig = {
				[1] = { -- Make six Gausses
					satisfyOnce = true,
					countRemovedUnits = true,
					comparisionType = planetUtilities.COMPARE.AT_LEAST,
					targetNumber = 6,
					unitTypes = {
						"turretgauss",
					},
					image = planetUtilities.ICON_DIR .. "turretgauss.png",
					imageOverlay = planetUtilities.ICON_OVERLAY.REPAIR,
					description = "Build 6 Gauss turrets",
					experience = planetUtilities.BONUS_EXP,
				},
				[2] = { -- Lose no more than 3 grizzlies
					onlyCountRemovedUnits = true,
					satisfyForever = true,
					comparisionType = planetUtilities.COMPARE.AT_MOST,
					targetNumber = 3,
					unitTypes = {
						"amphassault"
					},
					image = planetUtilities.ICON_DIR .. "amphassault.png",
					imageOverlay = planetUtilities.ICON_OVERLAY.GUARD,
					description = "Do not lose more than 3 Grizzlies",
					experience = planetUtilities.BONUS_EXP,
				},
				[3] = { -- Win by 20:00
					victoryByTime = 20*60,
					image = planetUtilities.ICON_OVERLAY.CLOCK,
					description = "Win by 20:00",
					experience = planetUtilities.BONUS_EXP,
				},
			},
		},
		completionReward = {
			experience = planetUtilities.MAIN_EXP,
			units = {
				"amphassault",
				"turretgauss",
			},
			modules = {
				"module_heavy_armor_LIMIT_B_2",
			},
			abilities = {
			}
		},
	}
	
	return planetData
end

return GetPlanet
