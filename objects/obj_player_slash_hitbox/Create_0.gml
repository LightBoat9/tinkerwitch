//Destroy Event
destroy = false;

//Testing mode vs normal
if global.testing = false {
	visible = false;
} else {
	visible = true;
}

//Mouse Direction
var mouseDir = scr_mouse_dir();

if mouseDir = 1 {
	image_xscale = 1;	
}

if mouseDir = -1 {
	image_xscale = -1;
}