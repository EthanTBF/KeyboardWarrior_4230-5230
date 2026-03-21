draw_self();

// armor bar above keyboard
if (global.upg_key2Defense && global.keyboard_armor_hits > 0) {
    var bar_x1 = x + 260;
    var bar_y1 = y - 18;
    var bar_w = 420;
    var bar_h = 10;

    var pct = global.keyboard_armor_hits / global.keyboard_armor_max;

    draw_set_color(c_black);
    draw_rectangle(bar_x1, bar_y1, bar_x1 + bar_w, bar_y1 + bar_h, false);

    draw_set_color(c_blue);
    draw_rectangle(bar_x1, bar_y1, bar_x1 + bar_w * pct, bar_y1 + bar_h, false);

    draw_set_color(c_white);
    draw_rectangle(bar_x1, bar_y1, bar_x1 + bar_w, bar_y1 + bar_h, true);
}

// key press tints
draw_set_alpha(0.35);
draw_set_color(make_color_rgb(20, 40, 120));

for (var i = 0; i < array_length(keys); i++) {
    var label = keys[i][0];

    if (key_timers[? label] > 0) {
        var local_x = keys[i][1];
        var local_y = keys[i][2];
        var local_w = keys[i][3];
        var local_h = keys[i][4];

        var kx1 = x + local_x * image_xscale;
        var ky1 = y + local_y * image_yscale;
        var kx2 = x + (local_x + local_w) * image_xscale;
        var ky2 = y + (local_y + local_h) * image_yscale;

        draw_rectangle(kx1, ky1, kx2, ky2, false);
    }
}

draw_set_alpha(1);
draw_set_color(c_white);