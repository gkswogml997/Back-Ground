/// @description 이동

vspeed = clamp(vspeed,-jump_rate,jump_rate);

var _h_input = keyboard_check(vk_right) - keyboard_check(vk_left);

if (_h_input != 0){
	if (!out_of_control) {hspeed = player_speed * _h_input;}
	
	if (control_recovery_time > 10) {
		out_of_control = false;
		control_recovery_time = 0;
	}
}else{
	if (!out_of_control){
		hspeed = 0;
	}
}

if (place_meeting(x, y,obj_ground)){
	gravity = 0;
	vspeed = 0;
	
	var _target = instance_place(x,y,obj_ground);
	
	if (_target.bbox_top + 1 > y || _target.bbox_bottom - 1< y){
		if (_target.bbox_top > y) {
			y = _target.bbox_top - (16 div 2) + 1;
			out_of_control = false;
			jump_count = 0;
		} else {
			y = _target.bbox_bottom + (16 div 2);
			gravity = gravity_rate;
			vspeed = 0.1;
		}
	}
	
	
}else{
	gravity = gravity_rate;
}

var _nearest_wall = instance_nearest(x,y,obj_ground);

if (point_distance(x,y,_nearest_wall.x,_nearest_wall.y) > 20) {
	if (hold_wall_time < hold_wall_time_max){
		hold_wall_time++;
	}
	wall_jump_rebound = 0;
	wall_jump = true;
}

if (keyboard_check_pressed(ord("F"))){
	if (jump_count == 0){
		audio_play_sound(snd_jump,1001,false);
		vspeed = -jump_rate;
		hspeed = wall_jump_rebound;
		if (wall_jump_rebound != 0) {
			out_of_control = true;
		}
		hold_wall_time = 0;
		jump_count += 1;
	}
}

if (out_of_control){
	control_recovery_time++;
}
