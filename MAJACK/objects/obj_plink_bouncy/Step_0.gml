if(!active) {
	if(bouncy_real.alarm[11] == -1 && is_inside_view(view_camera[0]))
		active = true;
}
else{
	if(yy >= 0){
		vspd = -6;
		bouncy_real.image_index = 0;
		bouncy_real.image_speed = 1;
	
		var bul_offset = irandom(360);
		for(var i=6; i>=0; i--){
			var b = instance_create_depth(x, y, depth, obj_plinko_volcano_ball_2);
			b.spd = 3;
			b.dir = (360/5)*i+bul_offset;
		}
	
		targetx = obj_majack.x+8
		targety = obj_majack.y+16
	}

	vspd += 0.2;
	yy += vspd;

	x = lerp(x, targetx, 0.1);
	y = lerp(y, targety, 0.1);
}