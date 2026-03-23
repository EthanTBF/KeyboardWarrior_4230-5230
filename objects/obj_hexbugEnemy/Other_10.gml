var expected = string_upper(string_char_at(word, progress + 1));
var typed = string_upper(self._typed_letter);

// correct letter
if (typed == expected) {
	glitch_timer = 10

    // Ice Keycaps
    if (global.upg_ice_keycaps && progress == 0 && key_in_array(typed, global.ice_letters)) {
        ice_slow_timer = room_speed *1.5;
		// particles
		part_particles_burst(global.ice_hit_sys, x, y, ptcl_ice)
    }

    progress++;

    // Dance Key Dance: stun if pressed letter is disco
    if (global.upg_dance_key) {
        for (var i = 0; i < array_length(global.disco_letters); i++) {
            if (typed == global.disco_letters[i]) {
				with(obj_hexbugEnemy){
                dance_stun_timer = room_speed * 4;
				// particles
				part_particles_burst(global.dance_hit_sys, x, y, ptcl_dance)
				}
                break;
            }
        }
    }

    // Explosive Key: if typed letter matches explosive letter, kill instantly
    if (global.upg_explosive_key) {
		for (var i = 0; i < array_length(global.explosive_letters); i++) {
			if (typed == global.explosive_letters[i]) {
				// particles
				part_particles_burst(global.explosive_hit_sys, x, y, ptcl_explode)
				global.xp += global.word_xp;
				audio_play_sound(snd_explosion, 0, false, 1);
				instance_destroy();
            exit;
			}
		}
	}

    // word finished normally
    if (progress >= string_length(word)) {
        var gained_xp2 = global.word_xp;

        if (global.upg_exKEYrience) {
            for (var n = 0; n < array_length(global.exKey_letters); n++) {
                var bonus_letter2 = global.exKey_letters[n];
                var count2 = 0;

                for (var p = 1; p <= string_length(word); p++) {
                    if (string_upper(string_char_at(word, p)) == bonus_letter2) {
                        count2++;
                    }
                }

                gained_xp2 += count2 * global.exKey_bonus;
            }
        }

        global.xp += gained_xp2;
        instance_destroy();
    }

} else {
    progress = 0;
}