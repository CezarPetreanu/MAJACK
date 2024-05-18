if(instance_exists(target)){
	with(target){
		if(damage_taken_text == noone){
			damage_taken_text = instance_create_depth(x, y, depth-1, obj_damage_taken_text);
			damage_taken_text.parent = self;	
		}
		damage_taken_text.ysc = 1.7;
		damage_taken_text.alarm[1] = game_get_speed(gamespeed_fps)*3;
	}

	
	if(damage == "J" || damage == "Q" || damage == "K"){
		target.damage_taken += 10;
		if(target.damage_taken <= 21)
			obj_majack._score += 10;
	}
	else if(damage >= 2 && damage <= 10){
		target.damage_taken += damage;
		if(target.damage_taken <= 21)
			obj_majack._score += damage;
	}
	else {
		target.damage_taken += (target.damage_taken < 10)?11:1;
		if(target.damage_taken <= 21)
			obj_majack._score += (target.damage_taken < 10)?11:1;
	}
	
	if(target.damage_taken == 21)
		audio_play_sound(snd_blackjack, 0, false);
	else if(target.damage_taken > 21)
		audio_play_sound(snd_blackjack_over, 0, false);
		
	var _card_fly = instance_create_depth(xx, yy, depth-1, obj_card_fly);
	_card_fly.image_index = color;
}
