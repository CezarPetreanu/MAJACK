damage = 0;
color = 0;
xx = x;
yy = y;
dir = point_direction(x, y, mouse_x, mouse_y);
target = noone;
do{
	xx += lengthdir_x(1, dir);	
	yy += lengthdir_y(1, dir);	
	if(place_meeting(xx, yy, par_enemy))
		target = instance_place(xx, yy, par_enemy);
}until(!((xx < obj_camera.cx+obj_camera.view_w+100 && xx > obj_camera.cx-100 && yy < obj_camera.cy+obj_camera.view_h+100 && yy > obj_camera.cy-100) &&
!place_meeting(xx, yy, par_enemy)))

alarm[0] = 1;

image_xscale = point_distance(x, y, xx, yy)/6+0.1;
image_angle = dir;

audio_play_sound(snd_card_throw, 0, false, 1, 0, random_range(0.95, 1.05));