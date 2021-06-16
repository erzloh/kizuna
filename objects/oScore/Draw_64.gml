draw_set_halign(fa_left);
draw_set_valign(fa_bottom);
draw_set_color(c_white)
draw_set_font(fText);

if room != rm_title
{
	draw_text(5, room_height-5, "Switch Used: " + string(switch_num));
}