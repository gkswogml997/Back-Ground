var _xx = 0;
var _yy = 0;
var _size_w = 0;
var _size_h = 0;

if (camera_pos1){
	time++;
	_xx = lerp(0,165,time/50);
	camera_set_view_pos(view_camera[0],_xx,140);
	
	if (time > 50){
		camera_set_view_pos(view_camera[0],165,140);
		camera_pos1 = false;
		time = 0
	}
}

if (camera_pos2){
	time++;
	_xx = lerp(165,330,time/50);
	camera_set_view_pos(view_camera[0],_xx,140);
	
	if (time > 50){
		camera_set_view_pos(view_camera[0],330,140);
		camera_pos2 = false;
		time = 0
	}
}

if (camera_pos3){
	time++;
	_xx = lerp(330,0,time/50);
	_yy = lerp(140,0,time/50);
	_size_w = lerp(150,480,time/50);
	_size_h = lerp(100,270,time/50);
	camera_set_view_pos(view_camera[0],_xx,_yy);
	camera_set_view_size(view_camera[0],_size_w,_size_h);
	
	if (time > 50){
		camera_set_view_pos(view_camera[0],0,0);
		camera_set_view_size(view_camera[0],480,270);
		camera_pos3 = false;
		time = 0
	}
}