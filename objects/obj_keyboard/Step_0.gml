// reduce timers
for (var i = 0; i < array_length(keys); i++) {
    var label = keys[i][0];
    var t = key_timers[? label];
    if (t > 0) {
        key_timers[? label] = t - 1;
    }
}

// letters
for (var c = ord("A"); c <= ord("Z"); c++) {
    var ch = chr(c);
    if (keyboard_check_pressed(c)) {
        key_timers[? ch] = press_time_default;
    }
}

// number row
for (var n = ord("0"); n <= ord("9"); n++) {
    var num = chr(n);
    if (keyboard_check_pressed(n)) {
        key_timers[? num] = press_time_default;
    }
}

// punctuation / special keys
if (keyboard_check_pressed(vk_space))       key_timers[? "SPACE"] = press_time_default;
if (keyboard_check_pressed(vk_tab))         key_timers[? "TAB"] = press_time_default;
if (keyboard_check_pressed(vk_enter))       key_timers[? "ENTER"] = press_time_default;
if (keyboard_check_pressed(vk_backspace))   key_timers[? "BACKSPACE"] = press_time_default;
if (keyboard_check_pressed(vk_escape))      key_timers[? "ESC"] = press_time_default;
if (keyboard_check_pressed(vk_shift)) {
    key_timers[? "LSHIFT"] = press_time_default;
    key_timers[? "RSHIFT"] = press_time_default;
}
if (keyboard_check_pressed(vk_control))     key_timers[? "CTRL"] = press_time_default;
if (keyboard_check_pressed(vk_alt))         key_timers[? "ALT"] = press_time_default;
if (keyboard_check_pressed(vk_up))          key_timers[? "UP"] = press_time_default;
if (keyboard_check_pressed(vk_down))        key_timers[? "DOWN"] = press_time_default;
if (keyboard_check_pressed(vk_left))        key_timers[? "LEFT"] = press_time_default;
if (keyboard_check_pressed(vk_right))       key_timers[? "RIGHT"] = press_time_default;


// Go to lose screen on death
if (hp <= 0) {
    room_goto(rm_loseScreen);
}