if (obj_keyboard.hp <= 30) {
    glitch_apply_30hp();
    draw_surface(application_surface, 0, 0); // Draw the whole game with the shader
    shader_reset();
} else if (obj_keyboard.hp <= 70) {
    glitch_apply_70hp();
    draw_surface(application_surface, 0, 0);
    shader_reset();
} else {
	shader_reset();
}