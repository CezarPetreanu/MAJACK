if(alarm[0] == -1) x = lerp(x, room_width, 0.1);
if(alarm[1] > -1 && a > 0) a-= 0.1;
if(alarm[1] == -1 && a < 2){
	a += 0.1;
	if(a == 2)
		room_goto(rm_test_thanks);
}