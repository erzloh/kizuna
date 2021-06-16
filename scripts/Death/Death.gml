// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Death(){
	Screenshake(5, 20);
	audio_play_sound(snDeath, 1, false);
	
	instance_create_layer(oPlayer.x, oPlayer.y, "Player", oDeath)
	instance_create_layer(oPlayer2.x, oPlayer2.y, "Player", oDeath)
	
	oPlayer.x = oPlayer.x_origin;
	oPlayer.y = oPlayer.y_origin;
	
	oPlayer2.x = oPlayer2.x_origin;
	oPlayer2.y = oPlayer2.y_origin;
	
	oScore.switch_num = 0;
	
	GameController.current_player = 1;
}