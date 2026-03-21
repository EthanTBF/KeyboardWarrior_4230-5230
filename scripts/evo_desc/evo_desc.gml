function evo_desc(_id) {
    switch (_id) {
        case "ice_keycaps":
            var txt = "Assigned ice letters: ";
            if (array_length(global.ice_letters) <= 0) {
                txt += "none";
            } else {
                for (var i = 0; i < array_length(global.ice_letters); i++) {
                    txt += global.ice_letters[i];
                    if (i < array_length(global.ice_letters) - 1) txt += ", ";
                }
            }
            return txt + ". First matching starting letter slows that enemy.";

        case "explosive_key":
            var txt2 = "Assigned explosive letters: ";
            if (array_length(global.explosive_letters) <= 0) {
                txt2 += "none";
            } else {
                for (var j = 0; j < array_length(global.explosive_letters); j++) {
                    txt2 += global.explosive_letters[j];
                    if (j < array_length(global.explosive_letters) - 1) txt2 += ", ";
                }
            }
            return txt2 + ". If hit in a word, the enemy instantly dies.";

        case "dance_key":
            if (array_length(global.disco_letters) >= 3) {
                return "Disco letters: " + global.disco_letters[0] + ", " + global.disco_letters[1] + ", " + global.disco_letters[2] + ". These stun enemies.";
            }
            return "Assigns 3 disco letters that stun enemies.";

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
            return txt3 + ". Grants +50 XP per matching letter in a killed word.";

        case "key2defense":
            return "Press SPACE to refill 2 armor hits on the keyboard.";
    }

    return "";
}