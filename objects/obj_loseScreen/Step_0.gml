if (state == "INPUT") {
    cursor_timer++
    
    // handle backspace
    if (keyboard_check_pressed(vk_backspace)) {
        player_name = string_delete(player_name, string_length(player_name), 1)
    }
    
    // typing input (initials)
    if (string_length(player_name) < max_name_length) {
        var _input = keyboard_lastchar
        // basic filter for letters for initials
        if (string_pos(_input, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz") > 0) {
            player_name += string_upper(_input)
            keyboard_lastchar = ""
        }
    }

    // submit score
    if (keyboard_check_pressed(vk_enter) && string_length(player_name) > 0) {
        high_scores = save_high_score(player_name, final_score, high_scores)
        state = "VIEW"
    }
} else {
	// reset leaderboard with shift + r
	if (keyboard_check(vk_shift) && keyboard_check_pressed(ord("R"))) {
    reset_leaderboard();
	}
	
    // restart game after submitting
    if (keyboard_check_pressed(vk_space)) {
        room_goto(rm_titleScreen)
    }
}