local SPRITE_PATH = path.combine(PATH, "Sprites/Survivors/Nucleator")
local SOUND_PATH = path.combine(PATH, "Sounds/Survivors/Nucleator")

-- sprites
local sprite_loadout        = Resources.sprite_load(NAMESPACE, "NukeSelect", path.combine(SPRITE_PATH, "select.png"), 16, 2, 0)
local sprite_portrait       = Resources.sprite_load(NAMESPACE, "NukePortrait", path.combine(SPRITE_PATH, "portrait.png"), 2)
local sprite_portrait_small = Resources.sprite_load(NAMESPACE, "NukePortraitSmall", path.combine(SPRITE_PATH, "portraitSmall.png"))
local sprite_skills         = Resources.sprite_load(NAMESPACE, "NukeSkills", path.combine(SPRITE_PATH, "skills.png"), 5)

local sprite_idle           = Resources.sprite_load(NAMESPACE, "NukeIdle", path.combine(SPRITE_PATH, "idle.png"), 1, 7, 9)
local sprite_idle_half      = Resources.sprite_load(NAMESPACE, "NukeIdleHalf", path.combine(SPRITE_PATH, "idle_half.png"), 1, 8, 9)
local sprite_walk           = Resources.sprite_load(NAMESPACE, "NukeWalk", path.combine(SPRITE_PATH, "walk.png"), 8, 7, 9)
local sprite_walk_half      = Resources.sprite_load(NAMESPACE, "NukeWalkHalf", path.combine(SPRITE_PATH, "walk_half.png"), 8, 7, 9)
local sprite_jump           = Resources.sprite_load(NAMESPACE, "NukeJump", path.combine(SPRITE_PATH, "jump.png"), 1, 6, 10)
local sprite_jump_half      = Resources.sprite_load(NAMESPACE, "NukeJumpHalf", path.combine(SPRITE_PATH, "jump_half.png"), 1, 6, 10)
local sprite_climb          = Resources.sprite_load(NAMESPACE, "NukeClimb", path.combine(SPRITE_PATH, "climb.png"), 2, 4, 9)
local sprite_death          = Resources.sprite_load(NAMESPACE, "NukeDeath", path.combine(SPRITE_PATH, "death.png"), 5, 5, 9)
local sprite_decoy          = Resources.sprite_load(NAMESPACE, "NukeDecoy", path.combine(SPRITE_PATH, "decoy.png"), 1, 9, 10)

local sprite_shoot1         = Resources.sprite_load(NAMESPACE, "NukeShoot1", path.combine(SPRITE_PATH, "shoot1.png"), 19, 10, 26)
local sprite_shoot1_half    = Resources.sprite_load(NAMESPACE, "NukeShoot1Half", path.combine(SPRITE_PATH, "shoot1_half.png"), 19, 10, 26)
local sprite_shoot2         = Resources.sprite_load(NAMESPACE, "NukeShoot2", path.combine(SPRITE_PATH, "shoot2.png"), 23, 10, 12)
local sprite_shoot2_half    = Resources.sprite_load(NAMESPACE, "NukeShoot2Half", path.combine(SPRITE_PATH, "shoot2_half.png"), 23, 10, 12)
local sprite_shoot3         = Resources.sprite_load(NAMESPACE, "NukeShoot3", path.combine(SPRITE_PATH, "shoot3.png"), 16, 15, 24)
local sprite_shoot4         = Resources.sprite_load(NAMESPACE, "NukeShoot4", path.combine(SPRITE_PATH, "shoot4.png"), 6, 11, 12)
local sprite_shoot4S        = Resources.sprite_load(NAMESPACE, "NukeShoot4S", path.combine(SPRITE_PATH, "shoot4S.png"), 6, 11, 12)

local sprite_bar            = Resources.sprite_load(NAMESPACE, "NukeBar", path.combine(SPRITE_PATH, "bar.png"), 1, 19, 9)
local sprite_sparks         = Resources.sprite_load(NAMESPACE, "NukeSparks", path.combine(SPRITE_PATH, "sparks.png"), 3, 13, 8)
local sprite_bullet         = Resources.sprite_load(NAMESPACE, "NukeBullet", path.combine(SPRITE_PATH, "bullet.png"), 4, 10, 5)
local sprite_explosion      = Resources.sprite_load(NAMESPACE, "NukeBulletExplosion", path.combine(SPRITE_PATH, "bulletExplosion.png"), 6, 11, 10)
local sprite_push           = Resources.sprite_load(NAMESPACE, "NukePush", path.combine(SPRITE_PATH, "push.png"), 4, 22, 15)
local sprite_push_blast     = Resources.sprite_load(NAMESPACE, "NukePushBlast", path.combine(SPRITE_PATH, "push_blast.png"), 6, 10, 12)


-- sounds
local sound_alarm           = Resources.sfx_load(NAMESPACE, "NukeShoot1a", path.combine(SOUND_PATH, "alarm.ogg"))
local sound_shoot1a         = Resources.sfx_load(NAMESPACE, "NukeShoot1a", path.combine(SOUND_PATH, "skill1a.ogg"))
local sound_shoot1b         = Resources.sfx_load(NAMESPACE, "NukeShoot1b", path.combine(SOUND_PATH, "skill1b.ogg"))
local sound_shoot1c         = Resources.sfx_load(NAMESPACE, "NukeShoot1c", path.combine(SOUND_PATH, "skill1c.ogg"))
local sound_shoot2          = Resources.sfx_load(NAMESPACE, "NukeShoot2", path.combine(SOUND_PATH, "skill2.ogg"))
local sound_shoot3a         = Resources.sfx_load(NAMESPACE, "NukeShoot3a", path.combine(SOUND_PATH, "skill3a.ogg"))
local sound_shoot3b         = Resources.sfx_load(NAMESPACE, "NukeShoot3b", path.combine(SOUND_PATH, "skill3b.ogg"))
local sound_shoot3c         = Resources.sfx_load(NAMESPACE, "NukeShoot3c", path.combine(SOUND_PATH, "skill3c.ogg"))
local sound_shoot4a         = Resources.sfx_load(NAMESPACE, "NukeShoot4a", path.combine(SOUND_PATH, "skill4a.ogg"))
local sound_shoot4b         = Resources.sfx_load(NAMESPACE, "NukeShoot4b", path.combine(SOUND_PATH, "skill4b.ogg"))
local sound_shoot4c         = Resources.sfx_load(NAMESPACE, "NukeShoot4c", path.combine(SOUND_PATH, "skill4c.ogg"))


-------- THE NUCLEATORRRRRR!!!!
local nuke = Survivor.new(NAMESPACE, "nucleator")
local nuke_id = nuke.value

nuke:set_stats_base({
	maxhp = 115,
	damage = 12,
	regen = 0.0095
})

nuke:set_stats_level({
	maxhp = 34,
	damage = 3,
	regen = 0.0002,
	armor = 2
})

nuke:set_animations({
	idle = sprite_idle,
	walk = sprite_walk,
	jump = sprite_jump,
	jump_peak = sprite_jump,
	climb = sprite_climb,
	death = sprite_death,
	decoy = sprite_decoy
})

nuke:set_cape_offset(0,0,0,0)
nuke:set_primary_color(Color.from_rgb(255,250,0)) -- god hes so gross

nuke.sprite_loadout = sprite_loadout
nuke.sprite_portrait = sprite_portrait
nuke.sprite_portrait_small = sprite_portrait_small
nuke.sprite_title = sprite_walk

nuke:clear_callbacks()
nuke:onInit(function(actor)
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


local nukePrimary    = nuke:get_primary()
local nukeSecondary  = nuke:get_secondary()
local nukeUtility    = nuke:get_utility()
local nukeSpecial    = nuke:get_special()
local nukeSpecialScepter = Skill.new(NAMESPACE, "nukeSpecialBoosted")
nukeSpecial:set_skill_upgrade(nukeSpecialScepter)


-- buffs
local selfRadiation = Buff.new(NAMESPACE, "NukeSelfRad")
selfRadiation.icon_sprite = gm.constants.sBuffs
selfRadiation.icon_subimage = 9

selfRadiation:clear_callbacks()

local enemyRadiation = Buff.new(NAMESPACE, "NukeEnemyRad")
enemyRadiation.show_icon = false

enemyRadiation:clear_callbacks()


-- charging stuff dont mind me
local charge = 0
local charge_rate = 5
local charge_tick = 0

local charge_limit = 60
local charge_cap = charge_limit * 1.5

local function NukeChargeStep(actor)
	charge_tick = charge_tick + 1

	if charge_tick >= charge_rate then
		charge = charge + charge_rate
		charge_tick = 0

		if charge >= charge_limit and actor:buff_stack_count(selfRadiation) == 0 then
			local dmg = actor.hp * 0.02
			gm.damage_inflict(actor.id, dmg, 10, -25, actor.x, actor.y, dmg, 1, nuke.primary_color)
		end
	end

	if charge >= charge_cap then return 1 else return 0 end
end

local function NukeChargeRelease(actor)
	local ratio = charge/charge_cap
	charge = 0
	charge_tick = 0
	return ratio
end

local objChargeBar = Object.new(NAMESPACE, "NukeChargeBar")
objChargeBar.obj_depth = -1000

nuke:onStep(function( actor )
	data = actor:get_data()

	if not Instance.exists(data.charge_bar) then
		data.charge_bar = objChargeBar:create()
		data.charge_bar.parent = actor
	end
end)

objChargeBar:clear_callbacks()
objChargeBar:onCreate(function( inst )
	inst.parent = -4
	inst.persistent = true
end)
objChargeBar:onStep(function( inst )
	if not GM.actor_is_alive(inst.parent) then
		inst:destroy()
	end
end)

objChargeBar:onDraw(function( inst )
	if not Instance.exists(inst.parent) then return end
	if charge <= 0 and charge_tick == 0 then return end

	local actor = inst.parent
	local data = actor:get_data()

	local x, y = math.floor(actor.ghost_x+0.5), math.floor(actor.ghost_y+0.5)
	local x = x + 1
	local y = y + 19

	local bar_left		= x - 14
	local bar_right		= x + 15
	local bar_width		= bar_right - bar_left
	local bar_top		= y - 2
	local bar_bottom	= y + 1

	local ratio = charge/charge_cap

	if charge < charge_limit then
		gm.draw_set_colour(nuke.primary_color)
	else
		gm.draw_set_colour(Color.RED)
	end
	gm.draw_rectangle(bar_left, bar_top, bar_left + bar_width * ratio, bar_bottom, false)

	gm.draw_sprite(sprite_bar, 0, x, y)
end)


-------- IRRADIATE
local objNukeBullet = Object.new(NAMESPACE, "NucleatorBullet")
objNukeBullet:set_sprite(sprite_bullet)

objNukeBullet:clear_callbacks()
objNukeBullet:onCreate(function( inst )
	inst.parent = -4
	inst.speed = 2
	inst.dir = 0
	inst.lifetime = 4 * 60
	inst.ratio = 0
end)

objNukeBullet:onStep(function( inst )
	inst.x = inst.x + inst.speed * inst.dir

	local collisions = inst:get_collisions(gm.constants.pActorCollisionBase)

	for _, actor in ipairs(collisions) do 
		if inst.parent:attack_collision_canhit(actor) then
			inst.parent:fire_explosion(inst.x, inst.y, 50, 50, 2.5, sprite_explosion)
			inst:destroy()
		end
	end
end)


nukePrimary.sprite = sprite_skills
nukePrimary.subimage = 0
nukePrimary.cooldown = 12
nukePrimary.damage = 1.0
nukePrimary.require_key_press = false
nukePrimary.is_primary = true
nukePrimary.does_change_activity_state = true
nukePrimary.hold_facing_direction = true
nukePrimary.required_interrupt_priority = State.ACTOR_STATE_INTERRUPT_PRIORITY.any

local stateNukePrimary = State.new(NAMESPACE, "nukePrimary")
local stateNukePrimaryFire = State.new(NAMESPACE, "nukeFirePrimary")

nukePrimary:clear_callbacks()
nukePrimary:onActivate(function( actor )
	actor:enter_state(stateNukePrimary)
end)

stateNukePrimary:onEnter(function( actor, data )
	actor.image_index2 = 0

	data.exit_index = 15

	actor:skill_util_strafe_init()
	actor:skill_util_strafe_turn_init()
end)

stateNukePrimary:onStep(function( actor, data )
	actor.sprite_index2 = sprite_shoot1_half
	actor:skill_util_strafe_update(data.exit_index/charge_cap, 0.5)
	actor:skill_util_step_strafe_sprites()
	actor:skill_util_strafe_turn_update()

	if actor:is_authority() and ((not actor:control("skill1", 0) and charge > 0) or NukeChargeStep(actor) == 1) then
		GM.actor_set_state_networked(actor, stateNukePrimaryFire)
	end
end)


stateNukePrimaryFire:onEnter(function( actor, data )
	actor.image_index = 15
	actor.sprite_index = sprite_shoot1

	data.ratio = NukeChargeRelease(actor)
	data.fired = 0
end)

stateNukePrimaryFire:onStep(function( actor, data )
	actor:skill_util_fix_hspeed()
	actor:skill_util_exit_state_on_anim_end()
	actor:actor_animation_set(actor.sprite_index, 0.2)

	if data.fired == 0 then
		data.fired = 1
		actor:skill_util_nudge_forward(-20 * data.ratio * actor.image_xscale)

		local bullet = objNukeBullet:create(actor.x, actor.y)
		bullet.parent = actor
		bullet.dir = actor.image_xscale
	end
end)


-------- QUARANTINE
nukeSecondary.sprite = sprite_skills
nukeSecondary.subimage = 1
nukeSecondary.cooldown = 4 * 60
nukeSecondary.damage = 3.0
nukeSecondary.require_key_press = false
nukeSecondary.does_change_activity_state = true
nukeSecondary.hold_facing_direction = true
nukeSecondary.required_interrupt_priority = State.ACTOR_STATE_INTERRUPT_PRIORITY.skill

local stateNukeSecondary = State.new(NAMESPACE, "nukeSecondary")
local stateNukeSecondaryFire = State.new(NAMESPACE, "nukeFireSecondary")

nukeSecondary:clear_callbacks()
nukeSecondary:onActivate(function( actor )
	actor:enter_state(stateNukeSecondary)
end)

stateNukeSecondary:onEnter(function( actor, data )
	actor.image_index2 = 0

	data.exit_index = 16

	actor:skill_util_strafe_init()
	actor:skill_util_strafe_turn_init()
end)

stateNukeSecondary:onStep(function( actor, data )
	actor.sprite_index2 = sprite_shoot2_half
	actor:skill_util_strafe_update(data.exit_index/charge_cap, 0.5)
	actor:skill_util_step_strafe_sprites()
	actor:skill_util_strafe_turn_update()

	if actor:is_authority() and ((not actor:control("skill2", 0) and charge > 0) or NukeChargeStep(actor) == 1) then
		GM.actor_set_state_networked(actor, stateNukeSecondaryFire)
	end
end)


stateNukeSecondaryFire:onEnter(function( actor, data )
	actor.image_index = 16
	actor.sprite_index = sprite_shoot2

	data.ratio = NukeChargeRelease(actor)
	data.fired = 0
end)

stateNukeSecondaryFire:onStep(function( actor, data )
	actor:skill_util_fix_hspeed()
	actor:skill_util_exit_state_on_anim_end()
	actor:actor_animation_set(actor.sprite_index, 0.2)

	if data.fired == 0 then
		data.fired = 1
		actor:skill_util_nudge_forward( -10 + -20 * data.ratio * actor.image_xscale)
	end
end)


-------- FISSION IMPULSE
nukeUtility.sprite = sprite_skills
nukeUtility.subimage = 2
nukeUtility.cooldown = 6 * 60
nukeUtility.damage = 5.5
nukeUtility.require_key_press = false
nukeUtility.does_change_activity_state = true
nukeUtility.hold_facing_direction = true
nukeUtility.required_interrupt_priority = State.ACTOR_STATE_INTERRUPT_PRIORITY.skill

local stateNukeUtility = State.new(NAMESPACE, "nukeUtility")
local stateNukeUtilityFire = State.new(NAMESPACE, "nukeFireUtility")

nukeUtility:clear_callbacks()
nukeUtility:onActivate(function( actor )
	actor:enter_state(stateNukeUtility)
end)

stateNukeUtility:onEnter(function( actor, data )
	data.exit_index = 14

	actor.image_index = 0
	actor.sprite_index = sprite_shoot3
	actor.image_speed = data.exit_index/charge_cap

	data.fired = 0
end)

stateNukeUtility:onStep(function( actor, data )
	actor:skill_util_fix_hspeed()

	if actor:is_authority() and ((not actor:control("skill3", 0) and charge > 0) or NukeChargeStep(actor) == 1) then
		GM.actor_set_state_networked(actor, stateNukeUtilityFire)
	end
end)


stateNukeUtilityFire:onEnter(function( actor, data )
	actor.image_index = 14
	actor.sprite_index = sprite_shoot3

	data.ratio = NukeChargeRelease(actor)
	data.fired = 0
end)

stateNukeUtilityFire:onStep(function( actor, data )
	actor:skill_util_fix_hspeed()
	actor:skill_util_exit_state_on_anim_end()
	actor:actor_animation_set(actor.sprite_index, 0.2)

	if data.fired == 0 then
		data.fired = 1
	end
end)


-------- RADIONUCLIDE SURGE
nukeSpecial.sprite = sprite_skills
nukeSpecial.subimage = 3
nukeSpecial.cooldown = 13 * 60
nukeSpecial.damage = 3.0
nukeSpecial.require_key_press = true
nukeSpecial.required_interrupt_priority = State.ACTOR_STATE_INTERRUPT_PRIORITY.skill

nukeSpecialScepter.sprite = sprite_skills
nukeSpecialScepter.subimage = 4
nukeSpecialScepter.cooldown = 13 * 60
nukeSpecialScepter.damage = 3.0
nukeSpecialScepter.require_key_press = true
nukeSpecialScepter.required_interrupt_priority = State.ACTOR_STATE_INTERRUPT_PRIORITY.skill

local stateNukeSpecial = State.new(NAMESPACE, "nukeSpecial")

nukeSpecial:clear_callbacks()
nukeSpecial:onActivate(function( actor )
	actor:enter_state(stateNukeSpecial)
end)

nukeSpecialScepter:clear_callbacks()
nukeSpecialScepter:onActivate(function( actor )
	actor:enter_state(stateNukeSpecial)
end)

stateNukeSpecial:onEnter(function( actor, data )
	actor.image_index = 0
	actor.sprite_index = actor:item_stack_count(Item.find("ror", "ancientScepter")) > 0 and sprite_shoot4S or sprite_shoot4
	actor.image_speed = 0.2

	data.fired = 0

	NukeChargeRelease(actor)
end)

stateNukeSpecial:onStep(function( actor, data )
	actor:set_immune(3)
	actor:skill_util_fix_hspeed()
	actor:skill_util_exit_state_on_anim_end()

	if data.fired == 0 then
		data.fired = 1
		actor:buff_apply(selfRadiation, 6 * 60, 1)
	end
end)