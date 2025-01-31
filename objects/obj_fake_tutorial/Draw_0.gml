draw_set_font(fnt_GCJ_12);
draw_set_halign(fa_right);
draw_set_valign(fa_middle);

draw_set_alpha(image_alpha);

draw_set_color(c_black);
draw_text(x-8 + 2,y + 2, "Press");
draw_set_color(c_white);
draw_text(x-8,y, "Press");

draw_self()

draw_set_alpha(1);