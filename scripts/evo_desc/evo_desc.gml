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
		return txt;
        case "explosive_key":
			var txt2 = "Assigned explosive letters: ";
			if (array_length(global.explosive_letters) <= 0) {
				txt += "none";
				} else {
					for (var i = 0; i < array_length(global.explosive_letters); i++) {
					txt += global.explosive_letters[i];
					if (i < array_length(global.explosive_letters) - 1) txt += ", ";
					}
				}
		return txt2 + ". If hit in a word, the enemy instantly dies.";

        case "dance_key":
            if (array_length(global.disco_letters) >= 3)
                return "Disco letters: " + global.disco_letters[0] + ", " + global.disco_letters[1] + ", " + global.disco_letters[2] + ". These stun enemies.";
           
			/*
		case "exKeyrience":
			return 0;
		case "key2Defense":
			return 0;
			
			*/
			
    }

    return "";
}