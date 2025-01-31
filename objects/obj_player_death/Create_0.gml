
if (global.stage_number < 10) {
	sprite_index = spr_player_maskA;
}else if (global.stage_number >= 10 && global.stage_number < 20){
	sprite_index = spr_player_maskB;
}else if (global.stage_number >= 20 && global.stage_number < 30){
	sprite_index = spr_player_maskC;
}else if (global.stage_number >= 30 && global.stage_number < 40){
	sprite_index = spr_player_maskD;
}


lefttop_x = x - sprite_width/2;
lefttop_y = y - sprite_height/2;
leftbottom_x = x - sprite_width/2;
leftbottom_y = y + sprite_height/2;
righttop_x = x + sprite_width/2;
righttop_y = y - sprite_height/2;
rightbottom_x = x + sprite_width/2;
rightbottom_y = y + sprite_height/2;
	
transform_speed = 1.15

lefttop_move = false;
leftbottom_move = false;
righttop_move = false;
rightbottom_move = false;
animation_end = false;
	
time1 = 0.01;
time2 = 0.01;
time3 = 0.01;
time4 = 0.01;

timeline_index = timeline_player_death;
timeline_running = true;