// Ease
if time < duration
{
	e1_x = ease_out_quintic(time, startX, destX - startX, duration);
	e2_x = ease_out_quintic(time, startX2, destX - startX2, duration);
	e3_x = ease_out_quintic(time, startX, destX - startX, duration);
	
	rot = ease_out_quintic(time, startX, destX - startX, duration);
	
	
	h1_y = ease_out_quintic(time, startY1, destY - startY1, duration);
	h3_y = ease_out_quintic(time, startY3, destY - startY3, duration);
	
	alpha = ease_out_quintic(time, startAlpha, destAlpha - startAlpha, duration);
	
	circle_rad = ease_out_quintic(time, startCircleRad, destCircleRad - startCircleRad, duration);
	
	circle_ver = ease_out_quintic(time, startCircleVer, destCircleVer - startCircleVer, duration);
	
	
	
	
}
if e2_x <= h2_x && e2_x != e2_xStart
{
	if flag
	{
		flag = false;
		_duration = duration - time;
	}
	h2_rad = ease_out_quintic(timeh2, startRad, destRad - startRad, _duration);
	h2_t = ease_out_quintic(timeh2, startT, destT - startT, _duration);
	h2_v = ease_out_quintic(timeh2, startV, destV - startV, _duration);
	h2_v = ceil(h2_v);
	h2_rot = ease_out_quintic(timeh2, startRot, destRot - startRot, _duration);
	timeh2++;
}

// Circle stuff
if circle_time < circle_duration
{
	circle_rot = ease_out_quintic(circle_time, startCircleRot, destCircleRot - startCircleRot, circle_duration);
	circle_thi = ease_out_quintic(circle_time, startCircleThi, destCircleThi - startCircleThi, circle_duration);
	circle_rad = ease_out_quintic(circle_time, startCircleRad, destCircleRad - startCircleRad, circle_duration);
	circle_ver = ease_out_quintic(circle_time, startCircleVer, destCircleVer - startCircleVer, circle_duration);
	
	circle_time++;
}

time++;
if time >= totalDuration
{
	room_goto_next();
}