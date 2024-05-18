if(sprite_index == spr_majack_shoot){
	if(hspd != 0 || vspd != 0)
		sprite_index = spr_majack_walk;
	else
		sprite_index = spr_majack_idle;
	image_index = 0;
	image_speed = 1;
}
else if(sprite_index == spr_majack_prepare){
	image_index = 1;
}