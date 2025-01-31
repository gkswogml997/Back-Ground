if (!ds_queue_empty(str_buffer)){
	str += ds_queue_dequeue(str_buffer);
	audio_play_sound(snd_talk,1001,false);
}else{
	is_dead = true;
}

alarm[0] = 5;