// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ease_out_elastic(){
	/// ease_out_elastic(time, start, dest, duration)
	// Starts fast, overtakes the destination 
	// and comes back to it all in a very elastic way.

	/// @arg time     : This variable is a counter. It is incremented each frame
	/// @arg start    : Point A
	/// @arg dest     : Point B
	/// @arg duration : How long is the easing (in frame)

	var t = argument0; // time
	var b = argument1; // start
	var c = argument2; // dest
	var d = argument3; // duration

	var s = 1.7;
	var p = 0;
	var a = c;
	if (t==0) return b;
	t /= d;
	if (t==1) return b+c;
	if (!p) p = d*.4; // .4 = bounce value
	if (a < abs(c)) {
		a=c;
		s=p/4;
	} else {
		s =p/(2*pi)*arcsin(c/a);
	}

	return a*power(2, -10*t)*sin((t*d-s)*(2*pi)/p)+c+b;
}