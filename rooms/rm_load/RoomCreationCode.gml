global.width = display_get_width();
global.height = display_get_height();

application_surface_draw_enable(false);
window_set_fullscreen(true);
window_set_size(global.width,global.height);

surface_resize(application_surface,global.width,global.height);

instance_create_depth(0,0,0,obj_controller);
room_goto_next();