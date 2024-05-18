if(instance_exists(obj_data_carrier)){
	
	array_copy(cards, 0, obj_data_carrier.cards, 0, global.card_array_len);

	cards_len = obj_data_carrier.cards_len;
	current_index = obj_data_carrier.current_index;
	current_card = obj_data_carrier.current_card;

	spd = obj_data_carrier.spd;
	hspd = obj_data_carrier.hspd;
	vspd = obj_data_carrier.vspd;

	hp = obj_data_carrier.hp;
	_score = obj_data_carrier._score;

	instance_destroy(obj_data_carrier);
}