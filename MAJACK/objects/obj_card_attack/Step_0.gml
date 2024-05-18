if(alarm[0] == -1 && steer < 0.9)
	steer += 0.005+0.01*(target != obj_majack);
dir += angle_difference(target_dir, dir)*steer;

if(target != noone && (target != obj_majack || alarm[1] != -1))
	target_dir = point_direction(x, y, target.x, target.y)

if(alarm[2] == -1)
	spd += 0.1;

x += lengthdir_x(spd, dir);
y += lengthdir_y(spd, dir);

image_angle = dir-90;

if(alarm[0] == -1 && point_distance(x, y, target.x, target.y) < 20){
	audio_play_sound(snd_card_impact, 0, false, 1, 0, random_range(0.9, 1.1));
	
	var _impact = instance_create_depth(x, y, depth, obj_card_attack_impact);
	
	switch(image_index){
		case 0:
			_impact.sprite_index = spr_impact_heart;
			break;
		case 1:
			_impact.sprite_index = spr_impact_diamond;
			break;
		case 2:
			_impact.sprite_index = spr_impact_spade;
			break;
		case 3:
			_impact.sprite_index = spr_impact_club;
			break;
	}
	if(object_get_parent(target.object_index) == par_enemy){
		if(sprite_index == spr_card_bullet_blackjack)
			obj_majack._score += 21;
		else
			obj_majack._score += 10;
			
		target.hurt_offset = choose(-2, 2);
		target.hp -= 1+(sprite_index == spr_card_bullet_blackjack);
		target.hp_bar_timer = game_get_speed(gamespeed_fps)*3;
	}
	else if(target == obj_majack){
		audio_play_sound(choose(snd_hurt_1, snd_hurt_2, snd_hurt_3), 0, false, 1, 0, random_range(0.95, 1.05));
		obj_majack.hurt_flash = 1;
		obj_majack._score--;
		if(obj_majack._score <= 0)
			obj_majack._score = 0;	
	}
	instance_destroy();
}
	