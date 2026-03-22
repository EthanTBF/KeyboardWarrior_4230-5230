function glitch_apply_hit(_percent) { // enemy glitch when a letter is typed
    bktglitch_activate(sprite_width, sprite_height)
    
    bktglitch_config(0.004, 0.04, 1.0, 0.1, 0.0, 0.57, 11.0, 0.64, 0.41, 0.5, 0.004, 0.0025, 0.5, 1.0 * _percent, 0)
}

function glitch_apply_70hp() { // global glitch filter at 70 hp
    bktglitch_activate(display_get_gui_width(), display_get_gui_height())

	//bktglitch_config(0.001333, 0.010000, 0.000000, 0.020000, 0.000000, 0.013333, 1.000000, 0.026667, 0.026667, 0.000000, 0.001000, 0.002500, 0.400000, 0.633333, 0.000000)
	bktglitch_config(0.001333, 0.036667, 1.060000, 0.046667, 0.033333, 0.000000, 0.000000, 0.000000, 0.000000, 0.006667, 0.000000, 0.002500, 0.000000, 0.866667, 0.000000)
}

function glitch_apply_30hp() { // global glitch filter at 30 hp
    bktglitch_activate(display_get_gui_width(), display_get_gui_height())

	//bktglitch_config(0.005667, 0.010000, 1.000000, 0.000000, 0.133333, 0.000000, 0.000000, 0.000000, 0.000000, 0.006667, 0.000000, 0.002500, 0.000000, 0.866667, 0.000000)
	bktglitch_config(0.004000, 0.500000, 3.000000, 0.100000, 0.000000, 0.260000, 5.500000, 0.240000, 0.233333, 0.046667, 0.002333, 0.030000, 0.133333, 0.166667, 0.000000)
}

// GLITCH EFFECT USED:
//////////////////////////////////
//                              //
//   bktGlitch 1.3.2            //
//    Written by Jan Vorisek    //
//    @odditica | odditica.fyi  //
//      jan@odditica.fyi        //
//       02/07/2022             //
//                              //
//     "Here we go again."      //
//							 	//
//////////////////////////////////