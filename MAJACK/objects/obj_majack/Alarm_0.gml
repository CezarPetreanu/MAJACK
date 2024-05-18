if(shoot == true){
	var _card = instance_create_depth(x-image_xscale*3, y-10, depth-1, obj_card_fly);
	_card.image_index = current_index mod 4;
	
	shoot = false;
	cards[current_index] = -1;
	cards_len--;
	//var _card_hud = instance_create_depth(45, window_get_height()/2-55, obj_deck.depth-instance_number(obj_deck_card)-1, obj_deck_card);
	//_card_hud.image_index = current_index;
	while(cards_len > 0 && cards[current_index] == -1){
		current_index = irandom(51);
	}
	current_card = (cards_len == 0)?-1:cards[current_index];

	if(hspd != 0 || vspd != 0)
		sprite_index = spr_majack_walk;
	else
		sprite_index = spr_majack_idle;
	image_index = 0;
	image_speed = 1;
	
	with(obj_deck){
		draw_card = false;
		release_discard_card_x = xx+10;
		release_discard_card_y = yy-10;
		release_discard_card = other.current_index;
	}
}