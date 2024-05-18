if(audio_is_playing(mus_roccow_partycancelled)){
	audio_sound_gain(mus_roccow_partycancelled, 0, 3000);
	audio_play_sound(mus_roccow_funkmodulator, 0, true);
	audio_sound_gain(mus_roccow_funkmodulator, 0, 0);
	audio_sound_gain(mus_roccow_funkmodulator, 1, 4000);
}
else
{
	audio_play_sound(mus_roccow_funkmodulator, 0, true);	
}