// Player touches the wall
if place_meeting(x, y, oPlayer) || place_meeting(x, y, oPlayer2)
{
	/*Screenshake(5, 20);
	
	oPlayer.x = oPlayer.x_origin;
	oPlayer.y = oPlayer.y_origin;
	
	oPlayer2.x = oPlayer2.x_origin;
	oPlayer2.y = oPlayer2.y_origin;
	
	oScore.switch_num = 0;
	
	GameController.current_player = 1;*/
	Death();
}

// Line touches the wall
if collision_line(oPlayer.x, oPlayer.y, oPlayer2.x, oPlayer2.y, oWall, false, false)
{
	//instance_destroy(oLine);
	//game_restart();
	
	/*Screenshake(5, 20);
	
	oPlayer.x = oPlayer.x_origin;
	oPlayer.y = oPlayer.y_origin;
	
	oPlayer2.x = oPlayer2.x_origin;
	oPlayer2.y = oPlayer2.y_origin;
	
	oScore.switch_num = 0;*/
	Death();
}

// Mouse Movement
if place_meeting(x, y, oMouse)
{
	if mouse_check_button(mb_left) && oMouse.debugmode
	{
		x = mouse_x;
		y = mouse_y;
	}
}
