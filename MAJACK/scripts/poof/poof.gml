// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function poof(_xx, _yy, _n=3, _range=10){
	var _dir_rand = irandom(360);
	for(var _i=0; _i<_n; _i++){
		var _spark = instance_create_depth(_xx+irandom_range(-_range, _range), _yy+irandom_range(-_range, _range), depth-1, obj_sparkle);
		_spark.sprite_index = spr_poof;
		_spark.dir = _dir_rand+(360/_n)*_i;
	}
}