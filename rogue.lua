ConRO.Rogue = {};
ConRO.Rogue.CheckTalents = function()
end
ConRO.Rogue.CheckPvPTalents = function()
end
local ConRO_Rogue, ids = ...;
local Ability, Buff, Debuff, PvPTalent = _, _, _, _;

function ConRO:EnableRotationModule(mode)
	mode = mode or 0;
	self.ModuleOnEnable = ConRO.Rogue.CheckTalents;
	self.ModuleOnEnable = ConRO.Rogue.CheckPvPTalents;
	if mode == 0 then
		self.Description = "Rogue [No Specialization Under 10]";
		self.NextSpell = ConRO.Rogue.Disabled;
		self.NextDef = ConRO.Rogue.Disabled;
		self.ToggleHealer();
	end;
    if mode == 1 then
	    self.Description = 'Rogue [Assassination]';
		if ConRO.db.profile._Spec_1_Enabled then
			Ability, Buff, Debuff, PvPTalent = ids.assassination.ability, ids.assassination.buff, ids.assassination.debuff, ids.assassination.pvptalent;
			self.NextSpell = ConRO.Rogue.Assassination;
			self.NextDef = ConRO.Rogue.AssassinationDef;
			self.ToggleDamage();
			ConROWindow:SetAlpha(ConRO.db.profile.transparencyWindow);
			ConRODefenseWindow:SetAlpha(ConRO.db.profile.transparencyWindow);
		else
			self.NextSpell = ConRO.Rogue.Disabled;
			self.NextDef = ConRO.Rogue.Disabled;
			self.ToggleHealer();
			ConROWindow:SetAlpha(0);
			ConRODefenseWindow:SetAlpha(0);
		end
    end;
    if mode == 2 then
	    self.Description = 'Rogue [Outlaw]';
		if ConRO.db.profile._Spec_2_Enabled then
			Ability, Buff, Debuff, PvPTalent = ids.outlaw.ability, ids.outlaw.buff, ids.outlaw.debuff, ids.outlaw.pvptalent;
			self.NextSpell = ConRO.Rogue.Outlaw;
			self.NextDef = ConRO.Rogue.OutlawDef;
			self.ToggleDamage();
			ConROWindow:SetAlpha(ConRO.db.profile.transparencyWindow);
			ConRODefenseWindow:SetAlpha(ConRO.db.profile.transparencyWindow);
		else
			self.NextSpell = ConRO.Rogue.Disabled;
			self.NextDef = ConRO.Rogue.Disabled;
			self.ToggleHealer();
			ConROWindow:SetAlpha(0);
			ConRODefenseWindow:SetAlpha(0);
		end
    end;
    if mode == 3 then
	    self.Description = 'Rogue [Sublety]';
		if ConRO.db.profile._Spec_3_Enabled then
			Ability, Buff, Debuff, PvPTalent = ids.subtlety.ability, ids.subtlety.buff, ids.subtlety.debuff, ids.subtlety.pvptalent;
			self.NextSpell = ConRO.Rogue.Subtlety;
			self.NextDef = ConRO.Rogue.SubletyDef;
			self.ToggleDamage();
			ConROWindow:SetAlpha(ConRO.db.profile.transparencyWindow);
			ConRODefenseWindow:SetAlpha(ConRO.db.profile.transparencyWindow);
		else
			self.NextSpell = ConRO.Rogue.Disabled;
			self.NextDef = ConRO.Rogue.Disabled;
			self.ToggleHealer();
			ConROWindow:SetAlpha(0);
			ConRODefenseWindow:SetAlpha(0);
		end
    end;
	self:RegisterEvent('UNIT_SPELLCAST_SUCCEEDED');
	self.lastSpellId = 0;
end

function ConRO:EnableDefenseModule(mode)

end

function ConRO:UNIT_SPELLCAST_SUCCEEDED(event, unitID, lineID, spellID)
	if unitID == 'player' then
		self.lastSpellId = spellID;
	end
end

function ConRO.Rogue.Disabled(_, timeShift, currentSpell, gcd, tChosen, pvpChosen)
	return nil;
end

--Info
local _Player_Level = UnitLevel("player");
local _Player_Percent_Health = ConRO:PercentHealth('player');
local _is_PvP = ConRO:IsPvP();
local _in_combat = UnitAffectingCombat('player');
local _party_size = GetNumGroupMembers();
local _is_PC = UnitPlayerControlled("target");
local _is_Enemy = ConRO:TarHostile();
local _Target_Health = UnitHealth('target');
local _Target_Percent_Health = ConRO:PercentHealth('target');

--Resources
local _Combo, _Combo_Max = ConRO:PlayerPower('Combo');
local _Energy, _Energy_Max, _Energy_Percent = ConRO:PlayerPower('Energy');
local trinket_1_id, trinket_1_usable, trinket_1_rdy, trinket_2_id, trinket_2_usable, trinket_2_rdy = ConRO:UsableTrinket()

--Conditions
local _Queue = 0;
local _is_moving = ConRO:PlayerSpeed();
local _enemies_in_melee, _target_in_melee = ConRO:Targets("Melee");
local _enemies_in_10yrds, _target_in_10yrds = ConRO:Targets("10");
local _enemies_in_25yrds, _target_in_25yrds = ConRO:Targets("25");
local _enemies_in_40yrds, _target_in_40yrds = ConRO:Targets("40");
local _can_Execute = _Target_Percent_Health < 20;

--Racials
local _AncestralCall, _AncestralCall_RDY = _, _;
local _ArcanePulse, _ArcanePulse_RDY = _, _;
local _ArcaneTorrent, _ArcaneTorrent_RDY = _, _;
local _Berserking, _Berserking_RDY = _, _;
local _Shadowmeld, _Shadowmeld_RDY = _, _;
	local _Shadowmeld_BUFF = _;

local HeroSpec, Racial = ids.hero_spec, ids.racial;

function ConRO:Stats()
	_Player_Level = UnitLevel("player");
	_Player_Percent_Health = ConRO:PercentHealth('player');
	_is_PvP = ConRO:IsPvP();
	_in_combat = UnitAffectingCombat('player');
	_party_size = GetNumGroupMembers();
	_is_PC = UnitPlayerControlled("target");
	_is_Enemy = ConRO:TarHostile();
	_Target_Health = UnitHealth('target');
	_Target_Percent_Health = ConRO:PercentHealth('target');

	_Combo, _Combo_Max = ConRO:PlayerPower('Combo');
	_Energy, _Energy_Max, _Energy_Percent = ConRO:PlayerPower('Energy');
	trinket_1_id, trinket_1_usable, trinket_1_rdy, trinket_2_id, trinket_2_usable, trinket_2_rdy = ConRO:UsableTrinket()

	_Queue = 0;
	_is_moving = ConRO:PlayerSpeed();
	_enemies_in_melee, _target_in_melee = ConRO:Targets("Melee");
	_enemies_in_10yrds, _target_in_10yrds = ConRO:Targets("10");
	_enemies_in_25yrds, _target_in_25yrds = ConRO:Targets("25");
	_enemies_in_40yrds, _target_in_40yrds = ConRO:Targets("40");
	_can_Execute = _Target_Percent_Health < 20;

	_AncestralCall, _AncestralCall_RDY = ConRO:AbilityReady(Racial.ancestral_call, timeShift);
	_ArcanePulse, _ArcanePulse_RDY = ConRO:AbilityReady(Racial.arcane_pulse, timeShift);
	_ArcaneTorrent, _ArcaneTorrent_RDY = ConRO:AbilityReady(Racial.arcane_torrent, timeShift);
	_Berserking, _Berserking_RDY = ConRO:AbilityReady(Racial.berserking, timeShift);
	_Shadowmeld, _Shadowmeld_RDY = ConRO:AbilityReady(Racial.shadowmeld, timeShift);
		_Shadowmeld_BUFF = ConRO:Aura(Racial.shadowmeld.spellID, timeShift);
end

function ConRO.Rogue.Assassination(_, timeShift, currentSpell, gcd, tChosen, pvpChosen)
	wipe(ConRO.SuggestedSpells)
	ConRO:Stats();

--Poisons
	local _AmplifyingPoison_BUFF = ConRO:Aura(Buff.AmplifyingPoison, timeShift);
	local _CripplingPoison_BUFF = ConRO:Aura(Buff.CripplingPoison, timeShift);
	local _DeadlyPoison_BUFF = ConRO:Aura(Buff.DeadlyPoison, timeShift);
	local _DeadlyPoison_DEBUFF = ConRO:TargetAura(Debuff.DeadlyPoison, timeShift);
	local _InstantPoison_BUFF = ConRO:Aura(Buff.InstantPoison, timeShift);
	local _WoundPoison_BUFF = ConRO:Aura(Buff.WoundPoison, timeShift);

--Abilities
	local _Ambush, _Ambush_RDY = ConRO:AbilityReady(Ability.Ambush, timeShift);
		local _Blindside_BUFF = ConRO:Aura(Buff.Blindside, timeShift);
		local _DeathstalkersMark_DEBUFF = ConRO:TargetAura(Debuff.DeathstalkersMark, timeShift);
	local _ColdBlood, _ColdBlood_RDY = ConRO:AbilityReady(Ability.ColdBlood, timeShift);
	local _CrimsonTempest, _CrimsonTempest_RDY = ConRO:AbilityReady(Ability.CrimsonTempest, timeShift);
		local _CrimsonTempest_DEBUFF = ConRO:TargetAura(Debuff.CrimsonTempest, timeShift + 2);
	local _Deathmark, _Deathmark_RDY, _Deathmark_CD = ConRO:AbilityReady(Ability.Deathmark, timeShift);
		local _Deathmark_DEBUFF = ConRO:TargetAura(Debuff.Deathmark, timeShift);
	local _Envenom, _Envenom_RDY = ConRO:AbilityReady(Ability.Envenom, timeShift);
		local _Envenom_BUFF = ConRO:Aura(Buff.Envenom, timeShift + 1);
	local _FanofKnives, _FanofKnives_RDY = ConRO:AbilityReady(Ability.FanofKnives, timeShift);
		local _CleartheWitnesses_BUFF = ConRO:Aura(Buff.CleartheWitnesses, timeShift);
	local _Garrote, _Garrote_RDY = ConRO:AbilityReady(Ability.Garrote, timeShift);
		local _Garrote_DEBUFF, _, _Garrote_DUR = ConRO:TargetAura(Debuff.Garrote, timeShift);
	local _Kick, _Kick_RDY = ConRO:AbilityReady(Ability.Kick, timeShift);
	local _Kingsbane, _Kingsbane_RDY = ConRO:AbilityReady(Ability.Kingsbane, timeShift);
		local _Kingsbane_DEBUFF, _, _Kingsbane_DUR = ConRO:TargetAura(Debuff.Kingsbane, timeShift);
	local _Mutilate, _Mutilate_RDY = ConRO:AbilityReady(Ability.Mutilate, timeShift);
		local _CausticSpatter_DEBUFF = ConRO:TargetAura(Debuff.CausticSpatter, timeShift);
		local _EchoingReprimand_BUFF = ConRO:Aura(Buff.EchoingReprimand, timeShift);
	local _PoisonedKnife, _PoisonedKnife_RDY = ConRO:AbilityReady(Ability.PoisonedKnife, timeShift);
	local _Rupture, _Rupture_RDY = ConRO:AbilityReady(Ability.Rupture, timeShift);
		local _Rupture_DEBUFF, _, _Rupture_DUR = ConRO:TargetAura(Debuff.Rupture, timeShift);
		local _SerratedBoneSpike_DEBUFF, _SerratedBoneSpike_COUNT = ConRO:PersistentDebuff(Debuff.SerratedBoneSpike);
	local _Shadowstep, _Shadowstep_RDY = ConRO:AbilityReady(Ability.Shadowstep, timeShift);
		local _, _Shadowstep_RANGE = ConRO:Targets(Ability.Shadowstep);
	local _Shiv, _Shiv_RDY = ConRO:AbilityReady(Ability.Shiv, timeShift);
		local _Shiv_DEBUFF = ConRO:TargetAura(Debuff.Shiv, timeShift);
		local _Shiv_CHARGES = ConRO:SpellCharges(_Shiv);
	local _SliceandDice, _SliceandDice_RDY = ConRO:AbilityReady(Ability.SliceandDice, timeShift);
		local _SliceandDice_BUFF = ConRO:Aura(Buff.SliceandDice, timeShift);
	local _Sprint, _Sprint_RDY = ConRO:AbilityReady(Ability.Sprint, timeShift);
	local _Stealth, _Stealth_RDY = ConRO:AbilityReady(Ability.Stealth, timeShift);
	local _Subterfuge_Stealth, _Subterfuge_Stealth_RDY = ConRO:AbilityReady(Ability.Subterfuge_Stealth, timeShift);
		local _Subterfuge_BUFF = ConRO:Aura(Buff.Subterfuge, timeShift);
		local _MasterAssassin_BUFF = ConRO:Aura(Buff.MasterAssassin, timeShift);
	local _ThistleTea, _ThistleTea_RDY = ConRO:AbilityReady(Ability.ThistleTea, timeShift);
		local _ThistleTea_CHARGES = ConRO:SpellCharges(_ThistleTea);
	local _Vanish, _Vanish_RDY = ConRO:AbilityReady(Ability.Vanish, timeShift);
		local _Vanish_BUFF = ConRO:Aura(Buff.Vanish, timeShift);

--Conditions
	local _is_stealthed = IsStealthed();
	local _combat_stealth = _is_stealthed or _Vanish_BUFF or _Shadowmeld_BUFF or _Subterfuge_BUFF;

	if tChosen[Ability.Subterfuge.talentID] then
		_Stealth_RDY =  _Subterfuge_Stealth_RDY;
		_Stealth = _Subterfuge_Stealth;
	end

	if _Blindside_BUFF then
		_Mutilate, _Mutilate_RDY = ConRO:AbilityReady(Ability.AmbushB, timeShift);
	end

	local _Poison_applied = false;
	if _InstantPoison_BUFF then
		_Poison_applied = true;
	elseif _DeadlyPoison_BUFF then
		_Poison_applied = true;
	elseif _AmplifyingPoison_BUFF then
		_Poison_applied = true;
	elseif _WoundPoison_BUFF then
		_Poison_applied = true;
	end

--Indicators
	ConRO:AbilityInterrupt(_Kick, _Kick_RDY and ConRO:Interrupt());
	ConRO:AbilityPurge(_ArcaneTorrent, _ArcaneTorrent_RDY and _target_in_melee and ConRO:Purgable());
	ConRO:AbilityMovement(_Shadowstep, _Shadowstep_RDY and _Shadowstep_RANGE and not _target_in_melee);
	ConRO:AbilityMovement(_Sprint, _Sprint_RDY and not _target_in_melee);

	ConRO:AbilityBurst(_Deathmark, _Deathmark_RDY and _Garrote_DEBUFF and _Combo >= 4 and ConRO:BurstMode(_Deathmark));
	ConRO:AbilityBurst(_Kingsbane, _Kingsbane_RDY and (_Deathmark_DEBUFF or _Deathmark_CD > 55) and _Shiv_CHARGES >= 1 and _Combo >= 4 and ConRO:BurstMode(_Kingsbane));
	ConRO:AbilityBurst(_ThistleTea, _ThistleTea_RDY and _ThistleTea_CHARGES >= 1 and _Energy <= _Energy_Max - 125);
	ConRO:AbilityBurst(_Vanish, _Vanish_RDY and not _combat_stealth and not _MasterAssassin_BUFF and _Deathmark_RDY and _Garrote_DUR <= 3 and not ConRO:IsSolo() and ConRO:BurstMode(_Vanish));

--Warnings
	ConRO:Warnings("Put lethal poison on your weapon!", not _Poison_applied and (_in_combat or _is_stealthed));

--Rotations
	repeat
		while(true) do
			if not _in_combat then
				if _Stealth_RDY and not _combat_stealth then
					tinsert(ConRO.SuggestedSpells, _Stealth);
					_Stealth_RDY = false;
					_combat_stealth = true;
					_Queue = _Queue + 1;
					break;
				end

				if _SliceandDice_RDY and not _SliceandDice_BUFF and _Combo >= 1 then
					tinsert(ConRO.SuggestedSpells, _SliceandDice);
					_SliceandDice_BUFF = true;
					_Combo = 0;
					_Queue = _Queue + 1;
					break;
				end
			end

			if _combat_stealth then
				if tChosen[Ability.MasterAssassin.talentID] then _MasterAssassin_BUFF = true end
				if tChosen[Ability.Subterfuge.talentID] then _Subterfuge_BUFF = true end

				if _Ambush_RDY and not _DeathstalkersMark_DEBUFF and ConRO:HeroSpec(HeroSpec.deathstalker) then
					tinsert(ConRO.SuggestedSpells, _Ambush);
					_Ambush_RDY = false;
					_Energy = _Energy - 50;
					_Combo = _Combo + 2;
					_Queue = _Queue + 1;
					break;
				end

				if _Garrote_RDY and _Energy >= 45 and not _Garrote_DEBUFF then
					tinsert(ConRO.SuggestedSpells, _Garrote);
					_Garrote_RDY = false;
					_Energy = _Energy - 45;
					_Garrote_DEBUFF = true;
					_Garrote_DUR = 18;
					_Combo = _Combo + 1;
					_Queue = _Queue + 1;
					break;
				end
			end

			if _Garrote_RDY and _Energy >= 45 and (not _Garrote_DEBUFF or _Garrote_DUR <= 3) then
				tinsert(ConRO.SuggestedSpells, _Garrote);
				_Garrote_RDY = false;
				_Energy = _Energy - 45;
				_Garrote_DEBUFF = true;
				_Garrote_DUR = 18;
				_Combo = _Combo + 1;
				_Queue = _Queue + 1;
				break;
			end

			if _Envenom_RDY and not _SliceandDice_BUFF and _Combo >= 1 and ((ConRO_AutoButton:IsVisible() and _enemies_in_melee <= 1) or ConRO_SingleButton:IsVisible()) then
				tinsert(ConRO.SuggestedSpells, _Envenom);
				_SliceandDice_BUFF = true;
				_Combo = 0;
				_Queue = _Queue + 1;
				break;
			end

			if _Rupture_RDY and not _Rupture_DEBUFF and _Combo >= 5 then
				tinsert(ConRO.SuggestedSpells, _Rupture);
				_Rupture_DEBUFF = true;
				_Combo = 0;
				_Queue = _Queue + 1;
				break;
			end

			if _CrimsonTempest_RDY and not _CrimsonTempest_DEBUFF and _Combo >= 4 and ((ConRO_AutoButton:IsVisible() and _enemies_in_melee >= 2) or ConRO_AoEButton:IsVisible()) then
				tinsert(ConRO.SuggestedSpells, _CrimsonTempest);
				_CrimsonTempest_RDY = false;
				_CrimsonTempest_DEBUFF = true;
				_Combo = 0;
				_Queue = _Queue + 1;
				break;
			end

			if _Mutilate_RDY and _Energy >= 50 and tChosen[Ability.CausticSpatter.talentID] and not _CausticSpatter_DEBUFF and _DeadlyPoison_DEBUFF and _Rupture_DEBUFF and ((ConRO_AutoButton:IsVisible() and _enemies_in_melee >= 2) or ConRO_AoEButton:IsVisible()) then
				tinsert(ConRO.SuggestedSpells, _Mutilate);
				_Energy = _Energy - 50;
				_Combo = _Combo + 2;
				_Queue = _Queue + 1;
				break;
			end

			if _ColdBlood_RDY then
				tinsert(ConRO.SuggestedSpells, _ColdBlood);
				_ColdBlood_RDY = false;
				_Queue = _Queue + 1;
				break;
			end

			if _Vanish_RDY and not ConRO:IsSolo() and not _combat_stealth and not _MasterAssassin_BUFF and _Garrote_DUR <= 5 and not ConRO:TarYou() and ConRO:FullMode(_Vanish) then
				tinsert(ConRO.SuggestedSpells, _Vanish);
				_Vanish_RDY = false;
				_combat_stealth = true;
				_Queue = _Queue + 1;
				break;
			end

			if _Deathmark_RDY and _Garrote_DEBUFF and ConRO:FullMode(_Deathmark) then
				tinsert(ConRO.SuggestedSpells, _Deathmark);
				_Deathmark_RDY = false;
				_Queue = _Queue + 1;
				break;
			end

			if _Shiv_RDY and ((_Shiv_CHARGES >= 2 and _Kingsbane_RDY) or (_Kingsbane_DEBUFF and _Kingsbane_DUR <= 8.5)) then
				tinsert(ConRO.SuggestedSpells, _Shiv);
				_Shiv_RDY = false;
				_Shiv_CHARGES = _Shiv_CHARGES - 1;
				_Queue = _Queue + 1;
				break;
			end

			if _Kingsbane_RDY and _Energy >= 35 and (_Deathmark_DEBUFF or _Deathmark_CD > 45) and ConRO:FullMode(_Kingsbane) then
				tinsert(ConRO.SuggestedSpells, _Kingsbane);
				_Kingsbane_RDY = false;
				_Energy = _Energy - 35;
				_Combo = _Combo + 1;
				_Queue = _Queue + 1;
				break;
			end

			if _FanofKnives_RDY and _Combo <= 5 and ((_CleartheWitnesses_BUFF and ConRO:HeroSpec(HeroSpec.deathstalker) and not tChosen[Ability.ViciousVenoms.talentID]) or (ConRO_AutoButton:IsVisible() and _enemies_in_melee >= 3) or ConRO_AoEButton:IsVisible()) then
				tinsert(ConRO.SuggestedSpells, _FanofKnives);
				_Combo = _Combo + 1;
				_Queue = _Queue + 1;
				break;
			end

			if _Ambush_RDY and _combat_stealth and not _DeathstalkersMark_DEBUFF and ConRO:HeroSpec(HeroSpec.deathstalker) then
				tinsert(ConRO.SuggestedSpells, _Ambush);
				_Ambush_RDY = false;
				_Energy = _Energy - 50;
				_Combo = _Combo + 2;
				_Queue = _Queue + 1;
				break;
			end

			if _Mutilate_RDY and _Energy >= 50 and (_Combo < 5 or (_Combo < _Combo_Max and _DarkestNight_BUFF)) then
				tinsert(ConRO.SuggestedSpells, _Mutilate);
				_Energy = _Energy - 50;
				_Combo = _Combo + 2;
				_Queue = _Queue + 1;
				break;
			end

			if _Envenom_RDY and ((_Combo >= 5 and not _DarkestNight_BUFF) or _Combo >= _Combo_Max) then
				tinsert(ConRO.SuggestedSpells, _Envenom);
				_Envenom_RDY = false;
				_Combo = 0;
				_Queue = _Queue + 1;
				break;
			end

			tinsert(ConRO.SuggestedSpells, 6603); --Waiting Spell Icon
			_Queue = _Queue + 3;
			break;
		end
	until _Queue >= 3;
	return nil;
end

function ConRO.Rogue.AssassinationDef(_, timeShift, currentSpell, gcd, tChosen, pvpChosen)
	wipe(ConRO.SuggestedDefSpells);
	ConRO:Stats();

--Abilities
	local _Evasion, _Evasion_RDY = ConRO:AbilityReady(Ability.Evasion, timeShift);
	local _CrimsonVial, _CrimsonVial_RDY = ConRO:AbilityReady(Ability.CrimsonVial, timeShift);

--Conditions
	local _is_stealthed = IsStealthed();

--Rotations
	if _CrimsonVial_RDY and _Player_Percent_Health <= 70 then
		tinsert(ConRO.SuggestedDefSpells, _CrimsonVial);
	end

	if _Evasion_RDY and _in_combat then
		tinsert(ConRO.SuggestedDefSpells, _Evasion);
	end
	return nil;
end

function ConRO.Rogue.Outlaw(_, timeShift, currentSpell, gcd, tChosen, pvpChosen)
	wipe(ConRO.SuggestedSpells);
	ConRO:Stats();

--Poisons
	local _CripplingPoison_BUFF = ConRO:Aura(Buff.crippling_poison, timeShift);
	local _InstantPoison_BUFF = ConRO:Aura(Buff.instant_poison, timeShift);
	local _WoundPoison_BUFF = ConRO:Aura(Buff.wound_poison, timeShift);

--Abilities
	local _AdrenalineRush, _AdrenalineRush_RDY = ConRO:AbilityReady(Ability.adrenaline_rush, timeShift);
		local _AdrenalineRush_BUFF, _, _AdrenalineRush_DUR	= ConRO:Aura(Buff.adrenaline_rush, timeShift);
		local _LoadedDice_BUFF = ConRO:Aura(Buff.loaded_dice, timeShift);
	local _Ambush, _Ambush_RDY = ConRO:AbilityReady(Ability.ambush, timeShift);
		local _Audacity_BUFF = ConRO:Aura(Buff.audacity, timeShift);
	local _BetweentheEyes, _BetweentheEyes_RDY = ConRO:AbilityReady(Ability.between_the_eyes, timeShift);
		local _BetweentheEyes_BUFF, _, _BetweentheEyes_DUR = ConRO:Aura(Buff.between_the_eyes, timeShift);
	local _BladeFlurry, _BladeFlurry_RDY = ConRO:AbilityReady(Ability.blade_flurry, timeShift);
		local _BladeFlurry_BUFF = ConRO:Aura(Buff.blade_flurry, timeShift);
		local _BladeFlurry_CHARGES = ConRO:SpellCharges(_BladeFlurry);
	local _BladeRush, _BladeRush_RDY, _BladeRush_CD = ConRO:AbilityReady(Ability.blade_rush, timeShift);
	local _Dispatch, _Dispatch_RDY = ConRO:AbilityReady(Ability.dispatch, timeShift);
	local _Eviscerate, _Eviscerate_RDY = ConRO:AbilityReady(Ability.eviscerate, timeShift);
	local _GhostlyStrike, _GhostlyStrike_RDY = ConRO:AbilityReady(Ability.ghostly_strike, timeShift);
		local _GhostlyStrike_DEBUFF = ConRO:TargetAura(Debuff.ghostly_strike, timeShift);
	local _GrapplingHook, _GrapplingHook_RDY = ConRO:AbilityReady(Ability.grappling_hook, timeShift);
	local _KeepItRolling, _KeepItRolling_RDY =  ConRO:AbilityReady(Ability.keep_it_rolling, timeShift);
	local _Kick, _Kick_RDY = ConRO:AbilityReady(Ability.kick, timeShift);
	local _KillingSpree, _KillingSpree_RDY, _KillingSpree_CD = ConRO:AbilityReady(Ability.killing_spree, timeShift);
	local _PistolShot, _PistolShot_RDY = ConRO:AbilityReady(Ability.pistol_shot, timeShift);
		local _Opportunity_BUFF = ConRO:Aura(Buff.opportunity, timeShift);
	local _RolltheBones, _RolltheBones_RDY = ConRO:AbilityReady(Ability.roll_the_bones, timeShift);
		local _RolltheBones_BUFF = {
			TrueBearing = ConRO:Aura(Buff.true_bearing, timeShift),
			RuthlessPrecision = ConRO:Aura(Buff.ruthless_precision, timeShift),
			SkullandCrossbones = ConRO:Aura(Buff.skull_and_crossbones, timeShift),
			GrandMelee = ConRO:Aura(Buff.grand_melee, timeShift),
			Broadside = ConRO:Aura(Buff.broadside, timeShift),
			BuriedTreasure = ConRO:Aura(Buff.buried_treasure, timeShift),
		}
		local _RolltheBones_BUFF_DUR = {
			TrueBearing = select(3, ConRO:Aura(Buff.true_bearing, timeShift)),
			RuthlessPrecision = select(3, ConRO:Aura(Buff.ruthless_precision, timeShift)),
			SkullandCrossbones = select(3, ConRO:Aura(Buff.skull_and_crossbones, timeShift)),
			GrandMelee = select(3, ConRO:Aura(Buff.grand_melee, timeShift)),
			Broadside = select(3, ConRO:Aura(Buff.broadside, timeShift)),
			BuriedTreasure = select(3, ConRO:Aura(Buff.buried_treasure, timeShift)),
		}
	local _SinisterStrike, _SinisterStrike_RDY = ConRO:AbilityReady(Ability.sinister_strike, timeShift);
	local _SliceandDice, _SliceandDice_RDY = ConRO:AbilityReady(Ability.slice_and_dice, timeShift);
		local _SliceandDice_BUFF = ConRO:Aura(Buff.slice_and_dice, timeShift);
	local _Sprint, _Sprint_RDY = ConRO:AbilityReady(Ability.sprint, timeShift);
	local _Stealth, _Stealth_RDY = ConRO:AbilityReady(Ability.stealth, timeShift);
	local _Subterfuge_Stealth, _Subterfuge_Stealth_RDY = ConRO:AbilityReady(Ability.subterfuge, timeShift);
		local _Subterfuge_BUFF = ConRO:Aura(Buff.subterfuge, timeShift);
	local _ThistleTea, _ThistleTea_RDY = ConRO:AbilityReady(Ability.thistle_tea, timeShift);
		local _ThistleTea_CHARGES = ConRO:SpellCharges(_ThistleTea);
	local _Vanish, _Vanish_RDY = ConRO:AbilityReady(Ability.vanish, timeShift);
		local _Vanish_CHARGES = ConRO:SpellCharges(_Vanish);

--Conditions
	local _is_stealthed = IsStealthed();
	local _combat_stealth = _is_stealthed or _Vanish_BUFF or _Shadowmeld_BUFF or _Subterfuge_BUFF;
	if _Player_Level <= 21 then
		_Dispatch, _Dispatch_RDY = _Eviscerate, _Eviscerate_RDY;
	end

	if tChosen[Ability.subterfuge.talentID] then
		_Stealth_RDY = _Subterfuge_Stealth_RDY;
		_Stealth = _Subterfuge_Stealth;
	end

	if _Audacity_BUFF then
		_Ambush, _Ambush_RDY = ConRO:AbilityReady(Ability.audacity, timeShift);
	end

	local _RolltheBones_COUNT = 0;
	for k, v in pairs(_RolltheBones_BUFF) do
		if v then
			_RolltheBones_COUNT = _RolltheBones_COUNT + 1;
		end
	end

	local _RolltheBones_DUR = 30;
	for k, v in pairs(_RolltheBones_BUFF_DUR) do
		if v > 0 then
			if v < _RolltheBones_DUR then
				_RolltheBones_DUR = v;
			end
		end
	end

    local _should_Roll = false;
	if _RolltheBones_COUNT <= 1 and _LoadedDice_BUFF then
		_should_Roll = true;
	end
	if _RolltheBones_COUNT <= 0 then
		_should_Roll = true;
	end

	local _Broadside_Reward = 0
	local _Opportunity_Reward = 0
	if _RolltheBones_BUFF.Broadside then
		_Broadside_Reward = 2;
	end
	if tChosen[Ability.quick_draw.talentID] and _Opportunity_BUFF then
		_Opportunity_Reward = _Opportunity_Reward + 1;
	end

	local _Poison_applied = false;
	if _InstantPoison_BUFF then
		_Poison_applied = true;
	elseif _WoundPoison_BUFF then
		_Poison_applied = true;
	end

--Indicators
	ConRO:AbilityInterrupt(_Kick, _Kick_RDY and ConRO:Interrupt());
	ConRO:AbilityPurge(_ArcaneTorrent, _ArcaneTorrent_RDY and _target_in_melee and ConRO:Purgable());
	ConRO:AbilityMovement(_GrapplingHook, _GrapplingHook_RDY and not _target_in_melee);
	ConRO:AbilityMovement(_Sprint, _Sprint_RDY and not _target_in_melee);

  	ConRO:AbilityBurst(_AdrenalineRush, _AdrenalineRush_RDY and ConRO:BurstMode(_AdrenalineRush));
	ConRO:AbilityBurst(_BladeRush, _BladeRush_RDY and (((ConRO_AutoButton:IsVisible() and _enemies_in_melee == 1) or ConRO_SingleButton:IsVisible()) or (_BladeFlurry_BUFF and ((ConRO_AutoButton:IsVisible() and _enemies_in_melee >= 2) or ConRO_AoEButton:IsVisible()))) and ConRO:BurstMode(_BladeRush));
	ConRO:AbilityBurst(_KillingSpree, _KillingSpree_RDY and not _AdrenalineRush_BUFF and _Energy <= _Energy_Max - 35 and (((ConRO_AutoButton:IsVisible() and _enemies_in_melee == 1) or ConRO_SingleButton:IsVisible()) or (_BladeFlurry_BUFF and ((ConRO_AutoButton:IsVisible() and _enemies_in_melee >= 2) or ConRO_AoEButton:IsVisible()))) and ConRO:BurstMode(_KillingSpree));
	ConRO:AbilityBurst(_RolltheBones, _RolltheBones_RDY and _should_Roll and ConRO:BurstMode(_RolltheBones));
	ConRO:AbilityBurst(_Vanish, _Vanish_RDY and not _combat_stealth and not ConRO:IsSolo() and _Combo <= 1 and _Energy >= 50);
	ConRO:AbilityBurst(_Shadowmeld, _Shadowmeld_RDY and not _combat_stealth and not ConRO:IsSolo() and _Combo <= 1 and _Energy >= 50);
	ConRO:AbilityBurst(_ThistleTea, _ThistleTea_RDY and _ThistleTea_CHARGES >= 1 and _Energy <= 50);

--Warnings
	ConRO:Warnings("Put lethal poison on your weapon!", not _Poison_applied and (_in_combat or _is_stealthed));

--Rotations
	repeat
		while(true) do
			if _combat_stealth then
				if _RolltheBones_RDY and _should_Roll and ConRO:FullMode(_RolltheBones) then
					tinsert(ConRO.SuggestedSpells, _RolltheBones);
					_RolltheBones_RDY = false;
					_Queue = _Queue + 1;
					break;
				end

				if _AdrenalineRush_RDY and ConRO:FullMode(_AdrenalineRush) then
					tinsert(ConRO.SuggestedSpells, _AdrenalineRush);
					_AdrenalineRush_RDY = false;
					_Queue = _Queue + 1;
					break;
				end

				if _BetweentheEyes_RDY and _Combo >= (_Combo_Max - 1) then
					tinsert(ConRO.SuggestedSpells, _BetweentheEyes);
					_BetweentheEyes_RDY = false;
					_Combo = 0;
					_Queue = _Queue + 1;
					break;
				end

				if _Dispatch_RDY and _Combo >= (_Combo_Max - 1) then
					tinsert(ConRO.SuggestedSpells, _Dispatch);
					_Combo = 0;
					_Queue = _Queue + 1;
					break;
				end

				if _Ambush_RDY and _Combo >= (_Combo_Max - 2) then
					tinsert(ConRO.SuggestedSpells, _Ambush);
					_Combo = 0;
					_Queue = _Queue + 1;
					break;
				end
			end

			if not _in_combat then
				if _Stealth_RDY and not _combat_stealth then
					tinsert(ConRO.SuggestedSpells, _Stealth);
					_combat_stealth = true;
					_Queue = _Queue + 1;
					break;
				end

				if _RolltheBones_RDY and _should_Roll and ConRO:FullMode(_RolltheBones) then
					tinsert(ConRO.SuggestedSpells, _RolltheBones);
					_RolltheBones_RDY = false;
					_Queue = _Queue + 1;
					break;
				end

				if _AdrenalineRush_RDY and ConRO:FullMode(_AdrenalineRush) then
					tinsert(ConRO.SuggestedSpells, _AdrenalineRush);
					_AdrenalineRush_RDY = false;
					_Queue = _Queue + 1;
					break;
				end

				if _Dispatch_RDY and _Combo >= (_Combo_Max - 1) then
					tinsert(ConRO.SuggestedSpells, _Dispatch);
					_Combo = 0;
					_Queue = _Queue + 1;
					break;
				end

				if _Ambush_RDY and _Combo <= _Combo_Max - 2 then
					tinsert(ConRO.SuggestedSpells, _Ambush);
					_Combo = 0;
					_Queue = _Queue + 1;
					break;
				end
			end

			if _BladeFlurry_RDY and not _BladeFlurry_BUFF and ((ConRO_AutoButton:IsVisible() and _enemies_in_melee >= 2) or ConRO_AoEButton:IsVisible()) then
				tinsert(ConRO.SuggestedSpells, _BladeFlurry);
				_BladeFlurry_RDY = false;
				_Queue = _Queue + 1;
				break;
			end

			if _BladeFlurry_RDY and _BladeFlurry_BUFF and _Combo <= (_Combo_Max - 2) and tChosen[Ability.deft_maneuvers.talentID] and ((ConRO_AutoButton:IsVisible() and _enemies_in_melee >= 3) or ConRO_AoEButton:IsVisible()) then
				tinsert(ConRO.SuggestedSpells, _BladeFlurry);
				_BladeFlurry_RDY = false;
				_Queue = _Queue + 1;
				break;
			end

			if _KeepItRolling_RDY and _RolltheBones_COUNT >= 4 then
				tinsert(ConRO.SuggestedSpells, _KeepItRolling);
				_KeepItRolling_RDY = false;
				_Queue = _Queue + 1;
				break;
			end

			if _RolltheBones_RDY and _should_Roll and not _Subterfuge_BUFF and ConRO:FullMode(_RolltheBones) then
				tinsert(ConRO.SuggestedSpells, _RolltheBones);
				_RolltheBones_RDY = false;
				_Queue = _Queue + 1;
				break;
			end

			if _AdrenalineRush_RDY and _Combo <= 5 and ConRO:FullMode(_AdrenalineRush) then
				tinsert(ConRO.SuggestedSpells, _AdrenalineRush);
				_AdrenalineRush_RDY = false;
				_Queue = _Queue + 1;
				break;
			end

			if _ColdBlood_RDY then
				tinsert(ConRO.SuggestedSpells, _ColdBlood);
				_ColdBlood_RDY = false;
				_Queue = _Queue + 1;
				break;
			end

			if _GhostlyStrike_RDY then
				tinsert(ConRO.SuggestedSpells, _GhostlyStrike);
				_GhostlyStrike_RDY = false;
				_Queue = _Queue + 1;
				break;
			end

			if _KillingSpree_RDY and _Combo >= 6 and not _Subterfuge_BUFF and ConRO:FullMode(_KillingSpree) then
				tinsert(ConRO.SuggestedSpells, _KillingSpree);
				_KillingSpree_RDY = false;
				_Queue = _Queue + 1;
				break;
			end

			if _BladeRush_RDY and _Energy <= _Energy_Max - 50 and not _combat_stealth and ConRO:FullMode(_BladeRush) then
				tinsert(ConRO.SuggestedSpells, _BladeRush);
				_BladeRush_RDY = false;
				_Queue = _Queue + 1;
				break;
			end

			if _Vanish_RDY and not ConRO:IsSolo() and _Combo >= (_Combo_Max - 1) and not _Subterfuge_BUFF and (_AdrenalineRush_DUR <= 3 or _Vanish_CHARGES >= 2 or (not _BetweentheEyes_RDY and _RolltheBones_BUFF.RuthlessPrecision)) and ConRO:FullMode(_Vanish) then
				tinsert(ConRO.SuggestedSpells, _Vanish);
				_Vanish_RDY = false;
				_Queue = _Queue + 1;
				break;
			end

			if _BetweentheEyes_RDY and _Combo >= (_Combo_Max - 1) and (not _BetweentheEyes_BUFF or _BetweentheEyes_DUR <= 4 or _RolltheBones_BUFF.RuthlessPrecision) then
				tinsert(ConRO.SuggestedSpells, _BetweentheEyes);
				_BetweentheEyes_RDY = false;
				_Combo = 0;
				_Queue = _Queue + 1;
				break;
			end

			if _Dispatch_RDY and _Combo >= (_Combo_Max - 1) then
				tinsert(ConRO.SuggestedSpells, _Dispatch);
				_Dispatch_RDY = false;
				_Queue = _Queue + 1;
				break;
			end

			if _Ambush_RDY and _Combo <= (_Combo_Max - 2) and (_Audacity_BUFF or _Subterfuge_BUFF) then
				tinsert(ConRO.SuggestedSpells, _Ambush);
				_Ambush_RDY = false;
				_Combo = _Combo + 2;
				_Queue = _Queue + 1;
				break;
			end

			if _PistolShot_RDY and _Opportunity_BUFF and _Combo <= (_Combo_Max - 3 - _Broadside_Reward) then
				tinsert(ConRO.SuggestedSpells, _PistolShot);
				_PistolShot_RDY = false;
				_Combo = _Combo + 1;
				_Queue = _Queue + 1;
				break;
			end

			if _SinisterStrike_RDY and _Combo <= (_Combo_Max - 2) then
				tinsert(ConRO.SuggestedSpells, _SinisterStrike);
				_SinisterStrike_RDY = false;
				_Combo = _Combo + 1;
				_Queue = _Queue + 1;
				break;
			end

			tinsert(ConRO.SuggestedSpells, 6603); --Waiting Spell Icon
			_Queue = _Queue + 3;
			break;
		end
	until _Queue >= 3;
	return nil;
end

function ConRO.Rogue.OutlawDef(_, timeShift, currentSpell, gcd, tChosen, pvpChosen)
	wipe(ConRO.SuggestedDefSpells);
	ConRO:Stats();

--Abilities
	local _Evasion, _Evasion_RDY = ConRO:AbilityReady(Ability.evasion, timeShift);
	local _CrimsonVial, _CrimsonVial_RDY = ConRO:AbilityReady(Ability.crimson_vial, timeShift);

--Conditions
	local _is_stealthed = IsStealthed();

--Rotations
	if _CrimsonVial_RDY and _Player_Percent_Health <= 70 then
		tinsert(ConRO.SuggestedDefSpells, _CrimsonVial);
	end

	if _Evasion_RDY and _in_combat then
		tinsert(ConRO.SuggestedDefSpells, _Evasion);
	end
	return nil;
end

function ConRO.Rogue.Subtlety(_, timeShift, currentSpell, gcd, tChosen, pvpChosen)
	wipe(ConRO.SuggestedSpells);
	ConRO:Stats();

--Abilities
	local _Backstab, _Backstab_RDY = ConRO:AbilityReady(Ability.backstab, timeShift);
	local _BlackPowder, _BlackPowder_RDY = ConRO:AbilityReady(Ability.black_powder, timeShift);
	local _CheapShot, _CheapShot_RDY = ConRO:AbilityReady(Ability.cheap_shot, timeShift);
	local _ColdBlood, _ColdBlood_RDY = ConRO:AbilityReady(Ability.cold_blood, timeShift);
		local _ColdBlood_BUFF = ConRO:Aura(Buff.cold_blood, timeShift);
	local _Eviscerate, _Eviscerate_RDY = ConRO:AbilityReady(Ability.eviscerate, timeShift);
		local _DarkestNight_BUFF = ConRO:Aura(Buff.darkest_night, timeShift);
	local _Flagellation, _Flagellation_RDY = ConRO:AbilityReady(Ability.flagellation, timeShift);
		local _Flagellation_BUFF, _, _Flagellation_DUR = ConRO:Aura(Buff.flagellation, timeShift);
	local _GoremawsBite, _GoremawsBite_RDY = ConRO:AbilityReady(Ability.goremaws_bite, timeShift);
	local _Kick, _Kick_RDY = ConRO:AbilityReady(Ability.kick, timeShift);
	local _KidneyShot, _KidneyShot_RDY = ConRO:AbilityReady(Ability.kidney_shot, timeShift);
	local _Rupture, _Rupture_RDY = ConRO:AbilityReady(Ability.rupture, timeShift);
		local _Rupture_DEBUFF, _, _Rupture_DUR = ConRO:TargetAura(Debuff.rupture, timeShift);
	local _SecretTechnique, _SecretTechnique_RDY = ConRO:AbilityReady(Ability.secret_technique, timeShift);
	local _ShadowBlades, _ShadowBlades_RDY = ConRO:AbilityReady(Ability.shadow_blades, timeShift);
		local _ShadowBlades_BUFF = ConRO:Aura(Buff.shadow_blades, timeShift);
	local _ShadowDance, _ShadowDance_RDY = ConRO:AbilityReady(Ability.shadow_dance, timeShift);
		local _ShadowDance_CHARGES, _ShadowDance_MaxCHARGES, _ShadowDance_CCD = ConRO:SpellCharges(Ability.shadow_dance.spellID);
		local _ShadowDance_BUFF = ConRO:Aura(Buff.shadow_dance, timeShift);
	local _Shadowstep, _Shadowstep_RDY = ConRO:AbilityReady(Ability.shadowstep, timeShift);
		local _Shadowstep_RANGE = ConRO:Targets(Ability.shadowstep);
	local _Shiv, _Shiv_RDY = ConRO:AbilityReady(Ability.shiv, timeShift);
	local _ShurikenStorm, _ShurikenStorm_RDY = ConRO:AbilityReady(Ability.shuriken_storm, timeShift);
		local _CleartheWitnesses_BUFF = ConRO:Aura(Buff.clear_the_witnesses, timeShift);
	local _ShurikenToss, _ShurikenToss_RDY = ConRO:AbilityReady(Ability.shuriken_toss, timeShift);
	local _Shadowstrike, _Shadowstrike_RDY = ConRO:AbilityReady(Ability.shadowstrike, timeShift);
		local _FindWeakness_DEBUFF = ConRO:TargetAura(Debuff.find_weakness, timeShift);
	local _ShurikenTornado, _ShurikenTornado_RDY = ConRO:AbilityReady(Ability.shuriken_tornado, timeShift);
		local _Premeditation_FORM = ConRO:Form(Buff.premeditation);
	local _SliceandDice, _SliceandDice_RDY = ConRO:AbilityReady(Ability.slice_and_dice, timeShift);
		local _SliceandDice_BUFF = ConRO:Aura(Buff.slice_and_dice, timeShift);
	local _Sprint, _Sprint_RDY = ConRO:AbilityReady(Ability.sprint, timeShift);
	local _Stealth, _Stealth_RDY, _Stealth_CD = ConRO:AbilityReady(Ability.stealth, timeShift);
	local _SymbolsofDeath, _SymbolsofDeath_RDY, _SymbolsofDeath_CD = ConRO:AbilityReady(Ability.symbols_of_death, timeShift);
		local _SymbolsofDeath_BUFF = ConRO:Aura(Buff.symbols_of_death, timeShift);
	local _ThistleTea, _ThistleTea_RDY = ConRO:AbilityReady(Ability.thistle_tea, timeShift);
	local _Vanish, _Vanish_RDY = ConRO:AbilityReady(Ability.vanish, timeShift);
		local _Vanish_BUFF = ConRO:Aura(Buff.vanish, timeShift);
		
	local _, escalating_blade_count = ConRO:Form(Buff.escalating_blade);

--Poisons
	local _CripplingPoison_BUFF = ConRO:Aura(Buff.crippling_poison, timeShift);
	local _InstantPoison_BUFF = ConRO:Aura(Buff.instant_poison, timeShift);
	local _WoundPoison_BUFF = ConRO:Aura(Buff.wound_poison, timeShift);

--Conditions
	local _is_stealthed = IsStealthed();
	local _combat_stealth = _is_stealthed or _ShadowDance_BUFF or _Vanish_BUFF or _Shadowmeld_BUFF;

	if tChosen[Ability.subterfuge.talentID] then
		_Stealth, _Stealth_RDY = ConRO:AbilityReady(Ability.subterfuge, timeShift);
	end

	if tChosen[Ability.gloomblade.talentID] then
		_Backstab, _Backstab_RDY = ConRO:AbilityReady(Ability.gloomblade, timeShift);
	end

	if ConRO:HeroSpec(HeroSpec.trickster) and tChosen[Ability.coup_de_grace.talentID] and escalating_blade_count >= 4 then
		_Eviscerate, _Eviscerate_RDY = ConRO:AbilityReady(Ability.coup_de_grace, timeShift);
	end

	local _Poison_applied = false;
	if _InstantPoison_BUFF then
		_Poison_applied = true;
	elseif _WoundPoison_BUFF then
		_Poison_applied = true;
	end

--Indicators
	ConRO:AbilityInterrupt(_Kick, _Kick_RDY and ConRO:Interrupt());
	ConRO:AbilityInterrupt(_CheapShot, _CheapShot_RDY and (_Combo <= _Combo_Max - 1) and _is_PvP_Target and ConRO:Interrupt());
	ConRO:AbilityInterrupt(_KidneyShot, _KidneyShot_RDY and (_Combo >= _Combo_Max - 1) and _is_PvP_Target and ConRO:Interrupt());
	ConRO:AbilityPurge(_ArcaneTorrent, _ArcaneTorrent_RDY and _target_in_melee and ConRO:Purgable());
	ConRO:AbilityMovement(_Shadowstep, _Shadowstep_RDY and _Shadowstep_RANGE and not _target_in_melee);
	ConRO:AbilityMovement(_Sprint, _Sprint_RDY and not _target_in_melee);

	ConRO:AbilityBurst(_ColdBlood, _ColdBlood_RDY and _Combo >=_Combo_Max - 1 and ConRO:BurstMode(_ColdBlood));
	ConRO:AbilityBurst(_Flagellation, _Flagellation_RDY and _ShadowBlades_RDY and _Combo >= (_Combo_Max - 1) and ConRO:BurstMode(_Flagellation));
	ConRO:AbilityBurst(_SecretTechnique, _SecretTechnique_RDY and (_SymbolsofDeath_BUFF or (not _SymbolsofDeath_BUFF and _SymbolsofDeath_CD > 5)) and (_Combo >= (_Combo_Max - 1) or _EchoingReprimand_Match) and ConRO:BurstMode(_SecretTechnique));
	ConRO:AbilityBurst(_ShadowBlades, _ShadowBlades_RDY and _SymbolsofDeath_BUFF and ConRO:BurstMode(_ShadowBlades));
	ConRO:AbilityBurst(_ShadowDance, _ShadowDance_RDY and not _combat_stealth and _SymbolsofDeath_BUFF and ConRO:BurstMode(_ShadowDance));
	ConRO:AbilityBurst(_Shadowmeld, _Shadowmeld_RDY and not ConRO:IsSolo() and not _combat_stealth and not _FindWeakness_DEBUFF and _Combo <= 0);
	ConRO:AbilityBurst(_ShurikenTornado, _ShurikenTornado_RDY and _SymbolsofDeath_BUFF and ConRO:BurstMode(_ShurikenTornado));
	ConRO:AbilityBurst(_Vanish, _Vanish_RDY and not ConRO:IsSolo() and not _combat_stealth and _Energy >= 45 and _Combo <= 1)
--	ConRO:AbilityBurst(trinket_1_id, trinket_1_usable and trinket_1_rdy and ConRO:BurstMode("item"))
--	ConRO:AbilityBurst(trinket_2_id, trinket_2_usable and trinket_2_rdy and ConRO:BurstMode("item"))
	
--Warnings
	ConRO:Warnings("Put lethal poison on your weapon!", not _Poison_applied and (_in_combat or _is_stealthed));

--Rotations
	repeat
		while(true) do
			if not _in_combat then
				if _Stealth_RDY and not _is_stealthed then
					tinsert(ConRO.SuggestedSpells, _Stealth);
					_is_stealthed = true;
					_Queue = _Queue + 1;
					break;
				end

				if _SymbolsofDeath_RDY and not _SymbolsofDeath_BUFF then
					tinsert(ConRO.SuggestedSpells, _SymbolsofDeath);
					_SymbolsofDeath_RDY = false;
					_SymbolsofDeath_BUFF = true;
					_Queue = _Queue + 1;
					break;
				end

				if _Rupture_RDY and not _Rupture_DEBUFF and _Combo >= (_Combo_Max - 1) and _Energy >= 25 then
					tinsert(ConRO.SuggestedSpells, _Rupture);
					_Rupture_DEBUFF = true;
					_Combo = 0;
					_Energy = _Energy - 25;
					_in_combat = true;
					_Queue = _Queue + 1;
					break;
				end

				if _Shadowstrike_RDY and _combat_stealth and _Combo <= (_Combo_Max - 2) and _Energy >= 45 then
					tinsert(ConRO.SuggestedSpells, _Shadowstrike);
					if _Premeditation_FORM or _ShadowBlades_BUFF then
						_Combo = _Combo_Max;
					else
						_Combo = _Combo + 2;
					end
					_Energy = _Energy - 45;
					_in_combat = true;
					_Queue = _Queue + 1;
					break;
				end
			end

			if _Eviscerate_RDY and _Combo >= _Combo_Max and _DarkestNight_BUFF then
				tinsert(ConRO.SuggestedSpells, _Eviscerate);
				_SliceandDice_BUFF = true;
				_Combo = 0;
				_Queue = _Queue + 1;
				break;
			end

		--[[if trinket_1_usable and trinket_1_rdy and ConRO:FullMode("item") then
				tinsert(ConRO.SuggestedSpells, tostring(trinket_1_id));  --Items need to be made into strings for now
				trinket_1_rdy = false;
				trinket_2_rdy = false;
				_Queue = _Queue + 1;
				break;
			elseif trinket_2_usable and trinket_2_rdy and ConRO:FullMode("item") then
				tinsert(ConRO.SuggestedSpells, tostring(trinket_2_id));  --Items need to be made into strings for now
				trinket_1_rdy = false;
				trinket_2_rdy = false;
				_Queue = _Queue + 1;
				break;
			end]]

			if _ShadowBlades_RDY and _Flagellation_BUFF and ConRO:FullMode(_ShadowBlades) then
				tinsert(ConRO.SuggestedSpells, _ShadowBlades);
				_ShadowBlades_RDY = false;
				_ShadowBlades_BUFF = true;
				_Queue = _Queue + 1;
				break;
			end

			if _SymbolsofDeath_RDY and not _SymbolsofDeath_BUFF and (_Flagellation_BUFF or _SecretTechnique_RDY) then
				tinsert(ConRO.SuggestedSpells, _SymbolsofDeath);
				_SymbolsofDeath_RDY = false;
				_SymbolsofDeath_BUFF = true;
				_Queue = _Queue + 1;
				break;
			end

			if _ShadowDance_RDY and _Combo <= 3 and not _combat_stealth and _ShadowDance_CHARGES >= 1 and _SymbolsofDeath_BUFF and ConRO:FullMode(_ShadowDance) then
				tinsert(ConRO.SuggestedSpells, _ShadowDance);
				_ShadowDance_CHARGES = _ShadowDance_CHARGES - 1;
				_combat_stealth = true;
				_Queue = _Queue + 1;
				break;
			end

			if _Vanish_RDY and not ConRO:IsSolo() and not _combat_stealth and _Combo <= 1 and ConRO:FullMode(_Vanish) then
				tinsert(ConRO.SuggestedSpells, _Vanish);
				_combat_stealth = true;
				_Vanish_RDY = false;
				_Queue = _Queue + 1;
				break;
			end

			if _GoremawsBite_RDY and not _combat_stealth and _Combo <= 1 then
				tinsert(ConRO.SuggestedSpells, _GoremawsBite);
				_GoremawsBite_RDY = false;
				if _Premeditation_FORM or _ShadowBlades_BUFF then
					_Combo = _Combo_Max;
				else
					_Combo = _Combo + 3;
				end
				_Queue = _Queue + 1;
				break;
			end

			if _Flagellation_RDY and _ShadowBlades_RDY and _Combo >= (_Combo_Max - 1) and ConRO:FullMode(_Flagellation) then
				tinsert(ConRO.SuggestedSpells, _Flagellation);
				_Flagellation_RDY = false;
				_Flagellation_BUFF = true;
				_Queue = _Queue + 1;
				break;
			end

			if _ShurikenTornado_RDY and _SymbolsofDeath_BUFF and _Energy >= 60 and ((ConRO_AutoButton:IsVisible() and _enemies_in_melee >= 4) or ConRO_AoEButton:IsVisible()) and ConRO:FullMode(_ShurikenTornado) then
				tinsert(ConRO.SuggestedSpells, _ShurikenTornado);
				_ShurikenTornado_RDY = false;
				_Energy = _Energy - 60;
				_Queue = _Queue + 1;
				break;
			end

			if _Combo >= (_Combo_Max - 1) then
				if _ColdBlood_RDY and _SecretTechnique_RDY and _Energy >= 30 and (_ShadowDance_BUFF or _SymbolsofDeath_BUFF) and ConRO:FullMode(_ColdBlood) then
					tinsert(ConRO.SuggestedSpells, _ColdBlood);
					_ColdBlood_RDY = false;
					_ColdBlood_BUFF = true;
					_Queue = _Queue + 1;
					break;
				end

				if _SecretTechnique_RDY and _Energy >= 30 and (_ShadowDance_BUFF or _SymbolsofDeath_BUFF) and ConRO:FullMode(_SecretTechnique) then
					tinsert(ConRO.SuggestedSpells, _SecretTechnique);
					_SecretTechnique_RDY = false;
					_Combo = 0;
					_Energy = _Energy - 30;
					_Queue = _Queue + 1;
					break;
				end

				if _Eviscerate_RDY and _Energy >= 35 and not _SliceandDice_BUFF and not _ShadowDance_BUFF then
					tinsert(ConRO.SuggestedSpells, _Eviscerate);
					_SliceandDice_BUFF = true;
					_Combo = 0;
					_Energy = _Energy - 35;
					_Queue = _Queue + 1;
					break;
				end

				if _Rupture_RDY and _Energy >= 25 and (not _Rupture_DEBUFF or _Rupture_DUR < 9) and not _ShadowDance_BUFF then
					tinsert(ConRO.SuggestedSpells, _Rupture);
					_Rupture_DEBUFF = true;
					_Rupture_DUR = 32;
					_Combo = 0;
					_Energy = _Energy - 25;
					_Queue = _Queue + 1;
					break;
				end

				if _BlackPowder_RDY and _Energy >= 35 and ((ConRO_AutoButton:IsVisible() and _enemies_in_melee >= 7) or ConRO_AoEButton:IsVisible()) then
					tinsert(ConRO.SuggestedSpells, _BlackPowder);
					_Combo = 0;
					_Energy = _Energy - 35;
					_Queue = _Queue + 1;
					break;
				end

				if _Eviscerate_RDY and _Energy >= 35 then
					tinsert(ConRO.SuggestedSpells, _Eviscerate);
					_Combo = 0;
					_Energy = _Energy - 35;
					_Queue = _Queue + 1;
					break;
				end
			end

			if _Shadowstrike_RDY and _Energy >= 45 and _combat_stealth and ((ConRO_AutoButton:IsVisible() and _enemies_in_melee <= 3) or ConRO_SingleButton:IsVisible()) then
				tinsert(ConRO.SuggestedSpells, _Shadowstrike);
				if _Premeditation_FORM or _ShadowBlades_BUFF then
					_Combo = _Combo_Max;
				else
					_Combo = _Combo + 2;
				end
				_Energy = _Energy - 45;
				_Queue = _Queue + 1;
				break;
			end

			if _ShurikenStorm_RDY and _Energy >= 45 and _CleartheWitnesses_BUFF then
				tinsert(ConRO.SuggestedSpells, _ShurikenStorm);
				if _Premeditation_FORM or _ShadowBlades_BUFF then
					_Combo = _Combo_Max;
				else
					_Combo = _Combo + _enemies_in_10yrds;
				end
				_Energy = _Energy - 45;
				_Queue = _Queue + 1;
				break;
			end

			if _Backstab_RDY and _Energy >= 40 and not _combat_stealth and ((ConRO_AutoButton:IsVisible() and _enemies_in_melee <= 1) or ConRO_SingleButton:IsVisible()) then
				tinsert(ConRO.SuggestedSpells, _Backstab);
				if _Premeditation_FORM or _ShadowBlades_BUFF then
					_Combo = _Combo_Max;
				else
					_Combo = _Combo + 1;
				end
				_Energy = _Energy - 40;
				_Queue = _Queue + 1;
				break;
			end

			if _ShurikenStorm_RDY and _Energy >= 45 and ((ConRO_AutoButton:IsVisible() and _enemies_in_melee >= 3) or ConRO_AoEButton:IsVisible()) then
				tinsert(ConRO.SuggestedSpells, _ShurikenStorm);
				if _Premeditation_FORM or _ShadowBlades_BUFF then
					_Combo = _Combo_Max;
				else
					_Combo = _Combo + _enemies_in_10yrds;
				end
				_Energy = _Energy - 45;
				_Queue = _Queue + 1;
				break;
			end

			tinsert(ConRO.SuggestedSpells, 6603); --Waiting Spell Icon
			_Queue = _Queue + 3;
			break;
		end
	until _Queue >= 3;
	return nil;
end

function ConRO.Rogue.SubletyDef(_, timeShift, currentSpell, gcd, tChosen, pvpChosen)
	wipe(ConRO.SuggestedDefSpells);
	ConRO:Stats();

--Abilities
	local _Evasion, _Evasion_RDY = ConRO:AbilityReady(Ability.evasion, timeShift);
	local _CrimsonVial, _CrimsonVial_RDY = ConRO:AbilityReady(Ability.crimson_vial, timeShift);

--Conditions
	local _is_stealthed = IsStealthed();

--Rotations
	if _CrimsonVial_RDY and _Player_Percent_Health <= 70 then
		tinsert(ConRO.SuggestedDefSpells, _CrimsonVial);
	end

	if _Evasion_RDY and _in_combat then
		tinsert(ConRO.SuggestedDefSpells, _Evasion);
	end
	return nil;
end