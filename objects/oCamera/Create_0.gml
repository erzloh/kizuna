/// @description Set up Camera
cam         = view_camera[0];
follow      = oPlayer;
view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;
xTo         = xstart;
yTo         = ystart;
spd         = 25;

// Screenshake variables
shake_length    = 0; // how long the screenshake lasts (in frame)
shake_magnitude = 0;
shake_remain    = 0;
buff            = 0;	