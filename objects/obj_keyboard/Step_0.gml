// reduce timers
for (var i = 0; i < array_length(keys); i++) {
    var label = keys[i][0];
    var t = key_timers[? label];
    if (t > 0) {
        key_timers[? label] = t - 1;
    }
}

// letters take priority
for (var c = ord("A"); c <= ord("Z"); c++) {
    var ch = chr(c);
    if (keyboard_check_pressed(c)) {
        key_timers[? ch] = press_time_default;
    }
}

//space key
if (keyboard_check_pressed(vk_space)) {
    key_timers[? "SPACE"] = press_time_default;
}