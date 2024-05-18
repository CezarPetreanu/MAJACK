following = noone;
view_w = camera_get_view_width(view_camera[0]);
view_h = camera_get_view_height(view_camera[0]);

cx = camera_get_view_x(view_camera[0]);
cy = camera_get_view_y(view_camera[0]);

if(instance_exists(obj_majack)){
	following = obj_majack;

	cx = min(following.x, room_width-view_w/2)*3/4 + mouse_x*1/4 - view_w/2;
	cy = min(following.y, room_height-view_h/2)*3/4 + mouse_y*1/4 - view_h/2;

	cx = clamp(cx, 0, room_width - view_w);
	cy = clamp(cy, 0, room_height - view_h);
	camera_set_view_pos(view_camera[0], cx, cy);
}