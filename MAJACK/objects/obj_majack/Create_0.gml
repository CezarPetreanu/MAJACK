instance_create_depth(x, y, depth, obj_deck);

cards = [];
array_copy(cards, 0, global.card_array, 0, global.card_array_len);
cards_len = 52;
current_index = irandom(array_length(cards)-1);
current_card = cards[current_index];

spd = 3;
hspd = 0;
vspd = 0;

hp = 100;
_score = 0;

shoot = false;
hurt_flash = 0;
hurt_by_enemy = false;

alarm[0] = -1;