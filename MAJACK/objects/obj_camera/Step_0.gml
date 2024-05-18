cx = camera_get_view_x(view_camera[0]);
cy = camera_get_view_y(view_camera[0]);

cx = min(following.x, room_width-view_w/2)*3/4 + mouse_x*1/4 - view_w/2;
cy = min(following.y, room_height-view_h/2)*3/4 + mouse_y*1/4 - view_h/2;

cx = clamp(cx, 0, room_width - view_w);
cy = clamp(cy, 0, room_height - view_h);
camera_set_view_pos(view_camera[0], cx, cy);