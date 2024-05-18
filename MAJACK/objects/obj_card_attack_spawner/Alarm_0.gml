if(parent != noone && cards > 0){
	var _atk = instance_create_depth(parent.x, parent.y-sprite_get_width(parent.sprite_index)/2, depth, obj_card_attack);
	_atk.target = target;
	if(_atk.target == obj_majack)
		_atk.sprite_index = spr_card_bullet_selfdamage;
	if(blackjack)
		_atk.sprite_index = spr_card_bullet_blackjack;
	cards--;
	alarm[0] = 5;
	if(cards == 0 || !instance_exists(target)){
		parent = noone;
		instance_destroy();	
	}
}