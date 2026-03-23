if (!global.in_evolve_menu) exit;

var gw = display_get_gui_width();
var gh = display_get_gui_height();

var x1 = gw * 0.62;
var y1 = 260;
var x2 = gw - 40;
var y2 = gh - 260;

draw_set_color(make_color_rgb(18, 22, 50));
draw_rectangle(x1, y1, x2, y2, false);

draw_set_color(c_white);
draw_rectangle(x1, y1, x2, y2, true);

draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_text(x1 + 20, y1 + 20, "Choose an Upgrade");

var key1 = (global.evolve_choices[0] == "key2defense") ? "SPACE" : global.evolve_choice_keys[0];
var key2 = (global.evolve_choices[1] == "key2defense") ? "SPACE" : global.evolve_choice_keys[1];

var choice0 = global.evolve_choices[0];
var choice1 = global.evolve_choices[1];

draw_text(x1 + 20, y1 + 80, "[" + key1 + "] " + upgrade_name(choice0));
draw_text(x1 + 20, y1 + 140, "[" + key2 + "] " + upgrade_name(choice1));

// descriptions
draw_text_ext(x1 + 40, y1 + 105, evo_desc(choice0, 0), -1, (x2 - x1) - 80);
draw_text_ext(x1 + 40, y1 + 165, evo_desc(choice1, 1), -1, (x2 - x1) - 80);

draw_text(x1 + 20, y2 - 40, "Press the shown key");