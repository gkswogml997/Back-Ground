if (global.stage_number < 10) {
	sprite_index = spr_player_maskA;
}else if (global.stage_number >= 10 && global.stage_number < 20){
	sprite_index = spr_player_maskB;
}else if (global.stage_number >= 20 && global.stage_number < 30){
	sprite_index = spr_player_maskC;
}else if (global.stage_number >= 30 && global.stage_number < 40){
	sprite_index = spr_player_maskD;
}

function death(){
	instance_create_layer(x, y,"Instances",obj_player_death);
	instance_destroy();
}

function clear(){
	instance_create_layer(x, y,"Instances",obj_player_clear);
	instance_destroy();
}