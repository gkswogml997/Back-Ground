if (is_dead){
	image_alpha -= 0.05
}

if (image_alpha < 0) {
	instance_destroy();
}