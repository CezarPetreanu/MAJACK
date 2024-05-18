/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

active = is_inside_view(view_camera[0]);

hover += hover_s;
if(hover >= 360) hover = hover mod 360;

x = xstart + sin(degtorad(hover))*16;
if(x != xprevious)
	image_xscale = sign(x-xprevious);