--NODE:
--PRESS KEY "P" to reload script during game

--global variable
SCREEN_WIDTH							= 1280;
SCREEN_HEIGHT							= 720;
SAFE_FRAME_X_OFF						= 96;
SAFE_FRAME_Y_OFF						= 54;
	
function level01 ()
	return 1, 1.1, 0xcccccccc, "test string"
end

function GetDebugKeyInfoWin32 ()
	page = [[
	CTRL + 0 -- unlock all level
	CTRL + 1  -- show all level
	CTRL + GK A -- wire mode
	CTRL + GK B -- show this page
	CTRL + F2 -- activate Game Editor
	CTRL + F3 -- move the actor
	CTRL + F4 -- refresh lua
	CTRL + F6 -- free camera mode
	CTRL + F7 -- show collision box
	CTRL + F8 -- show safe frame
	CTRL + F9 -- show fps
	CTRL + GK X -- unlimited HP
	CTRL + GK Y -- Add bullets to 1000
	CTRL + GK_RIGHT -- Add plasma to 10
	CTRL + GK_DOWN, CTRL + GK X -- move the worm freely
	GK_RIGHT + GK A -- unlock trial version
	SHIFT + GK A -- add one life (all players)
	SHIFT + GK B -- died instantly (all players)
	]]
	
	return page
end

function GetDebugKeyInfoXBOX360 ()
	page = [[
	LEFT_THUMB + LEFT_TRIGGER -- unlock all level
	LEFT_THUMB + GK_UP  -- show all level
	LEFT_THUMB + GK A -- wire mode
	LEFT_THUMB + GK B -- show this page
	LEFT_THUMB + LEFT_SHOULDER -- show safe frame
	LEFT_THUMB + RIGHT_SHOULDER -- show fps
	LEFT_THUMB + GK X -- unlimited HP
	LEFT_THUMB + GK Y -- Add bullets to 1000
	LEFT_THUMB + GK_RIGHT -- Add plasma to 10
	LEFT_THUMB + GK_LEFT -- Create A Dump And Reboot
	LEFT_THUMB + GK_DOWN, LEFT_THUMB + GK X -- move the worm freely
	GK_RIGHT + GK A -- unlock trial version
	RIGHT_THUMB + GK A -- add one life (all players)
	RIGHT_THUMB + GK B -- died instantly (all players)
	]]
	
	return page
end

function GetDebugKeyInfoPS3 ()
	page = [[
	L3 + L2 -- unlock all level
	L3 + GK_UP  -- show all level
	L3 + GK_X -- wire mode
	L3 + GK_O -- show this page
	L3 + L1 -- show safe frame
	L3 + R1 -- show fps
	L3 + GK RECT -- unlimited HP
	L3 + GK TRIANGLE -- Add bullets to 1000
	L3 + GK_RIGHT -- Add plasma to 10
	L3 + GK_DOWN, L3 + GK RECT -- move the worm freely
	GK_RIGHT + GK_X -- unlock trial version
	R3 + GK_X -- add one life (all players)
	R3 + GK_O -- died instantly (all players)
	]]
	
	return page
end

function cfg_table ()
	local tab = {}
	tab["key1"] = 12
	tab["key2"] = 12.123
	return tab
end

--camera settings
function CameraCfg()
	local tab = 
	{
		MAX_SHAKE_FRAME = 8,
		SHAKE_INTERVAL = 66,

		--camera follow state
		CAMERA_TARGET_OFFSET_Y = 150,
		CAMERA_MIN_TOP_OFFSET_Y = 200,
		CAMERA_SPEED_MAX_X = 3000.0,
		CAMERA_SPEED_MAX_Y = 3000.0,
		CAMERA_SPEED_MIN_X = 50.0,
		CAMERA_SPEED_MIN_Y = 50.0,
		CAMERA_SPEED_COEFFICIENT_X = 7,
		CAMERA_SPEED_COEFFICIENT_Y = 10,
		CAMERA_SPEED_FOLLOW_ACTOR_X = 500;
		CAMERA_SPEED_FOLLOW_ACTOR_Y = 500;
	}
	return tab
end

function wormcfg01 ()
	local tab = {
----------------------------------------------- GENERAL ------------------------------------------------------------------
WORM_G = 2200, -- the gravity for worm
WORM_RUN_SPEED = 480, -- worm's run speed
WORM_BARE_MOVE_SPEED = 180, -- bare worm's move speed
WORM_HANG_SPEED_X = 320, -- worm's move speed when on slope
WORM_KEY_POINT_Y_OFFSET_SLOPE = 157, -- worm's key point offset on Y when worm on slope
WORM_INVINCIBLE_TIME = 1, -- worm's invincible second count, current is 1s
WORM_MAX_FALL_SPEED_Y = 1200, -- as MAX falling speed
WORM_GROUND_LAYER_RANGE = 100,	--range is (-WORM_GROUND_LAYER_RANGE, WORM_GROUND_LAYER_RANGE)
WORM_SUBMARINE_STAND_OFFSET_X = 0.0,	--position offset when stand in submarine
WORM_SUBMARINE_STAND_OFFSET_Y = -60.0,	--position offset when stand in submarine
WORM_HERCULES_PUNCH_OUT_SPEED_X = 1400.0,
WORM_HERCULES_PUNCH_OUT_SPEED_Y = -200.0,
WORM_HERCULES_PUNCH_OUT_ACCE_X = -1400.0,
WORM_HERCULES_PUNCH_OUT_ACCE_Y = 700.0,

WORM_START_IDLE_ANIM_MIN_TIME = 5000, -- min time to start idle animation
WORM_START_IDLE_ANIM_MAX_TIME = 14000, -- min time to start idle animation
----------------------------------------------- JUMP -----------------------------------------------------------------------
WORM_VALVE_SPEED_Y = -700, -- speed valve on Y axis
WORM_SUPER_JUMP_SPEED_Y = -1150, -- worm's super jump speed by super jump trigger
WORM_SUPER_JUMP_SPEED_Y_NORMAL = -1550, -- worm's super jump speed by spring
WORM_SUPER_JUMP_SPEED_Y_FAST = -2400, -- worm's super jump speed by spring with jump key pressed
WORM_JUMP_SPEED_Y = -1180, -- worm's jump speed.
WORM_BARE_JUMP_SPEED_Y = -1180, -- bare worm's jump speed.
WORM_RUN_JUMP_SPEED_X = 480, -- worm's run-jump speed on x axis 
WORM_JUMP_SPEED_X = 350, -- worm's jump speed on x axis
WORM_BARE_JUMP_SPEED_X = 300, -- bare worm's jump speed on x axis
WORM_HELICOPTER_START_SPEED_Y = 400.0,	--minimal y speed that can start helicopter state
WORM_HELICOPTER_SPEED_Y = 420.0,	--y speed when in helicopter state
WORM_HELICOPTER_START_CHECK_KEY_TIME = 300.0,	--

WORM_JUMP_CENTER_SPEED_OFFSET_LIMIT_DEFAULT = 99999.0,	--default speed offset limit frome center speed
WORM_JUMP_CENTER_SPEED_CONSTANT = -150.0,	--center speed is the addition of current speed and this value
WORM_JUMP_CENTER_SPEED_OFFSET_LIMIT_START = 150.0,	--start value of offset limit of center speed
WORM_JUMP_CENTER_SPEED_OFFSET_LIMIT_A = 200.0,
WORM_JUMP_LINEAR_ADJUST_AX_SLOW   = 1000.0,
WORM_JUMP_LINEAR_ADJUST_AX_NORMAL = 1400.0,
WORM_JUMP_LINEAR_ADJUST_AX_FAST   = 1800.0,
WORM_JUMP_SLIDE_FAST_SPEED_X = 950.0;
WORM_JUMP_SLIDE_FAST_SPEED_Y = -800.0;
WORM_JUMP_SLIDE_FAST_OFFSET_LIMIT = 200.0;
----------------------------------------------- BOUNCE ------------------------------------------------------------------
WORM_BOUNCE_HURT_SPEED = 900,
WORM_BOUNCE_SPEED_MOD = 800, -- Distance when worm bounce by type
WORM_BOUNCE_SPEED_INC_X = 150, -- speed increase when worm bounce by type and user pressed left or right
WORM_BOUNCE_SPEED_INC_Y = -600, -- speed increase when worm bounce by type and user pressed jump key
WORM_BOUNCE_SPEED_DEC_X = -150,
WORM_BOUNCE_SPEED_X_MAX = 600, -- max speed on x when bounce from type
------------------------------------------------- SLIDE ---------------------------------------------------------------------
WORM_SLIDE_UP_MAX_SPEED = -400, -- Speed Limit when climb up
WORM_SLIDE_HIT_DOWN_SPEED = 600, --Speed when hit by the falling stuff
WORM_SLIDE_HIT_DOWN_TIME = 300, --Speed when hit by the falling stuff
WORM_SLIDE_UP_A = -3000, -- Acc When climb up
WORM_SLIDE_X_SPEED = 400, -- Speed when move to side
WORM_SLIDE_START_FALL_SPEED = 300, -- start slide down if speed increased to this and not in climb zone
WORM_SLIDE_GROUND_RUN_ACCELERATE = 3000,
--friction coefficient = base * vx / vy
WORM_SLIDE_FRICTION_COEFFICIENT_BASE = 0.005,
WORM_SLIDE_FRICTION_COEFFICIENT_MAX = 2.0,	--max friction coefficient
--factor = b / (velocity + a);, used to adjust friction by speed
WORM_SLIDE_FRICTION_COEFFICIENT_SPEED_FACTOR_A = 4000.0 - 400,
WORM_SLIDE_FRICTION_COEFFICIENT_SPEED_FACTOR_B = 1 * 4000.0,
WORM_SLIDE_FRICTION_COEFFICIENT_SPEED_FACTOR_MAX = 2,	--max factor
--slide pause setting
WORM_SLIDE_PAUSE_SLIDE_TIME = 500.0,	--pause time in ms before start sliding
WORM_SLIDE_PAUSE_MAX_SPEED_Y = 300.0,	--don't pause slide if initial speed greater than this

------------------------------------------------- FAST SLIDE ---------------------------------------------------------------------
WORM_SLIDE_FAST_DEFAULT_SPEED_OFFSET_LIMIT = 480.0,
WORM_SLIDE_FAST_DEFAULT_ACCELERATE = 700,
WORM_SLIDE_FAST_OFFSET_LIMIT_A = 0.0,
WORM_SLIDE_FAST_RUN_A = 500.0,
WORM_BARE_SLIDE_FAST_RUN_A = 300.0,
------------------------------------------------- Swing ----------------------------------------------------------------------
WORM_SWING_LEAVING_SPEED_X  = 850, -- center speed on X when Worm Leaving Swing
WORM_SWING_LEAVING_SPEED_OFFSET_LIMIT  = 300, -- center speed offset limit on X when Worm Leaving Swing
--WORM_SWING_LEAVING_SPEED_X_SLOW  = 200, -- Speed on X when Worm Leaving Swing in slow speed --not used now
--WORM_SWING_LEAVING_SPEED_X_NORMAL  = 400, -- Speed on X when Worm Leaving Swing in normal speed --not used now
--WORM_SWING_LEAVING_SPEED_X_FAST = 800, -- Speed on X when Worm Leaving Swing in fast speed -- not used now
WORM_SWING_LEAVING_SPEED_Y_NORMAL = -750, -- Speed on Y when Worm Leaving Swing in normal speed
WORM_SWING_LEAVING_SPEED_Y_FAST = -1000, -- Speed on Y when Worm Leaving Swing in fast speed
--------------------------------------------------------------------------------------------------------------------------------
WORM_SHOOT_INTERVAL = 30, -- worm's shoot speed
WORM_MAX_HP = 999900,
WORM_MAX_HP_MULTIPLE = 10,

-----------------------------------------------fly level-------------------------------------------------------------------------
WORM_FLY_ANGLE_0 = 37.7,
WORM_FLY_ANGLE_1 = 48.6,
WORM_FLY_ANGLE_2 = 56.0,
WORM_FLY_ANGLE_3 = 66.5,
WORM_FLY_ANGLE_4 = 73.0,
WORM_FLY_ANGLE_5 = 82.0,
WORM_FLY_ANGLE_6 = 90.0,

WORM_ROCKET_ROTATION_0 = 100.0,
WORM_ROCKET_ROTATION_1 = 82.0,
WORM_ROCKET_ROTATION_2 = 70.0,
WORM_ROCKET_ROTATION_3 = 65.0,
WORM_ROCKET_ROTATION_4 = 40.0,
WORM_ROCKET_ROTATION_5 = 25.0,
WORM_ROCKET_ROTATION_6 = 15.0}
	return tab
end

--worm in space
function SpaceObjectCfg()
	local tab = 
	{
		HUD_WHOLE_DISTANCE = -90000,
		SPACE_CAMERA_MAX_DISTANCE = 20000;
		----------WORM DURATION-------------------------------------
		WORM_INVINCIBLE_DURATION = 8, --second
		WORM_INSANE_SPEED_DURATION = 8, -- second
		--------------------------WORM SPEED------------------------
		SPACE_WORM_NORMAL_SPEED = -3000,
		--SPACE_WORM_NORMAL_SPEED = -12000,
		SPACE_WORM_NORMAL_ACCELERATE = -3000,--related with SPACE_WORM_MAX_SPEED
		SPACE_WORM_NORMAL_DECELERATE = -4500,
		SPACE_WORM_ACCEBALL_DECELERATE = -4600, -- should not same with SPACE_WORM_NORMAL_DECELERATE
		SPACE_WORM_MAX_SPEED = -9900,
		--SPACE_WORM_MAX_SPEED = -12000,
		SPACE_WORM_INSANE_SPEED = -14000,
		--------------------------Psycrow SPEED------------------------
		SPACE_PSYCROW_NORMAL_SPEED = -6000,
		SPACE_PSYCROW_NORMAL_ACCELERATE = -3000,
		SPACE_PSYCROW_MAX_SPEED = -9500,
		SPACE_PSYCROW_SPEED_PERCENT_EASY = 0.7;
		SPACE_PSYCROW_SPEED_PERCENT_NORMAL = 0.8;
		SPACE_PSYCROW_SPEED_PERCENT_HARD = 0.9;
		
		SPACE_OBJECT_COLLISION_ANGLE = 15,-- angle, not radian
--		ROCK_DAMAGE = 10,
		--------------------------Psycrow touch with space-------------
		SPACE_ROCK_AVOID_DISTANCE = 1500, --when lower than this distance, psycrow start to avoid space rock
		SPACE_BALL_AVOID_DISTANCE = 1500, --when lower than this distance, psycrow start to avoid space ball
		SPACE_BALL_COLLIDE_DISTANCE = 300, --when lower than this distance, psycrow will collide space ball
		--------------------------ring---------------------------------
		SPACE_RINGS_LAST_DIS = -2000,
		----------------HUD--------------------------------------------
		HUD_CROW_DISTANCE_TO_LEFT_EDGE = 820,
		HUD_BONUS_DISTANCE_TO_TOP_EDGE = 104,
		HUD_RULER_TOP		= 80,
		HUD_BONUS_LEFT	= 250,
		HUD_SHEILD_RIGHT	= 1000,
	}
	return tab
end

function weapon_damage_table ()

	local tab = {}
	local tab_general = {}
	tab_general["shoot_h"] = 20 --shoot rect height
	tab_general["shoot_w"] = 0.6 --shoot rect width/screen_width
	tab["general"] = tab_general

	local tab_damage_params = {}
	tab_damage_params["easy"] = 0.5
	tab_damage_params["normal"] = 0.75
	tab_damage_params["hard"] = 0.75
	tab_damage_params["original"] = 1

	tab_damage_params["hero_multiple"] = 10
	tab_damage_params["enemy_multiple"] = 10
	tab["damageparam"] = tab_damage_params

	--whip table, hero->actor
	local tab_whip = {}
	tab_whip["general"] = 2
	tab_whip["crow"] = 50
	tab_whip["dog"] = 1
	tab_whip["centipede"] = 100
	tab_whip["maggot"] = 15
	tab_whip["shadow"] = 20
	tab_whip["queen"] = 100
	tab_whip["machine"] = 25
	tab_whip["snowman"] = 25
	tab_whip["dvdtower"] = 10
	tab_whip["granny"] = 10
	tab_whip["organboss"] = 5
	tab_whip["music_cat"] = 10
	tab_whip["locust"] = 5
	tab["whip"] = tab_whip
	
	--shoot table, hero->actor
	local tab_shoot = {}
	tab_shoot["general"] = 1
	tab_shoot["crow"] = 1
	tab_shoot["dog"] = 1
	tab_shoot["centipede"] = 1
	tab_shoot["maggot"] = 1
	tab_shoot["queen"] = 1
	tab_shoot["machine"] = 1
	tab_shoot["snowman"] = 1
	tab_shoot["granny"] = 2
	tab_shoot["organboss"] = 1
	tab_shoot["locust"] = 1
	tab["shoot"] = tab_shoot
	
		--plasma table, hero->actor
	local tab_plasma = {}
	tab_plasma["general"] = 10
	tab_plasma["crow"] = 10
	tab_plasma["dog"] = 10
	tab_plasma["garbagetruck"] = 100
	tab_plasma["centipede"] = 100
	tab_plasma["maggot"] = 100
	tab_plasma["queen"] = 20
	tab_plasma["machine"] = 25
	tab_plasma["shadow"] = 20
	tab_plasma["granny"] = 20
	tab_plasma["snowman"] = 50
	tab_plasma["officework"] = 100
	tab_plasma["organboss"] = 10
	tab_plasma["locust"] = 10
	tab["plasma"] = tab_plasma

	--actor->hero
	local tab_attackhero = {}
	tab_attackhero["general"] = 5
	tab_attackhero["ground_hurtbox"] = 20 --level1, near the first dog, hero is hurt when get down from slope
	tab_attackhero["dogbite"] = 20
	tab_attackhero["doghop"] = 10
	tab_attackhero["chunk"] = 10
	tab_attackhero["trump"] = 10
	tab_attackhero["fish"] = 10
	tab_attackhero["hook"] = 10
	tab_attackhero["psycrow"] = 5
	tab_attackhero["crowpeck"] = 1
	tab_attackhero["crowattack"] = 4
	tab_attackhero["officework"] = 10
	tab_attackhero["gate"] = 10
	tab_attackhero["garbage_shake"] = 5
	tab_attackhero["convey_belt_stuff"] = 10
	tab_attackhero["fire"] = 10
	tab_attackhero["shadow"] = 10
	tab_attackhero["evil_cat"] = 10
	tab_attackhero["hercules"] = 20
	tab_attackhero["squirrel"] = 5
	tab_attackhero["shitball"] = 13
	tab_attackhero["organboss_attack"] = 10
	tab_attackhero["organboss_acid"] = 10
	tab_attackhero["longtongue"] = 10
	tab_attackhero["swarm"] = 10
	tab_attackhero["electric"] = 10
	tab_attackhero["machine"] = 10
	tab_attackhero["tower"] = 10
	tab_attackhero["egg"] = 5
	tab_attackhero["chickenbomb"] = 5
	tab_attackhero["plant"] = 10
	tab_attackhero["rock_medium"] = 5
	tab_attackhero["rock_big"] = 10
	tab_attackhero["pete"] = 5
	tab_attackhero["ufo"] = 5
	tab_attackhero["dvd"] = 20
	tab_attackhero["spider"] = 5
	tab_attackhero["venom"] = 5
	tab_attackhero["electbee"] = 10
	tab_attackhero["granny"] = 10
	tab_attackhero["granny_silk"] = 5
	tab_attackhero["granny_needle"] = 10
	tab_attackhero["locust"] = 10
	tab_attackhero["space_rock"] = 10
	--add your weapon here
	
	tab["attackhero"] = tab_attackhero
	
	return tab
end

-- ConveyBelt
--------------------------------------------------------------
--			    ________				N: Slice Number
--			 R )________)				R: Radio
--			   D_ _ _ _	C	_			A: position
--			  /_ _ _ _	_\	_H			B-A: width
--			 /_ _ _ _ _ _ \				H: higth of one slice
--		    A______________B			INCLINE_RATE: (D-A).x / (D-A).y
--		 R )________________)			CYLINDER_SLICE: slices of cylinder
--
------------------------------------------------------------------
function conveybelt_property ()
	local tab = 
	{
		POSITION_X = 7100,
		POSITION_Y = 1040,
		BELT_WIDTH = 870,
		SLICE_HEIGHT = 33,
		SLICE_NUM = 32,
		CYLINDER_RADIO = 20,
		CYLINDER_SLICE = 10,
		INCLINE_RATE = 0.2,
		ROLL_SPEED = 100, -- belt roll velocity and stuff fall velocity
		-- stuff property
		STUFF_INIT_VELOCITY_Y = -800.0,
		STUFF_BROKEN_VELOCITY_X = 500.0,
		STUFF_BROKEN_VELOCITY_Y = -200.0,		
		STUFF_INTERVAL_SLICE_NUM = 12, -- how many slices between two stuff in vertical
		STUFF_INACTIVE_POS_Y = 2800
	}
	return tab
end

function garbageboss_property ()
	local tab = {
--when boss attacked, the jump speed
JUMP_SPEED_Y = -400.0,
--when boss jump,
-- we shold adjust it a litter above the ground ,otherwise it will collision with ground and the v is set to 0
POSITION_ADJUST_Y = 40.0,
-- when throw stithy, it's initialize speed
STITHY_INIT_SPEED_X = 1000.0,
STITHY_INIT_SPEED_Y = -600.0,
-- the stithy pos should above the truck
STITHY_INIT_POS_ADJUST_Y = -20.0,
--following specify the trump or stithy speed after attacked.
STITHY_BROKEN_SPEED_X = 400,
STITHY_BROKEN_SPEED_Y = 800,
TRUMP_BROKEN_SPEED_X = 400,
TRUMP_BROKEN_SPEED_Y = 500,
TRUCK_RUN_SPEED = 500.0, -- the speed when truck run
--the HP to control the boss state
BOSS_STAMP_HP = 240, -- if less than, change to stamp
BOSS_JUMP_HP = 180, -- if less than, change to truck jump
BOSS_RUN_HP = 90 -- if less than, change to truck run
	}
	return tab
end

function raven_property ()
	local tab = {
--offset of attack point from original point of earth worm
RAVEN_TARGET_OFFSET_X = 0,
RAVEN_TARGET_OFFSET_Y = 100,
--normal fly
RAVEN_FLY_SPEED_X = 300,	--x speed
RAVEN_FLY_SPEED_Y = 300,	--y speed when fly up
RAVEN_FLY_UP_Y_DISTANCE = 70,	--minimal distance to fly up
RAVEN_TURN_DISTANCE = 35,	--distance to turn
RAVEN_START_SWOOP_DOWN_MAX_X_DISTANCE = 50,	--max distance to start swoop down
RAVEN_START_SWOOP_DOWN_MAX_Y_DISTANCE = 240,
RAVEN_START_SWOOP_DOWN_MIN_Y_DISTANCE = 50,	--min y distance to start swoop down, must be smaller than RAVEN_FLY_UP_Y_DISTANCE
RAVEN_FORCE_START_SWOOP_DOWN_X_DISTANCE = 15,	--distance for forcing start swoop down
--prepare to swoop down
RAVEN_PREPARE_SWOOP_DOWN_SPEED_X = 200,
RAVEN_PREPARE_SWOOP_DOWN_SPEED_Y = 200,
RAVEN_PREPARE_SWOOP_DOWN_ACCELERATE_X = 100,
RAVEN_PREPARE_SWOOP_DOWN_ACCELERATE_Y = 100,
--swoop down
RAVEN_SWOOP_DOWN_SPEED_X = 500,
RAVEN_SWOOP_DOWN_SPEED_Y = 500,
RAVEN_SWOOP_DOWN_ACCELERATE_X = 600,
RAVEN_SWOOP_DOWN_ACCELERATE_Y = 600,
RAVEN_STOP_SWOOP_DOWN_MIN_TIME = 200,	--will not stop before this time
RAVEN_STOP_SWOOP_DOWN_Y_DISTANCE = 25,
RAVEN_PECK_RANGE = 23; -- used to judge whether the raven can change to peck state
--peck
RAVEN_PECK_OFFSET_X = 0,
RAVEN_PECK_OFFSET_Y = 70,
--fly away
RAVEN_FLY_AWAY_SPEED_X = 300,
RAVEN_FLY_AWAY_SPEED_Y = 300,
--hurt
RAVEN_HURT_SPEED = 100,
RAVEN_HURT_TIME = 700,
--peck
RAVEN_PECK_TIME = 3001,
RAVEN_PECK_INTERVAL = 300,
--feathers
FEATHER_REDIRECTION_TIME_1 = 100,
FEATHER_REDIRECTION_TIME_2 = 500,
FEATHER_FLY_SPEED_1 = 0.8,
FEATHER_FLY_SPEED_2 = 0.3,
FEATHER_NUM = 20,
FEATHER_HURT_NUM = 5
	}	
	return tab
end

function dog_params ()
	local tab = {
--run speed
DOG_RUN_SPEED_X	= 1000,
DOG_RUN_SPEED_Y	= 0,
DOG_RUN_ACCELERATE_X = 1000,
DOG_RUN_ACCELERATE_Y = 0,

--range 
DOG_DISTANCE_START_TO_HOP = 50,
DOG_DISTANCE_START_TO_BITE_X = 40,
DOG_DISTANCE_START_TO_BITE_Y = 40,
DOG_DISTANCE_START_TO_RUN_X = 500,
DOG_DISTANCE_START_TO_RUN_Y = 500,}
	return tab
end

function snowman_params ()
	local tab = {
FIREBALL_VELOCITY_X = 800,
FIREBALL_VELOCITY_Y = 0,

FIRST_FIREBALL_OFFSET = -60,
SECOND_FIREBALL_OFFSET = -90,
THIRD_FIREBALL_OFFSET = -50,

SNOWMAN_FIRE_TIME = 650,
FIRE_INTERVAL_TIME = 100,

SNOWMAN_WAIT_TIME_ONE = 1000,
SNOWMAN_WAIT_TIME_TWO = 500,
SNOWMAN_WAIT_TIME_THREE = 0,

SNOWMAN_RANDOM_POS_MIN = 520,
SNOWMAN_RANDOM_POS_MAX = 1250,
SNOWMAN_RANDOM_POS_Y = 400,
}
	return tab
end

function fire_params ()
	local tab = {
	-- for the fire that roll on the ground
	ROLL_FIRE_ACTIVATE_RANGE = 100,
	
	LINE_FIRE_INTERVAL_TIME = 310,
	SPOUT_FIRE_INTERVAL_TIME = 4000,
	-- the inverval time is a random num in the range
	RANDOM_FIRE_INTERVAL_TIME_RANGE = 8000,
	
	FIRE_BALL_VX = -400,
	FIRE_BALL_VY = 200,
				}
	return tab
end

function gem_transfer_params ()
	local tab = {
GEM_TRANSFER_UP_SPEED = -200,
GEM_TRANSFER_DOWN_SPEED = 300,
GEM_ROLL_UP_SPEED = -220,
GEM_ROLL_DOWN_SPEED = 40,
GEM_ROLL_TRIGGER_TIME = 800,

GEM_ROLL_MOVE_INIT_V_RATE = 0.5,
GEM_TRANSFER_INIT_V_RATE = 0.7,
GEM_ROLL_SPEED = 480,
GEM_TRANSFER_TRIGGER_TIME = 200,
GEM_ROLL_DELAY_TIME = 100,
	}
	return tab
end

function evil_cat_params ()
	local tab = {
SMALL_ROCK_FLY_V_X = -600,
SMALL_ROCK_FLY_V_Y = 0,
BIG_ROCK_FLY_V_X = -800,
BIG_ROCK_FLY_V_Y = 0,
ROCK_RESTITUTION = 0.8,
ROLL_FIRE_SPEED = 500,
FINAL_FIRE_LEFT_OFFSET = 100,
FINAL_FIRE_RIGHT_OFFSET = -100,
FINAL_FIRE_POS_Y = 540,
	}
	return tab
end

function bomb_cat_params ()
	local tab = {
	FALL_SINKER_NUMBER = 10,
	SINKER_INTERVAL_TIME = 200,
	SINKER_OFFSET = 100,
	CAT_THROW_INTERVAL_TIME = 15000,

	BOMB_INIT_OFFSET_X = 80,
	BOMB_INIT_OFFSET_Y = -50,
	BOMB_INIT_VELOCITY_X = 100,
	BOMB_INIT_VELOCITY_Y = -1000,
	}
	return tab
end

function wheel_params ()
	local tab = {
		WHEEL_CHECK_HAND_X1 = -45.0,
		WHEEL_CHECK_HAND_X2 = 45.0,
		WHEEL_CHECK_HAND_Y1 = -60.0,
		WHEEL_CHECK_HAND_Y2 = 60.0,
		WHEEL_CHECK_HAND_COEFFICIENT_V = 0.025,
		WHEEL_AUTO_ACCELERATE = 500.0,
		WHEEL_AUTO_DECELERATE = -1000.0,
		WHEEL_AUTO_SPEED_MIN = 300.0,
		WHEEL_AUTO_SPEED_MAX = 1000.0,
		WHEEL_SPEED_X = 450.0,
		WHEEL_SLOW_SPEED_X = 225.0,
		WHEEL_ACCELERATE = 1500.0,
		WHEEL_G = 2200.0,
		WHEEL_KEY_POINT_Y_OFFSET_SLOPE = 26.0,
	}
	return tab
end

function submarine_params ()
	local tab = {
		SUBMARINE_CHECK_IN_X1 = -120.0,
		SUBMARINE_CHECK_IN_Y1 = 0.0,
		SUBMARINE_CHECK_IN_X2 = 120.0,
		SUBMARINE_CHECK_IN_Y2 = 160.0,
		SUBMARINE_ENGINE_LEFT_X_OFFSET = -132,
		SUBMARINE_ENGINE_RIGHT_X_OFFSET = 132,
		SUBMARINE_ENGINE_ACC = 1200,
		SUBMARINE_WATER_ACC = 800,
		SUBMARINE_ENGINE_ANGLE_INC = 360,
		SUBMARINE_SPEED_MAX = 1200,
		SUBMARINE_START_TICKER = 99000,
		SUBMARINE_MAX_TICKER = 99000,
		SUBMARINE_CHARGE_MULTIPLIER = 4,
		SUBMARINE_CHARGE_END_SPEED_X = 200.0,
		SUBMARINE_COLLISION_MIN_SPEED_DIFFERENCE = 40.0,
		SUBMARINE_COLLISION_DAMAGE = 0,
		SUBMARINE_WORM_BUBBLE_OFFSET_X = 0.0,
		SUBMARINE_WORM_BUBBLE_OFFSET_Y = -190.0,
	}
	return tab
end

function laserCamera_params ()
	local tab = {
	IDLE_TIME = 1000, --  ns
	MAX_ANGEL = 180, --  No More Than 180
	MIN_ANGEL = 0, --  No Less Than 0
	SCAN_TIME = 1000, --  Scan Time
	LEFT_RANGE = -100,
	RIGHT_RANGE = 100,
	}
	return tab
end

function chunk_params ()
	local tab = {
--init position
CHUNK_INIT_POS_X = 16500,		--chunk boss initial postion X
CHUNK_INIT_POS_Y = 1200,		--chunk boss initial postion Y
GOODS_INIT_POS_X = 16820,		--goods initial postion X, include box ant trump
GOODS_INIT_POS_Y = 1545,		--goods initial postion Y, include box ant trump
MAGNET_INIT_POS_X = 16800,		--magnet initial postion X
MAGNET_INIT_POS_Y = 1465,		--magnet initial postion Y
SPRING_INIT_POS_X = 16550,		--spring initial postion X
SPRING_INIT_POS_Y = 2000,		--spring initial postion Y

--box or trump speed
GOODS_MOVE_SPEED_X = 300,		--goods move speed X
GOODS_MOVE_SPEED_Y = 0,			--goods move speed Y
GOODS_DOWN_SPEED_X = 0,			--goods down speed X
GOODS_GRAVITY_Y = 2000,			--goods gravity speed Y
CHUNK_MOVE_SPEED_X  = 200,		--chunk boss move speed X
CHUNK_MOVE_SPEED_Y  = 0,		--chunk boss move speed Y
BOX_ROLL_SPEED_X     = 500,		--box roll speed X after attacked
BOX_ROLL_SLOW_DOWN_X = 800,		--box slowdown speed X after attacked
BOX_SPRING_SPEED_Y   = 1150,	--box spring up Y after touched with spring
TRUMP_MOVE_SPEED_X   = 400;		--trump move speed X after attacked
TRUMP_MOVE_SPEED_Y	 = 600;	--trump move speed Y after attacked

--boss move range
CHUNK_MOVE_RIGHT_X  = 16500,	--chunk boss move range right X
CHUNK_MOVE_LEFT_X   = 16100,	--chunk boss move range left X

--box move range
BOX_MOVE_LEFT_X     = 16060,	--box move range left X
BOX_MOVE_DOWN_Y     = 1950,		--box invisible out of camera Y

--fish move speed and acceleration
FISH_MOVE_SPEED_X   = -1000,	--fish initial move speed X
FISH_MOVE_SPEED_Y   = -200,		--fish initial move speed Y
FISH_ACCE_SPEED_X   = 5000,		--fish slowdown speed X
FISH_ACCE_SPEED_Y   = 1500,		--fish slowdown speed Y

--number
CHUNK_DEAD_HIT_NUMBER = 6,		--hited number when dead
CHUNK_MOVE_HIT_NUMBER = 3,		--hited number when move
CHUNK_SHOOT_HIT_NUMBER = 5,		--hited number when always shoot

--time
CHUNK_TIME_BETWEEN_SHOOT = 500,	--shoot interval time
}
	return tab
end

function officework_params ()
	local tab = {
		--move position
		--OFFICEWORK_MOVE_LEFT_X			= -500;		--officework move range left X
		--OFFICEWORK_MOVE_RIGHT_X			= 500;		--officework move range right X

		--move Speed
		OFFICEWORK_SPEED_X				= 300;		--officework move speed X
		OFFICEWORK_MONEY_MOVE_SPEED_X	= 1000;		--money group move speed X(which officework shoot)
		OFFICEWORK_GRAVITY_Y			= 2000;		--officework gravity Y

		--shoot range
		OFFICEWORK_SHOOT_X				= 300;		--after less than this distance, officework will shoot
		OFFICEWORK_BACK_X				= 300;		--after less than this distance, officework will turn back and move to worm
														--(after shot, officework will not turn back in OFFICEWORK_SHOOT_INTERVAL)
		--time
		OFFICEWORK_SHOOT_INTERVAL		= 3000;		--shoot interval
		OFFICEWORK_FLY_MONEY_INTERVAL	= 150;		--when money group fly, how many times little money will jump out 

		--distance
		OFFICEWORK_FLY_DISPERSE_DISTANCE	= 300;	--after larger than this distance, money group will disperse little money

		--individual money speed after
		OFFICEWORK_MONEY_DISPERSE_SPEED_X	= 100;	--little money largest speed X(rand 10)
		OFFICEWORK_MONEY_DISPERSE_SPEED_Y	= 100;	--little money largest speed Y(rand 5)
		OFFICEWORK_MONEY_RESISTANCE_X		= 800;	--little money resistance X
		OFFICEWORK_MONEY_RESISTANCE_Y		= 1000;	--little money resistance Y
	}
	return tab
end

function gate_params ()
	local tab = {
		GATE_MOVE_UP_SPEED		= 150;
		GATE_MOVE_ACCELERATION	= 300;
		GATE_MOVE_DOWN_SPEED	= 1000;
		GATE_MOVE_HEIGHT		= 330;
	}
	return tab
end

function pink_organ_params ()
	local tab = {
		BALLOON_ROTATE_SPEED = -135;  	--rotate speed is 90 degree per second
		BALLOON_RADIUS = 45;			--rotate radius relative to initial postion
		BALLOON_FALLING_SPEED = 500;	--fall speed
		BALLOON_ACCELERATION = 1000;	--fall acceleration
	}
	return tab
end

function big_mouse ()
	local tab = {
		BIGMOUSE_MOVE_SPEED = 480;
		BIGMOUSE_LEAVING_SPEED = 800;
		BIGMOUSE_MOVE_AFTER_DOOROPEN_TIME = 1000; --bigmouse waited time before moved when door opened
	}
	return tab
end

function squirrel ()
	local tab = {
		SQUIRREL_THROW_WORM_V = 800,
	}
	return tab
end

function pete_params ()
	local tab = {
		--speed
		PETE_MOVE_SPEED_X = 150;		--pete run speed
		PETE_JUMP_SPEED_X = 380;		--after whip pete jump X speed
		PETE_JUMP_SPEED_Y = 1300;		--after whip pete jump Y speed
		PETE_SPRING_SPEED_Y = 1500;		--seesaw spring pete speed
		PETE_SEESAW_SPEED_X = 1200;		--seesaw sway pete speed X
		PETE_SEESAW_SPEED_Y = 1500;		--seesaw sway pete speed Y
		PETE_CHANGE_UP_SPEED_Y = 1500;	--after change, pete raise speed
		PETE_CHANGE_MOVE_SPEED_X = 1200;	--when bite, pete move to worm X speed
		PETE_CHANGE_MOVE_SPEED_Y = 400;	--when bite, pete move to worm Y speed
		PETE_SPIT_MOVE_SPEED_Y = 200; --when spit, pete move to worm Y speed
		--range
		PETE_CHANGE_RANGE_Y = 150;		--after change, pete raise to this range
		PETE_MOVE_RANGE_UP = 40;		--when bite, pete move range: up
		PETE_MOVE_RANGE_DOWN = 5;		--when bite, pete move range: down
		PETE_GRAB_RANGE_UP = 200;		--during grab, pete move to screen up
		--postion
		PETE_BYE_POS_X = 30;
		PETE_BYE_POS_Y = -100;
		--time
		PETE_FALL_DOWN_TIME = 1000;
		--catch back postion
		PETE_GRAB_BACK_X_1 = 544;
		PETE_GRAB_BACK_X_2 = 2060;
		PETE_GRAB_BACK_X_3 = 5550;
		PETE_GRAB_BACK_X_4 = 8110;
		PETE_GRAB_BACK_X_5 = 11530;
		PETE_GRAB_BACK_X_6 = 15940;
		PETE_GRAB_BACK_X_7 = 17430;
		PETE_GRAB_BACK_X_8 = 18330;
		PETE_GRAB_BACK_X_9 = 22610;
		PETE_GRAB_BACK_X_10 = 25110;
		PETE_GRAB_BACK_X_11 = 25890;
		PETE_GRAB_BACK_X_12 = 27010;
		PETE_GRAB_BACK_X_13 = 30200;
		PETE_GRAB_BACK_X_14 = 31380;
		PETE_GRAB_BACK_X_15 = 34610;
		PETE_GRAB_BACK_X_16 = 37220;
		PETE_GRAB_BACK_X_17 = 39980;
		PETE_GRAB_BACK_X_18 = 41870;
		PETE_GRAB_BACK_X_19 = 45300;
		PETE_GRAB_BACK_X_20 = 0;			--last one must 0 to mark end
	}
	return tab
end

function movehook_params ()
	local tab = {
		--speed
		MOVEHOOK_MOVE_SPEED = 200;
		--range
		MOVEHOOK_MOVE_RANGE_UP = 200;
	}
	return tab
end

function plant_params ()
	local tab = {
		--time
		PLANT_HURT_TIME = 2000;
		--speed
		PLANT_ATTACK_SPEED = 1500;
	}
	return tab
end

function ufo_params ()
	local tab = {
		--offset
		UFO_PURSUE_OFFSET_Y = -150;
		--speed
		UFO_PURSUE_SPEED = 250;
		UFO_PURSUE_ACCE_SPEED = 500;
		UFO_RISE_SPEED = 400;
		UFO_FALLDOWN_SPEED = 1000;
		--range
		UFO_RISE_HEIGHT = 300;
	}
	return tab
end

function meteor_params ()
	local tab = {
		--time
		METEOR_STONE_TIME = 6000;   --full stone send time
		METEOR_STONE_INTERVAL = 700;  --stone send interval time
		METEOR_STONE_INTERVAL_DAMPING = 120;  --each stone sended and then next one will reduce interval time
		METEOR_STONE_MIN_INTERVAL = 100;     --minimum interval time
		--rand stone(Start)
		METEOR_MIDDLE_STONE_START = 1000;
		METEOR_BIG_STONE_START = 3000;
		METEOR_MIDDLE_STONE_SECOND_START = 6000;
		METEOR_LITTLE_STONE_SECOND_START = 7000;
		--rand stone(Interval)
		METEOR_STONE_SIN_PARAM_LITTLE = 4000;
		METEOR_STONE_SIN_PARAM_MIDDLE = 5000;
		METEOR_STONE_SIN_PARAM_BIG = 5000;
		METEOR_STONE_SIN_SCONED_MIDDLE = 2000;
		METEOR_STONE_SIN_SCONED_LITTLE = 2000;
		--speed
		METEOR_STONE_SPEED = 1500;
	}
	return tab
end

function seesaw_params ()
	local tab = {
		SEESAW_SWAY_SPEED_ANGLE = 360; 		-- seesaw will sway angle one minute 
		SEESAW_SWAY_FLITTER_ANGLE = 5; 		-- seesaw flitter/flutter angle
		SEESAW_PHYSICS_RECTIFICATION = 50;  -- seesaw rectification value
	}
	return tab
end

function roller_params ()
	local tab = {
		ROLLER_FALL_SPEED = 200;		-- default roller fall speed
		--ROLLER_RADIO = 200;			-- roller radio
		--ROLLER_SLICE_NUMBER = 10;		-- roller slice number
		--ROLLER_SLICE_WIDTH = 600;		-- roller whole width(is also each slice width)
		--ROLLER_SLICE_HEIGHT = 35;		-- roller each slice height
		ROLLER_PHYSICS_TOP = 28;		-- roller top vertex
		ROLLER_PHYSICS_HEIGHT = 76;	-- roller physics height
	}
	return tab
end

function musiccat_params ()
	local tab = {
		SHOOT_NOTE_INTERVAL_TIME = 4000;		-- interval time when shoot music notes
		SHOOT_RAY_WAVE_INTERVAL_TIME = 800;		-- interval time between two fall stuffs
		SHOOT_RAY_WAVE_TIMES = 40;	-- shoot times when fall stuff
		FALL_POS_NUM = 12;
		NORMAL_SHOOT_NUM = 3;
		NORMAL_SHOOT_V_RATE = 1.0;
		QUICK_SHOOT_NUM = 4;
		QUICK_SHOOT_V_RATE = 1.5;
		FAN_WAIT_TIME = 2000;
		FAN_WORK_TIME = 1000;
		QUICK_STATE_HP = 0.7;
		CRAZY_STATE_HP = 0.2;
		TRIGGER_WAVE_HP = 30;
	}
	return tab
end

function lab_params ()
	local tab = {
		--jump brain
		JUMP_BRAIN_INIT_V_X = 300;
		JUMP_BRAIN_INIT_V_Y = -800;		
		--iron cage
		IRON_CAGE_PAUSE_TIME = 1000;
		IRON_CAGE_EVENT_TIME = 18000;
		IRON_CAGE_MOVE_SPEED = 180;
		--eye ball
		EYEBALL_V_X = 100;
		EYEBALL_V_Y = 173;
		EYEBALL_WAIT_TIME = 100;
		EYEBALL_FLY_TIME = 300;
		--green organ
		GREEN_ORGAN_WAITTIME = 2000;
		GREEN_ORGAN_WORM_JUMP_V_X_MIN = 400;
		GREEN_ORGAN_WORM_JUMP_V_X_MAX = 800;
		GREEN_ORGAN_WORM_JUMP_V_Y = -600;
		GREEN_ORGAN_WORM_MOVE_V_X = 400;
		GREEN_ORGAN_ATTACK_VX = 300;
		GREEN_ORGAN_ATTACK_VY = 50;
		--levin ball
		LEVIN_BALL_TRIGGER_DELAY_TIME = 1000;
		-- throw bottle monkey
		ATTACK_DISTANCE = 150;
		PURSUE_DISTANCE = 400;
		PURSUE_VELOCITY = 600;
		HURT_BACK_VELOCITY = 400;
		RUNAWAY_VELOCITY_X = 600;
		RUNAWAY_VELOCITY_Y = -1500;
		THROW_INTERVAL_TIME = 500;
		--Launcher and the cell
		SEND_INTERVAL_TIME = 200;
		LAUNCHER_BALL_SPEED = 800;
	}
	return tab
end

function maxhp_reduce_percent ()
	local tab = {
	easy = 5;
	normal = 7.5;
	hard = 10;
	original = 10;
	}
	return tab
end

function actor_maxhp ()
	local tab = {
	CROW = 2,
	DOG = 3,
	GARBAGE_TRUCK = 300,
	CHUNK = 6,
	SHADOW = 8,
	PILLAR = 30,
	SNOT = 12,
	HONEYCOMB = 3;
	SWARM = 1;
	MAGGOT = 100;
	CENTIPEDE = 10;
	QUEEN = 100;
	ATTACHWORM = 1;
	BIT_BLOOD = 1;
	MACHINE = 10;
	SPIDER = 3;
	BOTTELE_MONKEY = 20;
	SNOWMAN = 375;
	ELECT_BEE = 2;
	ELECT_HONEYCOMB = 20;
	GRANNY = 100;
	MUSIC_CAT = 150;
	LOCUST_MANAGER = 360;
	BUMP_LOCUST = 2;
	EXUDANT = 1;
	VENOM = 1;
	VULNUS = 1;
	BABYSPIDER = 1;
	BALLOON = 1;
	DVD_TOWER = 10;
	FLYCHICKEN = 40;
	IRONFISH = 1;
	OFFICEWORK = 1;
	ORGAN_BOSS_MAX_HP = 21;
	USB_SNAKE_MAX_HP = 20;
	EGG_COCK = 150;
	}
	return tab
end	

function user_interface ()
	local tab = {
		--UI
		LIFE_1_POS_X		= (5 + SAFE_FRAME_X_OFF);
		LIFE_2_POS_X		= (700 + SAFE_FRAME_X_OFF);
		LIFE_POS_Y 			= (10);
		HP_1_POS_X			= (155 + SAFE_FRAME_X_OFF);
		HP_2_POS_X			= (885 + SAFE_FRAME_X_OFF);
		HP_POS_Y			= (20);
		WEAPON_1_POS_X		= (5 + SAFE_FRAME_X_OFF);
		WEAPON_2_POS_X		= (850 + SAFE_FRAME_X_OFF);
		WEAPON_POS_Y		= (140);
		HP_FLASH_LOW_BOUND	= 15;

		SUBMARINE_TIME_REMAINING_1_X = (5 + SAFE_FRAME_X_OFF -SAFE_FRAME_X_OFF +10 );--LIFE_1_POS_X;
		SUBMARINE_TIME_REMAINING_2_X = (885+230 + SAFE_FRAME_X_OFF-SAFE_FRAME_X_OFF) - 60 - 120; --HP_2_POS_X;   --by mao
		SUBMARINE_TIME_REMAINING_Y 	= (SAFE_FRAME_Y_OFF + 100);
		SUBMARINE_LOW_BOUND			= 20;
		SUBMARINE_FLASH_INTERVAL	= 150;
		
		LOADING_TITLE_X = (SCREEN_WIDTH/2);
		LOADING_TITLE_Y = (SAFE_FRAME_Y_OFF + 20);
		LOADING_MSG_X = (SCREEN_WIDTH/2 + 200);
		LOADING_MSG_Y = (SCREEN_HEIGHT - SAFE_FRAME_Y_OFF - 140);

		JIM_POS_X = (SCREEN_WIDTH/2);
		JIM_POS_Y = (SCREEN_HEIGHT/2);
		
		BLUE_CIRCLE_POS_X = SCREEN_WIDTH;
		BLUE_CIRCLE_POS_Y = SCREEN_HEIGHT;
		SELECT_LEVEL_ITEM_X_CAP = 200;
		SELECT_LEVEL_ITEM_Z_CAP = 50;
		
		GAME_COMPLETE_INTERVAL = 3000;
		
		LIFE_1_BUNGEE_OFFSET_X = 10+SAFE_FRAME_X_OFF;
		LIFE_2_BUNGEE_OFFSET_X = 10+SAFE_FRAME_X_OFF;
		LIFE_SNOT_BUNGEE_OFFSET_X = SCREEN_WIDTH - SAFE_FRAME_X_OFF - 35;
		LIFE_1_BUNGEE_OFFSET_Y = 5 + SAFE_FRAME_Y_OFF;
		LIFE_2_BUNGEE_OFFSET_Y = 310 + SAFE_FRAME_Y_OFF;
		LIFE_SNOT_BUNGEE_OFFSET_Y = 5 + SAFE_FRAME_Y_OFF;
		
		HP_1_BUNGEE_OFFSET_X = 40+SAFE_FRAME_X_OFF;
		HP_2_BUNGEE_OFFSET_X = 40+SAFE_FRAME_X_OFF;
		HP_SNOT_BUNGEE_OFFSET_X = SCREEN_WIDTH - SAFE_FRAME_X_OFF - 130;   -- by mao
		HP_1_BUNGEE_OFFSET_Y = 100+SAFE_FRAME_Y_OFF;
		HP_2_BUNGEE_OFFSET_Y = 405+SAFE_FRAME_Y_OFF;
		HP_SNOT_BUNGEE_OFFSET_Y = 100+SAFE_FRAME_Y_OFF;
		
	}
		--MENU
	tab["SELECT_LEVEL_ITEM_X_CAP"] 	= 35;
	tab["SELECT_LEVEL_ITEM_Z_CAP"] 	= 80;
	
	tab["SCALE_BETWEEN_CHARS"]		= 0.7
	
	tab["MM_MAINMENU_TITLE_X"] 		= 791 --SCREEN_WIDTH * 0.618
	tab["MM_MAINMENU_TITLE_Y"] 		= 100
	tab["MM_MAINMENU_ITEM_VGAP"]	= 100
	tab["MM_MAINMENU_ITEM_X"] 		= tab["MM_MAINMENU_TITLE_X"]
	tab["MM_MAINMENU_ITEM_Y"] 		= 180			-- by mao
	tab["MM_MAINMENU_MAX_VISIBLE"] 	= 5
	
	tab["MM_LEVELSELECT_TITLE_X"]	=		MM_MAINMENU_I_BUTTON_X			-- by mao
	tab["MM_LEVELSELECT_TITLE_Y"]	=		100			-- by mao
	tab["MM_LEVELSELECT_ITEM_X"]		=		MM_LEVELSELECT_TITLE_X			-- by mao
	tab["MM_LEVELSELECT_ITEM_Y"]		=		190			-- by mao
	tab["MM_LEVELSELECT_MAX_VISIBLE"]	=	5			-- by mao
						
	tab["MM_OPTION_TITLE_X"]			=			105 --SAFE_FRAME_X_OFF
	tab["MM_OPTION_TITLE_Y"]			=			SAFE_FRAME_Y_OFF
	tab["MM_OPTION_ITEM_VGAP"]		=			100				-- by mao
	tab["MM_OPTION_ITEM_X"]				=			tab["MM_MAINMENU_TITLE_X"]
	tab["MM_OPTION_ITEM_Y"]				=			150
	tab["MM_OPTION_MAX_VISIBLE"]		=			5

	tab["MM_DIFFICULTY_TITLE_X"]		=			105 --SAFE_FRAME_X_OFF
	tab["MM_DIFFICULTY_TITLE_Y"]		=			SAFE_FRAME_Y_OFF
	tab["MM_DIFFICULTY_ITEM_VGAP"]	=			100			-- by mao
	tab["MM_DIFFICULTY_ITEM_X"]		=			tab["MM_MAINMENU_TITLE_X"]
	tab["MM_DIFFICULTY_ITEM_Y"]		=			160
	tab["MM_DIFFICULTY_MAX_VISIBLE"]	=		5

	tab["MM_NEWOPTION_TITLE_X"]			=		SAFE_FRAME_X_OFF
	tab["MM_NEWOPTION_TITLE_Y"]			=		SAFE_FRAME_Y_OFF
	tab["MM_NEWOPTION_ITEM_VGAP"]		=		100			-- by mao	
	tab["MM_NEWOPTION_ITEM_X"]			=		tab["MM_MAINMENU_TITLE_X"]
	tab["MM_NEWOPTION_ITEM_Y"]			=		200
	tab["MM_NEWOPTION_MAX_VISIBLE"]	=		5

	tab["MM_MULTIPLAYER_TITLE_X"]		=		SAFE_FRAME_X_OFF
	tab["MM_MULTIPLAYER_TITLE_Y"]		=		SAFE_FRAME_Y_OFF

	tab["MM_ONLINE_TITLE_X"]					=		SAFE_FRAME_X_OFF
	tab["MM_ONLINE_TITLE_Y"]					=		SAFE_FRAME_Y_OFF

	tab["MM_TRIAL_ICON_X"]					=		(SCREEN_WIDTH * 0.3)
	tab["MM_TRIAL_ICON_Y"]					=		(SCREEN_HEIGHT - SAFE_FRAME_Y_OFF)
	tab["MM_TRIAL_TEXT_SCALE"]				=		0.5
	tab["MM_TRIAL_TEXT_OFF_Y_1"]			=		-65
	tab["MM_TRIAL_TEXT_OFF_Y_2"]			=		-40

	tab["IGM_MAIN_TITLE_X"]					=		(SCREEN_WIDTH/2) 
	tab["IGM_MAIN_TITLE_Y"]					=		tab["MM_MAINMENU_TITLE_Y"]
	tab["IGM_MAIN_ITEM_X"]						=		tab["IGM_MAIN_TITLE_X"]
	tab["IGM_MAIN_ITEM_Y"]						=		200			-- by mao
	tab["IGM_MAIN_ITEM_VGAP"]				=		tab["MM_MAINMENU_ITEM_VGAP"]
	tab["IGM_MAIN_MAX_VISIBLE"]				=		6
    
    tab["LOBBY_BASE_X"]                     =   500
    tab["LOBBY_BASE_Y"]                     =   SAFE_FRAME_Y_OFF    
    tab["LOBBY_GAP_X"]                      =   300
    tab["LOBBY_GAP_Y"]                      =   300
    
    tab["LOBBY_NAME_BASE_X"]                =   660
    tab["LOBBY_NAME_BASE_Y"]                =   SAFE_FRAME_Y_OFF+30
    tab["LOBBY_NAME_GAP_X"]                 =   300
    tab["LOBBY_NAME_GAP_Y"]                 =   300
    
    tab["LOBBY_STATE_BASE_X"]               =   660
    tab["LOBBY_STATE_BASE_Y"]               =   SAFE_FRAME_Y_OFF+190
    tab["LOBBY_STATE_GAP_X"]                =   300
    tab["LOBBY_STATE_GAP_Y"]                =   300
    
    tab["LOBBY_AVATAR_WIDTH_PS3"]           =   230
    tab["LOBBY_AVATAR_HEIGHT_PS3"]          =   213
    tab["LOBBY_AVATAR_OFFSET_Y_PS3"]        =   40
    tab["LOBBY_AVATAR_OFFSET_X_PS3"]        =   115
    
    tab["LOBBY_AVATAR_WIDTH_XBOX360"]       =   230
    tab["LOBBY_AVATAR_HEIGHT_XBOX360"]      =   213
    tab["LOBBY_AVATAR_OFFSET_Y_XBOX360"]    =   40
    tab["LOBBY_AVATAR_OFFSET_X_XBOX360"]    =   115
	return tab
end	

function honeycomb_params ()
	local tab = {
		HONEYCOMB_INTERVAL = 400;
		HONEYCOMB_ATTACK_RANGE = 640;
		HONEYCOMB_MAX_SWARM = 6;
		HONEYCOMB_HURT_TIME = 700;
		HONEYCOMB_DROP_SPEED = 800;
	}
	return tab
end

function swarm_params ()
	local tab = {
		SWARM_SPEED_X = 1200.0;
		SWARM_SPEED_Y = 1200.0;
		SWARM_ACCELERATE_X = 1800.0;
		SWARM_ACCELERATE_Y = 1800.0;
		SWARM_FLY_MID_RANGE = 150.0;
		SWARM_FLY_RANGE = 380.0;
		SWARM_FLY_TURN_INTERVAL = 50.0;
	}
	return tab
end

function longtongue_params ()
	local tab = {
		LONGTONGUE_INOUT_GROUND = 400;
		LONGTONGUE_ATTACK_RANGE = 260;
		LONGTONGUE_HURT_DELAY = 500; --time in ms
		LONGTONGUE_JIM_HURT_BOUNCE_SPEED_Y = 300;
		LONGTONGUE_JIM_HURT_BOUNCE_SPEED_X = 800;
		LONGTONGUE_JIM_HURT_BOUNCE_RESISTENCE_RATE = -2.0;
	}
	return tab
end

function centipede_params ()
	local tab = {
		CENTIPEDE_ATTACK_RANGE_X = 800;
		CENTIPEDE_ATTACK_RANGE_Y = 800;
		CENTIPEDE_ACTIVATE_RANGE_X = SCREEN_WIDTH;
		CENTIPEDE_ACTIVATE_RANGE_Y = SCREEN_HEIGHT;
	}
	return tab
end

function maggot_params ()
	local tab = {
		MAGGOT_HURT_TIME = 700;
		MAGGOT_ATTACK_RANGE = 200;
	}
	return tab
end

function maggot_platform_params ()
	local tab = {
		MAGGOT_PLATFORM_LOW_INTERVAL = 15000;
		MAGGOT_PLATFORM_LOW_SPEED = 400;
		MAGGOT_PLATFORM_LOW_NORMAL = 4;
		MAGGOT_PLATFORM_LOW_THORN = 1;
		MAGGOT_PLATFORM_MID_INTERVAL = 45000;
		MAGGOT_PLATFORM_MID_SPEED = 500;
		MAGGOT_PLATFORM_MID_NORMAL = 2;
		MAGGOT_PLATFORM_MID_THORN = 1;
		MAGGOT_PLATFORM_HIGH_INTERVAL = 75000;
		MAGGOT_PLATFORM_HIGH_SPEED = 600;
		MAGGOT_PLATFORM_HIGH_NORMAL = 2;
		MAGGOT_PLATFORM_HIGH_THORN = 2;
		MAGGOT_PLATFORM_DISTANCE_X = 140;
		MAGGOT_PLATFORM_MAX_DISTANCE_Y = 60;
		MAGGOT_PLATFORM_ACCELERATE_Y = 800;
		MAGGOT_PLATFORM_DEAD_ACCELERATE_Y = 2200;
	}
	return tab
end

function exudant_params ()
	local tab = {
		EXUDANT_VENOM_SPEED_X = 900;
		EXUDANT_VENOM_SPEED_X1 = 200;
		EXUDANT_VENOM_SPEED_X2 = 500;
		EXUDANT_VENOM_SPPED_X_QUEEN = 200;
		EXUDANT_VENOM_SPPED_Y1_QUEEN = -1400;
		EXUDANT_VENOM_SPPED_Y2_QUEEN = -700;
		EXUDANT_ACCELERATE_Y_QUEEN = 2500;
		EXUDANT_EGG_SPEED_X = 300;
		EXUDANT_EGG_SPEED_X1 = 400;
		EXUDANT_EGG_SPEED_X1 = 550;
		EXUDANT_ACCELERATE_Y = 2200;
	}
	return tab
end

function vulnus_params ()
	local tab = {
		VULNUS_INTERVAL = 900;
		VULNUS_MAX_SWARM = 3;
	}
	return tab
end

function queen_params ()
	local tab = {
		QUEEN_INTERVAL = 1200;
		QUEEN_MAX_SWARM = 15;
		QUEEN_HURT_TIME = 700;
		QUEEN_PREPARE_MIN = 300;
		QUEEN_PREPARE_MAX = 1000;
	}
	return tab
end

function hercules_params ()
	local tab = {
		HERCULES_PATROL_SPEED = 200,
		HERCULES_PATROL_SPEED_EASY = 100,
		HERCULES_PATROL_SPEED_NORMAL = 125,
		HERCULES_PATROL_SPEED_HARD = 160,
		HERCULES_PATROL_RANGE = 320.0,
		HERCULES_DEFENCE_TIME = 200.0,
		HERCULES_G = 2000.0,
		HERCULES_PUNCH_DAMAGE = 20,
		HERCULES_PUNCH_OFFSET_X = 90.0,
		HERCULES_PUNCH_OFFSET_Y = 0.0,
	}
	return tab
end

function granny_params ()
	local tab = {
		GRANNY_MOVE_SPEED = 200,     -- granny move speed
		GRANNY_MOVE_RANGE = 800,     -- granny move range,  -GRANNY_MOVE_RANGE-----start pos----------GRANNY_MOVE_RANGE
		GRANNY_GRAVITY_Y = 2000,     -- don't need to change
		GRANNY_MOVE_TURNBACK_OFFSET = 700; -- the range that worm is behind granny that granny will turn back
		GRANNY_DEFENCE_TIME = 200.0;      -- the defence's time, don't need to change
		GRANNY_ATTACKABLE_RANGE = 800;    -- when worm in this range and granny is face to worm, granny will attack worm
		GRANNY_RUN_ATTACK_SPEED = 500;    -- granny's second attack 's move speed
		GRANNY_RUN_ATTACK_SPEED_HARD_MODE = 700; --increase the speed of granny
		GRANNY_RUN_HARD_MODE_START_HP = 50;  -- when granny's hp is less than this(%, for example, 30 means 30%), she will start second attack
		GRANNY_SILK_DELAY_TIME = 500.0; -- the time between each silk's appear
		GRANNY_BUNDLE_TO_NEEDLE_TIME	 = 3000.0; -- the time from player be bundled to send the needle;
		GRANNY_BUNDLE_ESCAPE_KEY_NUM = 5; -- the A key must be press this number to escape;
		GRANNY_NEEDLE_X_SPEED = 500;  -- normal fly speed for needle
		GRANNY_NEEDLE_Y_FALL_ACC = 2000;  -- fall Y acc
		GRANNY_NEEDLE_X_FALL_ACC = -2000;  -- fall X acc
		GRANNY_RUN_SPEED_AFTER_HURT = 800; -- when hurt, run speed to leave away from worm
		GRANNY_SILK_DELAY_TIME_DISAPEAR = 200.0; --when bundle worm, the silk disapear time
		GRANNY_HURT_1_TIME = 100.0; --when hurt, the time to the second attack
		GRANNY_SILK_NUMBER = 10; -- the number of silk piece
		GRANNY_SILK_HURT_DELAY_TIME = 1000.0; -- when bundle, the hurt delay time
		GRANNY_NEEDLE_DELAY_TIME = 200.0;  -- when fast needle attack, the time between each needle group
	}
	return tab
end

function spider_params ()
	local tab = {
		SPIDER_HURT_TIME = 700;
		SPIDER_FALL_G = 2200;
		SPIDER_VENOM_NUM = 3;
	}
	return tab
end

function computer_mouse_params ()
	local tab = {
		JUMP_HEIGHT = 250;
		LAND_WAIT_TIME = 1500;
		DEFAULT_WARNING_RANGE = 2000;
		DEFAULT_ATTACKING_RANGE = 2000;
	}
	return tab
end

function elect_elements_params()
	local tab = {
	--elect capacitance
	BOMB_RANGE = 400,
	BOMB_DAMAGE = 100,
	--dvd tower
	DISK_FLY_V_X = 500,
	JUMP_VELOCITY_PARAM = 4,
	JUMP_HEIGHT = 50,
	DVDTOWER_ACTIVE_RANGE_X = 600,
	DVDTOWER_ACTIVE_RANGE_Y = 200,
	-- dvd tower manager
	JUMP_INTERVAL_TIME = 0,
	SHOOT_TIMES_BEFORE_JUMP = 1,
	SHOOT_WAIT_STATE_TIME = 1000,
	JUMP_WAIT_STATE_TIME = 0,
	-- venom G
	VENOM_G = 2200,
	}
	return tab
end

function electbee_params()
	local tab = {
	ELECTBEE_TARGET_OFFSET_Y = -300;
	ELECTBEE_TARGET_OFFSET_X = 150;

	ELECTBEE_CHASE_SPEED = 400;
	ELECTBEE_CHASE_ACC = 50;

	ELECTBEE_FLYUP_SPEED_X = 400;
	ELECTBEE_FLYUP_SPEED_Y = 400;
	ELECTBEE_FLYUP_DISTANCE = 400;

	ELECTBEE_READY_SPEED = 400;
	ELECTBEE_READY_ACC = 100;
	ELECTBEE_READY_DISTANCE = 400;

	ELECTBEE_ATTACK_SPEED = 800;
	ELECTBEE_ATTACK_ACC = 1000;

	ELECTBEE_RANGE_X = 800;
	ELECTBEE_RANGE_Y = 1000;

	ELECTBEE_WAIT_TIME = 0;
	ELECTBEE_HURT_TIME = 300;
	}
	return tab
end

function bugColony_params ()
	local tab = {
		BUG_AMOUNT = 100;
		BUG_LENGTH = 50;
	}
	return tab
end

function locust_params ()
	local tab = {
	LOCUST_NUM = 30;
	
	LOCUST_SPLINE_OFFSET_X = -900;
	LOCUST_SPLINE_OFFSET_Y = 20;
	
	LOCUST_SPEED_MIN = 500;
	LOCUST_SPEED_MAX = 700;

	LOCUST_BUMP_SPEED_MIN = 700;
	LOCUST_BUMP_SPEED_MAX = 1000;

	LOCUST_BUMP_TIME_MIN = 1700;
	LOCUST_BUMP_TIME_MAX = 2400;
	
	LOCUST_FLOAT_Y_MIN = 250;
	LOCUST_FLOAT_Y_MAX = 350;

	LOCUST_SPLINE_LEFT = 550;
	LOCUST_SPLINE_RIGHT = 1450;
	LOCUST_SPLINE_WIDTH = 1700;
	LOCUST_SPLINE_TOP = -300;
	LOCUST_SPLINE_BOTTOM = 300;
	LOCUST_SPLINE_HEIGHT = 600;
	LOCUST_SPLINE_RADIUS = 100;

	LOCUST_DISTANCE = 20;
	LOCUST_HURT_TIME = 400;
	LOCUST_HITS_TO_DROP = 6;
	}
	return tab
end

function orgonboss_params ()
	local tab = {
		DAMAGE_ORGANBOSS_ATTACK = 5;
		DAMAGE_ORGANBOSS_ACID = 5;
	}
	return tab
end

function usbsnake_params ()
	local tab = {
	time_from_awake_to_fall = 2000;
	time_snake_wrap = 2000;
	gravity_a = 200;
	small_snake_move_speed = 100;
	usb_snake_wrap_damage = 20;
	time_leave = 4000;
	}
	return tab
end

function level_final_params ()
	local tab = {
	JIM_FINAL_RUN_SPEED_X = 400;
	JIM_FINAL_WALK_SPEED_X = -100;
	JIM_FINAL_BEAUTY_DISTANCE = 400;
	JIM_FINAL_STAND_OFFSET_X = 75;
	
	COW_INIT_OFFSET_X = -65;
	COW_INIT_OFFSET_Y = -700;
	COW_FALL_OFFSET_Y = -600;
	COW_FALL_ACC_Y = 1500;
	COW_MOO_INTERVAl_TIME = 28000;
	CROWN_INIT_OFFSET_Y = -150;
	CROWN_FALL_SPEED_X = -580;
	CROWN_FALL_SPEED_Y = -500;
	CROWN_FALL_ACC_Y = 2000;
	
	BEAUTY_FALL_DOWN_SPEED_Y = 1000;
	BEAUTY_FALL_DOWN_ACC_Y = 800;
	}
	return tab
end
