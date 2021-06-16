// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Screenshake(){
/// @desc ScreenShake(magnitude, frame)
/// @arg magnitude sets the strength of the shake (radius in pixel)
/// @arg frames sets the length of the shake in frames (60 = 1 second at 60fps)

	with oCamera
	{
		if argument0 > shake_remain // if the magnitude is bigger than the remaining shake, it will overwrite and do a bigger shake
		{
			shake_magnitude = argument0;
			shake_remain    = argument0;
			shake_length    = argument1;
		}
	}
}