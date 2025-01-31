timer2++;

for (var _h = 0; _h <= timer; _h++){
	
	var _xx = (timer - _h);
	var _yy = (_h);
	if (_xx > width_max-1) {_xx = width_max-1;}
	if (_yy > height_max-1) {_yy = height_max-1;}
	effect_grid[# _xx, _yy].is_active = true;
}


if (timer > 45){
	if (is_reverse)
	{
		for (var _xx = 0; _xx < width_max; _xx++){
			for(var _yy = 0; _yy < height_max; _yy++){
				instance_destroy(effect_grid[# _xx, _yy]);
			}
		}
		if (is_undefined(global.bgm))
		{
			global.bgm = audio_play_sound(bgm_stage,1000,true)
		}
		
		instance_destroy();
	}else{
		global.stage_number++;
		room_goto_next();
	}
}

if (timer2 > 2){
	timer++;
	timer2 = 0;
}
