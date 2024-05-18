dir = point_direction(x, y, obj_majack.x, obj_majack.y);
spd = 1;

bul_dir = irandom(360);
bul_dir_spd = 1;

alarm[0] = game_get_speed(gamespeed_fps)*4;

for(var i=0; i<8; i++){
	b = instance_create_depth(x, y, depth, obj_pachinko_wheel_bullet_real);
	b.dir = bul_dir+i*360/8;
	b.dir_spd = bul_dir_spd;
	b.par = self;
}