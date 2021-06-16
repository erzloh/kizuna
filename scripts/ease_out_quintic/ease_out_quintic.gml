function ease_out_quintic() {
	// ease_out_quintic(time, start, dest, duration)
	// Start fast and finish slowly.

	/// @arg time     : This variable is a counter. It is incremented each frame
	/// @arg start    : Point A
	/// @arg dest     : Point B
	/// @arg duration : How long is the easing (in frame)

	var t = argument[0]; // time
	var b = argument[1]; // start
	var c = argument[2]; // destination
	var d = argument[3]; // duration

	t /= d; // 0 and 1
	t--;

	return c*(t*t*t*t*t + 1) + b;


}
