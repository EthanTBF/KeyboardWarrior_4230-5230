draw_set_halign(fa_center)

if (state == "INPUT") { // lose screen + input initials
    draw_set_color(c_red)
    draw_text_transformed(room_width/2, 100, "SYSTEM OVERLOAD", 3, 3, 0)
    
    draw_set_color(c_white)
    draw_text(room_width/2, 200, "FINAL XP COLLECTED: " + string(final_score))
    
    var _cursor = (cursor_timer mod 60 < 30) ? "_" : ""
    draw_text(room_width/2, 350, "ENTER YOUR INITIALS: ")
    draw_text_color(room_width/2, 400, player_name + _cursor, c_lime, c_lime, c_lime, c_lime, 1)
    
    draw_set_color(c_gray)
    draw_text(room_width/2, room_height - 100, "PRESS ENTER TO UPLOAD DATA")
} else { // leaderboard
    draw_set_color(c_yellow)
    draw_text_transformed(room_width/2, 50, "HIGH SCORES", 1.2, 1.2, 0)
    
    draw_leaderboard_ext(room_width/2, 150, 35, 180, high_scores)
    
    draw_set_color(c_white)
    draw_text(room_width/2, room_height - 90, "PRESS SPACE TO REBOOT")
	
	draw_set_color(c_dkgray)
    draw_text(room_width/2, room_height - 70, "[SHIFT + R TO RESET LEADERBOARD]")
}