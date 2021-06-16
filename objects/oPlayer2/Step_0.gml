

if GameController.current_player == 2
{
	// Get Horizontal and Vertical Inputs
	hInput = keyboard_check(InputManager.rightKey) - keyboard_check(InputManager.leftKey); // = 1 if going to the right, = -1 if going to the left, = 0 if not moving horizontally
	vInput = keyboard_check(InputManager.downKey) - keyboard_check(InputManager.upKey); // = 1 if going down, = -1 if going up, = 0 if not moving vertically

	// Animate Idle
	if !hInput && !vInput
	{
		sprite_index = greenIdle;
	}

	// Calculate Movement
	if hInput != 0 || vInput != 0 // If no inputs, do not execute any movement
	{
		dir = point_direction(0, 0, hInput, vInput);
		hMove = lengthdir_x(spd, dir);
		vMove = lengthdir_y(spd, dir);
	
		// Execute Movement
		x += hMove;
		y += vMove;
		
		if timer >= timer_max
		{
			timer = 0;
			audio_play_sound(choose(snFootstep1, snFootstep2, snFootstep3, snFootstep4), 1, false);
		}
		timer++;
		
		instance_create_layer(x-hInput*8, y+16, "Wall", oDust);
		
		// Animate
		sprite_index = sPlayerGreenRun
		
		if hInput != 0
		{
			image_xscale = hInput;
		}
	}
}
else
{
	sprite_index = idle;
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

