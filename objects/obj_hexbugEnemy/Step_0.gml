if (global.game_paused) exit;
// enemy-specific timer
if (ice_slow_timer > 0) ice_slow_timer--;
// global dance freeze
if (global.dance_freeze_timer > 0) exit;

// movement scales with time-based difficulty
var move_spd = base_speed * global.diff_mult;

// ice movement
if (ice_slow_timer > 0) {
    move_spd *= 0.1;
}

y += move_spd;

// check collision with keyboard
if (instance_exists(obj_keyboard) && place_meeting(x, y, obj_keyboard)) {
    // then armor blocks first
    if (global.upg_key2Defense && global.keyboard_armor_hits > 0) {
        global.keyboard_armor_hits -= 1;
    } else {
        obj_keyboard.hp -= damageDone;
        if (obj_keyboard.hp < 0) obj_keyboard.hp = 0;
    }

    // lose condition
    if (obj_keyboard.hp <= 0) {
        room_goto(rm_loseScreen);
    }

    instance_destroy();
}