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

local sprite_shoot1         = Resources.sprite_load(NAMESPACE, "NukeShoot1", path.combine(SPRITE_PATH, "shoot1.png"), 1, 7, 9)
local sprite_shoot1_half    = Resources.sprite_load(NAMESPACE, "NukeShoot1Half", path.combine(SPRITE_PATH, "shoot1_half.png"), 1, 7, 9)
local sprite_shoot2         = Resources.sprite_load(NAMESPACE, "NukeShoot2", path.combine(SPRITE_PATH, "shoot2.png"), 1, 7, 9)
local sprite_shoot2_half    = Resources.sprite_load(NAMESPACE, "NukeShoot2Half", path.combine(SPRITE_PATH, "shoot2_half.png"), 1, 7, 9)
local sprite_shoot3         = Resources.sprite_load(NAMESPACE, "NukeShoot3", path.combine(SPRITE_PATH, "shoot3.png"), 1, 7, 9)
local sprite_shoot4         = Resources.sprite_load(NAMESPACE, "NukeShoot4", path.combine(SPRITE_PATH, "shoot4.png"), 1, 7, 9)
local sprite_shoot4S        = Resources.sprite_load(NAMESPACE, "NukeShoot4S", path.combine(SPRITE_PATH, "shoot4S.png"), 1, 7, 9)

local sprite_bar            = Resources.sprite_load(NAMESPACE, "NukeBar", path.combine(SPRITE_PATH, "bar.png"), 1, 7, 9)
local sprite_sparks         = Resources.sprite_load(NAMESPACE, "NukeSparks", path.combine(SPRITE_PATH, "sparks.png"), 1, 7, 9)
local sprite_bullet         = Resources.sprite_load(NAMESPACE, "NukeBullet", path.combine(SPRITE_PATH, "bullet.png"), 1, 7, 9)
local sprite_explosion      = Resources.sprite_load(NAMESPACE, "NukeBulletExplosion", path.combine(SPRITE_PATH, "bulletExplosion.png"), 1, 7, 9)
local sprite_push           = Resources.sprite_load(NAMESPACE, "NukePush", path.combine(SPRITE_PATH, "push.png"), 1, 7, 9)


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
nuke:onInit(function(actor) -- setting up the beasts half sprite stuff
	-- shoutouts to kris for the awesome code i can entirely copy!!
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


-- charging stuff dont mind me
local charge = 0
local charge_rate = 1
local charge_limit = 60
local charge_cap = 90

local function NukeChargeStep()
	charge = charge + 1

	if charge >= charge_cap then return 2
	elseif charge >= charge_limit return 1
	else return 0 end
end

local function NukeChargeRelease()
	
end
