if (!global.in_evolve_menu) exit;

var gw = display_get_gui_width();
var gh = display_get_gui_height();

// --- Layout settings ---
var margin = 40;
var box_width = 420;
var box_height = 300;
var padding = 20;

// Position 
var x2 = gw - margin;
var x1 = x2 - box_width;

var y1 = margin;
var y2 = y1 + box_height;

// Background 
draw_set_color(make_color_rgb(18, 22, 50));
draw_rectangle(x1, y1, x2, y2, false);

draw_set_color(c_white);
draw_rectangle(x1, y1, x2, y2, true);

// Text setup 
draw_set_halign(fa_left);
draw_set_valign(fa_top);


draw_text(x1 + padding, y1 + padding, "Choose an Upgrade");

// Choices 
var key1 = (global.evolve_choices[0] == "key2defense") ? "SPACE" : global.evolve_choice_keys[0];
var key2 = (global.evolve_choices[1] == "key2defense") ? "SPACE" : global.evolve_choice_keys[1];

var choice0 = global.evolve_choices[0];
var choice1 = global.evolve_choices[1];

// Choice labels 
var line1_y = y1 + 60;
var line2_y = y1 + 120;

draw_text(x1 + padding, line1_y, "[" + key1 + "] " + upgrade_name(choice0));
draw_text(x1 + padding, line2_y, "[" + key2 + "] " + upgrade_name(choice1));


var desc_offset = 25;
var text_width = box_width - (padding * 2);

draw_text_ext(x1 + padding, line1_y + desc_offset, evo_desc(choice0, 0), -1, text_width);
draw_text_ext(x1 + padding, line2_y + desc_offset, evo_desc(choice1, 1), -1, text_width);


draw_text(x1 + padding, y2 - 30, "Press the shown key");