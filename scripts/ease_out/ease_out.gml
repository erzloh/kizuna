// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ease_out(){
	/// ease_out(time, start, dest, duration) Quadratic easing out
	// Start fast and finish slowly

	var t = argument[0]; // time
	var b = argument[1]; // start
	var c = argument[2]; // destination
	var d = argument[3]; // duration

	t /= d; // 0 and 1

	return -c * t*(t-2) + b;

}