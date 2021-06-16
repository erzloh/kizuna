// Player touches flag
if (place_meeting(x, y, oPlayer) || place_meeting(x, y, oPlayer2)) && !flagHit
{
	audio_play_sound(snFlag, 1, false);
	oScore.switch_num = 0;
	flagHit = true;
	//show_message("You Won! You used " + string(oScore.switch_num) + " Switches.");
	//game_restart()
	GameController.current_player = 0;
	SlideTransition(TRANS_MODE.GOTO, goto);
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
