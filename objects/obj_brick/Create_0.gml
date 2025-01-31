depth = -1;

if (global.stage_number < 10) {
	sprite_index = spr_brick1;
}else if (global.stage_number >= 10 && global.stage_number < 20){
	sprite_index = spr_brick2;
}else if (global.stage_number >= 20 && global.stage_number < 30){
	sprite_index = spr_brick3;
}else if (global.stage_number >= 30 && global.stage_number < 40){
	sprite_index = spr_brick4;
}

time = 0;
image_alpha = 0;
is_destroy = false;

function destroy(){
	instance_create_layer(xstart,ystart,"Instances", obj_brick_respawn)
	instance_destroy();
}