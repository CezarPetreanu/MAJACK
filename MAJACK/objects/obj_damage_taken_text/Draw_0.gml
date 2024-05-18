if(parent != noone){
	if(parent.damage_taken >= 1 && parent.damage_taken < 10) draw_set_font(global.font_dmg_under10);
	else	draw_set_font(global.font_dmg_over10);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	draw_set_color(c_white);
	if(parent.damage_taken > 21)
		draw_set_color(c_red);
	
	if(parent.damage_taken > 0 && parent.damage_taken != 21)
		draw_text_transformed(parent.x+random_range(-shake, shake), parent.y-y_offset, parent.damage_taken, 1, ysc, ang);
	else
		draw_sprite_ext(spr_damage_taken_blackjack, -1, parent.x, parent.y-y_offset, 1, ysc, ang, image_blend, image_alpha);
}