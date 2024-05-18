if(shoot){
	image_xscale = (mouse_x > x)?1:-1;
	if(irandom(15) == 0)
		sparkle(x, y+20, 1);
	if(alarm[0] < game_get_speed(gamespeed_fps) && sprite_index == spr_majack_prepare){
		sprite_index = spr_majack_prepare_limit;
		image_index = 0;
	}
}
if(!shoot && sprite_index != spr_majack_shoot){
	if(hspd != 0 || vspd != 0){
		if(sprite_index != spr_majack_walk){
			sprite_index = spr_majack_walk;
			image_index = 0;
		}
		if(hspd != 0)
			image_xscale = (hspd > 0)?1:-1;
	}
	else{
		if(sprite_index != spr_majack_idle){
			sprite_index = spr_majack_idle;
			image_index = 0;
		}
	}
}

topdown_movement();
hurt_behavior();