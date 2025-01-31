
if (global.stage_number != 0 && is_reverse)
{
	draw_sprite_ext(spr_fade_screen,0,0,room_height*3/8,room_width,room_height/4,0,c_black,0.5);

	draw_set_font(fnt_GCJ_12);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	draw_set_color(c_gray);
	draw_text(room_width/2 + 2,room_height/2 + 2, "STAGE " + string(global.stage_number));
	draw_set_color(c_white);
	draw_text(room_width/2, room_height/2, "STAGE " + string(global.stage_number));
}