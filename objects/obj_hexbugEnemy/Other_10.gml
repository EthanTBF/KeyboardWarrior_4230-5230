var expected = string_upper(string_char_at(word, progress + 1));
var typed = string_upper(self._typed_letter);

// correct letter
if (typed == expected) {

    // Ice Keycaps
    if (global.upg_ice_keycaps && progress == 0 && key_in_array(typed, global.ice_letters)) {
        ice_slow_timer = room_speed * 1.5;
    }

    progress++;

    // Dance Key Dance
    // Dance Key Dance: freeze all enemies for 4 seconds
	if (global.upg_dance_key) {
		for (var i = 0; i < array_length(global.disco_letters); i++) {
			if (typed == global.disco_letters[i]) {
				global.dance_freeze_timer = room_speed * 4;
				break;
				}}}

    // Explosive Key
    if (global.upg_explosive_key) {
        for (var j = 0; j < array_length(global.explosive_letters); j++) {
            if (typed == global.explosive_letters[j]) {
                var gained_xp = global.word_xp;

                if (global.upg_exKEYrience) {
                    for (var k = 0; k < array_length(global.exKey_letters); k++) {
                        var bonus_letter = global.exKey_letters[k];
                        var count = 0;

                        for (var m = 1; m <= string_length(word); m++) {
                            if (string_upper(string_char_at(word, m)) == bonus_letter) {
                                count++;
                            }}

                        gained_xp += count * global.exKey_bonus;
                    }}

                global.xp += gained_xp;
                instance_destroy();
                exit;
            }
        }
    }

    // normal completion
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