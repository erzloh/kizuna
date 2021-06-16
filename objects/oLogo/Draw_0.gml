/// @Draw Logo

// Draw Circle
//draw_circle_color(c1, c2, circle_rad, circle_col, circle_col, false);
DrawPolygon(c1, c2, ceil(circle_ver), circle_rad, circle_rot, circle_thi, circle_col, alpha);

// Draw Logo
draw_set_alpha(alpha);
draw_set_color(col);

draw_roundrect_ext(e1_x, e1_y, e1_x+ew, e1_y+eh, rad, rad, false);
draw_roundrect_ext(e2_x, e2_y, e2_x+ew, e2_y+eh, rad, rad, false);
draw_roundrect_ext(e3_x, e3_y, e3_x+ew, e3_y+eh, rad, rad, false);

draw_roundrect_ext(h1_x, h1_y, h1_x+hw, h1_y+hh, rad, rad, false);
DrawPolygon(h2_x, h2_y, h2_v, h2_rad, h2_rot, h2_t, col, alpha);
draw_set_color(col);
draw_roundrect_ext(h3_x, h3_y, h3_x+hw, h3_y+hh, rad, rad, false);

