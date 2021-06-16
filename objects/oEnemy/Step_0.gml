if collision_line(oPlayer.x, oPlayer.y, oPlayer2.x, oPlayer2.y, oEnemy, false, false)
{
	instance_destroy(oLine);
}
