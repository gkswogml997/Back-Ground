draw_set_alpha(image_alpha);

draw_sprite(spr_speechbubble_L,0,x-string_width(str)/2,y-12);
for(var _i = -string_width(str)/2; _i < string_width(str)/2; _i++){
	draw_sprite(spr_speechbubble,0,x+_i,y-12);
}
draw_sprite(spr_speechbubble_R,0,x+string_width(str)/2,y-12);

draw_set_font(fnt_GCJ_8);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_color(c_gray);
draw_text(x + 1,y -11, str);
draw_set_color(c_black);
draw_text(x,y-12, str);

draw_set_alpha(1);