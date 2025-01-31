var _cx = camera_get_view_x(view_camera[0]);
var _cy = camera_get_view_y(view_camera[0]);
var _cw = camera_get_view_width(view_camera[0]);
var _ch = camera_get_view_height(view_camera[0]);
var _alpha = 0;

if (fade_in)
{
	time++;
	_alpha = lerp(1,0,time/100);
	
	if (time > 100){
		fade_in = false;
		time = 0
	}
}
draw_sprite_ext(spr_fade_screen, 0, _cx,_cy,_cw,_ch,0,c_black,_alpha);
