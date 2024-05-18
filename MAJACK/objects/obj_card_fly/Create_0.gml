alarm[0] = 0.5*game_get_speed(gamespeed_fps);
vspd = -2;
hspd = choose(-0.5, 0.5);
image_angle = irandom(360);
image_yscale = 2;

audio_play_sound(snd_card_impact, 0, false);