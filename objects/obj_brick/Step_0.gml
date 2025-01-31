x = xstart;
y = ystart;

image_alpha += 0.03;

if (is_destroy){
	time += 1;

	if (time > 30) {
		destroy();
		time = 0;
	}
}