/// @description Size variables and mode setup
w      = display_get_gui_width(); // Get the width of the screen. I could have done camera_get_view_width too.
h      = display_get_gui_height(); 
h_half = h / 2;

// All different transition modes
enum TRANS_MODE
{
	OFF,
	NEXT,
	GOTO,
	RESTART,
	INTRO
}

mode    = TRANS_MODE.INTRO;
percent = 1;    // 1 = blackscreen, 0 = nothing, 0.x = inbetween
target  = room; // the target room
spd     = 15; // the lower the faster
col     = make_color_rgb(150, 0, 0);

// Go to next room
room_goto_next();