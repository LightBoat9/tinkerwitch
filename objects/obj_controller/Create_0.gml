/// @description Global Variables

//Depth
global.depth_0 = 0;
global.depth_1 = -1;
global.depth_2 = -2;
global.depth_3 = -3;
global.depth_4 = -4;


/* Object Globals */
//obj_missile
global.missileAiming = false;
//obj_bot
global.bot_one = false;
global.bot_two = false;
global.bot_three = false;
global.bot_four = false;
global.bot_five = false;
global.bot_six = false;
global.bot_seven = false;
global.bot_eight = false;

/* Video Options */
//View dimentions
view_width = 1280;
view_height = 720;
//View camera (Follows player)
cam = camera_create_view(0,0,1280,720,0,obj_player,-1,-1,view_width / 2,view_height / 2);
//Activate View & Camera
view_camera[0] = cam;
view_enabled = true;
view_visible[0] = true;

//Particle Effects
global.particles = true;

//Testing Stuff
global.testing = false;