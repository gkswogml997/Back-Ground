ds_list_add(obj_player.fake_grounds,id);

mask_x = obj_player.x - x;
mask_y = obj_player.y - y;

if (global.stage_number < 10) {
	sprite_index = spr_ground1;
}else if (global.stage_number >= 10 && global.stage_number < 20){
	sprite_index = spr_ground2;
}else if (global.stage_number >= 20 && global.stage_number < 30){
	sprite_index = spr_ground3;
}else if (global.stage_number >= 30 && global.stage_number < 40){
	sprite_index = spr_ground4;
}