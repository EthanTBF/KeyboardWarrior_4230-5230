function open_EVO_menu() {
    global.game_paused = true;
    global.in_evolve_menu = true;

    global.evolve_choices = roll_upgrade_choices();
    global.evolve_choice_keys = random_letter_choices();

    if (!instance_exists(obj_EVO_Menu)) {
        global.evo_menu_id = instance_create_layer(0, 0, "Instances", obj_EVO_Menu);
    }
}