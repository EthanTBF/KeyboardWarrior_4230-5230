function apply_upgrade(_id) {
    if (!variable_global_exists("ice_letters")) global.ice_letters = [];
    if (!variable_global_exists("explosive_letters")) global.explosive_letters = [];
    if (!variable_global_exists("disco_letters")) global.disco_letters = [];
    if (!variable_global_exists("exKey_letters")) global.exKey_letters = [];
    if (!variable_global_exists("upgrades_owned")) global.upgrades_owned = [];
    if (!variable_global_exists("keyboard_armor_hits")) global.keyboard_armor_hits = 0;
    if (!variable_global_exists("keyboard_armor_max")) global.keyboard_armor_max = 2;

    switch (_id) {
        case "ice_keycaps":
            global.upg_ice_keycaps = true;

            var new_letter = random_single_letter();
            while (key_in_array(new_letter, global.ice_letters)) {
                new_letter = random_single_letter();
                if (array_length(global.ice_letters) >= 26) break;
            }

            array_push(global.ice_letters, new_letter);
            break;

        case "explosive_key":
            global.upg_explosive_key = true;

            var new_letter1 = random_single_letter();
            while (array_contains(global.explosive_letters, new_letter1)) {
                new_letter1 = random_single_letter();
                if (array_length(global.explosive_letters) >= 26) break;
            }

            array_push(global.explosive_letters, new_letter1);
            break;

        case "dance_key":
            global.upg_dance_key = true;
            global.disco_letters = random_three_letters();
            break;

        case "exKeyrience":
            global.upg_exKEYrience = true;

            var new_letter2 = random_single_letter();
            while (array_contains(global.exKey_letters, new_letter2)) {
                new_letter2 = random_single_letter();
                if (array_length(global.exKey_letters) >= 26) break;
            }

            array_push(global.exKey_letters, new_letter2);
            break;

        case "key2defense":
            global.upg_key2Defense = true;
            global.keyboard_armor_hits = global.keyboard_armor_max;
            break;
    }

    array_push(global.upgrades_owned, _id);
}