/// obj_hexbugEnemy : Create
image_xscale = 1
image_yscale = 1;

x = irandom_range(32, room_width - 32);
y = -sprite_get_height(sprite_index) - 16;

progress = 0;
base_speed = 1.5;
damageDone = 1;
word = "";
_typed_letter = "";

ice_slow_timer = 0;

