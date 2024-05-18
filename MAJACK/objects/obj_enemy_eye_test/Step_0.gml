if(!active){
	float += float_spd;
	if(float >= 360) float = float mod 360;
	y = yy+sin(degtorad(float))*float_amp;
	
	if(point_distance(x, y, obj_majack.x, obj_majack.y) < 100 || damage_taken != 0){
		active = true;
		image_index = 0;
		sprite_index = spr_enemy_eye_spawn;
	}
}
else{
	if(sprite_index == spr_enemy_eye){
		float += 1;
		if(float >= 360) float = float mod 360;
		x = lerp(x, obj_majack.x+sin(degtorad(float))*150, 0.05);
		y = lerp(y, obj_majack.y+cos(degtorad(float))*150, 0.05);
		image_xscale = (x > obj_majack.x)?1:-1;
	}
}

event_inherited();