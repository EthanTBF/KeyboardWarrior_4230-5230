draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_bottom);

var margin_x = 20;
var margin_y = 20;

var names_text =
    "Hayes Bridges\n" +
    "Ethan-Bradley-Foo\n" +
    "Nathan Pereira\n" +
    "Amman Kamili";
draw_text(margin_x, display_get_gui_height() - margin_y, names_text);