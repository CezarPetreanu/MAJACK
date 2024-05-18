// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function hurt_behavior(){
	var enemy_bullet = instance_nearest(x, y, par_bullet);
	if(enemy_bullet != noone){
		if(point_distance(x, y, enemy_bullet.x, enemy_bullet.y) < 20){
			audio_play_sound(choose(snd_hurt_1, snd_hurt_2, snd_hurt_3), 0, false, 1, 0, random_range(0.95, 1.05))
			hurt_flash = 1;
			_score = (_score > 0)?_score-enemy_bullet.dmg:0;
			impact(obj_majack.x, obj_majack.y);
			instance_destroy(enemy_bullet);
		}
	}
	var enemy_impact = instance_place(x, y, par_enemy);
	if(enemy_impact != noone && !hurt_by_enemy && enemy_impact.can_hurt_majack == true){
		audio_play_sound(choose(snd_hurt_1, snd_hurt_2, snd_hurt_3), 0, false, 1, 0, random_range(0.95, 1.05));
		hurt_by_enemy = true;
		hurt_flash = 1;
		_score = (_score > 0)?_score-enemy_impact.dmg:0;
		impact(obj_majack.x, obj_majack.y);
	}
	if(!place_meeting(x, y, par_enemy) && hurt_by_enemy)
		hurt_by_enemy = false;
		
	if(hurt_flash > 0) hurt_flash -= 0.1;
}