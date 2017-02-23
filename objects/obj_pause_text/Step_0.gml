if destroy {
	instance_destroy();
	exit;
}
//Camera Dimentions
var cam_w = camera_get_view_width(view_get_camera(view_current));

//If hover this option and click do the given function based on passed in number
if point_in_rectangle(mouse_x,mouse_y,x,y,x+(cam_w/4),y+boxheight) {
	if mouse_check_button_pressed(mb_left) {
		switch (func) {
			case 0: //Resume
				obj_pause.unpause = true;
				break;
			case 1: //Graphics
				obj_pause.graphics = true;
				break;
			case 2: //End
				game_end();
				break;
		}
	}
	obj_pause.select = func+1;
}

//Same as above but with S and W for movement and E for select
if obj_pause.select = (func+1) {
	if keyboard_check_pressed(ord("E")) || 
	func = 1 && keyboard_check_pressed(ord("D")) {
		switch (func) {
			case 0: //Resume
				obj_pause.unpause = true;
				break;
			case 1: //Graphics
				obj_pause.graphics = true;
				break;
			case 2: //End
				game_end();
				break;
		}
	}
}