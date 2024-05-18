reload = false;
release_discard_card = -1;
release_discard_card_prev = -1;
with(obj_majack){
	array_copy(cards, 0, global.card_array, 0, global.card_array_len);
	cards_len = 52;
	current_index = irandom(array_length(cards)-1);
	current_card = cards[current_index];
}