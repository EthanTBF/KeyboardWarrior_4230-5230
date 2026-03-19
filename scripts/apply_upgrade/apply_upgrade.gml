function apply_upgrade(_id) {
	//since globals are intialized as false, checking to create them
    if (!variable_global_exists("ice_letters")) global.ice_letters = [];
    if (!variable_global_exists("explosive_letters")) global.explosive_letters = [];
    if (!variable_global_exists("disco_letters")) global.disco_letters = [];
    if (!variable_global_exists("upgrades_owned")) global.upgrades_owned = [];
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
    }

    array_push(global.upgrades_owned, _id);
}