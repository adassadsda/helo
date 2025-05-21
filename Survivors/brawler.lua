local SPRITE_PATH = path.combine(PATH, "Sprites/Survivors/Brawler")


local sprite_loadout =        Resources.sprite_load(NAMESPACE, "BrawlerSelect", path.combine(SPRITE_PATH, "Select.png"), 13, 2, 0)
local sprite_portrait =       Resources.sprite_load(NAMESPACE, "BrawlerPortrait", path.combine(SPRITE_PATH, "portrait.png"), 2)
local sprite_portrait_small = Resources.sprite_load(NAMESPACE, "BrawlerPortraitSmall", path.combine(SPRITE_PATH, "portraitSmall.png"))
local sprite_skills =         Resources.sprite_load(NAMESPACE, "BrawlerSkills", path.combine(SPRITE_PATH, "skills.png"), 9)

local sprite_idle =           Resources.sprite_load(NAMESPACE, "BrawlerIdle", path.combine(SPRITE_PATH, "Idle.png"), 1, 9, 10)
local sprite_walk =           Resources.sprite_load(NAMESPACE, "BrawlerWalk", path.combine(SPRITE_PATH, "Walk.png"), 8, 11, 13)
local sprite_jump =           Resources.sprite_load(NAMESPACE, "BrawlerJump", path.combine(SPRITE_PATH, "Jump.png"), 1, 9, 12)
local sprite_climb =          Resources.sprite_load(NAMESPACE, "BrawlerClimb", path.combine(SPRITE_PATH, "Climb.png"), 2, 6, 10)
local sprite_death =          Resources.sprite_load(NAMESPACE, "BrawlerDeath", path.combine(SPRITE_PATH, "Death.png"), 9, 12, 12)
local sprite_decoy =          Resources.sprite_load(NAMESPACE, "BrawlerDecoy", path.combine(SPRITE_PATH, "Decoy.png"), 1, 8, 10)

local sprite_shoot1_1 =       Resources.sprite_load(NAMESPACE, "BrawlerShoot1_1", path.combine(SPRITE_PATH, "shoot1_1.png"), 6, 13, 20)
local sprite_shoot1_2 =       Resources.sprite_load(NAMESPACE, "BrawlerShoot1_2", path.combine(SPRITE_PATH, "shoot1_2.png"), 6, 13, 20)
local sprite_shoot1_3 =       Resources.sprite_load(NAMESPACE, "BrawlerShoot1_3", path.combine(SPRITE_PATH, "shoot1_3.png"), 9, 13, 20)
local sprite_shoot1_4 =       Resources.sprite_load(NAMESPACE, "BrawlerShoot1_4", path.combine(SPRITE_PATH, "shoot1_4.png"), 6, 11, 27)
local sprite_shoot2_1 =       Resources.sprite_load(NAMESPACE, "BrawlerShoot2_1", path.combine(SPRITE_PATH, "shoot2_1.png"), 6, 12, 24)
local sprite_shoot2_2 =       Resources.sprite_load(NAMESPACE, "BrawlerShoot2_2", path.combine(SPRITE_PATH, "shoot2_2.png"), 4, 14, 22)
local sprite_shoot3_1 =       Resources.sprite_load(NAMESPACE, "BrawlerShoot3_1", path.combine(SPRITE_PATH, "shoot3_1.png"), 7, 33, 19)
local sprite_shoot3_2 =       Resources.sprite_load(NAMESPACE, "BrawlerShoot3_2", path.combine(SPRITE_PATH, "shoot3_2.png"), 7, 11, 24)
local sprite_shoot4_1 =       Resources.sprite_load(NAMESPACE, "BrawlerShoot4_1", path.combine(SPRITE_PATH, "shoot4_1.png"), 11, 29, 12)
local sprite_shoot4_2 =       Resources.sprite_load(NAMESPACE, "BrawlerShoot4_2", path.combine(SPRITE_PATH, "shoot4_2.png"), 10, 15, 21)
local sprite_shoot4_3 =       Resources.sprite_load(NAMESPACE, "BrawlerShoot4_3", path.combine(SPRITE_PATH, "shoot4_3.png"), 5, 10, 10)

local sprite_slam =       Resources.sprite_load(NAMESPACE, "BrawlerSlam", path.combine(SPRITE_PATH, "sBrawlerSlam.png"), 6, 61, 37)


-------- the brawlah
local brawler = Survivor.new(NAMESPACE, "brawler")
local brawler_id = brawler.value

brawler:set_stats_base({
	maxhp = 140,
	damage = 13,
	regen = 1.2/60
})

brawler:set_stats_level({
	maxhp = 30,
	damage = 3,
	regen = 0.15/60,
	armor = 3
})

brawler:set_animations({
	idle = sprite_idle,
	walk = sprite_walk,
	jump = sprite_jump,
	jump_peak = sprite_jump,
	fall = sprite_fall,
	climb = sprite_climb,
	death = sprite_death,
	decoy = sprite_decoy
})

brawler:set_cape_offset(0,0,0,0)
brawler:set_primary_color(Color.from_rgb(236,180,124))

brawler.sprite_loadout = sprite_loadout
brawler.sprite_portrait = sprite_portrait
brawler.sprite_portrait_small = sprite_portrait_small
brawler.sprite_title = sprite_walk

brawler:clear_callbacks()

local brawlerPrimary =   brawler:get_primary()
local brawlerSecondary = brawler:get_secondary()
local brawlerUtility =   brawler:get_utility()
local brawlerSpecial =   brawler:get_special()


-------- WAVE PUMMEL!
local combo = 0
local combo_window = 0.5 * 60
local combo_time = 0

brawlerPrimary.sprite = sprite_skills
brawlerPrimary.subimage = 0
brawlerPrimary.cooldown = 12
brawlerPrimary.damage = 1
brawlerPrimary.require_key_press = false
brawlerPrimary.is_primary = true
brawlerPrimary.does_change_activity_state = true
brawlerPrimary.hold_facing_direction = true
brawlerPrimary.required_interrupt_priority = State.ACTOR_STATE_INTERRUPT_PRIORITY.any

local stateBrawlerPrimary = State.new(NAMESPACE, "brawlerPrimary")

brawlerPrimary:clear_callbacks()
brawlerPrimary:onActivate(function( actor )
	actor:enter_state(stateBrawlerPrimary)
end)

stateBrawlerPrimary:clear_callbacks()
stateBrawlerPrimary:onEnter(function( actor, data )
	actor.image_index = 0
	data.fired = 0
end)

stateBrawlerPrimary:onStep(function( actor, data )
	actor:skill_util_fix_hspeed()
	actor:actor_animation_set(actor.sprite_index, 0.25)

	if Global._current_frame - combo_time > combo_window then
		combo = 0
	end

	if combo == 0 then
		actor.sprite_index = sprite_shoot1_1
	elseif combo == 1 then
		actor.sprite_index = sprite_shoot1_2
	else
		actor.sprite_index = sprite_shoot1_3
	end

	combo_time = Global._current_frame

	if data.fired == 0 then
		data.fired = 1
		actor:skill_util_nudge_forward(5 * actor.image_xscale)
	end

	if actor.image_index + actor.image_speed >= actor.image_number then
		if combo >= 2 then
			combo = 0
		else
			combo = combo + 1
		end
		actor:skill_util_reset_activity_state()
	end
end)