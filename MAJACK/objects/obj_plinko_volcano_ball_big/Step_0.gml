x += hspd;
y += vspd;
vspd += 0.2;

if(bounce == true && (place_meeting(x, y, obj_solid_plinko_ball) || (par.y < obj_majack.y && y > obj_majack.y))){
	instance_destroy();
	for(var i=10; i>=0; i--){
		var b = instance_create_depth(x, y, depth, obj_plinko_volcano_ball_2);
		b.spd = 3;
		b.dir = (360/10)*i+bul_offset;
	}
}