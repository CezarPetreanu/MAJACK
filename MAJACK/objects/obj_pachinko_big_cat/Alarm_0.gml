if(active){
	var r = irandom(360);
	for(var i=0; i<20; i++){
		var b = instance_create_depth(x+45, y-67, depth-1, obj_plinko_volcano_ball_2);
		b.spd = 1;
		b.dir = i*360/20+r;
	}
}
alarm[0] = game_get_speed(gamespeed_fps)*1.5;