var expected = string_upper(string_char_at(word, progress + 1));
var typed = string_upper(self._typed_letter);

// correct letter
if (typed == expected) {

    // Ice Keycaps: first correct letter slows enemy
    if (global.upg_ice_keycaps && progress == 0 && key_in_array(typed, global.ice_letters)) {
        ice_slow_timer = room_speed *1.5;
    }
    progress++;

    // Dance Key Dance: stun if pressed letter is disco
    if (global.upg_dance_key) {
        for (var i = 0; i < array_length(global.disco_letters); i++) {
            if (typed == global.disco_letters[i]) {
                dance_stun_timer = room_speed;
                break;
            }
        }
    }

    // Explosive Key: if typed letter matches explosive letter, kill instantly
    if (global.upg_explosive_key) {
		for (var i = 0; i < array_length(global.explosive_letters); i++) {
			if (typed == global.explosive_letters[i]) {
				global.xp += global.word_xp;
				instance_destroy();
            exit;
			}
		}
	}

    // word finished normally
    if (progress >= string_length(word)) {
        global.xp += 1600;
        instance_destroy();
    }

} else {
    progress = 0;
}