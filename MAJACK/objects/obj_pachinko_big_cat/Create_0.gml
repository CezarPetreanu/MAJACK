/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

hp = 50;
hp_max = hp;

prev_damage_taken = 0;
offset = irandom(360);

_solid = instance_create_depth(x-5*32, y, depth, obj_solid);
_solid.image_xscale = 10;
_solid.image_yscale = 2;

active = false;
alarm[0] = -1;