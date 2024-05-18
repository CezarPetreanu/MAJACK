// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function is_inside_view(argument0, argument1=0){
	var view_x = camera_get_view_x(argument0) - argument1;
	var view_y = camera_get_view_y(argument0) - argument1;
	var view_width =  camera_get_view_width(view_camera[0]) + argument1;
	var view_height = camera_get_view_height(view_camera[0]) + argument1;


	return (x >= view_x && x <= view_x + view_width && y >= view_y && y <= view_y + view_height)
}