if (global.game_paused) exit;

// timers
if (ice_slow_timer > 0) ice_slow_timer--;
if (dance_stun_timer > 0) dance_stun_timer--;

var move_spd = base_speed;

// stun fully stops movement
if (dance_stun_timer > 0) {
    move_spd = 0;
}
// ice slows movement
else if (ice_slow_timer > 0) {
    move_spd = base_speed * 0.1;
}

if (instance_exists(obj_keyboard)) {
    if (y < obj_keyboard.y) y += move_spd;
}