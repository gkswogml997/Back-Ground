if (image_alpha == 1) {
	global.room_change_event = false;
	instance_create_layer(x,y,"Instances",obj_room_change_animation);
	audio_stop_sound(bgm_main_title);
	global.bgm = undefined;
}