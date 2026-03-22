menu_open = false;

if (!variable_global_exists("game_paused")) {
    global.game_paused = false;
}

if (!variable_global_exists("base_game_speed")) {
    global.base_game_speed = room_speed;
}

if (!variable_global_exists("current_game_speed")) {
    global.current_game_speed = room_speed;
}