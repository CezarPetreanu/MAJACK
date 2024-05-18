/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(prev_damage_taken != damage_taken){
	alarm[0] = game_get_speed(gamespeed_fps)*1.5;
	if(prev_damage_taken == 0)
		offset = irandom(360);
	for(var i=0; i<20; i++){
		var b = instance_create_depth(x+45, y-67, depth-1, obj_plinko_volcano_ball_2);
		b.spd = 1;
		b.dir = i*360/20+offset;
	}
}

prev_damage_taken = damage_taken;

if(!active){
	if(is_inside_view(view_camera[0])){
		active = true;
		alarm[0] = game_get_speed(gamespeed_fps)*1.5;
	}
}
else{
	if(!is_inside_view(view_camera[0]))
		active = false;
}
