player_mask = instance_create_layer(room_width/2,room_height/2,"Instances",obj_player_mask);
is_dead = false;
is_clear = false;
visible = false;
stat = ds_list_create();
fake_grounds = ds_list_create();

function die(){
	is_dead = true;
	image_alpha = 0;
	global.death_count++;
	player_mask.death();
}

function clear(){
	is_clear = true;
	image_alpha = 0;
	player_mask.clear();
}

mask_x = x - player_mask.x;
mask_y = y - player_mask.y;

gravity_rate = 0.1;
gravity_direction = 270;

jump_rate = 3;
jump_count = 0;
wall_jump = false;
wall_jump_rebound = 0;
out_of_control = false;
control_recovery_time = 0;
hold_wall_time = 0;
hold_wall_time_max = 10;

player_speed = 2;