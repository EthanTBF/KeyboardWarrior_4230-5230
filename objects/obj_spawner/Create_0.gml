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

// Explosive Key
global.upg_explosive_key = false;
global.explosive_letters = [];

// Dance Key Dance
global.upg_dance_key = false;
global.disco_letters = [];
global.dance_freeze_timer = 0;

// Ex-KEY-rience
global.upg_exKEYrience = false;
global.exKey_letters = [];
global.exKey_bonus = 50;

// Key2Defense
global.upg_key2Defense = false;
global.keyboard_armor_hits = 0;
global.keyboard_armor_max = 2;