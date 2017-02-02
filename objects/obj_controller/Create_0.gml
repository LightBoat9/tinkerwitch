/// @description Global Variables

//Fullscreen
window_set_fullscreen(true);

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

/* 
 * Video Options 
*/

//View dimentions
view_width = 1280;
view_height = 720;

/*/View camera (Follows player)
view_enabled = true;
view_visible[0] = true;
player_cam = camera_create();
camera_set_view_size(player_cam, view_width, view_height);
camera_set_view_target(player_cam,obj_player);
view_set_camera(player_cam,player_cam);
view_wport[0] = view_width;
view_hport[0] = view_height;
*/

//Particle Effects
global.particles = true;

//Testing Stuff
global.testing = true;