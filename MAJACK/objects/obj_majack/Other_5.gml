if(!instance_exists(obj_data_carrier))
	instance_create_depth(x, y, depth, obj_data_carrier);
	
obj_data_carrier.cards = [];
array_copy(obj_data_carrier.cards, 0, cards, 0, global.card_array_len);

obj_data_carrier.cards_len = cards_len;
obj_data_carrier.current_index = current_index;
obj_data_carrier.current_card = current_card;

obj_data_carrier.spd = spd;
obj_data_carrier.hspd = hspd;
obj_data_carrier.vspd = vspd;

obj_data_carrier.hp = hp;
obj_data_carrier._score = _score;