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
			case 0: //Particles
				if global.particles {
					global.particles = false;
				}
				else {
					global.particles = true;
				}
				break;
			
			case 1: //Fullscreen
				if global.fullscreen {
					global.fullscreen = false;
				}
				else {
					global.fullscreen = true;
				}
				break;
			case 2: //Dev Mode
				if global.testing {
					global.testing = false;
				}
				else {
					global.testing = true;
				}
				break;
			case 3: //Back
				obj_pause.graphics = false;
				obj_pause.select = 2; //Go back to option
				break;
		}
	}
	obj_pause.graphic_select = func+1;
}

//Same as above but with S and W for movement and E for select
if obj_pause.graphic_select = (func+1) {
	if keyboard_check_pressed(ord("E")) || keyboard_check_pressed(ord("D")) {
		switch (func) {
			case 0: //Particles
				if global.particles {
					global.particles = false;
				}
				else {
					global.particles = true;
				}
				break;
			case 1: //Fullscreen
				if global.fullscreen {
					global.fullscreen = false;
				}
				else {
					global.fullscreen = true;
				}
				break;
			case 2: //Dev Mode
				if global.testing {
					global.testing = false;
				}
				else {
					global.testing = true;
				}
				break;
			case 3: //Back
				obj_pause.graphics = false;
				io_clear(); //Fix it from jumping back
				obj_pause.select = 2; //Go back to option
				break;
		}
	}
}

if keyboard_check_pressed(ord("A")) {
	obj_pause.graphics = false;
	obj_pause.select = 2; //Go back to option
}

//Set Option Variables
switch (func) {
	case 0: //Particles
		if global.particles {
			option_text = "ON"
		}
		else {
			option_text = "OFF"
		}
		break;
	case 1: //Fullscreen
		if global.fullscreen {
			option_text = "YES"
		}
		else {
			option_text = "NO"
		}
		break;
	case 2: //Dev Mode
		if global.testing {
			option_text = "YES";
		}
		else {
			option_text = "NO";
		}
		break;
	case 3: //Back
		option_text = "";
		break;
}