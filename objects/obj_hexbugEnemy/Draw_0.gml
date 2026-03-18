draw_self();

// word above enemy
draw_set_halign(fa_left);

var word_y = y - 32;
var word_w = string_width(word);
var word_x = x - (word_w / 2);

// full word
draw_set_color(c_white);
draw_text(word_x, word_y, word);

// typed progress
var typed = string_copy(word, 1, progress);
draw_set_color(c_aqua);
draw_text(word_x, word_y, typed);
// targeted enemy brackets
if (variable_global_exists("target_enemy") && id == global.target_enemy) {
    draw_set_alpha(1);
    draw_set_color(c_white);

    var pad = 6;
    var len = 12;

    var l = bbox_left - pad;
    var r = bbox_right + pad;
    var t = bbox_top - pad;
    var b = bbox_bottom + pad;

    // top-left
    draw_line(l, t, l + len, t);
    draw_line(l, t, l, t + len);

    // top-right
    draw_line(r - len, t, r, t);
    draw_line(r, t, r, t + len);

    // bottom-left
    draw_line(l, b - len, l, b);
    draw_line(l, b, l + len, b);

    // bottom-right
    draw_line(r - len, b, r, b);
    draw_line(r, b - len, r, b);
}