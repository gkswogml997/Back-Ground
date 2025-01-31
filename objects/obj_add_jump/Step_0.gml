if (is_active) {
	image_alpha = 1;
} else {
	image_alpha = 0;	
	recovery_time -= 1;
}

if (recovery_time <= 0) {
	is_active = true;
	recovery_time = time_max;
}
