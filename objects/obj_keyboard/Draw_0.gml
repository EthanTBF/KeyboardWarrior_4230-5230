draw_self();

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