// Inherit the parent event
event_inherited();
/// @description Insert description here
// You can write your code in this editor
float = 0;
float_spd = 0;
float_amp = 30;
yy = y;
hp = 17;
hp_max = 17;
image_xscale = choose(-1, 1);
sprite_index = choose(spr_target_club, spr_target_diamond, spr_target_heart, spr_target_spade);

_solid = instance_create_depth(x-32, y-32, depth, obj_solid);
_solid.image_xscale = 2;
_solid.image_yscale = 3;