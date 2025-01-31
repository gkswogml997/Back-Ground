if (other.bbox_top - 2< y && other.bbox_bottom + 2> y){
	if (hold_wall_time > 0){
		vspeed = player_speed/10;
		hold_wall_time--;
	}
	
	if(wall_jump) {
		jump_count = 0;
		wall_jump = false;
	}
	
	if (other.x < x){
		x = other.bbox_right + (sprite_width div 2);	
		wall_jump_rebound = +player_speed / 2;
		out_of_control = false;
	}else{
		x = other.bbox_left - (sprite_width div 2);
		wall_jump_rebound = -player_speed / 2;
		out_of_control = false;
	}
}