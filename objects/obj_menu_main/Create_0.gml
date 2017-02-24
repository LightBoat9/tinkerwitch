//Start Variable
start = false;

//Graphics Menu Variables
graphics = false;

//Camera Positions & Dimentions
var cam_x = camera_get_view_x(view_get_camera(view_current));
var cam_y = camera_get_view_y(view_get_camera(view_current));
var cam_w = camera_get_view_width(view_get_camera(view_current));
var cam_h = camera_get_view_height(view_get_camera(view_current));

//Menu Text
select = 1; //The currently selected menu option
graphic_select = 1; //The currently selected options menu option
scr_main_menu_text("CONTINUE",2,cam_x+64,cam_y+64,0);
scr_main_menu_text("NEW GAME",2,cam_x+64,cam_y+128,1);
scr_main_menu_text("OPTIONS",2,cam_x+64,cam_y+192,2);
scr_main_menu_text("QUIT",2,cam_x+64,cam_y+256,3);

//Graphics Options
scr_main_menu_graphics("PARTICLES",2,cam_x+64+(cam_w/4)+96,cam_y+64,0); //Change last param for new additions
scr_main_menu_graphics("FULLSCREEN",2,cam_x+64+(cam_w/4)+96,cam_y+192,1); //Change last param for new additions
scr_main_menu_graphics("DEV MODE",2,cam_x+64+(cam_w/4)+96,cam_y+320,2); //Change last param for new additions
scr_main_menu_graphics("BACK",2,cam_x+64+(cam_w/4)+96,cam_y+448,3); //Change last param for new additions
instance_deactivate_object(obj_menu_main_graphics_text); //Stop all instances until called
