if (!global.in_evolve_menu) exit;

if (array_length(global.evolve_choices) < 2) exit;
if (array_length(global.evolve_choice_keys) < 2) exit;

var k1 = ord(global.evolve_choice_keys[0]);
var k2 = ord(global.evolve_choice_keys[1]);

if (keyboard_check_pressed(k1)) {
    apply_upgrade(global.evolve_choices[0]);
    close_EVO_menu();
}

if (keyboard_check_pressed(k2)) {
    apply_upgrade(global.evolve_choices[1]);
    close_EVO_menu();
}