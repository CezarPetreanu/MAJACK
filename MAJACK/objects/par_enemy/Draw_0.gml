draw_sprite_ext(sprite_index, image_index, x+hurt_offset, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
if(hp_bar_timer > -1){
	var _hp_w = 40;
	var _hp_w_current = _hp_w*hp/hp_max;
	var _hp_h = 7;
	var _hp_x = x-_hp_w/2;
	var _hp_y = y-sprite_get_width(sprite_index)/2-_hp_h/2;
	
	draw_set_color(c_red);
	draw_rectangle(_hp_x, _hp_y, _hp_x+_hp_w, _hp_y+_hp_h, false);
	draw_set_color(c_lime);
	draw_rectangle(_hp_x, _hp_y, _hp_x+_hp_w_current, _hp_y+_hp_h, false);
	draw_set_color(c_black);
	draw_rectangle(_hp_x, _hp_y, _hp_x+_hp_w, _hp_y+_hp_h, true);
}