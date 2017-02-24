/// @description Global Variables

//Persistent
persistent = true;


//Rooms
cur_room = room_get_name(room);
prev_room = room_get_name(room);

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
//obj_player
/* Stats */
global.metal = 0;
global.mana = 24;
global.charge = 0;
/* Settings */
global.autojump = true;
global.pause = false;

//GUI
/* Sroll Wheel */
global.item_bar = 0;
/* Item Bar Objects */
global.item_one_obj = obj_checkpoint;
global.item_two_obj = 0;
global.item_three_obj = 0;
global.item_four_obj = 0;
global.item_five_obj = 0;

/* 
 * Video Options 
 */
 
//Fullscreen
global.fullscreen = true;
window_set_fullscreen(global.fullscreen);

/* Views */
view_width = 1280;
view_height = 720;
view_enabled = true;
view_visible[0] = true;
view_wport[0] = view_width;
view_hport[0] = view_height;
cam = view_get_camera(view_current);
cam_mid_x = camera_get_view_width(cam) / 2;
cam_mid_y = camera_get_view_height(cam) / 2;
camera_set_view_border(cam, cam_mid_x, cam_mid_y);
camera_set_view_pos(cam, cam_mid_x, cam_mid_y);
camera_set_view_size(cam, 1280, 720);
view_set_camera(view_current, cam);

//Particle Effects
global.particles = true;

//Testing Stuff
global.testing = false;

//Pause
global.pause_surface = 0;