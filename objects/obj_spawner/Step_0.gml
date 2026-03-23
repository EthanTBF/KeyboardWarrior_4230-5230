// pause stops spawns and gameplay
if (!global.game_paused) {
    // track run time
	if (!variable_global_exists("game_time_frames")) global.game_time_frames = 0;
	if (!variable_global_exists("diff_step_seconds")) global.diff_step_seconds = 15;
	if (!variable_global_exists("diff_step_amount")) global.diff_step_amount = 0.1;
	if (!variable_global_exists("diff_mult")) global.diff_mult = 1.0;
	if (!variable_global_exists("diff_max")) global.diff_max = 2.5;
    global.game_time_frames += 1;

    // speedups
    var time_seconds = global.game_time_frames / room_speed;
    var diff_steps = floor(time_seconds / global.diff_step_seconds);
    global.diff_mult = 1.0 + (diff_steps * global.diff_step_amount);
    global.diff_mult = min(global.diff_mult, global.diff_max);

    var current_spawn_interval = spawn_interval / global.diff_mult;
    current_spawn_interval = max(room_speed * 0.5, current_spawn_interval);

    spawn_timer++;

    if (spawn_timer >= current_spawn_interval) {
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
		
		// keep enemy + word fully on screen
		var half_sprite_w = sprite_get_width(enemy.sprite_index) * 0.5;
		var half_word_w = string_width(enemy.word) * 0.5;
		var half_needed = max(half_sprite_w, half_word_w) + 8;

		enemy.x = clamp(enemy.x, half_needed, room_width - half_needed);
    }
	
    // firewall powerup spawn logic
    firewall_timer++;
    if (firewall_timer >= firewall_spawn_interval) {
        firewall_timer = 0;
        instance_create_layer(0, 0, "Instances", obj_firewall);
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