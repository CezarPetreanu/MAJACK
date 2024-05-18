event_inherited();
image_index = irandom(image_index)-1;
alarm[0] = game_get_speed(gamespeed_fps);
bullets = 8;
bul_hspd = irandom_range(3, 5)/2;
active = true;
hp = 20;
hp_max = hp;

_solid = instance_create_depth(x-32, y, depth, obj_solid);
_solid.image_xscale = 2;
_solid.image_yscale = 3;