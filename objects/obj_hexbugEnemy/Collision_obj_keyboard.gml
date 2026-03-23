if (instance_exists(obj_keyboard) && y >= obj_keyboard.y) {
    if (place_meeting(x, y, obj_keyboard)) {
        var k = instance_place(x, y, obj_keyboard);
        if (k != noone && variable_instance_exists(k, "hp")) {
            k.hp -= damageDone;
			audio_play_sound(snd_playerDamage, 0, false, 1);
		}
        instance_destroy();
        exit;
    }
}