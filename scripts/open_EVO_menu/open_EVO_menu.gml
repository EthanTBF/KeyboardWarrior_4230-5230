function open_EVO_menu() {
    global.game_paused = true;
    global.in_evolve_menu = true;

    global.evolve_choices = roll_upgrade_choices();
    global.evolve_choice_keys = random_letter_choices();

    // preview data for each option
    global.evolve_choice_data = [];

    for (var i = 0; i < array_length(global.evolve_choices); i++) {
        var choice_id = global.evolve_choices[i];
        var data = {};

        switch (choice_id) {
            case "dance_key":
                data.disco_letters = random_three_letters();
                break;
        }

        array_push(global.evolve_choice_data, data);
    }

    if (!instance_exists(obj_EVO_Menu)) {
        global.evo_menu_id = instance_create_layer(0, 0, "Instances", obj_EVO_Menu);
    }
}