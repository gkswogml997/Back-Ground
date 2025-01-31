function open() {
	audio_play_sound(snd_door_open,1001,false);
	image_index = 1;
}
function close() {
	audio_play_sound(snd_door_close,1001,false);
	image_index = 0;
}

