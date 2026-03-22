// pause stops spawns and gameplay
if (!global.game_paused) {
    spawn_timer++;

    if (spawn_timer >= spawn_interval) {
        spawn_timer = 0;

        var enemy_list = [
            obj_hexbugEnemy,
            obj_hexbugEnemy_Orange,
            obj_hexbugEnemy_Red,
            obj_hexbugEnemy_Purp
        ];

        var pick = enemy_list[irandom(array_length(enemy_list) - 1)];
        var enemy = instance_create_layer(0, 0, "Instances", pick);

        var r_num = irandom(array_length(word_array) - 1);
        enemy.word = word_array[r_num];
    }
	
	// firewall powerup spawn logic
	firewall_timer++
    if (firewall_timer >= firewall_spawn_interval) {
        firewall_timer = 0
        instance_create_layer(0, 0, "Instances", obj_firewall)
    }

    // select lowest bug as target
    var target = noone;

    if (instance_exists(obj_keyboard) && instance_exists(obj_hexbugEnemy)) {
        var best_dist = 1000000000;
        var count = instance_number(obj_hexbugEnemy);

        for (var i = 0; i < count; i++) {
            var e = instance_find(obj_hexbugEnemy, i);
            if (e != noone) {
                var d = abs(e.y - obj_keyboard.y);
                if (d < best_dist) {
                    best_dist = d;
                    target = e;
                    global.target_enemy = target;
                }
            }
        }
    }

    // typing logic, targets closest bug as well as all firewall powerups
    if (target != noone && keyboard_lastkey != 0) {
        var ch = chr(keyboard_lastkey);
        ch = string_upper(ch);

        if (string_length(ch) == 1 && ch >= "A" && ch <= "Z") {
        
        // send to the closest bug (if one exists)
        if (target != noone) {
            target._typed_letter = ch;
            with (target) { event_user(0); }
        }
        
        // send to firewall on screen
        with (obj_firewall) {
            _typed_letter = ch;
            event_user(0);
        }
    }

        keyboard_lastkey = 0;
    }

    // level-up check
    while (global.xp >= xp_level_limit(global.level)) {
        global.level += 1;

        if (global.level mod 5 == 0) {
            open_EVO_menu();
            break;
        }
    }
}