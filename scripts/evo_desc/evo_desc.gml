function evo_desc(_id) {
    switch (_id) {
        case "ice_keycaps":
		//display current option and all that have it.
            var txt = "Assigned ice letters: ";
            if (array_length(global.ice_letters) <= 0) {
                txt += "none";
            } else {
                for (var i = 0; i < array_length(global.ice_letters); i++) {
                    txt += global.ice_letters[i];
                    if (i < array_length(global.ice_letters) - 1) txt += ", ";
                }
            }
            return txt;

        case "explosive_key":
		//display all letters assigned an explosive upgrade as well as current option
            var txt2 = "Assigned explosive letters: ";
            if (array_length(global.explosive_letters) <= 0) {
                txt2 += "none";
            } else {
                for (var j = 0; j < array_length(global.explosive_letters); j++) {
                    txt2 += global.explosive_letters[j];
                    if (j < array_length(global.explosive_letters) - 1) txt2 += ", ";
                }
            }
            return txt2;

        case "dance_key":
		//display a re-rolled 3 letter count
            if (argument_count > 1) {
                var idx = argument[1];
                if (variable_global_exists("evolve_choice_data")
                    && array_length(global.evolve_choice_data) > idx
                    && variable_struct_exists(global.evolve_choice_data[idx], "disco_letters")) {
                    
                    var arr = global.evolve_choice_data[idx].disco_letters;
                    return "Disco letters: " + arr[0] + ", " + arr[1] + ", " + arr[2];
                }
            }

            if (array_length(global.disco_letters) >= 3) {
                return "Disco letters: " + global.disco_letters[0] + ", " + global.disco_letters[1] + ", " + global.disco_letters[2];
            }

            return "Assigns 3 disco letters that make all enemies dance.";

        case "exKeyrience":
            var txt3 = "Assigned XP letters: ";
            if (array_length(global.exKey_letters) <= 0) {
                txt3 += "none";
            } else {
                for (var k = 0; k < array_length(global.exKey_letters); k++) {
                    txt3 += global.exKey_letters[k];
                    if (k < array_length(global.exKey_letters) - 1) txt3 += ", ";
                }
            }
            return txt3;

        case "key2defense":
            return "Press SPACE to refill 2 armor hits on the keyboard.";
    }

    return "";
}