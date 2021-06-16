/// @description Progress the transition
if mode != TRANS_MODE.OFF
{
	if mode == TRANS_MODE.INTRO
	{
		percent = max(0, percent - max((percent / spd), 0.005));
	}
	else
	{
		percent = min(1, percent + max(((1 - percent)) / spd, 0.005));
	}
	
	if percent == 0 || percent == 1
	{
		switch (mode)
		{
			case TRANS_MODE.INTRO:
				mode = TRANS_MODE.OFF;
				break;
				
			case TRANS_MODE.NEXT:
				mode = TRANS_MODE.INTRO;
				room_goto_next();
				break;
				
			case TRANS_MODE.GOTO:
				mode = TRANS_MODE.INTRO;
				room_goto(target);
				break;
				
			case TRANS_MODE.RESTART:
				game_restart();
				break;
		}
	}
	if percent == 0
	{
		//audio_play_sound(snCurtainOut, 1, false);
	}
	if percent == 1
	{
		audio_play_sound(snCurtainIn, 1, false);
	}
}