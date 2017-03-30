surface_set_target(pause_surface);

//Camera Positions & Dimentions
var cam_x = camera_get_view_x(view_get_camera(view_current));
var cam_y = camera_get_view_y(view_get_camera(view_current));
var cam_w = camera_get_view_width(view_get_camera(view_current));
var cam_h = camera_get_view_height(view_get_camera(view_current));

//Draw Screenshot
draw_sprite(global.pause_surface,0,cam_x,cam_y);

//Draw rectangle
draw_set_alpha(.5);
draw_set_color(c_black);
draw_rectangle(cam_x+32,cam_y+32,cam_x+cam_w-32,cam_y+cam_h-32,false);
draw_set_color(c_white); //Reset Color

//Draw Line to the right of text
draw_rectangle(cam_x+64+(cam_w/4)+64,cam_y+32,cam_x+64+(cam_w/4)+68,cam_y+cam_h-32,false);

//Reset Alpha
draw_set_alpha(1);

surface_reset_target();