if(hurt_offset != 0)
	hurt_offset -= 0.1*sign(hurt_offset);
if(hp_bar_timer > -1)
	hp_bar_timer--;
if(hp <= 0)
	instance_destroy();