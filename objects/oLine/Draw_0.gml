// Draw a line between Player 1 and Player 2
draw_line_width_color(oPlayer.x, oPlayer.y, oPlayer2.x, oPlayer2.y, line_width, col1, col2);

/*
// Draw a line between Player 1 and Enemy
draw_line_width_color(oPlayer.x, oPlayer.y, oEnemy.x, oEnemy.y, line_width, col1, col2);
*/

// Draw a line between Player 2 and Player 3
if instance_exists(oPlayer3)
{
	draw_line_width_color(oPlayer2.x, oPlayer2.y, oPlayer3.x, oPlayer3.y, line_width, col3, col3);
}