var expected_char = string_char_at(word, typed_index + 1);

if (_typed_letter != "") {
    if (_typed_letter == expected_char) {
        typed_index++
        
        // Visual feedback
        image_blend = c_white; 

        // If the whole word is finished
        if (typed_index >= string_length(word)) {
			if (obj_keyboard.hp < 100) {
				obj_keyboard.hp = min(100, obj_keyboard.hp + 10)
			}
			instance_destroy()
        }
    } 
    else {
        // RESET logic: only reset if we had already started typing "FIREWALL"
        // This prevents shooting bugs from constantly resetting a fresh powerup
        if (typed_index > 0) {
            typed_index = 0;
            image_blend = c_red; // flash red to show a mistake
        }
    }
}

// Always clear the inbox
_typed_letter = ""