/// @desc DrawPolygon(centerX, centerY, points, radius, rot, thickness, col, alpha)
function DrawPolygon(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7) {

	/// Draw a polygon of n number of vertices using thickness. 
	/// The polygon can be full by using the same value for the radius and the thickness.

	/// @arg centerX
	/// @arg centerY
	/// @arg vertices
	/// @arg radius
	/// @arg rotation
	/// @arg thickness
	/// @arg colour
	/// @arg alpha

	var centerX   = argument0;
	var centerY   = argument1;
	var vertices  = argument2;
	var radius    = argument3;
	var rot       = argument4;
	var thickness = argument5;
	var col       = argument6;
	var alpha     = argument7;

	var dir = 360 / vertices;

	draw_set_colour(col);
	draw_set_alpha(alpha);
	draw_primitive_begin(pr_trianglestrip);

	for (var i = 0; i <= vertices; i++)
	{
		var finalDir = rot + dir * i;
	
		draw_vertex(centerX + lengthdir_x(radius, finalDir), centerY + lengthdir_y(radius, finalDir));
		draw_vertex(centerX + lengthdir_x(radius-thickness, finalDir), centerY + lengthdir_y(radius-thickness, finalDir));
	}

	draw_primitive_end();
	draw_set_colour(c_white);
	draw_set_alpha(1);


}
