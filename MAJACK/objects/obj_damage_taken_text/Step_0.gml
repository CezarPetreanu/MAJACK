var _dmg = parent.damage_taken;

y_offset = lerp(y_offset, sprite_get_width(parent.sprite_index)/2, 0.1);
ang_dir += ang_spd+(_dmg == 21)*5;
if(ang_dir >= 360) ang_dir = ang_dir mod 360;

if(_dmg <= 21){
	ang = sin(degtorad(ang_dir))*8;
	ysc = lerp(ysc, 1, (_dmg != 21)?0.1:0.05);
}
else{
	if(alarm[0] == -1)
		alarm[0] = game_get_speed(gamespeed_fps)*3;
	ang = lerp(ang, 0, 0.1);
	ysc = lerp(ysc, 0.8, 0.05);
	if(shake < 1) shake += 0.01;
}

if(!instance_exists(parent))
	instance_destroy();