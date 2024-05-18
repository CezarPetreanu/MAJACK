/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

active = is_inside_view(view_camera[0]);

image_xscale = (x < obj_majack.x)?1:-1;

if(active){
	if(state == 0){ // chase
		if(image_index != 1) image_index = 1;
		chase_dir = point_direction(x+image_xscale*32, y, obj_majack.x, obj_majack.y);
		x += lengthdir_x(chase_spd, chase_dir);
		y += lengthdir_y(chase_spd, chase_dir);
		if(distance_to_object(obj_majack) < 60){
			image_index = 0;
			state = 1;
			alarm[0] = game_get_speed(gamespeed_fps)*0.5;
			bullets = 10;
		}
	}
}