draw_set_color(c_white);

// Convert room coordinates -> GUI coordinates (basic camera 0 conversion)
var cam = view_camera[0];
var gui_x = x - camera_get_view_x(cam);
var gui_y = y - camera_get_view_y(cam);

// Draw the word slightly above the enemy
draw_text(gui_x, gui_y - 32, word);