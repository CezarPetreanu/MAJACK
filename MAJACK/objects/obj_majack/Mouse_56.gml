if(shoot && cards_len > 0){
	shoot = false;
	
	sprite_index = spr_majack_shoot;
	image_index = 0;
	image_speed = 1;
	
	var _flash = instance_create_depth(x+image_xscale*10, y-35, depth-1, obj_card_flash);
	_flash.image_index = (current_index mod 4 < 2);
	_flash.damage = current_card;
	_flash.color = current_index mod 4;
	
	cards[current_index] = -1;
	cards_len--;
	
	with(obj_deck){
		draw_card = false;
		release_discard_card_x = xx+10;
		release_discard_card_y = yy-10;
		release_discard_card = other.current_index;
	}
	//var _card_hud = instance_create_depth(45, window_get_height()/2-55, obj_deck.depth-1-instance_number(obj_deck_card)-1, obj_deck_card);
	//_card_hud.image_index = current_index;
	while(cards_len > 0 && cards[current_index] == -1){
		current_index = irandom(51);
	}
	current_card = (cards_len == 0)?-1:cards[current_index];

}