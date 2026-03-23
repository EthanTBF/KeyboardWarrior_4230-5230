spawn_interval = room_speed * 2;
spawn_timer = 0;
target = noone;

word_array = load_json_file("WordBank.json");

global.xp = 0;
global.word_xp = 100;
global.level = 1;

global.game_paused = false;
global.target_enemy = noone;

// evolution menu state
global.in_evolve_menu = false;
global.evolve_choices = [];
global.evolve_choice_keys = [];
global.evo_menu_id = noone;

// upgrades owned
global.upgrades_owned = [];

// Ice Keycaps
global.upg_ice_keycaps = false;
global.ice_letters = [];
// particles
global.ice_hit_sys = part_system_create(ptcl_ice)
part_system_depth(global.ice_hit_sys, -100)

// Explosive Key
global.upg_explosive_key = false;
global.explosive_letter = [];
// particles
global.explosive_hit_sys = part_system_create(ptcl_explode)
part_system_depth(global.explosive_hit_sys, -120)

// Dance Key Dance
global.upg_dance_key = false;
global.disco_letters = [];
// particles
global.dance_hit_sys = part_system_create(ptcl_dance)
part_system_depth(global.dance_hit_sys, -110)

// Ex-KEY-rience
global.upg_exKEYrience = false;
global.exKey_letters = [];
global.exKey_bonus = 50;

// Key2Defense
global.upg_key2Defense = false;
global.K2G_letters = [];

// firewall powerup frequency
firewall_spawn_interval = 20 * room_speed;
firewall_timer = 0

// initiate glitch shader
bktglitch_init()
