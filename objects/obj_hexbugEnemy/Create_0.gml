image_xscale = 0.5;
image_yscale = 0.5;

x = irandom_range(32, room_width - 32);
y = -sprite_get_height(sprite_index) - 16;

progress = 0;
base_speed = 1.5;
damageDone = 10;
word = "";
_typed_letter = "";

ice_slow_timer = 0;
dance_stun_timer = 0;

glitch_timer = 0;

// dance movement helpers
base_xscale = 0.5;
base_yscale = 0.5;
dance_origin_x = x;
dance_offset = irandom(1000);
dance_amplitude = 12;