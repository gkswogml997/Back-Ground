player_mask = instance_create_layer(room_width/2,room_height/2,"Instances",obj_player_mask);
mask_x = x - player_mask.x;
mask_y = y - player_mask.y;

can_move = false;
is_dead = false;

function die() {
	is_dead = true;
	player_mask.death();
}

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