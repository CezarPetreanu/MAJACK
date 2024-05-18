if(active && bullets){
	alarm[0] = game_get_speed(gamespeed_fps) * 0.1;	
	if(bullets == 8 && irandom(1) == 0){
		var _bullet = instance_create_depth(x, y, depth-1, obj_plinko_volcano_ball_big);
		_bullet.hspd = bul_hspd;
		_bullet.par = self;
	}
	else {
		var _bullet = instance_create_depth(x, y, depth-1, obj_plinko_volcano_ball);
		_bullet.hspd = bul_hspd;
		_bullet.par = self;
	}
	bullets--;
}
else{
	alarm[0] = game_get_speed(gamespeed_fps)/2;
	bullets = 8;
	bul_hspd = irandom_range(3, 5)/2 * sign(obj_majack.x-x);
}