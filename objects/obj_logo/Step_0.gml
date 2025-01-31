if (fade_in && !fade_out){
	time1++;	
}
if (!fade_in && fade_out){
	time2++
}

if (fade_in){
	image_alpha = lerp(0,1,time1/60);
}

if (fade_out){
	image_alpha = lerp(1,0,time2/60)
}