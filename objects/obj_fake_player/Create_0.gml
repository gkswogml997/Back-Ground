start_x = x;
start_y = y;
end_x = x;
end_y = y;

time = 0;
tap_sound = 0;
move_duration = 0;

function move (_xx, _yy, _move_duration){
	start_x = x;
	start_y = y;
	end_x = _xx;
	end_y = _yy;
	move_duration = _move_duration;
}

if (global.stage_number >= 1){
	move(obj_fake_player.x + 48, obj_fake_player.y, 60);
	global.room_change_event = true;
	instance_create_layer(x,y,"Instances",obj_room_change_animation);
}

