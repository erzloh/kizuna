// Switch Player
if keyboard_check_pressed(InputManager.actionKey)
{
	oScore.switch_num += 1;
	audio_sound_pitch(snSwitch, random_range(0.9, 1.1));
	audio_play_sound(snSwitch, 1, false);
	if current_player == 1
	{
		current_player = 2;
	}
	else if current_player == 2
	{
		current_player = 1;
	}
}

