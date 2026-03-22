if (obj_keyboard.hp <= 30) {
    glitch_apply_30hp();
    draw_surface(application_surface, 0, 0); // Draw the whole game with the shader
    shader_reset();
} else if (obj_keyboard.hp <= 70) {
    glitch_apply_70hp();
    draw_surface(application_surface, 0, 0);
    shader_reset();
} else {
	shader_reset();
}
//moved scoreboard logic back to draw gui bc it made it easier to see for some reason. 
var x1  = 8;
var y1  = 8;
var x2  = 256;
var h   = 24;
var gap = 6;

// HP
var hp_val = instance_exists(obj_keyboard) ? obj_keyboard.hp : 0;
var hp_max = instance_exists(obj_keyboard) ? obj_keyboard.max_hp : 20;

var hp_pct = 0;
if (hp_max > 0) hp_pct = (hp_val / hp_max) * 100;
hp_pct = clamp(hp_pct, 0, 100);

draw_healthbar(x1, y1, x2, y1 + h, hp_pct, c_black, c_red, c_lime, 0, true, true);

// Levels
var total_xp = global.xp;
var cur_level = global.level;

var prev_thresh = (cur_level == 1) ? 0 : xp_level_limit(cur_level - 1);
var next_thresh = xp_level_limit(cur_level);

var pct = 0;
if (next_thresh > prev_thresh) {
    pct = (total_xp - prev_thresh) / (next_thresh - prev_thresh);
}
pct = clamp(pct, 0, 1);

//XP bar
var xp_y1 = y1 + h + gap;
draw_healthbar(x1, xp_y1, x2, xp_y1 + h, pct * 100, c_black, c_dkgray, c_aqua, 0, true, true);
//label
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(x1 + 8, y1 + 6, "Firewall Integrity: " + string(hp_val));
draw_text(x1 + 8, xp_y1 + 4, "XP: " + string(total_xp) + " / " + string(next_thresh) + "  (Lvl " + string(cur_level) + ")");
draw_set_alpha(1);