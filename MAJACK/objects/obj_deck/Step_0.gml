if(!reload && obj_majack.cards_len == 0){
	reload = true;
	alarm[0] = game_get_speed(gamespeed_fps)/2;
}

reload_x = lerp(reload_x, 160*(reload && alarm[0] == -1), 0.1);

if(draw_card){
	draw_discard_card_x =  lerp(draw_discard_card_x, xx+10, 0.3);
	draw_discard_card_y = lerp(draw_discard_card_y, yy-10, 0.3);
}

release_discard_card_x =  lerp(release_discard_card_x, xx+70, 0.3);
release_discard_card_y = lerp(release_discard_card_y, yy, 0.3);