if(!first_time){
	if(keyboard_check(ord("H")) && image_alpha != 1)
		image_alpha += 0.1;
	if(!keyboard_check(ord("H")) && image_alpha != 0)
		image_alpha -= 0.1;
}