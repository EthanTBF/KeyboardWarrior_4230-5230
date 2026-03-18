function apply_upgrade(_id) {
	
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
            global.explosive_letter = random_single_letter();
			while (array_contains(global.explosive_letters, new_letter)) {
				new_letter = random_single_letter();

        // safety break if all letters are used somehow
			if (array_length(global.explosive_letters) >= 26) break;
			}

			array_push(global.explosive_letters, new_letter);
            break;

        case "dance_key":
            global.upg_dance_key = true;
            global.disco_letters = random_three_letters();
            break;
			}

    array_push(global.upgrades_owned, _id);
}