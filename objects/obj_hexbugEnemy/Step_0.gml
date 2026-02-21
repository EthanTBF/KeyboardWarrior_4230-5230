y += base_speed;

// 2) If we hit the keyboard/base, damage it and die (no XP)
if (place_meeting(x, y, obj_keyboard)) {
    var k = instance_place(x, y, obj_keyboard);
    if (k != noone) {
        k.hp -= damageDone;
    }
    instance_destroy(); // bug dies on impact
}