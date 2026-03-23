if (global.game_paused) exit;

// enemy-specific timers
if (ice_slow_timer > 0) ice_slow_timer--;
if (dance_stun_timer > 0) dance_stun_timer--;

// dance logic
if (dance_stun_timer > 0) {
    x = dance_origin_x + lengthdir_x(dance_amplitude, current_time / 8 + dance_offset);

    if (sin(degtorad(current_time / 8 + dance_offset)) >= 0) {
        image_xscale = base_xscale;
    } else {image_xscale = -base_xscale;}

    image_yscale = base_yscale;
    exit;
} else {
    dance_origin_x = x;
    image_xscale = base_xscale;
    image_yscale = base_yscale;
}

// movement scales game runtime
var move_spd = base_speed * global.diff_mult;

// ice movement
if (ice_slow_timer > 0) {
    move_spd *= 0.1;
}

y += move_spd;

// check collision with keyboard
if (instance_exists(obj_keyboard) && place_meeting(x, y, obj_keyboard)) {
    // armor blocks
    if (global.upg_key2Defense && global.keyboard_armor_hits > 0) {
        global.keyboard_armor_hits -= 1;
    } else {
        obj_keyboard.hp -= damageDone;
		audio_play_sound(snd_playerDamage, 0, false);
        if (obj_keyboard.hp < 0) obj_keyboard.hp = 0;
    }

    // lose condition
    if (obj_keyboard.hp <= 0) {
        room_goto(rm_loseScreen);
    }

    instance_destroy();
}