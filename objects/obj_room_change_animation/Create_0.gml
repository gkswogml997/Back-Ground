depth = -999

is_reverse = global.room_change_event;

width_max = room_width div 32;
height_max = (room_height div 32) + 1;

effect_grid = ds_grid_create(width_max, height_max);

for (var _xx = 0; _xx < width_max; _xx++){
	for(var _yy = 0; _yy < height_max; _yy++){
		effect_grid[# _xx,_yy] = instance_create_layer(_xx*32,_yy*32,"Instances",obj_room_change_effect);
		if (is_reverse){
			effect_grid[# _xx,_yy].reverse();
		}
	}
}




timer = 0;
timer2 = 0;