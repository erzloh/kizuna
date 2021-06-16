

if GameController.current_player == 3
{
	image_index = 1;
	// Get Horizontal and Vertical Inputs
	hInput = keyboard_check(InputManager.rightKey) - keyboard_check(InputManager.leftKey); // = 1 if going to the right, = -1 if going to the left, = 0 if not moving horizontally
	vInput = keyboard_check(InputManager.downKey) - keyboard_check(InputManager.upKey); // = 1 if going down, = -1 if going up, = 0 if not moving vertically

	// Calculate Movement
	if hInput != 0 || vInput != 0 // If no inputs, do not execute any movement
	{
		dir = point_direction(0, 0, hInput, vInput);
		hMove = lengthdir_x(spd, dir);
		vMove = lengthdir_y(spd, dir);
	
		// Execute Movement
		x += hMove;
		y += vMove;
	}
}
else
{
	image_index = 0;
}

// Mouse Movement
if place_meeting(x, y, oMouse) && oMouse.debugmode
{
	if mouse_check_button(mb_left)
	{
		x = mouse_x;
		y = mouse_y;
	}
}

