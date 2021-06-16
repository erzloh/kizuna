// Create Objects
instance_create_layer(0, 0, "Manager", InputManager);
instance_create_layer(0, 0, "Manager", oText);
instance_create_layer(0, 0, "Manager", oScore);
instance_create_layer(0, 0, "Manager", oLine);
instance_create_layer(0, 0, "Manager", oMouse);
instance_create_layer(0, 0, "Manager", oTransition);
instance_create_layer(0, 0, "Manager", oCamera);

// Instantiate Variables
current_player = 1;
grabing = false; // If the mouse is grabing an object or not

// Play music
if !audio_is_playing(snMusicMain)
{
	audio_play_sound(snMusicMain, 1, true);
}

audio_play_sound(snCurtainIn, 1, false);