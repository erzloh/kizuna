/// @desc Variables
// the x and y coordonates are positioned in top-left
alpha = 0;
ew = 75; // E letter width
eh = 20;  // E letter height
dl = 20;  // distance between letters
d  = 38;  // distance between the bars of the E

totalDuration = 90;

// Circle
circle_rot = 0;
circle_ver = 0;
circle_thi = 0;
circle_duration = 90;
circle_time = 0;

// x and y (center)
c1 = room_width/2;
c2 = room_height/2;

// color
circle_col = make_color_rgb(150, 0, 0);

// distances
e1_c1 = ((ew + dl + ew)/2);
circle_rad = 0;

// Letter E
e1_x = (room_width/2) - ((ew + dl + ew)/2); // x of the first bar of the E
e1_y = (room_height/2) - (((2*d) + eh)/2);  // y of the first bar of the E

//col  = make_color_rgb(127, 0, 0);
col  = c_white;
rad  = 23; // curve of the edges of the rectangle

e2_x = e1_x;
e2_y = e1_y + d;

e2_xStart = e2_x;

e3_x = e1_x;
e3_y = e2_y + d;

// Letter H
h1_x = e1_x + ew + dl;
h1_y = e1_y;

hw = eh;
hh = (2*d) + eh;

h3_x = h1_x + ew - hw;
h3_y = h1_y;

h2_rad_final = 10;
h2_x         = h1_x + ((h3_x - h1_x)/2) + h2_rad_final;
h2_y		 = h1_y + (hh/2);
h2_v		 = 0; // Number of vertices (angles)
h2_t		 = 0; // Thickness of the dot
h2_rad		 = 0; // Radius of the dot
h2_rot		 = 0; // Rotation

/// Easing Variables
time     = 0;
duration = 90;

// e1_x rot
startRot = 0;
destRot  = 360;

// e1_x and e3_x
startX = -100;
destX  = e1_x;

// e2_x 
startX2 = room_width + 100;
destX   = e1_x;

// h1_y
startY1 = -100;
destY   = h1_y;

// h3_y
startY3 = room_height + 100;
destY   = h1_y;

// h2_rad
startRad = 0;
destRad  = 10;
timeh2   = 0;

// h2_t
startT = 0;
destT  = 20;

// h2_rot
startRot = 0;
destRot  = 360;

// h2_v
startV = 0;
destV  = 20;

// alpha
startAlpha = 0;
destAlpha  = 1;

// flag
flag = true;

// rad
startCircleRad = 0;
destCircleRad  = e1_c1+((e1_c1/3)*2);

// vertices
startCircleVer = 0;
destCircleVer  = 30;

// circleRot
startCircleRot = 0;
destCircleRot  = 360;

// circleThi
startCircleThi = 0;
destCircleThi  = destCircleRad;