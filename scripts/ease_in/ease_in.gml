// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ease_in(){
	/// ease_in(time, start, dest, duration)
	// Start slowly and finish fast.

	/// @arg time     : This variable is a counter. It is incremented each frame
	/// @arg start    : Point A
	/// @arg dest     : Point B
	/// @arg duration : How long is the easing (in frame)

	var t = argument[0]; // time
	var b = argument[1]; // start
	var c = argument[2]; // destination
	var d = argument[3]; // duration

	t /= d; // 0 and 1

	return c*t*t*t + b;
}