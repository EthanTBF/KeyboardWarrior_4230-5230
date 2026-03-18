function close_EVO_menu() {
    global.game_paused = false;
    global.in_evolve_menu = false;
    global.evolve_choices = [];
    global.evolve_choice_keys = [];

    if (instance_exists(obj_EVO_Menu)) {
        with (obj_EVO_Menu) instance_destroy();
    }

    global.evo_menu_id = noone;
}