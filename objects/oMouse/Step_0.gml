x = mouse_x;
y = mouse_y;

if keyboard_check(vk_control)
{
	debugmode = true;
	image_alpha = 1;
}
else
{
	debugmode = false;
	image_alpha = 0;
}