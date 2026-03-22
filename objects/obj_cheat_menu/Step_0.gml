// Toggle cheats with `
if (keyboard_check_pressed(192)) {
    if (!global.in_evolve_menu) {
        menu_open = !menu_open;
        global.game_paused = menu_open;
    }
}

// If menu is closed, stop
if (!menu_open) exit;

// Keep game paused while cheat menu is open
global.game_paused = true;

// 1) Press to evolve
if (keyboard_check_pressed(ord("1"))) {
    menu_open = false;
    open_EVO_menu();
    exit;
}

// 2) Increase max health by 50
if (keyboard_check_pressed(ord("2"))) {
    if (instance_exists(obj_keyboard)) {
        obj_keyboard.max_hp += 50;
        obj_keyboard.hp += 50;

        if (obj_keyboard.hp > obj_keyboard.max_hp) {
            obj_keyboard.hp = obj_keyboard.max_hp;
        }
    }
}

// 3) Increase score by 1000
if (keyboard_check_pressed(ord("3"))) {
    global.xp += 1000;
}

// 4) Slow down
if (keyboard_check_pressed(ord("4"))) {
    global.current_game_speed = max(10, global.current_game_speed - 10);
    game_set_speed(global.current_game_speed, gamespeed_fps);
}

// 5) Speed up
if (keyboard_check_pressed(ord("5"))) {
    global.current_game_speed = min(240, global.current_game_speed + 10);
    game_set_speed(global.current_game_speed, gamespeed_fps);
}

// 6) Unpause
if (keyboard_check_pressed(ord("6"))) {
    menu_open = false;
    global.game_paused = false;
    game_set_speed(global.current_game_speed, gamespeed_fps);
}