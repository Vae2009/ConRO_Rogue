local ConRO_Rogue, ids = ...;

--General
ids.racial = {
	ancestral_call = {
		spellID = 274738
	},
	arcane_pulse = {
		spellID = 260364
	},
	arcane_torrent = {
		spellID = 50613
	},
	berserking = {
		spellID = 26297
	},
	cannibalize = {
		spellID = 20577
	},
	gift_of_the_naaru = {
		spellID = 59548
	},
	shadowmeld = {
		spellID = 58984
	},
	warstomp = {
		spellID = 20549
	},
}
ids.hero_spec = {
	trickster = 51,
	fatebound = 52,
	deathstalker = 53,
}

ids.assassination = {
	ability = {
	--Poisons
		Poisons = {
			AmplifyingPoison = {spellID = 381664, talentID = 112505},
			AtrophicPoison = {spellID = 381637, talentID = 112655},
			DeadlyPoison = {spellID = 2823, talentID = 112676},
			NumbingPoison = {spellID = 5761, talentID = 112656},
		},
	--Baseline
		Ambush = {spellID = 8676},
		CheapShot = {spellID = 1833},
		CrimsonVial = {spellID = 185311},
		Distract = {spellID = 1725},
		Envenom = {spellID = 32645},
		Eviscerate = {spellID = 196819},
		FanofKnives = {spellID = 51723},
		Feint = {spellID = 1966},
		Garrote = {spellID = 703},
		Kick = {spellID = 1766},
		KidneyShot = {spellID = 408},
		Mutilate = {spellID = 1329},
		PickLock = {spellID = 1804},
		PickPocket = {spellID = 921},
		--Poisons
			CripplingPoison = {spellID = 3408},
			InstantPoison = {spellID = 315584},
			WoundPoison = {spellID = 8679},
		PoisonedKnife = {spellID = 185565},
		Rupture = {spellID = 1943},
		Sap = {spellID = 6770},
		Shadowstep = {spellID = 36554},
		ShroudofConcealment = {spellID = 114018},
		SliceandDice = {spellID = 315496},
		Sprint = {spellID = 2983},
		Stealth = {spellID = 1784},
		Vanish = {spellID = 1856},
	--Passive
		CuttotheChase = {spellID = 51667},
		MasteryPotentAssassin = {spellID = 76803},
		SafeFall = {spellID = 1860},
	--Rogue Talents
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
	--Assassination Talents
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
	--Hero Talents
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
	},
	pvp_talent = {

	},
	buff = {
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
		IndiscriminateCarnageForm = 385754,
		IndiscriminateCarnage = 385747,
		InstantPoison = 315584,
		InternalBleeding = 154953,
		MasterAssassin = 256735,
		Sepsis = 347037,
		ShadowDance = 185422,
		SliceandDice = 315496,
		Stealth = 1784,
		Subterfuge = 115192,
		Vanish = 11327,
		WoundPoison = 8679,
	},
	debuff = {
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
	},
}

ids.outlaw = {
	ability = {
	--Baseline
		ambush = {
			spellID = 8676
		},
		backstab = {
			spellID = 53
		},
		between_the_eyes = {
			spellID = 315341
		},
		blade_flurry = {
			spellID = 13877
		},
		cheap_shot = {
			spellID = 1833
		},
		crimson_vial = {
			spellID = 185311
		},
		dispatch = {
			spellID = 2098
		},
		distract = {
			spellID = 1725
		},
		eviscerate = {
			spellID = 196819
		},
		feint = {
			spellID = 1966
		},
		grappling_hook = {
			spellID = 195457
		},
		kick = {
			spellID = 1766
		},
		kidney_shot = {
			spellID = 408
		},
		pick_lock = {
			spellID = 1804
		},
		pick_pocket = {
			spellID = 921
		},
		pistol_shot = {
			spellID = 185763
		},
		--Poisons
			crippling_poison = {
				spellID = 3408
			},
			instant_poison = {
				spellID = 315584
			},
			wound_poison = {
				spellID = 8679
			},
		roll_the_bones = {
			spellID = 315508
		},
		sap = {
			spellID = 6770
		},
		shroud_of_concealment = {
			spellID = 114018
		},
		sinister_strike = {
			spellID = 193315
		},
		slice_and_dice = {
			spellID = 315496
		},
		sprint = {
			spellID = 2983
		},
		stealth = {
			spellID = 1784
		},
		vanish = {
			spellID = 1856
		},
	--Passive
		cut_to_the_chase = {
			spellID = 51667
		},
		mastery_main_gauche = {
			spellID = 76806
		},
		restless_blades = {
			spellID = 79096
		},
		safeFall = {
			spellID = 1860
		},
	--Rogue Talents
		shiv = {
			spellID = 5938,
			talentID = 112630
		},
		blind = {
			spellID = 2094,
			talentID = 112572
		},
		cloak_of_shadows = {
			spellID = 31224,
			talentID = 112585
		},
		evasion = {
			spellID = 5277,
			talentID = 112657
		},
		gouge = {
			spellID = 1776,
			talentID = 112631
		},
		airborne_irritant = {
			talentID = 117740
		},
		thrill_seeking = {
			talentID = 112583
		},
		master_poisoner = {
			talentID = 112521
		},
		elusiveness = {
			talentID = 112632
		},
		cheat_death = {
			talentID = 114737
		},
		tricks_of_the_trade = {
			spellID = 57934,
			talentID = 112574
		},
		blackjack = {
			spellID = 379005,
			talentID = 117143
		},
		improved_wound_poison = {
			spellID = 319066,
			talentID = 112522
		},
		nimble_fingers = {
			spellID = 378427,
			talentID = 112635
		},
		improved_sprint = {
			spellID = 231691,
			talentID = 112636
		},
		shadowrunner = {
			spellID = 378807,
			talentID = 112575
		},
		superior_mixture = {
			spellID = 423701,
			talentID = 117151
		},
		fleet_footed = {
			spellID = 378813,
			talentID = 112654
		},
		iron_stomach = {
			spellID = 193546,
			talentID = 112634
		},
		unbreakable_stride = {
			spellID = 400804,
			talentID = 112638
		},
		featherfoot = {
			spellID = 423683,
			talentID = 117146
		},
		rushed_setup = {
			spellID = 378803,
			talentID = 112646
		},
		shadowheart = {
			spellID = 455131,
			talentID = 125615
		},
		numbing_poison = {
			spellID = 5761,
			talentID = 112656
		},
		atrophic_poison = {
			spellID = 381637,
			talentID = 112655
		},
		deadened_nerves = {
			spellID = 231719,
			talentID = 112633
		},
		graceful_guile = {
			spellID = 423647,
			talentID = 117145
		},
		stillshroud = {
			spellID = 423662,
			talentID = 117144
		},
		deadly_precision = {
			spellID = 381542,
			talentID = 112652
		},
		virulent_poisons = {
			spellID = 381543,
			talentID = 117150
		},
		acrobatic_strikes = {
			spellID = 455143,
			talentID = 112644
		},
		improved_ambush = {
			spellID = 381620,
			talentID = 112580
		},
		tight_spender = {
			spellID = 381621,
			talentID = 117152
		},
		leeching_poison = {
			spellID = 280716,
			talentID = 112650
		},
		lethality = {
			spellID = 382238,
			talentID = 112640
		},
		recuperator = {
			spellID = 378996,
			talentID = 112526
		},
		alacrity = {
			spellID = 193539,
			talentID = 112643
		},
		soothing_darkness = {
			spellID = 393970,
			talentID = 112579
		},
		vigor = {
			spellID = 14983,
			talentID = 112651
		},
		supercharger = {
			spellID = 470347,
			talentID = 112525
		},
		subterfuge = {
			passiveID = 108208,
			spellID = 115191,
			talentID = 112576
		},
		thistle_tea = {
			spellID = 381623,
			talentID = 112648
		},
		cold_blood = {
			spellID = 382245,
			talentID = 112639
		},
		echoing_reprimand = {
			spellID = 470669,
			talentID = 112524
		},
		forced_induction = {
			spellID = 470668,
			talentID = 112523
		},
		deeper_stratagem = {
			spellID = 193531,
			talentID = 112642
		},
		without_a_trace = {
			spellID = 382513,
			talentID = 125614
		},
	--Outlaw Talents
		opportunity = {
			spellID = 279876,
			talentID = 112571
		},
		adrenaline_rush = {
			spellID = 13750,
			talentID = 112545
		},
		retractable_hook = {
			spellID = 256188,
			talentID = 112569
		},
		dirty_tricks = {
			spellID = 108216,
			talentID = 112531
		},
		combat_potency = {
			spellID = 61329,
			talentID = 112532
		},
		combat_stamina = {
			spellID = 381877,
			talentID = 112534
		},
		hit_and_run = {
			spellID = 196922,
			talentID = 112560
		},
		blinding_powder = {
			spellID = 256165,
			talentID = 112529
		},
		float_like_a_butterfly = {
			spellID = 354897,
			talentID = 112647
		},
		sting_like_a_bee = {
			spellID = 131511,
			talentID = 117173
		},
		riposte = {
			spellID = 344363,
			talentID = 112547
		},
		precision_shot = {
			spellID = 428377,
			talentID = 112533
		},
		heavy_hitter = {
			spellID = 381885,
			talentID = 112528
		},
		devious_stratagem = {
			spellID = 394321,
			talentID = 112567
		},
		killing_spree = {
			spellID = 51690,
			talentID = 117149
		},
		fatal_flourish = {
			spellID = 35551,
			talentID = 112548
		},
		ambidexterity = {
			spellID = 381822,
			talentID = 112546
		},
		quick_draw = {
			spellID = 196938,
			talentID = 112549
		},
		deft_maneuvers = {
			spellID = 381878,
			talentID = 112559
		},
		ruthlessness = {
			spellID = 14161,
			talentID = 112568
		},
		swift_slasher = {
			spellID = 381988,
			talentID = 112535
		},
		loaded_dice = {
			spellID = 256170,
			talentID = 112542
		},
		sleight_of_hand = {
			spellID = 381839,
			talentID = 112537
		},
		thiefs_versatility = {
			spellID = 381619,
			talentID = 112645
		},
		improved_between_the_eyes = {
			spellID = 235484,
			talentID = 112558
		},
		audacity = {
			passiveID = 381845,
			spellID = 430023,
			talentID = 112527
		},
		triple_threat = {
			spellID = 381894,
			talentID = 112566
		},
		improved_adrenaline_rush = {
			spellID = 395422,
			talentID = 112540
		},
		improved_main_gauche = {
			spellID = 382746,
			talentID = 112555
		},
		dancing_steel = {
			spellID = 272026,
			talentID = 112556
		},
		underhanded_upperhand = {
			spellID = 424044,
			talentID = 112565
		},
		blade_rush = {
			spellID = 271877,
			talentID = 112551
		},
		count_the_odds = {
			spellID = 381982,
			talentID = 112541
		},
		ace_up_your_sleeve = {
			spellID = 381828,
			talentID = 112557
		},
		precise_cuts = {
			spellID = 381985,
			talentID = 112554
		},
		take_em_by_surprise = {
			spellID = 382742,
			talentID = 112563
		},
		summarily_dispatched = {
			spellID = 381990,
			talentID = 112539
		},
		fan_the_hammer = {
			spellID = 381846,
			talentID = 112553
		},
		hidden_opportunity = {
			spellID = 383281,
			talentID = 112562
		},
		crackshot = {
			spellID = 423703,
			talentID = 117148
		},
		keep_it_rolling = {
			spellID = 381989,
			talentID = 112538
		},
		ghostly_strike = {
			spellID = 196937,
			talentID = 112530
		},
		greenskins_wickers = {
			spellID = 386823,
			talentID = 112552
		},
	--Hero Talents
	--Fatebound
		hand_of_fate = {
			spellID = 452536,
			talentID = 117722
		},
		chosens_revelry = {
			spellID = 454300,
			talentID = 117735
		},
		tempted_fate = {
			spellID = 454286,
			talentID = 125132
		},
		mean_streak = {
			spellID = 453428,
			talentID = 117719
		},
		inexorable_march = {
			spellID = 454432,
			talentID = 117727
		},
		deaths_arrival = {
			spellID = 454433,
			talentID = 125140
		},
		deal_fate = {
			spellID = 454419,
			talentID = 117704
		},
		edge_case = {
			spellID = 453457,
			talentID = 117736
		},
		fate_intertwined = {
			spellID = 454429,
			talentID = 117717
		},
		delivered_doom = {
			spellID = 454426,
			talentID = 117716
		},
		inevitabile_end = {
			spellID = 454434,
			talentID = 117711
		},
		destiny_defined = {
			spellID = 454435,
			talentID = 125139
		},
		double_jeopardy = {
			spellID = 454430,
			talentID = 117726
		},
		fateful_ending = {
			spellID = 454428,
			talentID = 117724},
	--Trickster
		unseen_blade = {
			spellID = 441146,
			talentID = 117737
		},
		surprising_strikes = {
			spellID = 441273,
			talentID = 117718
		},
		smoke = {
			spellID = 441247,
			talentID = 117738
		},
		mirrors = {
			spellID = 441250,
			talentID = 120130
		},
		flawless_form = {
			spellID = 441321,
			talentID = 117708
		},
		so_tricky = {
			spellID = 441403,
			talentID = 117731
		},
		dont_be_suspicious = {
			spellID = 441415,
			talentID = 120133
		},
		devious_distractions = {
			spellID = 441263,
			talentID = 117730
		},
		thousand_cuts = {
			spellID = 441346,
			talentID = 117734
		},
		flickerstrike = {
			spellID = 441359,
			talentID = 120131
		},
		disorienting_strikes = {
			spellID = 441274,
			talentID = 117715
		},
		cloud_cover = {
			spellID = 441429,
			talentID = 117713
		},
		no_scruples = {
			spellID = 441398,
			talentID = 120132
		},
		nimble_flurry = {
			spellID = 441367,
			talentID = 117725
		},
		coup_de_grace = {
			passiveID = 441423,
			spellID = 441776,
			talentID = 117712
		},
	},
	pvptalent = {
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
	},
	buff = {
		adrenaline_rush = 13750,
		audacity = 386270,
		between_the_eyes = 315341,
		blade_flurry = 13877,
		broadside = 193356,
		buried_treasure = 199600,
		dreadblades = 343142,
		echoing_reprimand = 470671,
		instant_poison = 315584,
		grand_melee = 193358,
		loaded_dice = 256171,
		opportunity = 195627,
		ruthless_precision = 193357,
		sepsis = 347037,
		shadow_dance = 185422,
		skull_and_crossbones = 199603,
		slice_and_dice = 315496,
		subterfuge = 115192,
		true_bearing = 193359,
		wound_poison = 8679,
	},
	debuff = {
		fazed = 441224,
		ghostly_strike = 196937,
		marked_for_death = 137619,
	},
}

ids.subtlety = {
	ability = {
	--Baseline
		ambush = {
			spellID = 8676
		},
		backstab = {
			spellID = 53
		},
		black_powder = {
			spellID = 319175
		},
		cheap_shot = {
			spellID = 1833
		},
		crimson_vial = {
			spellID = 185311
		},
		distract = {
			spellID = 1725
		},
		eviscerate = {
			spellID = 196819
		},
		feint = {
			spellID = 1966
		},
		kick = {
			spellID = 1766
		},
		kidney_shot = {
			spellID = 408
		},
		pick_lock = {
			spellID = 1804
		},
		pick_pocket = {
			spellID = 921
		},
		--Poisons
			crippling_poison = {
				spellID = 3408
			},
			instant_poison = {
				spellID = 315584
			},
			wound_poison = {
				spellID = 8679
			},
		rupture = {
			spellID = 1943
		},
		sap = {
			spellID = 6770
		},
		shadow_dance = {
			spellID = 185313
		},
		shadowstep = {
			spellID = 36554
		},
		shadowstrike = {
			spellID = 185438
		},
		shroud_of_concealment = {
			spellID = 114018
		},
		shuriken_storm = {
			spellID = 197835
		},
		shuriken_toss = {
			spellID = 114014
		},
		slice_and_dice = {
			spellID = 315496
		},
		sprint = {
			spellID = 2983
		},
		stealth = {
			spellID = 1784
		},
		symbols_of_death = {
			spellID = 212283
		},
		vanish = {
			spellID = 1856
		},
	--Passive
		cut_to_the_chase = {
			spellID = 51667
		},
		mastery_executioner = {
			spellID = 76808
		},
		safe_fall = {
			spellID = 1860
		},
		shadow_techniques = {
			spellID = 196912
		},
	--Rogue Talents
		shiv = {
			spellID = 5938,
			talentID = 112630
		},
		blind = {
			spellID = 2094,
			talentID = 112572
		},
		cloak_of_shadows = {
			spellID = 31224,
			talentID = 112585
		},
		evasion = {
			spellID = 5277,
			talentID = 112657
		},
		gouge = {
			spellID = 1776,
			talentID = 112631
		},
		airborne_irritant = {
			talentID = 117740
		},
		thrill_seeking = {
			talentID = 112583
		},
		master_poisoner = {
			talentID = 112521
		},
		elusiveness = {
			talentID = 112632
		},
		cheat_death = {
			talentID = 114737
		},
		tricks_of_the_trade = {
			spellID = 57934,
			talentID = 112574
		},
		blackjack = {
			spellID = 379005,
			talentID = 117143
		},
		improved_wound_poison = {
			spellID = 319066,
			talentID = 112522
		},
		nimble_fingers = {
			spellID = 378427,
			talentID = 112635
		},
		improved_sprint = {
			spellID = 231691,
			talentID = 112636
		},
		shadowrunner = {
			spellID = 378807,
			talentID = 112575
		},
		superior_mixture = {
			spellID = 423701,
			talentID = 117151
		},
		fleet_footed = {
			spellID = 378813,
			talentID = 112654
		},
		iron_stomach = {
			spellID = 193546,
			talentID = 112634
		},
		unbreakable_stride = {
			spellID = 400804,
			talentID = 112638
		},
		featherfoot = {
			spellID = 423683,
			talentID = 117146
		},
		rushed_setup = {
			spellID = 378803,
			talentID = 112646
		},
		shadowheart = {
			spellID = 455131,
			talentID = 125615
		},
		numbing_poison = {
			spellID = 5761,
			talentID = 112656
		},
		atrophic_poison = {
			spellID = 381637,
			talentID = 112655
		},
		deadened_nerves = {
			spellID = 231719,
			talentID = 112633
		},
		graceful_guile = {
			spellID = 423647,
			talentID = 117145
		},
		stillshroud = {
			spellID = 423662,
			talentID = 117144
		},
		deadly_precision = {
			spellID = 381542,
			talentID = 112652
		},
		virulent_poisons = {
			spellID = 381543,
			talentID = 117150
		},
		acrobatic_strikes = {
			spellID = 455143,
			talentID = 112644
		},
		improved_ambush = {
			spellID = 381620,
			talentID = 112580
		},
		tight_spender = {
			spellID = 381621,
			talentID = 117152
		},
		leeching_poison = {
			spellID = 280716,
			talentID = 112650
		},
		lethality = {
			spellID = 382238,
			talentID = 112640
		},
		recuperator = {
			spellID = 378996,
			talentID = 112526
		},
		alacrity = {
			spellID = 193539,
			talentID = 112643
		},
		soothing_darkness = {
			spellID = 393970,
			talentID = 112579
		},
		vigor = {
			spellID = 14983,
			talentID = 112651
		},
		supercharger = {
			spellID = 470347,
			talentID = 112525
		},
		subterfuge = {
			passiveID = 108208,
			spellID = 115191,
			talentID = 112576
		},
		thistle_tea = {
			spellID = 381623,
			talentID = 112648
		},
		cold_blood = {
			spellID = 382245,
			talentID = 112639
		},
		echoing_reprimand = {
			spellID = 470669,
			talentID = 112524
		},
		forced_induction = {
			spellID = 470668,
			talentID = 112523
		},
		deeper_stratagem = {
			spellID = 193531,
			talentID = 112642
		},
		without_a_trace = {
			spellID = 382513,
			talentID = 125614
		},
	--Subtlety Talents
		find_weakness = {
			talentID = 112578
		},
		improved_backstab = {
			talentID = 112629
		},
		shadow_blades = {
			spellID = 121471,
			talentID = 112614
		},
		improved_shuriken_storm = {
			talentID = 112598
		},
		shot_in_the_dark = {
			talentID = 112586
		},
		quick_decisions = {
			talentID = 112616
		},
		ephemeral_bond = {
			talentID = 112613
		},
		exhilarating_execution = {
			talentID = 112599
		},
		shrouded_in_darkness = {
			talentID = 112588
		},
		shadow_focus = {
			talentID = 112615
		},
		cloaked_in_shadows = {
			talentID = 112622
		},
		fade_to_nothing = {
			talentID = 112621
		},
		night_terrors = {
			talentID = 117170
		},
		terrifying_pace = {
			talentID = 117753
		},
		swift_death = {
			talentID = 112589
		},
		improved_shadow_techniques = {
			talentID = 112626
		},
		gloomblade = {
			spellID = 200758,
			talentID = 112587
		},
		improved_shadow_dance = {
			talentID = 112623
		},
		secret_technique = {
			spellID = 280719,
			talentID = 112603
		},
		relentless_strikes = {
			talentID = 112597
		},
		silent_storm = {
			talentID = 112602
		},
		premeditation = {
			talentID = 112627
		},
		planned_execution = {
			talentID = 112591
		},
		warning_signs = {
			talentID = 117172
		},
		double_dance = {
			talentID = 125619
		},
		shadowed_finishers = {
			talentID = 112611
		},
		secret_stratagem = {
			talentID = 112610
		},
		replicating_shadows = {
			talentID = 112605
		},
		weaponmaster = {
			talentID = 112628
		},
		the_first_dance = {
			talentID = 112625
		},
		master_of_shadows = {
			talentID = 112624
		},
		deepening_shadows = {
			talentID = 112612
		},
		veiltouched = {
			talentID = 112601
		},
		shuriken_tornado = {
			spellID = 277925,
			talentID = 112604
		},
		inevitability = {
			talentID = 112592
		},
		perforated_veins = {
			talentID = 112595
		},
		lingering_shadow = {
			talentID = 112619
		},
		deeper_daggers = {
			talentID = 112609
		},
		flagellation = {
			spellID = 384631,
			talentID = 112606
		},
		death_perception = {
			talentID = 112594
		},
		dark_shadow = {
			talentID = 112620
		},
		finality = {
			talentID = 112608
		},
		the_rotten = {
			talentID = 112593
		},
		shadowcraft = {
			talentID = 117168
		},
		danse_macabre = {
			talentID = 112618
		},
		goremaws_bite = {
			spellID = 426591,
			talentID = 117169
		},
		dark_brew = {
			talentID = 112607
		},
	--Hero Talents
	--Deathstalker
		deathstalkers_mark = {
			talentID = 117733
		},
		clear_the_witnesses = {
			talentID = 117707
		},
		hunt_them_down = {
			talentID = 117729
		},
		singular_focus = {
			talentID = 117714
		},
		fatal_intent = {
			talentID = 117732
		},
		corrupt_the_blood = {
			talentID = 117705
		},
		lingering_darkness = {
			talentID = 117706
		},
		symbolic_victory = {
			talentID = 126030
		},
		ethereal_cloak = {
			talentID = 117703
		},
		bait_and_switch = {
			talentID = 126029
		},
		momentum_of_despair = {
			talentID = 117728
		},
		follow_the_blood = {
			talentID = 126028
		},
		shadewalker = {
			talentID = 117720
		},
		shroud_of_night = {
			talentID = 126027
		},
		darkest_night = {
			talentID = 117739
		},
	--Trickster
		unseen_blade = {
			spellID = 441146,
			talentID = 117737
		},
		surprising_strikes = {
			spellID = 441273,
			talentID = 117718
		},
		smoke = {
			spellID = 441247,
			talentID = 117738
		},
		mirrors = {
			spellID = 441250,
			talentID = 120130
		},
		flawless_form = {
			spellID = 441321,
			talentID = 117708
		},
		so_tricky = {
			spellID = 441403,
			talentID = 117731
		},
		dont_be_suspicious = {
			spellID = 441415,
			talentID = 120133
		},
		devious_distractions = {
			spellID = 441263,
			talentID = 117730
		},
		thousand_cuts = {
			spellID = 441346,
			talentID = 117734
		},
		flickerstrike = {
			spellID = 441359,
			talentID = 120131
		},
		disorienting_strikes = {
			spellID = 441274,
			talentID = 117715
		},
		cloud_cover = {
			spellID = 441429,
			talentID = 117713
		},
		no_scruples = {
			spellID = 441398,
			talentID = 120132
		},
		nimble_flurry = {
			spellID = 441367,
			talentID = 117725
		},
		coup_de_grace = {
			passiveID = 441423,
			spellID = 441776,
			talentID = 117712
		},
	},
	pvp_talent = {

	},
	buff = {
		clear_the_witnesses = 457178,
		cold_blood = 382245,
		darkest_night = 457280,
		echoing_reprimand = 470671,
		escalating_blade = 441786,
		flagellation = 384631,
		instant_poison = 315584,
		premeditation = 343173,
		shadow_blades = 121471,
		shadow_dance = 185422,
		slice_and_dice = 315496,
		symbols_of_death = 212283,
		vanish = 11327,
		wound_poison = 8679,
	},
	debuff = {
		fazed = 441224,
		find_weakness = 91021,
		nightblade = 195452,
		rupture = 1943,
	}
}
	--[[function ConRO:UpdateSpellList()
		do

		end
	end]]