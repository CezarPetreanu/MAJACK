var _spawner = instance_create_depth(parent.x, parent.y-y_offset, depth, obj_card_attack_spawner);
_spawner.cards = parent.damage_taken;
_spawner.parent = parent;
_spawner.target = obj_majack;
parent.damage_taken = 0;
parent.damage_taken_text = noone;
parent = noone;
audio_play_sound(snd_blackjack_fail, 0, false);
instance_destroy();