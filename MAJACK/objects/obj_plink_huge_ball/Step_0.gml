/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(!active){
	if(alarm[11] == -1 && is_inside_view(view_camera[0]))
		active = true;
}
else{
	
	x += hspd;
	y += vspd;


	if(place_meeting(x+hspd, y, obj_solid)){
		while(!place_meeting(x+sign(hspd), y, obj_solid))
			x+=sign(hspd);
		hspd = -hspd;
		

	}

	if(place_meeting(x, y+vspd, obj_solid)){
		while(!place_meeting(x, y+sign(vspd), obj_solid))
			y+=sign(vspd);
		vspd = -vspd;
		

	}

	if(place_meeting(x+hspd, y, obj_solid_plinko_ball)){
		while(!place_meeting(x+sign(hspd), y, obj_solid_plinko_ball))
			x+=sign(hspd);
		hspd = -hspd;

	}

	if(place_meeting(x, y+vspd, obj_solid_plinko_ball)){
		while(!place_meeting(x, y+sign(vspd), obj_solid_plinko_ball))
			y+=sign(vspd);
		vspd = -vspd;

	}
	
	if(place_meeting(x, y+vspd, obj_plink_huge_ball)){
		while(!place_meeting(x, y+sign(vspd), obj_plink_huge_ball))
			y+=sign(vspd);
		vspd = -vspd;
	}
}
