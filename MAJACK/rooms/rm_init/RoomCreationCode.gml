randomize();
display_set_gui_size(640, 360);
surface_resize(application_surface, 640, 360);
window_set_size(1280, 720);
window_set_position(display_get_width()/2-window_get_width()/2, display_get_height()/2-window_get_height()/2);

cursor_sprite = spr_cursor;
window_set_cursor(cr_none);

global.card_array = [
1, 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K",
1, 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K",
1, 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K",
1, 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K",
]

global.card_array_len = array_length(global.card_array);
global.font_dmg_under10 = font_add_sprite_ext(spr_damage_taken_under10, "0123456789", true, 0);
global.font_dmg_over10 = font_add_sprite_ext(spr_damage_taken_over10, "0123456789", true, 0);
room_goto_next();