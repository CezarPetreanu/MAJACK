draw_sprite(spr_deck,4, xx, yy);
var _deck_index;
if(obj_majack.cards_len == 0)
	_deck_index = 4;
else if (obj_majack.cards_len == 52)
	_deck_index = 3;
else
	_deck_index = floor(obj_majack.cards_len/13);

if(obj_majack.cards_len > 1 || (obj_majack.cards_len == 1 && draw_card == false))
	draw_sprite(spr_deck, _deck_index, xx-reload_x, yy);

if(release_discard_card_prev != -1)
	draw_sprite(spr_deck_cards, release_discard_card_prev, xx+70-reload_x, yy);
if(release_discard_card != -1)
	draw_sprite(spr_deck_cards, release_discard_card, release_discard_card_x-reload_x, release_discard_card_y);
if(draw_card)
	draw_sprite(spr_deck, 0, draw_discard_card_x+(obj_majack.sprite_index==spr_majack_prepare_limit)*floor(obj_majack.image_index), draw_discard_card_y);