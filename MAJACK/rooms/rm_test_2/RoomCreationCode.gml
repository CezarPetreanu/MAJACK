if(audio_is_playing(mus_roccow_funkmodulator)){
	audio_sound_gain(mus_roccow_funkmodulator, 0, 3000);
	audio_play_sound(mus_erikskiff_underclocked, 0, true);
	audio_sound_gain(mus_erikskiff_underclocked, 0, 0);
	audio_sound_gain(mus_erikskiff_underclocked, 1, 4000);
}
else
{
	audio_play_sound(mus_erikskiff_underclocked, 0, true);	
}