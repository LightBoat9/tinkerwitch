draw_self();

//Draw based on direction
if dir = 0 {
	image_xscale = 1;
}
else if dir = 1 {
	image_xscale = -1;
}


//Slowly dissapear
if image_alpha != 0 {
	if place_meeting(x,y+1,obj_solid) {
		image_alpha -= .05;
	}
}
else {
	//Destroy Event
	instance_destroy();
}