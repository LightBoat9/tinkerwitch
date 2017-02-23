//Unpause Variable
unpause = false;

//Camera Positions & Dimentions
var cam_x = camera_get_view_x(view_get_camera(view_current));
var cam_y = camera_get_view_y(view_get_camera(view_current));
var cam_w = camera_get_view_width(view_get_camera(view_current));
var cam_h = camera_get_view_height(view_get_camera(view_current));

//Menu Text
select = 1; //The currently selected menu option
scr_pause_text_variables("RESUME",2,cam_x+64,cam_y+64,0);
scr_pause_text_variables("QUIT",2,cam_x+64,cam_y+128,1);