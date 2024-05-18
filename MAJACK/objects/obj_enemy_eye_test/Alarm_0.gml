if(bullets > 0){
	for(var _i=-1; _i<=1; _i++){
		var _bullet = instance_create_depth(x, y, depth-1, obj_enemy_eye_bullet);
		_bullet.ang = point_direction(x, y, obj_majack.x, obj_majack.y)+_i*30;
		_bullet.image_angle = _bullet.ang;
	}
	bullets--;
	alarm[0] = game_get_speed(gamespeed_fps)*0.3;
}
else{
	alarm[0] = game_get_speed(gamespeed_fps)*2;
	bullets = 5;
}