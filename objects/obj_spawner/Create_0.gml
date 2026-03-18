spawn_interval = room_speed * 2;
spawn_timer = 0;
target = noone;

word_array = load_json_file("WordBank.json");

global.xp = 0;
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
global.explosive_letter = [];

// Dance Key Dance
global.upg_dance_key = false;
global.disco_letters = [];

// ExKEYrience - not finished yet
global.upg_exKEYrience = false;
global.exKey_letters = [];

//Key to a Good Defense - not finished yet
global.upg_key2Defense = false;
global.K2G_letters = [];