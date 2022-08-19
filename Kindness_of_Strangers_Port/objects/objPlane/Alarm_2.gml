/// @description Play sound if audio system is now available.
// (This is a safety callback for HTML5, where audio may not always be available.)
if (audio_system_is_available() && audio_sound_is_playable(soundPlane)) {
	audio_falloff_set_model(audio_falloff_linear_distance);	
	audio_play_sound_at(soundPlane, -median(-1, 0, 1), 0, 0, 0,7500, 0, true, 5);
	audio_sound_gain(soundPlane,0.5,0)
}
else {
	alarm[2] = 10;
}