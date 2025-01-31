var _lefttop_x = x - sprite_width/2;
var _lefttop_y = y - sprite_height/2;
var _leftbottom_x = x - sprite_width/2;
var _leftbottom_y = y + sprite_height/2;
var _righttop_x = x + sprite_width/2;
var _righttop_y = y - sprite_height/2;
var _rightbottom_x = x + sprite_width/2;
var _rightbottom_y = y + sprite_height/2;

var _w = sprite_get_width(spr_real_player);
var _h = sprite_get_height(spr_real_player);

var __lefttop_x = obj_player.x - _w/2;
var __lefttop_y = obj_player.y - _h/2;
var __leftbottom_x = obj_player.x - _w/2;
var __leftbottom_y = obj_player.y + _h/2;
var __righttop_x = obj_player.x + _w/2;
var __righttop_y = obj_player.y - _h/2;
var __rightbottom_x = obj_player.x + _w/2;
var __rightbottom_y = obj_player.y + _h/2;

if (time1 < 1 && lefttop_move) {
	time1 *= transform_speed
}
if (time2 < 1 && righttop_move) {
	time2 *= transform_speed
}
if (time3 < 1 && rightbottom_move) {
	time3 *= transform_speed
}
if (time4 < 1 && leftbottom_move) {
	time4 *= transform_speed
}

time1 = clamp(time1,0,1);
time2 = clamp(time2,0,1);
time3 = clamp(time3,0,1);
time4 = clamp(time4,0,1);
	
lefttop_x = lerp(_lefttop_x,__lefttop_x,time1);
lefttop_y = lerp(_lefttop_y,__lefttop_y,time1);
	
righttop_x = lerp(_righttop_x,__righttop_x,time2);
righttop_y = lerp(_righttop_y,__righttop_y,time2);
	
rightbottom_x = lerp(_rightbottom_x,__rightbottom_x,time3);
rightbottom_y = lerp(_rightbottom_y,__rightbottom_y,time3);
	
leftbottom_x = lerp(_leftbottom_x,__leftbottom_x,time4);
leftbottom_y = lerp(_leftbottom_y,__leftbottom_y,time4);

draw_sprite_pos(sprite_index,0,
lefttop_x,lefttop_y,
righttop_x,righttop_y,
rightbottom_x,rightbottom_y,
leftbottom_x,leftbottom_y,
image_alpha);

if (animation_end){
	if (instance_exists(obj_player)){
		effect_create_above(ef_firework,obj_player.x,obj_player.y,4,c_red);
		if (!instance_exists(obj_direct_player)) {instance_create_layer(0,0,"Instances",obj_Restart);}
		else {
			obj_title_director.timeline_position = 0;
			obj_title_director.timeline_index = tl_title_animation2;
			obj_title_director.timeline_running = true;
		}
	}
	instance_destroy();
}