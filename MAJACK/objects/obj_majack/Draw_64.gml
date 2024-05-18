draw_set_alpha(1);
draw_set_color(c_white);
if(hurt_flash)
	draw_set_color(c_red);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(global.font_dmg_under10);
draw_text(10, 10, _score);