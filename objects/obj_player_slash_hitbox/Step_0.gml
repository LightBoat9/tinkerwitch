//Testing mode vs normal
if global.testing = false {
	visible = false;
} else {
	visible = true;
}

//Destroy Event
if destroy = true {
	instance_destroy();
}

//Mouse Direction
var mouseDir = scr_mouse_dir();

if mouseDir = 1 {
	image_xscale = 1;	
}

if mouseDir = -1 {
	image_xscale = -1;
}

x += obj_player.hsp;
y += obj_player.vsp;