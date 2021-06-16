/// @description Update Camera

// Update destination
if instance_exists(follow)
{
	xTo = follow.x;
	yTo = follow.y;
	
	/*if follow.object_index = oPlayerDead
	{
		x = xTo;
		y = yTo;
	}*/
}

// Update camera position
x += (xTo - x) / spd;
y += (yTo - y) / spd;

// Clamp the camera between the edges of the room
x = clamp(x, view_w_half + buff, room_width - view_w_half - buff); // the buffer makes sure that the screenshake doesn't show outside the room.
y = clamp(y, view_h_half + buff, room_height - view_h_half - buff);

// Screenshake
x += random_range(-shake_remain, shake_remain);
y += random_range(-shake_remain, shake_remain);
shake_remain = max(0, shake_remain - ((1 / shake_length) * shake_magnitude))

// Update camera view
camera_set_view_pos(cam, x-view_w_half, y-view_h_half);