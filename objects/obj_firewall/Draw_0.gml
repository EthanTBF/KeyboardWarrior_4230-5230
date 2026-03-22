draw_self()

// text alignment
draw_set_halign(fa_center)
draw_set_valign(fa_bottom)

var yy = y - 20
var xx = x

draw_text_color(xx, yy, word, c_white, c_white, c_white, c_white, 1)

// highlight the letters we typed in Lime Green
var typed_part = string_copy(word, 1, typed_index)
if (typed_part != "") {
    var full_width = string_width(word)
    var start_x = xx - (full_width / 2)
    draw_set_halign(fa_left)
    draw_text_color(start_x, yy, typed_part, c_lime, c_lime, c_lime, c_lime, 1)
}