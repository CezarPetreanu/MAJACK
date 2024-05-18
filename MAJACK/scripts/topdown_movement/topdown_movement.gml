// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function topdown_movement(){
	hspd = spd*(keyboard_check(ord("D"))-keyboard_check(ord("A")));
	vspd = spd*(keyboard_check(ord("S"))-keyboard_check(ord("W")));
	
	if(place_meeting(x+hspd, y, obj_solid)){
		while(!place_meeting(x+sign(hspd), y, obj_solid))
			x += sign(hspd);
		hspd = 0;
	}
	x += hspd;
	if(place_meeting(x, y+vspd, obj_solid)){
		while(!place_meeting(x, y+sign(vspd), obj_solid))
			y += sign(vspd);
		vspd = 0;
	}
	y += vspd;
}