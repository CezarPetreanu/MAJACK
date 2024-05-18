x += hspd;
y += vspd;
vspd += 0.2;

if(bounce == true && (place_meeting(x, y, obj_solid_plinko_ball) || (par.y < obj_majack.y && y > obj_majack.y))){
	bounce = false;
	vspd = -4;
	hspd *= 1.2;
	if((hspd > 0 && x > obj_majack.x) || (hspd < 0 && x < obj_majack.x))
		hspd *= -1;
}