draw_set_alpha(1);
draw_self();

if(hurt_flash > 0){
	shader_set(sh_flash);
	shader_set_uniform_f(shader_get_uniform(sh_flash, "flash_amount"), hurt_flash);
	if(hurt_flash * 10 mod 2 == 0)
		draw_self();
	shader_reset();
}

draw_set_font(fnt_default);
