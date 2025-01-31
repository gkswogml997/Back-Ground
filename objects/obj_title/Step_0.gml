if (title_view) {
	time++;
	y = lerp(0,80,time/180);
	image_alpha = lerp(0,1,time/180);
	if (time > 180){
		y = 80;
		image_alpha = 1;
		title_view = false;
	}
}