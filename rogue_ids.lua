local ConRO_Rogue, ids = ...;

--General
	ids.Racial = {
		AncestralCall = {spellID = 274738},
		ArcanePulse = {spellID = 260364},
		ArcaneTorrent = {spellID = 50613},
		Berserking = {spellID = 26297},
		Cannibalize = {spellID = 20577},
		GiftoftheNaaru = {spellID = 59548},
		Shadowmeld = {spellID = 58984},
	}
	ids.HeroSpec = {
		Trickster = 51,
		Fatebound = 52,
		Deathstalker = 53,
	}

--Assassination
	ids.Ass_Ability = {
	--Poisons
		Poisons = {
			AmplifyingPoison = {spellID = 381664, talentID = 112505},
			AtrophicPoison = {spellID = 381637, talentID = 112655},
			CripplingPoison = {spellID = 3408},
			DeadlyPoison = {spellID = 2823, talentID = 112676},
			InstantPoison = {spellID = 315584},
			NumbingPoison = {spellID = 5761, talentID = 112656},
			WoundPoison = {spellID = 8679},
		},
	--Rogue Baseline
		Ambush = {spellID = 8676},
		CheapShot = {spellID = 1833},
		CrimsonVial = {spellID = 185311},
		Distract = {spellID = 1725},
		Eviscerate = {spellID = 196819},
		Feint = {spellID = 1966},
		Kick = {spellID = 1766},
		KidneyShot = {spellID = 408},
		PickLock = {spellID = 1804},
		PickPocket = {spellID = 921},
		Sap = {spellID = 6770},
		ShroudofConcealment = {spellID = 114018},
		SliceandDice = {spellID = 315496},
		Sprint = {spellID = 2983},
		Stealth = {spellID = 1784},
		Vanish = {spellID = 1856},
		--Passive
		SafeFall = {spellID = 1860},
	--Assassination Baseline
		Envenom = {spellID = 32645},
		FanofKnives = {spellID = 51723},
		Garrote = {spellID = 703},
		Mutilate = {spellID = 1329},
		PoisonedKnife = {spellID = 185565},
		Rupture = {spellID = 1943},
		Shadowstep = {spellID = 36554},
		--Passive
		CuttotheChase = {spellID = 51667},
		MasteryPotentAssassin = {spellID = 76803},
	--Rogue
		Shiv = {spellID = 5938, talentID = 112630},
		Blind = {spellID = 2094, talentID = 112572},
		CloakofShadows = {spellID = 31224, talentID = 112585},
		Evasion = {spellID = 5277, talentID = 112657},
		Gouge = {spellID = 1776, talentID = 112631},
		AirborneIrritant = {spellID = 200733, talentID = 117740},
		ThrillSeeking = {spellID = 394931, talentID = 112583},
		MasterPoisoner = {spellID = 378436, talentID = 112521},
		Elusiveness = {spellID = 79008, talentID = 112632},
		CheatDeath = {spellID = 31230, talentID = 114737},
		TricksoftheTrade = {spellID = 57934, talentID = 112574},
		Blackjack = {spellID = 379005, talentID = 117143},
		ImprovedWoundPoison = {spellID = 319066, talentID = 112522},
		NimbleFingers = {spellID = 378427, talentID = 112635},
		ImprovedSprint = {spellID = 231691, talentID = 112636},
		Shadowrunner = {spellID = 378807, talentID = 112575},
		SuperiorMixture = {spellID = 423701, talentID = 117151},
		FleetFooted = {spellID = 378813, talentID = 112654},
		IronStomach = {spellID = 193546, talentID = 112634},
		UnbreakableStride = {spellID = 400804, talentID = 112638},
		Featherfoot = {spellID = 423683, talentID = 117146},
		RushedSetup = {spellID = 378803, talentID = 112646},
		Shadowheart = {spellID = 455131, talentID = 125615},
		DeadenedNerves = {spellID = 231719, talentID = 112633},
		GracefulGuile = {spellID = 423647, talentID = 117145},
		Stillshroud = {spellID = 423662, talentID = 117144},
		DeadlyPrecision = {spellID = 381542, talentID = 112652},
		VirulentPoisons = {spellID = 381543, talentID = 117150},
		AcrobaticStrikes = {spellID = 455143, talentID = 112644},
		ImprovedAmbush = {spellID = 381620, talentID = 112580},
		TightSpender = {spellID = 381621, talentID = 117152},
		LeechingPoison = {spellID = 280716, talentID = 112650},
		Lethality = {spellID = 382238, talentID = 112640},
		Recuperator = {spellID = 378996, talentID = 112526},
		Alacrity = {spellID = 193539, talentID = 112643},
		SoothingDarkness = {spellID = 393970, talentID = 112579},
		Vigor = {spellID = 14983, talentID = 112651},
		Supercharger = {spellID = 470347, talentID = 112525},
		Subterfuge = {spellID = 108208, talentID = 112576},
			Subterfuge_Stealth = {spellID = 115191, talentID = 112576},
		ThistleTea = {spellID = 381623, talentID = 112648},
		ColdBlood = {spellID = 382245, talentID = 112639},
		EchoingReprimand = {spellID = 470669, talentID = 112524},
		ForcedInduction = {spellID = 470668, talentID = 112523},
		DeeperStratagem = {spellID = 193531, talentID = 112642},
		WithoutaTrace = {spellID = 382513, talentID = 125614},
	--Assassination
		ImprovedShiv = {spellID = 319032, talentID = 112513},
		VenomousWounds = {spellID = 79134, talentID = 112520},
		PathofBlood = {spellID = 423054, talentID = 117106},
		RapidInjection = {spellID = 455072, talentID = 117139},
		ImprovedPoisons = {spellID = 381624, talentID = 112519},
		BloodyMess = {spellID = 381626, talentID = 112510},
		ThrownPrecision = {spellID = 381629, talentID = 112515},
		SealFate = {spellID = 14190, talentID = 112649},
		CausticSpatter = {spellID = 421975, talentID = 117137},
		InternalBleeding = {spellID = 381627, talentID = 117136},
		ImprovedGarrote = {spellID = 381632, talentID = 112673},
		CrimsonTempest = {spellID = 121411, talentID = 112517},
		LightweightShiv = {spellID = 394983, talentID = 112518},
		Deathmark = {spellID = 360194, talentID = 112662},
		SanguineBlades = {spellID = 200806, talentID = 112672},
		MasterAssassin = {spellID = 255989, talentID = 112508},
		FlyingDaggers = {spellID = 381631, talentID = 117133},
		SanguineStratagem = {spellID = 457512, talentID = 117132},
		ViciousVenoms = {spellID = 381634, talentID = 112665},
		FatalConcoction = {spellID = 392384, talentID = 112511},
		LethalDose = {spellID = 381640, talentID = 112509},
		IntenttoKill = {spellID = 381630, talentID = 117135},
		IronWire = {spellID = 196861, talentID = 117134},
		SystemicFailure = {spellID = 381652, talentID = 112664},
		TwisttheKnife = {spellID = 381669, talentID = 112661},
		Doomblade = {spellID = 381673, talentID = 112670},
		Blindside = {spellID = 328085, talentID = 112679},
			AmbushB = {spellID = 430023, talentID = 112679},
		TinyToxicBlade = {spellID = 381800, talentID = 112663},
		DashingScoundrel = {spellID = 381797, talentID = 112659},
		ShroudedSuffocation = {spellID = 385478, talentID = 112669},
		SerratedBoneSpikes = {spellID = 455352, talentID = 112507},
		ZoldyckRecipe = {spellID = 381798, talentID = 112678},
		PoisonBomb = {spellID = 255544, talentID = 112660},
		ScentofBlood = {spellID = 381799, talentID = 112668},
		ArterialPrecision = {spellID = 400783, talentID = 112677},
		Kingsbane = {spellID = 385627, talentID = 117130},
		DragonTemperedBlades = {spellID = 381801, talentID = 117131},
		IndiscriminateCarnage = {spellID = 381802, talentID = 112667},
		SuddenDemise = {spellID = 423136, talentID = 117129},
	--Hero
	--Deathstalker
		DeathstalkersMark = {spellID = 457052, talentID = 117733},
		CleartheWitnesses = {spellID = 457053, talentID = 117707},
		HuntThemDown = {spellID = 457054, talentID = 117729},
		SingularFocus = {spellID = 457055, talentID = 117714},
		FatalIntent = {spellID = 461980, talentID = 117732},
		CorrupttheBlood = {spellID = 457066, talentID = 117705},
		LingeringDarkness = {spellID = 457056, talentID = 117706},
		SymbolicVictory = {spellID = 457062, talentID = 126030},
		EtherealCloak = {spellID = 457022, talentID = 117703},
		BaitandSwitch = {spellID = 457034, talentID = 126029},
		MomentumofDespair = {spellID = 457067, talentID = 117728},
		FollowtheBlood = {spellID = 457068, talentID = 126028},
		Shadewalker = {spellID = 457057, talentID = 117720},
		ShroudofNight = {spellID = 457063, talentID = 126027},
		DarkestNight = {spellID = 457058, talentID = 117739},
	--Fatebound
		HandofFate = {spellID = 452536, talentID = 117722},
		ChosensRevelry = {spellID = 454300, talentID = 117735},
		TemptedFate = {spellID = 454286, talentID = 125132},
		MeanStreak = {spellID = 453428, talentID = 117719},
		InexorableMarch = {spellID = 454432, talentID = 117727},
		DeathsArrival = {spellID = 454433, talentID = 125140},
		DealFate = {spellID = 454419, talentID = 117704},
		EdgeCase = {spellID = 453457, talentID = 117736},
		FateIntertwined = {spellID = 454429, talentID = 117717},
		DeliveredDoom = {spellID = 454426, talentID = 117716},
		InevitabileEnd = {spellID = 454434, talentID = 117711},
		DestinyDefined = {spellID = 454435, talentID = 125139},
		DoubleJeopardy = {spellID = 454430, talentID = 117726},
		FatefulEnding = {spellID = 454428, talentID = 117724},
	}
	ids.Ass_PvPTalent = {

	}
	ids.Ass_Form = {
		Stealth = 1784,
		IndiscriminateCarnage = 385754,
	}
	ids.Ass_Buff = {
		AmplifyingPoison = 381664,
		Blindside = 121153,
		CleartheWitnesses = 457178,
		CrimsonTempest = 121411,
		CripplingPoison = 3408,
		DarkestNight = 457280,
		DeadlyPoison = 2823,
		EchoingReprimand = 470671,
		ElaboratePlanning = 193641,
		Envenom = 32645,
		IndiscriminateCarnage = 385747,
		InstantPoison = 315584,
		InternalBleeding = 154953,
		MasterAssassin = 256735,
		Sepsis = 347037,
		ShadowDance = 185422,
		SliceandDice = 315496,
		Subterfuge = 115192,
		Vanish = 11327,
		WoundPoison = 8679,
	}
	ids.Ass_Debuff = {
		CausticSpatter = 421976,
		CrimsonTempest = 121411,
		DeadlyPoison = 2818,
		Deathmark = 360194,
		DeathstalkersMark = 457129,
		Garrote = 703,
		Kingsbane = 385627,
		Rupture = 1943,
		Sepsis = 385408;
		SerratedBoneSpike = 394036,
		Shiv = 319504,
		ToxicBlade = 245389,
		Vendetta = 79140,
	}
	ids.Ass_PetAbility = {

	}

--Outlaw
	ids.Out_Ability = {
	--Poisons
		Poisons = {
			AtrophicPoison = {spellID = 381637, talentID = 112655},
			CripplingPoison = {spellID = 3408},
			InstantPoison = {spellID = 315584},
			NumbingPoison = {spellID = 5761, talentID = 112656},
			WoundPoison = {spellID = 8679},
		},
	--Rogue Baseline
		Ambush = {spellID = 8676},
		Backstab = {spellID = 53},
		CheapShot = {spellID = 1833},
		CrimsonVial = {spellID = 185311},
		Distract = {spellID = 1725},
		Eviscerate = {spellID = 196819},
		Feint = {spellID = 1966},
		Kick = {spellID = 1766},
		KidneyShot = {spellID = 408},
		PickLock = {spellID = 1804},
		PickPocket = {spellID = 921},
		Sap = {spellID = 6770},
		ShroudofConcealment = {spellID = 114018},
		SinisterStrike = {spellID = 193315},
		SliceandDice = {spellID = 315496},
		Sprint = {spellID = 2983},
		Stealth = {spellID = 1784},
		Vanish = {spellID = 1856},
		--Passive
		SafeFall = {spellID = 1860},
	--Outlaw Baseline
		BetweentheEyes = {spellID = 315341},
		BladeFlurry = {spellID = 13877},
		Dispatch = {spellID = 2098},
		GrapplingHook = {spellID = 195457},
		PistolShot = {spellID = 185763},
		RolltheBones = {spellID = 315508},
		--Passive
		CuttotheChase = {spellID = 51667},
		MasteryMainGauche = {spellID = 76806},
		RestlessBlades = {spellID = 79096},
	--Rogue
		Shiv = {spellID = 5938, talentID = 112630},
		Blind = {spellID = 2094, talentID = 112572},
		CloakofShadows = {spellID = 31224, talentID = 112585},
		Evasion = {spellID = 5277, talentID = 112657},
		Gouge = {spellID = 1776, talentID = 112631},
		AirborneIrritant = {spellID = 200733, talentID = 117740},
		ThrillSeeking = {spellID = 394931, talentID = 112583},
		MasterPoisoner = {spellID = 378436, talentID = 112521},
		Elusiveness = {spellID = 79008, talentID = 112632},
		CheatDeath = {spellID = 31230, talentID = 114737},
		TricksoftheTrade = {spellID = 57934, talentID = 112574},
		Blackjack = {spellID = 379005, talentID = 117143},
		ImprovedWoundPoison = {spellID = 319066, talentID = 112522},
		NimbleFingers = {spellID = 378427, talentID = 112635},
		ImprovedSprint = {spellID = 231691, talentID = 112636},
		Shadowrunner = {spellID = 378807, talentID = 112575},
		SuperiorMixture = {spellID = 423701, talentID = 117151},
		FleetFooted = {spellID = 378813, talentID = 112654},
		IronStomach = {spellID = 193546, talentID = 112634},
		UnbreakableStride = {spellID = 400804, talentID = 112638},
		Featherfoot = {spellID = 423683, talentID = 117146},
		RushedSetup = {spellID = 378803, talentID = 112646},
		Shadowheart = {spellID = 455131, talentID = 125615},
		DeadenedNerves = {spellID = 231719, talentID = 112633},
		GracefulGuile = {spellID = 423647, talentID = 117145},
		Stillshroud = {spellID = 423662, talentID = 117144},
		DeadlyPrecision = {spellID = 381542, talentID = 112652},
		VirulentPoisons = {spellID = 381543, talentID = 117150},
		AcrobaticStrikes = {spellID = 455143, talentID = 112644},
		ImprovedAmbush = {spellID = 381620, talentID = 112580},
		TightSpender = {spellID = 381621, talentID = 117152},
		LeechingPoison = {spellID = 280716, talentID = 112650},
		Lethality = {spellID = 382238, talentID = 112640},
		Recuperator = {spellID = 378996, talentID = 112526},
		Alacrity = {spellID = 193539, talentID = 112643},
		SoothingDarkness = {spellID = 393970, talentID = 112579},
		Vigor = {spellID = 14983, talentID = 112651},
		Supercharger = {spellID = 470347, talentID = 112525},
		Subterfuge = {spellID = 108208, talentID = 112576},
			Subterfuge_Stealth = {spellID = 115191, talentID = 112576},
		ThistleTea = {spellID = 381623, talentID = 112648},
		ColdBlood = {spellID = 382245, talentID = 112639},
		EchoingReprimand = {spellID = 470669, talentID = 112524},
		ForcedInduction = {spellID = 470668, talentID = 112523},
		DeeperStratagem = {spellID = 193531, talentID = 112642},
		WithoutaTrace = {spellID = 382513, talentID = 125614},
	--Outlaw
		Opportunity = {spellID = 279876, talentID = 112571},
		AdrenalineRush = {spellID = 13750, talentID = 112545},
		RetractableHook = {spellID = 256188, talentID = 112569},
		DirtyTricks = {spellID = 108216, talentID = 112531},
		CombatPotency = {spellID = 61329, talentID = 112532},
		CombatStamina = {spellID = 381877, talentID = 112534},
		HitandRun = {spellID = 196922, talentID = 112560},
		BlindingPowder = {spellID = 256165, talentID = 112529},
		FloatLikeaButterfly = {spellID = 354897, talentID = 112647},
		StingLikeaBee = {spellID = 131511, talentID = 117173},
		Riposte = {spellID = 344363, talentID = 112547},
		PrecisionShot = {spellID = 428377, talentID = 112533},
		HeavyHitter = {spellID = 381885, talentID = 112528},
		DeviousStratagem = {spellID = 394321, talentID = 112567},
		KillingSpree = {spellID = 51690, talentID = 117149},
		FatalFlourish = {spellID = 35551, talentID = 112548},
		Ambidexterity = {spellID = 381822, talentID = 112546},
		QuickDraw = {spellID = 196938, talentID = 112549},
		DeftManeuvers = {spellID = 381878, talentID = 112559},
		Ruthlessness = {spellID = 14161, talentID = 112568},
		SwiftSlasher = {spellID = 381988, talentID = 112535},
		LoadedDice = {spellID = 256170, talentID = 112542},
		SleightofHand = {spellID = 381839, talentID = 112537},
		ThiefsVersatility = {spellID = 381619, talentID = 112645},
		ImprovedBetweentheEyes = {spellID = 235484, talentID = 112558},
		Audacity = {spellID = 381845, talentID = 112527},
		TripleThreat = {spellID = 381894, talentID = 112566},
		ImprovedAdrenalineRush = {spellID = 395422, talentID = 112540},
		ImprovedMainGauche = {spellID = 382746, talentID = 112555},
		DancingSteel = {spellID = 272026, talentID = 112556},
		UnderhandedUpperhand = {spellID = 424044, talentID = 112565},
		BladeRush = {spellID = 271877, talentID = 112551},
		CounttheOdds = {spellID = 381982, talentID = 112541},
		AceUpYourSleeve = {spellID = 381828, talentID = 112557},
		PreciseCuts = {spellID = 381985, talentID = 112554},
		TakeembySurprise = {spellID = 382742, talentID = 112563},
		SummarilyDispatched = {spellID = 381990, talentID = 112539},
		FantheHammer = {spellID = 381846, talentID = 112553},
		HiddenOpportunity = {spellID = 383281, talentID = 112562},
		Crackshot = {spellID = 423703, talentID = 117148},
		KeepItRolling = {spellID = 381989, talentID = 112538},
		GhostlyStrike = {spellID = 196937, talentID = 112530},
		GreenskinsWickers = {spellID = 386823, talentID = 112552},
	--Hero
	--Fatebound
		HandofFate = {spellID = 452536, talentID = 117722},
		ChosensRevelry = {spellID = 454300, talentID = 117735},
		TemptedFate = {spellID = 454286, talentID = 125132},
		MeanStreak = {spellID = 453428, talentID = 117719},
		InexorableMarch = {spellID = 454432, talentID = 117727},
		DeathsArrival = {spellID = 454433, talentID = 125140},
		DealFate = {spellID = 454419, talentID = 117704},
		EdgeCase = {spellID = 453457, talentID = 117736},
		FateIntertwined = {spellID = 454429, talentID = 117717},
		DeliveredDoom = {spellID = 454426, talentID = 117716},
		InevitabileEnd = {spellID = 454434, talentID = 117711},
		DestinyDefined = {spellID = 454435, talentID = 125139},
		DoubleJeopardy = {spellID = 454430, talentID = 117726},
		FatefulEnding = {spellID = 454428, talentID = 117724},
	--Trickster
		UnseenBlade = {spellID = 441146, talentID = 117737},
		SurprisingStrikes = {spellID = 441273, talentID = 117718},
		Smoke = {spellID = 441247, talentID = 117738},
		Mirrors = {spellID = 441250, talentID = 120130},
		FlawlessForm = {spellID = 441321, talentID = 117708},
		SoTricky = {spellID = 441403, talentID = 117731},
		DontBeSuspicious = {spellID = 441415, talentID = 120133},
		DeviousDistractions = {spellID = 441263, talentID = 117730},
		ThousandCuts = {spellID = 441346, talentID = 117734},
		Flickerstrike = {spellID = 441359, talentID = 120131},
		DisorientingStrikes = {spellID = 441274, talentID = 117715},
		CloudCover = {spellID = 441429, talentID = 117713},
		NoScruples = {spellID = 441398, talentID = 120132},
		NimbleFlurry = {spellID = 441367, talentID = 117725},
		CoupdeGrace = {spellID = 441423, talentID = 117712},
	}
	ids.Out_PvPTalent = {
		Maneuverability = 197000,
		TakeYourCut = 198265,
		ControlisKing = 212217,
		DrinkUpMeHearties = 212210,
		CheapTricks = 212035,
		Dismantle = 207777,
		PlunderArmor = 198529,
		BoardingParty = 209752,
		ThickasThieves = 221622,
		TurntheTables = 198020,
		HonorAmongThieves = 198032,
		SmokeBomb = 212182,
		DeathfromAbove = 269513,
	}
	ids.Out_Form = {

	}
	ids.Out_Buff = {
		AdrenalineRush = 13750,
		Audacity = 386270,
		BetweentheEyes = 315341,
		BladeFlurry = 13877,
		Broadside = 193356,
		BuriedTreasure = 199600,
		Dreadblades = 343142,
		EchoingReprimand = 470671,
		InstantPoison = 315584,
		GrandMelee = 193358,
		LoadedDice = 256171,
		Opportunity = 195627,
		RuthlessPrecision = 193357,
		Sepsis = 347037,
		ShadowDance = 185422,
		SkullandCrossbones = 199603,
		SliceandDice = 315496,
		Subterfuge = 115192,
		TrueBearing = 193359,
		WoundPoison = 8679,
	}
	ids.Out_Debuff = {
		Fazed = 441224,
		GhostlyStrike = 196937,
		MarkedforDeath = 137619,
	}
	ids.Out_PetAbility = {

	}

--Subtlety
	ids.Sub_Ability = {
	--Poisons
		Poisons = {
			AtrophicPoison = {spellID = 381637, talentID = 112655},
			CripplingPoison = {spellID = 3408},
			InstantPoison = {spellID = 315584},
			NumbingPoison = {spellID = 5761, talentID = 112656},
			WoundPoison = {spellID = 8679},
		},
	--Rogue Baseline
		Ambush = {spellID = 8676},
		Backstab = {spellID = 53},
		CheapShot = {spellID = 1833},
		CrimsonVial = {spellID = 185311},
		Distract = {spellID = 1725},
		Eviscerate = {spellID = 196819},
		Feint = {spellID = 1966},
		Kick = {spellID = 1766},
		KidneyShot = {spellID = 408},
		PickLock = {spellID = 1804},
		PickPocket = {spellID = 921},
		Sap = {spellID = 6770},
		Shadowstep = {spellID = 36554},
		ShroudofConcealment = {spellID = 114018},
		SliceandDice = {spellID = 315496},
		Sprint = {spellID = 2983},
		Stealth = {spellID = 1784},
		Vanish = {spellID = 1856},
		--Passive
		SafeFall = {spellID = 1860},
	--Sublety Baseline
		BlackPowder = {spellID = 319175},
		Rupture = {spellID = 1943},
		ShadowDance = {spellID = 185313},
		Shadowstrike = {spellID = 185438},
		ShurikenStorm = {spellID = 197835},
		ShurikenToss = {spellID = 114014},
		SymbolsofDeath = {spellID = 212283},
		--Passive
		CuttotheChase = {spellID = 51667},
		MasteryExecutioner = {spellID = 76808},
		ShadowTechniques = {spellID = 196912},
	--Rogue
		Shiv = {spellID = 5938, talentID = 112630},
		Blind = {spellID = 2094, talentID = 112572},
		CloakofShadows = {spellID = 31224, talentID = 112585},
		Evasion = {spellID = 5277, talentID = 112657},
		Gouge = {spellID = 1776, talentID = 112631},
		AirborneIrritant = {spellID = 200733, talentID = 117740},
		ThrillSeeking = {spellID = 394931, talentID = 112583},
		MasterPoisoner = {spellID = 378436, talentID = 112521},
		Elusiveness = {spellID = 79008, talentID = 112632},
		CheatDeath = {spellID = 31230, talentID = 114737},
		TricksoftheTrade = {spellID = 57934, talentID = 112574},
		Blackjack = {spellID = 379005, talentID = 117143},
		ImprovedWoundPoison = {spellID = 319066, talentID = 112522},
		NimbleFingers = {spellID = 378427, talentID = 112635},
		ImprovedSprint = {spellID = 231691, talentID = 112636},
		Shadowrunner = {spellID = 378807, talentID = 112575},
		SuperiorMixture = {spellID = 423701, talentID = 117151},
		FleetFooted = {spellID = 378813, talentID = 112654},
		IronStomach = {spellID = 193546, talentID = 112634},
		UnbreakableStride = {spellID = 400804, talentID = 112638},
		Featherfoot = {spellID = 423683, talentID = 117146},
		RushedSetup = {spellID = 378803, talentID = 112646},
		Shadowheart = {spellID = 455131, talentID = 125615},
		DeadenedNerves = {spellID = 231719, talentID = 112633},
		GracefulGuile = {spellID = 423647, talentID = 117145},
		Stillshroud = {spellID = 423662, talentID = 117144},
		DeadlyPrecision = {spellID = 381542, talentID = 112652},
		VirulentPoisons = {spellID = 381543, talentID = 117150},
		AcrobaticStrikes = {spellID = 455143, talentID = 112644},
		ImprovedAmbush = {spellID = 381620, talentID = 112580},
		TightSpender = {spellID = 381621, talentID = 117152},
		LeechingPoison = {spellID = 280716, talentID = 112650},
		Lethality = {spellID = 382238, talentID = 112640},
		Recuperator = {spellID = 378996, talentID = 112526},
		Alacrity = {spellID = 193539, talentID = 112643},
		SoothingDarkness = {spellID = 393970, talentID = 112579},
		Vigor = {spellID = 14983, talentID = 112651},
		Supercharger = {spellID = 470347, talentID = 112525},
		Subterfuge = {spellID = 108208, talentID = 112576},
			Subterfuge_Stealth = {spellID = 115191, talentID = 112576},
		ThistleTea = {spellID = 381623, talentID = 112648},
		ColdBlood = {spellID = 382245, talentID = 112639},
		EchoingReprimand = {spellID = 470669, talentID = 112524},
		ForcedInduction = {spellID = 470668, talentID = 112523},
		DeeperStratagem = {spellID = 193531, talentID = 112642},
		WithoutaTrace = {spellID = 382513, talentID = 125614},
	--Subtlety
		FindWeakness = {spellID = 91023, talentID = 112578},
		ImprovedBackstab = {spellID = 319949, talentID = 112629},
		ShadowBlades = {spellID = 121471, talentID = 112614},
		ImprovedShurikenStorm = {spellID = 319951, talentID = 112598},
		ShotintheDark = {spellID = 257505, talentID = 112586},
		QuickDecisions = {spellID = 382503, talentID = 112616},
		EphemeralBond = {spellID = 426563, talentID = 112613},
		ExhilaratingExecution = {spellID = 428486, talentID = 112599},
		ShroudedinDarkness = {spellID = 382507, talentID = 112588},
		ShadowFocus = {spellID = 108209, talentID = 112615},
		CloakedinShadows = {spellID = 382515, talentID = 112622},
		FadetoNothing = {spellID = 382514, talentID = 112621},
		NightTerrors = {spellID = 277953, talentID = 117170},
		TerrifyingPace = {spellID = 428387, talentID = 117753},
		SwiftDeath = {spellID = 394309, talentID = 112589},
		ImprovedShadowTechniques = {spellID = 394023, talentID = 112626},
		Gloomblade = {spellID = 200758, talentID = 112587},
		ImprovedShadowDance = {spellID = 393972, talentID = 112623},
		SecretTechnique = {spellID = 280719, talentID = 112603},
		RelentlessStrikes = {spellID = 58423, talentID = 112597},
		SilentStorm = {spellID = 385722, talentID = 112602},
		Premeditation = {spellID = 343160, talentID = 112627},
		PlannedExecution = {spellID = 382508, talentID = 112591},
		WarningSigns = {spellID = 426555, talentID = 117172},
		DoubleDance = {spellID = 394930, talentID = 125619},
		ShadowedFinishers = {spellID = 382511, talentID = 112611},
		SecretStratagem = {spellID = 394320, talentID = 112610},
		ReplicatingShadows = {spellID = 382506, talentID = 112605},
		Weaponmaster = {spellID = 193537, talentID = 112628},
		TheFirstDance = {spellID = 382505, talentID = 112625},
		MasterofShadows = {spellID = 196976, talentID = 112624},
		DeepeningShadows = {spellID = 185314, talentID = 112612},
		Veiltouched = {spellID = 382017, talentID = 112601},
		ShurikenTornado = {spellID = 277925, talentID = 112604},
		Inevitability = {spellID = 382512, talentID = 112592},
		PerforatedVeins = {spellID = 382518, talentID = 112595},
		LingeringShadow = {spellID = 382524, talentID = 112619},
		DeeperDaggers = {spellID = 382517, talentID = 112609},
		Flagellation = {spellID = 384631, talentID = 112606},
		DeathPerception = {spellID = 469642, talentID = 112594},
		DarkShadow = {spellID = 245687, talentID = 112620},
		Finality = {spellID = 382525, talentID = 112608},
		TheRotten = {spellID = 382015, talentID = 112593},
		Shadowcraft = {spellID = 426594, talentID = 117168},
		DanseMacabre = {spellID = 382528, talentID = 112618},
		GoremawsBite = {spellID = 426591, talentID = 117169},
		DarkBrew = {spellID = 382504, talentID = 112607},
	--Hero
	--Deathstalker
		DeathstalkersMark = {spellID = 457052, talentID = 117733},
		CleartheWitnesses = {spellID = 457053, talentID = 117707},
		HuntThemDown = {spellID = 457054, talentID = 117729},
		SingularFocus = {spellID = 457055, talentID = 117714},
		FatalIntent = {spellID = 461980, talentID = 117732},
		CorrupttheBlood = {spellID = 457066, talentID = 117705},
		LingeringDarkness = {spellID = 457056, talentID = 117706},
		SymbolicVictory = {spellID = 457062, talentID = 126030},
		EtherealCloak = {spellID = 457022, talentID = 117703},
		BaitandSwitch = {spellID = 457034, talentID = 126029},
		MomentumofDespair = {spellID = 457067, talentID = 117728},
		FollowtheBlood = {spellID = 457068, talentID = 126028},
		Shadewalker = {spellID = 457057, talentID = 117720},
		ShroudofNight = {spellID = 457063, talentID = 126027},
		DarkestNight = {spellID = 457058, talentID = 117739},
	--Trickster
		UnseenBlade = {spellID = 441146, talentID = 117737},
		SurprisingStrikes = {spellID = 441273, talentID = 117718},
		Smoke = {spellID = 441247, talentID = 117738},
		Mirrors = {spellID = 441250, talentID = 120130},
		FlawlessForm = {spellID = 441321, talentID = 117708},
		SoTricky = {spellID = 441403, talentID = 117731},
		DontBeSuspicious = {spellID = 441415, talentID = 120133},
		DeviousDistractions = {spellID = 441263, talentID = 117730},
		ThousandCuts = {spellID = 441346, talentID = 117734},
		Flickerstrike = {spellID = 441359, talentID = 120131},
		DisorientingStrikes = {spellID = 441274, talentID = 117715},
		CloudCover = {spellID = 441429, talentID = 117713},
		NoScruples = {spellID = 441398, talentID = 120132},
		NimbleFlurry = {spellID = 441367, talentID = 117725},
		CoupdeGrace = {spellID = 441423, talentID = 117712},
	}
	ids.Sub_PvPTalent = {

	}
	ids.Sub_Form = {
		Premeditation = 343173,
	}
	ids.Sub_Buff = {
		CleartheWitnesses = 457178,
		ColdBlood = 382245,
		DarkestNight = 457280,
		EchoingReprimand = 470671,
		Flagellation = 384631,
		InstantPoison = 315584,
		ShadowBlades = 121471,
		ShadowDance = 185422,
		SliceandDice = 315496,
		SymbolsofDeath = 212283,
		Vanish = 11327,
		WoundPoison = 8679,
	}
	ids.Sub_Debuff = {
		Fazed = 441224,
		FindWeakness = 91021,
		Nightblade = 195452,
		Rupture = 1943,
	}
	ids.Sub_PetAbility = {

	}
