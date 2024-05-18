/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

for(var i=0; i<8; i++){
	draw_sprite(spr_plink_volcano_ball, 0, x+lengthdir_x(20, hover+i*360/8), y-70+sin(degtorad(hover)*2)*6+lengthdir_y(20, hover+i*360/8));
}
