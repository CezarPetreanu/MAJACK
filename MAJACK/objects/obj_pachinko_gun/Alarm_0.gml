if(state == 1){ // shoot
	var b = instance_create_depth(x+image_xscale*32, y, depth-1, obj_plinko_volcano_ball_2);
	b.dir = point_direction(x, y, obj_majack.x, obj_majack.y);
	b.spd = 4;
	bullets--;
	if(bullets <= 0){
		image_index = 1;
		state = 0; // chase
	}
	else
		alarm[0] = 5;
}