/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if(!active){
	if(is_inside_view(view_camera[0])){
		alarm[0] = game_get_speed(gamespeed_fps);
		bullets = 8;
		active = true;
	}
}
else{
	angle += angle_spd;
	if(angle >= 360) angle = angle mod 360;
	if(!is_inside_view(view_camera[0], 500)){
		sprite_index = spr_pachinko_spin_cat;
		active = false;
	}
}