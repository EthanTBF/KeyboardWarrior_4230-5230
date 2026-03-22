if (global.game_paused) {
    path_speed = 0
    exit
} else {
    path_speed = 3
}

// destroy if it reaches the end of the path
if (path_position >= 1) {
    instance_destroy();
}