if(cards_len > 0 && !shoot){
	sprite_index = spr_majack_prepare;
	image_index = 0;
	image_speed = 1;
	alarm[0] = game_get_speed(gamespeed_fps)*3;
	shoot = true;
	with(obj_deck){
		draw_card = true;
		draw_discard_card_x = xx+6;
		draw_discard_card_y = yy;
		release_discard_card_prev = release_discard_card;
	}
}