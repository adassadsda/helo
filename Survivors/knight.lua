local SPRITE_PATH = path.combine(PATH, "Sprites/Survivors/Knight")
local SOUND_PATH = path.combine(PATH, "Sounds/Survivors/Knight")


-- assets as per usual
-- icons
local sprite_loadout =        Resources.sprite_load(NAMESPACE, "KnightSelect", path.combine(SPRITE_PATH, "Select.png"), 19, 2, 0)
local sprite_portrait =       Resources.sprite_load(NAMESPACE, "KnightPortrait", path.combine(SPRITE_PATH, "portrait.png"), 2)
local sprite_portrait_small = Resources.sprite_load(NAMESPACE, "KnightPortraitSmall", path.combine(SPRITE_PATH, "portraitSmall.png"))
local sprite_skills =         Resources.sprite_load(NAMESPACE, "KnightSkills", path.combine(SPRITE_PATH, "skills.png"), 6)

-- non-skill sprites
local sprite_idle =           Resources.sprite_load(NAMESPACE, "KnightIdle", path.combine(SPRITE_PATH, "Idle.png"), 1, 8, 12)
local sprite_idle_half =      Resources.sprite_load(NAMESPACE, "KnightIdleHalf", path.combine(SPRITE_PATH, "IdleHalf.png"), 1, 8, 12)
local sprite_walk =           Resources.sprite_load(NAMESPACE, "KnightWalk", path.combine(SPRITE_PATH, "Walk.png"), 8, 8, 12)
local sprite_walk_half =      Resources.sprite_load(NAMESPACE, "KnightWalkHalf", path.combine(SPRITE_PATH, "WalkHalf.png"), 8, 8, 12)
local sprite_jump =           Resources.sprite_load(NAMESPACE, "KnightJump", path.combine(SPRITE_PATH, "Jump.png"), 1, 8, 12)
local sprite_jump_half =      Resources.sprite_load(NAMESPACE, "KnightJumpHalf", path.combine(SPRITE_PATH, "JumpHalf.png"), 1, 8, 12)
local sprite_climb =          Resources.sprite_load(NAMESPACE, "KnightClimb", path.combine(SPRITE_PATH, "Climb.png"), 2, 4, 8)
local sprite_death =          Resources.sprite_load(NAMESPACE, "KnightDeath", path.combine(SPRITE_PATH, "Death.png"), 9, 9, 11)
local sprite_decoy =          Resources.sprite_load(NAMESPACE, "KnightDecoy", path.combine(SPRITE_PATH, "Decoy.png"), 1, 9, 18)

-- skill sprites
local sprite_shoot1_1 =       Resources.sprite_load(NAMESPACE, "KnightShoot1_1", path.combine(SPRITE_PATH, "Shoot1_1.png"), 4, 8, 14)
local sprite_shoot1_1_half =  Resources.sprite_load(NAMESPACE, "KnightShoot1_1Half", path.combine(SPRITE_PATH, "Shoot1_1Half.png"), 4, 8, 14)
local sprite_shoot1_2 =       Resources.sprite_load(NAMESPACE, "KnightShoot1_2", path.combine(SPRITE_PATH, "Shoot1_2.png"),4, 8 ,16)
local sprite_shoot1_2_half =  Resources.sprite_load(NAMESPACE, "KnightShoot1_2Half", path.combine(SPRITE_PATH, "Shoot1_2Half.png"), 4, 8, 16)
local sprite_shoot1_3 =       Resources.sprite_load(NAMESPACE, "KnightShoot1_3", path.combine(SPRITE_PATH, "Shoot1_3.png"), 6, 8, 12)
local sprite_shoot2 =         Resources.sprite_load(NAMESPACE, "KnightShoot2", path.combine(SPRITE_PATH, "Shoot2.png"), 5, 8, 12)
local sprite_shoot2_half =    Resources.sprite_load(NAMESPACE, "KnightShoot2_Half", path.combine(SPRITE_PATH, "Shoot2_Half.png"), 5, 8, 12)
local sprite_shoot3 =         Resources.sprite_load(NAMESPACE, "KnightShoot3", path.combine(SPRITE_PATH, "Shoot3.png"), 7, 10, 22)
local sprite_shoot4 =         Resources.sprite_load(NAMESPACE, "KnightShoot4", path.combine(SPRITE_PATH, "Shoot4.png"), 18, 17, 19)

-- effect sprites
local sprite_sparks1 =        Resources.sprite_load(NAMESPACE, "KnightSparks1", path.combine(SPRITE_PATH, "Sparks1.png"), 4, 7, 7)
local sprite_sparks2 =		  Resources.sprite_load(NAMESPACE, "KnightSparks2", path.combine(SPRITE_PATH, "Sparks2.png"), 4, 10, 10)
local sprite_sparks3 =        Resources.sprite_load(NAMESPACE, "KnightSparks3", path.combine(SPRITE_PATH, "Shoot4Ef.png"), 5, 76, 19)
local sprite_invigorate =     Resources.sprite_load(NAMESPACE, "KnightInvigorateBuff", path.combine(SPRITE_PATH, "buff.png"), 1, 9, 9)

-- sounds
local sound_shoot1a =         Resources.sfx_load(NAMESPACE, "KnightShoot1a", path.combine(SOUND_PATH, "skill1a.ogg"))
local sound_shoot1b =         Resources.sfx_load(NAMESPACE, "KnightShoot1b", path.combine(SOUND_PATH, "skill1b.ogg"))
local sound_shoot1c =         Resources.sfx_load(NAMESPACE, "KnightShoot1c", path.combine(SOUND_PATH, "skill1c.ogg"))
local sound_shoot1d =         Resources.sfx_load(NAMESPACE, "KnightShoot1d", path.combine(SOUND_PATH, "skill1d.ogg"))
local sound_shoot2 =          Resources.sfx_load(NAMESPACE, "KnightShoot2", path.combine(SOUND_PATH, "skill2.ogg"))
local sound_shoot2_impact =   Resources.sfx_load(NAMESPACE, "Knightshoot2Impact", path.combine(SOUND_PATH, "skill2impact.ogg"))
local sound_shoot2_deflect =    Resources.sfx_load(NAMESPACE, "KnightShoot2Block", path.combine(SOUND_PATH, "skill2deflect.ogg"))
local sound_shoot3a =         Resources.sfx_load(NAMESPACE, "KnightShoot3a", path.combine(SOUND_PATH, "skill3a.ogg"))
local sound_shoot3b =         Resources.sfx_load(NAMESPACE, "KnightShoot3b", path.combine(SOUND_PATH, "skill3b.ogg"))
local sound_shoot4 =          Resources.sfx_load(NAMESPACE, "KnightShoot4", path.combine(SOUND_PATH, "skill4.ogg"))


-------- knight
local knight = Survivor.new(NAMESPACE, "knight")
local knight_id = knight.value

-- stats setup
knight:set_stats_base({
	maxhp = 101,
	damage = 13,
	regen = 0.0095
})

knight:set_stats_level({
	maxhp = 24,
	damage = 4.2,
	regen = 0.0013,
	armor = 3
})

-- animations setup
knight:set_animations({
	idle = sprite_idle,
	walk = sprite_walk,
	jump = sprite_jump,
	jump_peak = sprite_jump,
	fall = sprite_fall,
	climb = sprite_climb,
	death = sprite_death,
	decoy = sprite_decoy
})

knight:set_cape_offset(0,0,0,0)
knight:set_primary_color(Color.from_rgb(234,183,121))

-- ui sprites setup
knight.sprite_loadout = sprite_loadout
knight.sprite_portrait = sprite_portrait
knight.sprite_portrait_small = sprite_portrait_small
knight.sprite_title = sprite_walk

-- strafing setup
knight:clear_callbacks()
knight:onInit(function( actor )
	local idle_half = Array.new()
	local walk_half = Array.new()
	local jump_half = Array.new()
	idle_half:push(sprite_idle, sprite_idle_half, 0)
	walk_half:push(sprite_walk, sprite_walk_half, 0, sprite_walk)
	jump_half:push(sprite_jump, sprite_jump_half, 0)

	actor.sprite_idle_half = idle_half
	actor.sprite_walk_half = walk_half
	actor.sprite_jump_half = jump_half
	actor.sprite_jump_peak_half = jump_half
	actor.sprite_fall_half = jump_half

	actor:survivor_util_init_half_sprites()
end)

-- skills setup
local knightPrimary =   knight:get_primary()
local knightSecondary = knight:get_secondary()
local knightUtility =   knight:get_utility()
local knightSpecial =   knight:get_special()

local knightPrimaryAlt = Skill.new(NAMESPACE, "knightGreatsword")
knight:add_primary(knightPrimaryAlt)

local knightSpecialScepter = Skill.new(NAMESPACE, "knightSpecialBoosted")
knightSpecial:set_skill_upgrade(knightSpecialScepter)

-- parry enhanced skills
local knightShieldBash = Skill.new(NAMESPACE, "knightShieldBash")
local knightBeyblade = Skill.new(NAMESPACE, "knightBeyblade")
local knightShieldOrbit = Skill.new(NAMESPACE, "knightShieldOrbit")
local knightShieldOrbitScepter = Skill.new(NAMESPACE, "knightShieldOrbitScepter")
local knightShockwave = Skill.new(NAMESPACE, "knightShockwave")


-------- DUEL!
local combo = 0
local combo_window = 0.5 * 60
local combo_time = 0
local shoot1_sounds = {sound_shoot1a, sound_shoot1b, sound_shoot1c, sound_shoot1d}

knightPrimary.sprite = sprite_skills
knightPrimary.subimage = 0
knightPrimary.cooldown = 12
knightPrimary.damage = 1.1
knightPrimary.require_key_press = false
knightPrimary.is_primary = true
knightPrimary.does_change_activity_state = true
knightPrimary.hold_facing_direction = true
knightPrimary.required_interrupt_priority = State.ACTOR_STATE_INTERRUPT_PRIORITY.any

local stateKnightPrimary = State.new(NAMESPACE, "knightPrimary")

-- actual skill
knightPrimary:clear_callbacks()
knightPrimary:onActivate(function( actor )
	actor:enter_state(stateKnightPrimary)
end)

stateKnightPrimary:clear_callbacks()
stateKnightPrimary:onEnter(function( actor, data )
	actor.image_index = 0
	data.fired = 0
end)

stateKnightPrimary:onStep(function( actor, data )
	actor:skill_util_fix_hspeed()
	actor:actor_animation_set(actor.sprite_index, 0.15)

	if Global._current_frame - combo_time > combo_window then
		combo = 0
	end

	if combo == 0 then
		actor.sprite_index = sprite_shoot1_1
	else
		actor.sprite_index = sprite_shoot1_2
	end

	combo_time = Global._current_frame

	if data.fired == 0 then
		data.fired = 1
		actor:sound_play(shoot1_sounds[math.ceil(math.random() * 3 + 1)], .5, 0.9 + math.random() * 0.8)
		actor:skill_util_nudge_forward(5 * actor.image_xscale)

		if actor:is_authority() then
			local damage = actor:skill_get_damage(knightPrimary)
			local dir = actor.image_xscale
			local sparks = combo == 0 and sprite_sparks1 or sprite_sparks2

			if not GM.skill_util_update_heaven_cracker(actor, damage, actor.image_xscale) then 
				local buff_shadow_clone = Buff.find("ror", "shadowClone")
				for i=0, actor:buff_stack_count(buff_shadow_clone) do
					attack = actor:fire_explosion(actor.x + dir * 30, actor.y, 100, 50, damage, nil, sparks)
				end
			end
		end
	end

	if actor.image_index + actor.image_speed >= actor.image_number then
		if combo >= 1 then
			combo = 0
		else
			combo = combo + 1
		end
		actor:skill_util_reset_activity_state()
	end
end)


-------- CLASH!
local hit_enemies_shieldbash

knightShieldBash.sprite = sprite_skills
knightShieldBash.subimage = 5
knightShieldBash.damage = 3
knightShieldBash.cooldown = 0
knightShieldBash.require_key_press = true
knightShieldBash.required_interrupt_priority = State.ACTOR_STATE_INTERRUPT_PRIORITY.skill

local stateKnightShieldBash = State.new(NAMESPACE, "knightShieldBash")

-- actual skill
knightShieldBash:clear_callbacks()
knightShieldBash:onActivate(function( actor )
	actor:enter_state(stateKnightShieldBash)
end)

stateKnightShieldBash:clear_callbacks()
stateKnightShieldBash:onEnter(function( actor, data )
	actor.image_index = 0
	actor.sprite_index = sprite_shoot1_3
	actor.image_speed = .25

	data.fired = 0
	data.previous_index = 0

	hit_enemies_shieldbash = List.new()
end)

stateKnightShieldBash:onStep(function( actor, data )
	actor.pHspeed = (2 * actor.pHmax * actor.image_xscale) - (0.75 * actor.image_index * actor.image_xscale)
	actor:set_immune(3)

	if data.fired == 0 then
		data.fired = 1
		actor.pHspeed = 2.5 * actor.pHmax * actor.image_xscale
		actor:sound_play(sound_shoot2_impact, 0.5, 0.8)
	end

	if data.previous_index < math.floor(actor.image_index) then
		data.previous_index = data.previous_index + 1

		if actor:is_authority() then
			local damage = actor:skill_get_damage(knightShieldBash)
			local dir = actor.image_xscale
			local targets = List.new()

			local x_size = 25
			local y_size = 25

			actor:collision_rectangle_list(actor.x - x_size, actor.y + y_size, actor.x + x_size, actor.y - y_size, gm.constants.pActor, false, true, targets, false)

			for _, target in ipairs(targets) do
				if target.team ~= actor.team then
					local cannot_be_hit = 0
					for _, previous in ipairs(hit_enemies_shieldbash) do
						if target.value == previous.value then 
							cannot_be_hit = 1
						end
					end

					if cannot_be_hit == 0 then
						local buff_shadow_clone = Buff.find("ror", "shadowClone")
						for i=0, actor:buff_stack_count(buff_shadow_clone) do
							attack = actor:fire_direct(target, damage, dir, actor.x, actor.y, sprite_sparks2, true)
							attack.attack_info:allow_stun()
							attack.attack_info:set_stun(3, dir, standard)
						end

						table.insert(hit_enemies_shieldbash, target)
					end
				end
			end

			targets:destroy()
		end
	end

	actor:skill_util_exit_state_on_anim_end()
end)

stateKnightShieldBash:onExit(function( actor, data )
	hit_enemies_shieldbash:destroy()
	local cooldown = actor:get_default_skill(Skill.SLOT.secondary).cooldown
	actor:override_active_skill_cooldown(Skill.SLOT.secondary, cooldown)
end)


-------- VANQUISH!
local alt_combo = 0
local alt_combo_window = 0.5 * 60
local alt_combo_time = 0

knightPrimaryAlt.sprite = sprite_skills
knightPrimaryAlt.subimage = 0
knightPrimaryAlt.damage = 2.5
knightPrimaryAlt.require_key_press = false
knightPrimaryAlt.is_primary = true
knightPrimaryAlt.does_change_activity_state = true
knightPrimaryAlt.hold_facing_direction = true
knightPrimaryAlt.required_interrupt_priority = State.ACTOR_STATE_INTERRUPT_PRIORITY.any

local stateKnightGreatsword = State.new(NAMESPACE, "knightGreatsword")

knightPrimaryAlt:clear_callbacks()
knightPrimaryAlt:onActivate(function( actor )
	actor:enter_state(stateKnightGreatsword)
end)

stateKnightGreatsword:clear_callbacks()
stateKnightGreatsword:onEnter(function( actor, data )
	actor.image_index = 0
	data.fired = 0
end)

stateKnightGreatsword:onStep(function( actor, data )
	actor:skill_util_fix_hspeed()
	
	if Global._current_frame - alt_combo_time > alt_combo_window then
		alt_combo = 0
	end

	if alt_combo == 0 then
		actor.sprite_index = sprite_shoot1_1
		actor:actor_animation_set(actor.sprite_index, 0.075)
	elseif alt_combo == 1 then
		actor.sprite_index = sprite_shoot1_2
		actor:actor_animation_set(actor.sprite_index, 0.085)
	else
		actor.sprite_index = sprite_shoot1_2
		actor:actor_animation_set(actor.sprite_index, 0.06)
	end

	alt_combo_time = Global._current_frame

	if data.fired == 0 then
		if alt_combo == 2 then
			data.fired = 1
			actor:sound_play(gm.constants.wTurtleExplosion, 1, 0.5 + math.random() * 0.8)
			actor:skill_util_nudge_forward(12 * actor.image_xscale)

			if actor:is_authority() then
				local damage = actor:skill_get_damage(knightPrimaryAlt)
				local dir = actor.image_xscale

				if not GM.skill_util_update_heaven_cracker(actor, damage, actor.image_xscale) then 
					local buff_shadow_clone = Buff.find("ror", "shadowClone")
					for i=0, actor:buff_stack_count(buff_shadow_clone) do
						attack = actor:fire_explosion(actor.x + dir * 80, actor.y + 10, 180, 150, damage * 1.5, gm.constants.sEnforcerGrenadeExplosion, sprite_sparks1)
						attack.attack_info.knockback = 8
						attack.attack_info.knockback_direction = dir
						attack.attack_info:allow_stun()
						attack.attack_info:set_stun(1, dir, standard)
					end
				end
			end
		else
			data.fired = 1
			actor:sound_play(shoot1_sounds[math.ceil(math.random() * 3 + 1)], .5, 0.5 + math.random() * 0.8)
			actor:skill_util_nudge_forward(8 * actor.image_xscale)

			if actor:is_authority() then
				local damage = actor:skill_get_damage(knightPrimaryAlt)
				local dir = actor.image_xscale

				if not GM.skill_util_update_heaven_cracker(actor, damage, actor.image_xscale) then 
					local buff_shadow_clone = Buff.find("ror", "shadowClone")
					for i=0, actor:buff_stack_count(buff_shadow_clone) do
						attack = actor:fire_explosion(actor.x + dir * 30, actor.y, 100, 60, damage, nil, sprite_sparks1)
						attack.attack_info.knockback = 4
						attack.attack_info.knockback_direction = dir
					end
				end
			end
		end
	end

	if actor.image_index + actor.image_speed >= actor.image_number then
		if alt_combo >= 2 then
			alt_combo = 0
		else
			alt_combo = alt_combo + 1
		end
		actor:skill_util_reset_activity_state()
	end
end)


-------- SHOCKWAVE!
obj_shockwave_spawner = Object.new(NAMESPACE, "shockwaveSpawner")

obj_shockwave_spawner:clear_callbacks()
obj_shockwave_spawner:onCreate(function( inst )
	inst.parent = -4
	inst.dir = 1
	inst.offset = 60

	inst.start = Global._current_frame
	inst.length = 20
end)

obj_shockwave_spawner:onStep(function( inst )
	if Global._current_frame - inst.start >= 5 then
		inst.start = Global._current_frame

		inst.parent:fire_explosion(inst.x + inst.offset * inst.dir, inst.y + 10, 31, 116, 3.0, gm.constants.sGeyser)
		inst.offset = inst.offset + 50

		inst.length = inst.length - 1
	end

	if inst.length <= 0 then
		inst:destroy()
	end
end)

knightShockwave.sprite = sprite_skills
knightShockwave.subimage = 4
knightShockwave.damage = 6
knightShockwave.cooldown = 0 
knightShockwave.require_key_press = true
knightShockwave.required_interrupt_priority = State.ACTOR_STATE_INTERRUPT_PRIORITY.skill

local stateKnightShockwave = State.new(NAMESPACE, "knightShockwave")

knightShockwave:clear_callbacks()
knightShockwave:onActivate(function( actor )
	actor:enter_state(stateKnightShockwave)
end)

stateKnightShockwave:clear_callbacks()
stateKnightShockwave:onEnter(function( actor, data )
	actor.image_index = 0
	data.fired = 0
end)

stateKnightShockwave:onStep(function( actor, data )
	actor.sprite_index = sprite_shoot1_2
	actor:actor_animation_set(actor.sprite_index, 0.06)

	if data.fired == 0 then
		data.fired = 1
		actor:sound_play(gm.constants.wTurtleExplosion, 1, 0.5 + math.random() * 0.8)
		actor:skill_util_nudge_forward(12 * actor.image_xscale)

		if actor:is_authority() then
			local damage = actor:skill_get_damage(knightShockwave)
			local dir = actor.image_xscale

			local buff_shadow_clone = Buff.find("ror", "shadowClone")
			for i=0, actor:buff_stack_count(buff_shadow_clone) do
				attack = actor:fire_explosion(actor.x + dir * 60, actor.y + 10, 120, 100, damage * 1.5, gm.constants.sEnforcerGrenadeExplosion, sprite_sparks1)
				attack.attack_info.knockback = 6
				attack.attack_info.knockback_direction = dir
			end
		end

		local shockwave = obj_shockwave_spawner:create(actor.x, actor.y)
		shockwave.parent = actor
		shockwave.dir = actor.image_xscale
	end

	actor:skill_util_exit_state_on_anim_end()
end)


-------- CONTEND!
local blocking = 0
local parry_window = 0.5 * 60
local parry_start
local react_window = 1.5 * 60
local react_start 

knightSecondary.sprite = sprite_skills
knightSecondary.subimage = 1
knightSecondary.damage = 1.0
knightSecondary.cooldown = 3 * 60
knightSecondary.require_key_press = false
knightSecondary.does_change_activity_state = true
knightSecondary.hold_facing_direction = true
knightSecondary.required_interrupt_priority = State.ACTOR_STATE_INTERRUPT_PRIORITY.priority_skill

local stateKnightSecondary = State.new(NAMESPACE, "knightSecondary")
local stateKnightParry = State.new(NAMESPACE, "knightParry")

-- extra armor when guarding
local knightArmorBuff = Buff.new(NAMESPACE, "knightArmorBuff")
knightArmorBuff.show_icon = false
knightArmorBuff.is_timed = false

knightArmorBuff:clear_callbacks()
knightArmorBuff:onStatRecalc(function( actor )
	actor.armor = actor.armor + 100
end)

-- handling what to do when hit while guarding
Callback.add(Callback.TYPE.onDamagedProc, "SSKnightHandleBlocking", function( actor, hit_info )
	if actor.object_index == gm.constants.oP and actor.class == knight.value then
		if blocking == 1 then
			actor:sound_play(sound_shoot2_impact, .5, 0.9 + math.random() * 0.8)
		end
	end
end)

-- actual skill
knightSecondary:clear_callbacks()
knightSecondary:onActivate(function( actor )
	actor:enter_state(stateKnightSecondary)
end)

stateKnightSecondary:clear_callbacks()
stateKnightSecondary:onEnter(function( actor, data )
	actor.image_index2 = 0
	actor.deflect = 1

	data.exit = 0
	data.primed = 0

	blocking = 1
	parry_start = Global._current_frame

	actor:skill_util_strafe_init()
	actor:skill_util_strafe_turn_init()
	actor:buff_apply(knightArmorBuff, 1, 1)
	actor:freeze_active_skill(Skill.SLOT.secondary)
end)


stateKnightSecondary:onStep(function( actor, data ) -- ok ill break this state down because its a bunch of stuff
	-- set up strafing
	actor.sprite_index2 = sprite_shoot2_half
	actor:skill_util_strafe_update(.25, 0.5)
	actor:skill_util_step_strafe_sprites()
	actor:skill_util_strafe_turn_update()

	-- freezes the animation while being held
	if actor.image_index2 > 3 then
		actor.image_index2 = 3.1
	end

	-- plays the sound when the skill is first used
	if data.primed == 0 then
		data.primed = 1
		actor:sound_play(sound_shoot2, .5, 1.2)
	end

	-- tallies your hits youve parried
	if actor.deflect == 2 then
		actor:sound_play(sound_shoot2_deflect, .6, 1)

		local damage = actor:skill_get_damage(knightSecondary)

		local invigorateArea = GM.instance_create(actor.x, actor.y, gm.constants.oEfCircle)
		invigorateArea.radius = 80
		invigorateArea.rate = 5
		invigorateArea.image_blend = Color.from_rgb(220,228,164)

		if actor:is_authority() then -- just a fun little parry blast yayyyy
			local damage = actor:skill_get_damage(knightSpecial)
			local sparks = data.fired == 1 and sprite_sparks1 or sprite_sparks2

			local buff_shadow_clone = Buff.find("ror", "shadowClone")
			for i=0, actor:buff_stack_count(buff_shadow_clone) do
				attack = actor:fire_explosion(actor.x, actor.y, 150, 150, damage, sprite_sparks3, sparks, true)
				attack.attack_info:allow_stun()
				attack.attack_info:set_stun(1, dir, standard)
			end
		end

		actor:enter_state(stateKnightParry) -- this is your decision state where you can pick an empowered skill
	end

	-- turns off the parry window once its been a set amount of time
	if Global._current_frame - parry_start > parry_window then
		actor.deflect = 0
	end

	actor:freeze_active_skill(Skill.SLOT.secondary)

	-- turns off the skill once you let go of the key
	if actor:is_authority() and not actor:control("skill2", 0) then
		GM.actor_set_state_networked(actor, -1)
	end
end)

stateKnightSecondary:onExit(function( actor, data )
	actor:sound_play(sound_shoot2, .5, 0.8)
	actor:buff_remove(knightArmorBuff, 1)

	blocking = 0
	actor.deflect = 0
end)

stateKnightParry:clear_callbacks()
stateKnightParry:onEnter(function( actor, data )
	actor.image_index = 0
	actor.sprite_index = sprite_decoy

	react_start = Global._current_frame

	
	if actor:get_default_skill(Skill.SLOT.primary).skill_id == knightPrimary.value then
		GM._mod_ActorSkillSlot_addOverride(actor:actor_get_skill_slot(Skill.SLOT.primary), knightShieldBash, Skill.OVERRIDE_PRIORITY.cancel)
	elseif actor:get_default_skill(Skill.SLOT.primary).skill_id == knightPrimaryAlt.value then
		GM._mod_ActorSkillSlot_addOverride(actor:actor_get_skill_slot(Skill.SLOT.primary), knightShockwave, Skill.OVERRIDE_PRIORITY.cancel)
	end

	GM._mod_ActorSkillSlot_addOverride(actor:actor_get_skill_slot(Skill.SLOT.utility), knightBeyblade, Skill.OVERRIDE_PRIORITY.cancel)

	if actor:item_stack_count(Item.find("ror", "ancientScepter")) >= 1 then
		GM._mod_ActorSkillSlot_addOverride(actor:actor_get_skill_slot(Skill.SLOT.special), knightShieldOrbitScepter, Skill.OVERRIDE_PRIORITY.cancel)
	else
		GM._mod_ActorSkillSlot_addOverride(actor:actor_get_skill_slot(Skill.SLOT.special), knightShieldOrbit, Skill.OVERRIDE_PRIORITY.cancel)
	end
	
	
end)

stateKnightParry:onStep(function( actor, data )
	actor:set_immune(3)

	if Global._current_frame - react_start >= react_window then
		actor:skill_util_reset_activity_state()
	end
end)

stateKnightParry:onExit(function( actor, data )
	if actor:get_default_skill(Skill.SLOT.primary).skill_id == knightPrimary.value then
		GM._mod_ActorSkillSlot_removeOverride(actor:actor_get_skill_slot(Skill.SLOT.primary), knightShieldBash, Skill.OVERRIDE_PRIORITY.cancel)
	elseif actor:get_default_skill(Skill.SLOT.primary).skill_id == knightPrimaryAlt.value then
		GM._mod_ActorSkillSlot_removeOverride(actor:actor_get_skill_slot(Skill.SLOT.primary), knightShockwave, Skill.OVERRIDE_PRIORITY.cancel)
	end

	GM._mod_ActorSkillSlot_removeOverride(actor:actor_get_skill_slot(Skill.SLOT.utility), knightBeyblade, Skill.OVERRIDE_PRIORITY.cancel)

	if actor:item_stack_count(Item.find("ror", "ancientScepter")) >= 1 then
		GM._mod_ActorSkillSlot_removeOverride(actor:actor_get_skill_slot(Skill.SLOT.special), knightShieldOrbitScepter, Skill.OVERRIDE_PRIORITY.cancel)
	else
		GM._mod_ActorSkillSlot_removeOverride(actor:actor_get_skill_slot(Skill.SLOT.special), knightShieldOrbit, Skill.OVERRIDE_PRIORITY.cancel)
	end
end)


-------- STRIKE!
local hit_enemies_strike

knightUtility.sprite = sprite_skills
knightUtility.subimage = 2
knightUtility.cooldown = 5 * 60
knightUtility.damage = 3
knightUtility.require_key_press = true
knightUtility.required_interrupt_priority = State.ACTOR_STATE_INTERRUPT_PRIORITY.skill

local stateKnightUtility = State.new(NAMESPACE, "stateKnightUtility")

local shoot3_sounds = {sound_shoot3a, sound_shoot3b}

-- actual skill
knightUtility:clear_callbacks()
knightUtility:onActivate(function( actor )
	actor:enter_state(stateKnightUtility)
end)

stateKnightUtility:clear_callbacks()
stateKnightUtility:onEnter(function( actor, data )
	actor.image_index = 0
	actor.sprite_index = sprite_shoot3
	actor.image_speed = 0.5

	data.fired = 0
	data.previous_index = 0

	hit_enemies_strike = List.new()
end)

stateKnightUtility:onStep(function( actor, data )
	if data.fired == 0 then
		data.fired = 1
		actor.pHspeed = 3.5 * actor.pHmax * actor.image_xscale
		actor:sound_play(shoot3_sounds[math.ceil(math.random() + 1)], .5, 0.9 + math.random() * 0.8)
	end

	if data.previous_index < math.floor(actor.image_index) then
		data.previous_index = data.previous_index + 1

		if actor:is_authority() then
			local damage = actor:skill_get_damage(knightUtility)
			local dir = actor.image_xscale
			local targets = List.new()

			local x_size = 50
			local y_size = 25

			actor:collision_rectangle_list(actor.x - x_size, actor.y + y_size, actor.x + x_size, actor.y - y_size, gm.constants.pActor, false, true, targets, false)

			for _, target in ipairs(targets) do
				if target.team ~= actor.team then
					local cannot_be_hit = 0
					for _, previous in ipairs(hit_enemies_strike) do
						if target.value == previous.value then 
							cannot_be_hit = 1
						end
					end

					if cannot_be_hit == 0 then
						local buff_shadow_clone = Buff.find("ror", "shadowClone")
						for i=0, actor:buff_stack_count(buff_shadow_clone) do
							attack = actor:fire_direct(target, damage, dir, actor.x, actor.y, sprite_sparks2, true)
							attack.attack_info.knockback = 2
							attack.attack_info.knockback_direction = actor.image_xscale
						end

						table.insert(hit_enemies_strike, target)
					end
				end
			end

			targets:destroy()
		end
	end

	actor:set_immune(3)

	actor:skill_util_exit_state_on_anim_end()
end)

stateKnightUtility:onExit(function( actor, data )
	hit_enemies_strike:destroy()
	local cooldown = actor:get_default_skill(Skill.SLOT.utility).cooldown
	actor:override_active_skill_cooldown(Skill.SLOT.utility, cooldown)
end)


-------- SPIN!
knightBeyblade.sprite = sprite_skills
knightBeyblade.subimage = 5
knightBeyblade.cooldown = 5 * 60
knightBeyblade.damage = 0.8
knightBeyblade.require_key_press = true
knightBeyblade.required_interrupt_priority = State.ACTOR_STATE_INTERRUPT_PRIORITY.skill

local stateKnightBeyblade = State.new(NAMESPACE, "stateKnightBeyblade")

-- actual skill
knightBeyblade:clear_callbacks()
knightBeyblade:onActivate(function( actor )
	actor:enter_state(stateKnightBeyblade)
end)

stateKnightBeyblade:clear_callbacks()
stateKnightBeyblade:onEnter(function( actor, data )
	actor.image_index = 0
	actor.sprite_index = sprite_shoot3
	actor.image_speed = 0.25

	data.previous_index = 0

	hit_enemies_strike = List.new()
end)

stateKnightBeyblade:onStep(function( actor, data )
	actor.pHspeed = 2 * actor.pHmax * actor.image_xscale
	actor:set_immune(3)

	if data.previous_index < math.floor(actor.image_index) then
		data.previous_index = data.previous_index + 1
		actor:sound_play(shoot3_sounds[math.ceil(math.random() + 1)], .5, 0.9 + math.random() * 0.8)

		if actor:is_authority() then
			local damage = actor:skill_get_damage(knightBeyblade)

			local buff_shadow_clone = Buff.find("ror", "shadowClone")
			for i=0, actor:buff_stack_count(buff_shadow_clone) do
				attack = actor:fire_explosion(actor.x, actor.y, 100, 50, damage, sprite_sparks2, sprite_sparks1, true)
				attack.attack_info.knockback = 4
				attack.attack_info.knockback_direction = actor.image_xscale
			end
		end
	end

	actor:skill_util_exit_state_on_anim_end()
end)



-------- invigorate is such a funny word
knightSpecial.sprite = sprite_skills
knightSpecial.subimage = 3
knightSpecial.cooldown = 12 * 60
knightSpecial.damage = 3
knightSpecial.require_key_press = true
knightSpecial.required_interrupt_priority = State.ACTOR_STATE_INTERRUPT_PRIORITY.skill

knightSpecialScepter.sprite = sprite_skills
knightSpecialScepter.subimage = 4
knightSpecialScepter.cooldown = 12 * 60
knightSpecialScepter.damage = 3
knightSpecialScepter.require_key_press = true
knightSpecialScepter.required_interrupt_priority = State.ACTOR_STATE_INTERRUPT_PRIORITY.skill

local knightInvigorateBuff = Buff.new(NAMESPACE, "knightInvigorateBuff")
knightInvigorateBuff.icon_sprite = sprite_invigorate

knightInvigorateBuff:clear_callbacks()
knightInvigorateBuff:onStatRecalc(function( actor )
	actor.attack_speed = actor.attack_speed * 1.4
end)

local stateKnightSpecial = State.new(NAMESPACE, "knightSpecial")

knightSpecial:clear_callbacks()
knightSpecial:onActivate(function( actor )
	actor:enter_state(stateKnightSpecial)
end)

knightSpecialScepter:clear_callbacks()
knightSpecialScepter:onActivate(function( actor )
	actor:enter_state(stateKnightSpecial)
end)

-- actual skill
stateKnightSpecial:clear_callbacks()
stateKnightSpecial:onEnter(function( actor, data )
	actor.image_index = 0
	actor.sprite_index = sprite_shoot4
	actor.image_speed = 0.2

	data.fired = 0
end)

stateKnightSpecial:onStep(function( actor, data )
	if (data.fired == 0 and math.floor(actor.image_index) == 2) or (data.fired == 1 and math.floor(actor.image_index) == 5) then
		data.fired = data.fired + 1

		actor:sound_play(shoot1_sounds[math.ceil(math.random() * 3 + 1)], .5, 0.9 + math.random() * 0.8)

		if actor:is_authority() then
			local damage = actor:skill_get_damage(knightSpecial)
			local dir = actor.image_xscale
			local sparks = data.fired == 1 and sprite_sparks1 or sprite_sparks2

			local buff_shadow_clone = Buff.find("ror", "shadowClone")
			for i=0, actor:buff_stack_count(buff_shadow_clone) do
				attack = actor:fire_explosion(actor.x + dir * 30, actor.y, 100, 50, damage, nil, sparks)
			end
		end
	end

	if (data.fired == 2 and math.floor(actor.image_index) == 11) then
		data.fired = data.fired + 1

		actor:sound_play(sound_shoot4, .7, 0.9 + math.random() * 0.8)

		local invigorateArea = GM.instance_create(actor.x, actor.y, gm.constants.oEfCircle)
		invigorateArea.radius = 240
		invigorateArea.rate = 60
		invigorateArea.image_blend = Color.from_rgb(220,228,164)

		if actor:is_authority() then
			local damage = actor:skill_get_damage(knightSpecial)
			local sparks = data.fired == 1 and sprite_sparks1 or sprite_sparks2

			local buff_shadow_clone = Buff.find("ror", "shadowClone")
			for i=0, actor:buff_stack_count(buff_shadow_clone) do
				attack = actor:fire_explosion(actor.x, actor.y, 300, 300, damage, sprite_sparks3, sparks, true)
			end
		end

		local allies = List.new() -- list to hold our friends

		actor:collision_circle_list(actor.x, actor.y, 320, gm.constants.pActor, false, false, allies, false) -- this grabs all the actors in a radius

		for _, ally in ipairs(allies) do
			if ally.team == actor.team then -- checking to see who is actually our friend
				if actor:item_stack_count(Item.find("ror", "ancientScepter")) >= 1 then 
					ally:buff_apply(knightInvigorateBuff, 8 * 60, 1)
				else
					ally:buff_apply(knightInvigorateBuff, 4 * 60, 1)
				end
			end
		end

		allies:destroy()
	end

	actor:set_immune(3)
	actor:skill_util_fix_hspeed()

	actor:skill_util_exit_state_on_anim_end()
end)


-------- WARD!
obj_floating_shield = Object.new(NAMESPACE, "floatingShield")
obj_floating_shield:set_sprite(sprite_invigorate)

obj_floating_shield:clear_callbacks()
obj_floating_shield:onCreate(function( inst )
	inst.parent = -4
	inst.speed = 1
	inst.lifetime = 6 * 60
	inst.offset = 0
	inst.initial_radians = 0
	inst.hit_delay = 5

	local data = inst:get_data()
	data.hit_list = {}
end)

obj_floating_shield:onStep(function( inst )
	local data = inst:get_data()

	if not Instance.exists(inst.parent) then
		inst:destroy()
		return
	end

	inst.lifetime = inst.lifetime - 1
	if inst.lifetime < 0 then
		inst:destroy()
		return
	end
	
	inst.x = inst.parent.x + math.cos(inst.lifetime/10 * inst.speed + inst.initial_radians) * inst.offset
	inst.y = inst.parent.y + math.sin(inst.lifetime/10 * inst.speed + inst.initial_radians) * inst.offset

	if inst.offset < 75 then
		inst.offset = inst.offset + 5
	end

	for _, actor in ipairs(inst:get_collisions(gm.constants.pActorCollisionBase)) do
		if actor.team ~= inst.team and data.hit_list[actor.id] == nil then
			if gm._mod_net_isHost() then
				local attack = inst.parent:fire_direct(actor, 0.5, inst.direction, inst.x, inst.y, gm.constants.sBite3).attack_info
			end

			inst:sound_play(gm.constants.wMercenaryShoot1_3, 0.5, 0.9)
			data.hit_list[actor.id] = Global._current_frame

		elseif Global._current_frame - data.hit_list[actor.id] <= inst.hit_delay and actor.team ~= inst.team then
			if gm._mod_net_isHost() then
				local attack = inst.parent:fire_direct(actor, 0.9, inst.direction, inst.x, inst.y, gm.constants.sBite3).attack_info
			end

			inst:sound_play(gm.constants.wMercenaryShoot1_3, 0.5, 0.9)
			data.hit_list[actor.id] = Global._current_frame
		end
	end

	local projectiles = Instance.find_all(Instance.projectiles)
    for _, proj in ipairs(projectiles) do
	local dist = gm.point_distance(inst.x, inst.y, proj.x, proj.y)
		if dist <= 20 then
            proj:destroy()
        end
    end
end)


knightShieldOrbit.sprite = sprite_skills
knightShieldOrbit.subimage = 5
knightShieldOrbit.cooldown = 12 * 60
knightShieldOrbit.damage = 3
knightShieldOrbit.require_key_press = true
knightShieldOrbit.required_interrupt_priority = State.ACTOR_STATE_INTERRUPT_PRIORITY.skill

knightShieldOrbitScepter.sprite = sprite_skills
knightShieldOrbitScepter.subimage = 4
knightShieldOrbitScepter.cooldown = 12 * 60
knightShieldOrbitScepter.damage = 3
knightShieldOrbitScepter.require_key_press = true
knightShieldOrbitScepter.required_interrupt_priority = State.ACTOR_STATE_INTERRUPT_PRIORITY.skill

local stateKnightShieldOrbit = State.new(NAMESPACE, "knightShieldOrbit")

knightShieldOrbit:clear_callbacks()
knightShieldOrbit:onActivate(function( actor )
	actor:enter_state(stateKnightShieldOrbit)
end)

knightShieldOrbitScepter:clear_callbacks()
knightShieldOrbitScepter:onActivate(function( actor )
	actor:enter_state(stateKnightShieldOrbit)
end)

-- actual skill
stateKnightShieldOrbit:clear_callbacks()
stateKnightShieldOrbit:onEnter(function( actor, data )
	actor.image_index = 0
	actor.sprite_index = sprite_shoot4
	actor.image_speed = 0.2

	data.fired = 0
end)

stateKnightShieldOrbit:onStep(function( actor, data )
	if (data.fired == 0 and math.floor(actor.image_index) == 2) or (data.fired == 1 and math.floor(actor.image_index) == 5) then
		data.fired = data.fired + 1

		actor:sound_play(shoot1_sounds[math.ceil(math.random() * 3 + 1)], .5, 0.9 + math.random() * 0.8)

		if actor:is_authority() then
			local damage = actor:skill_get_damage(knightSpecial)
			local dir = actor.image_xscale
			local sparks = data.fired == 1 and sprite_sparks1 or sprite_sparks2

			local buff_shadow_clone = Buff.find("ror", "shadowClone")
			for i=0, actor:buff_stack_count(buff_shadow_clone) do
				attack = actor:fire_explosion(actor.x + dir * 30, actor.y, 100, 50, damage, nil, sparks)
			end
		end
	end

	if (data.fired == 2 and math.floor(actor.image_index) == 11) then
		data.fired = data.fired + 1

		actor:sound_play(sound_shoot4, .7, 0.9 + math.random() * 0.8)

		local invigorateArea = GM.instance_create(actor.x, actor.y, gm.constants.oEfCircle)
		invigorateArea.radius = 240
		invigorateArea.rate = 60
		invigorateArea.image_blend = Color.from_rgb(220,228,164)

		local shield_count = 2 + actor:item_stack_count(Item.find("ror", "ancientScepter"))
		for i = 1, shield_count do 
			local shield = obj_floating_shield:create(actor.x, actor.y)
			shield.parent = actor
			shield.initial_radians = (2 * math.pi)/shield_count * i
		end


		if actor:is_authority() then
			local damage = actor:skill_get_damage(knightSpecial)
			local sparks = data.fired == 1 and sprite_sparks1 or sprite_sparks2

			local buff_shadow_clone = Buff.find("ror", "shadowClone")
			for i=0, actor:buff_stack_count(buff_shadow_clone) do
				attack = actor:fire_explosion(actor.x, actor.y, 300, 300, damage, sprite_sparks3, sparks, true)
			end
		end

		local allies = List.new() -- list to hold our friends

		actor:collision_circle_list(actor.x, actor.y, 320, gm.constants.pActor, false, false, allies, false) -- this grabs all the actors in a radius

		for _, ally in ipairs(allies) do
			if ally.team == actor.team then -- checking to see who is actually our friend
				if actor:item_stack_count(Item.find("ror", "ancientScepter")) >= 1 then 
					ally:buff_apply(knightInvigorateBuff, 8 * 60, 1)
				else
					ally:buff_apply(knightInvigorateBuff, 4 * 60, 1)
				end
			end
		end

		allies:destroy()
	end

	actor:set_immune(3)
	actor:skill_util_fix_hspeed()

	actor:skill_util_exit_state_on_anim_end()
end) 

stateKnightShieldOrbit:onExit(function( actor, data )
	local cooldown = actor:get_default_skill(Skill.SLOT.special).cooldown
	actor:override_active_skill_cooldown(Skill.SLOT.special, cooldown)
end)