if(active){
	if(bullets == 0){
		bullets = 8;
		alarm[0] = game_get_speed(gamespeed_fps)*1.5;
	}
	else{
		if(sprite_index != spr_pachinko_spin_cat_attack)
			sprite_index = spr_pachinko_spin_cat_attack;
		for(var i=0; i<3; i++){
			var b = instance_create_depth(x, y, depth-1, obj_plinko_volcano_ball_2);
			b.spd = 2;
			b.dir = (dir == 1)?angle+(360/3)*i:360-(angle+(360/3)*i);
		}
		bullets--;
		if(bullets == 0 && sprite_index != spr_pachinko_spin_cat)
			sprite_index = spr_pachinko_spin_cat;
		alarm[0] = 8;
	}
}