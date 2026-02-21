if (instance_exists(obj_player))
{
    draw_healthbar(8, 8, 256, 32, obj_player.hp, c_black, c_red, c_lime, 0, true, true);
}
else
{
    draw_healthbar(8, 8, 256, 32, 0, c_black, c_red, c_lime, 0, true, true);
}

draw_text(16, 16, "XP: " + string(xp));