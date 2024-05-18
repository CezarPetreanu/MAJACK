if(parent.damage_taken <= 21){
	sparkle(parent.x, parent.y-y_offset, 8);
	var _spawner = instance_create_depth(parent.x, parent.y-y_offset, depth, obj_card_attack_spawner);
	_spawner.cards = parent.damage_taken;
	_spawner.parent = parent;
	_spawner.target = parent;
	if(_spawner.cards == 21){
		audio_play_sound(snd_blackjack_success, 0, false);
		_spawner.blackjack = true;
	}
	else
		audio_play_sound(snd_majack_attack, 0, false);
	parent.damage_taken = 0;
	parent.damage_taken_text = noone;
	parent = noone;
	instance_destroy();
}