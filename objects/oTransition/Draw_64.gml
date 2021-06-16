/// @description Draw black bars

if mode != TRANS_MODE.OFF
{
	draw_set_color(col);
	draw_rectangle(0, 0, w, percent*h_half, false) // the last argument means that the rectangle is filled with black.
	draw_rectangle(0, h, w, h-(percent*h_half), false);
}
