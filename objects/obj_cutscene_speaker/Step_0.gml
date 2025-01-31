if (!is_fadeout){
	alpha -= 0.02;
}else{
	alpha += 0.01;
	
	if (alpha > 1){
		room_goto_next();
	}
}
