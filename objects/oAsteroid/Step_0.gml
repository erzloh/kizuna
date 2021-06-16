// Rotation
if rot >= 360
{
	rot = 0;
}
rot += rotSpd;

// Execute Movement
x = oPlayer.x + lengthdir_x(rad, rot);
y = oPlayer.y + lengthdir_y(rad, rot)

// Increase Radius
if keyboard_check(vk_space)
{
	rad += 1;
}

if keyboard_check(vk_delete)
{
	rad -= 1;
}

/*
// Mouse Movement
if place_meeting(x, y, oMouse)
{
	show_debug_message("touching");
	if mouse_check_button(mb_left)
	{
		x = oMouse.x;
		y = oMouse.y;
	}
}
*/