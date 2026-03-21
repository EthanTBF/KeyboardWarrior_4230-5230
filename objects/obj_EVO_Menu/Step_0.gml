if (!global.in_evolve_menu) exit;

if (array_length(global.evolve_choices) < 2) exit;
if (array_length(global.evolve_choice_keys) < 2) exit;

var choice0 = global.evolve_choices[0];
var choice1 = global.evolve_choices[1];

var k1 = (choice0 == "key2defense") ? vk_space : ord(global.evolve_choice_keys[0]);
var k2 = (choice1 == "key2defense") ? vk_space : ord(global.evolve_choice_keys[1]);

if (keyboard_check_pressed(k1)) {
    apply_upgrade(choice0);
    close_EVO_menu();
    exit;
}

if (keyboard_check_pressed(k2)) {
    apply_upgrade(choice1);
    close_EVO_menu();
    exit;
}