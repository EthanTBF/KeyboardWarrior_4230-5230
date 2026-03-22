if (!menu_open) exit;

draw_set_alpha(0.85);
draw_set_color(c_black);
draw_rectangle(120, 80, 760, 420, false);

draw_set_alpha(1);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_text(150, 110, "CHEAT MENU");
draw_text(150, 160, "1) Press to evolve");
draw_text(150, 190, "2) Increase max health by 50");
draw_text(150, 220, "3) Increase score by 1000");
draw_text(150, 250, "4) Slow down the game");
draw_text(150, 280, "5) Speed up the game");
draw_text(150, 310, "6) Return to game and unpause");