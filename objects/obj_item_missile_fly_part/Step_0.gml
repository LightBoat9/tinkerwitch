//Gravity
vsp += grav;

//Horizontal Collisions
if place_meeting(x+hsp,y,obj_solid) {
	while !place_meeting(x+sign(hsp),y,obj_solid) {
		x += sign(hsp);
	}
	hsp = 0;
}

//Horizontal Movement
x += hsp;

//Vertical Collisions
if place_meeting(x,y+vsp,obj_solid) {
	while !place_meeting(x,y+sign(vsp),obj_solid) {
		y += sign(vsp);
	}
	vsp = 0;
	hsp = 0;
}

//Vertical Movement
y += vsp;

//Destroy Timer / Event
if destTimer <= 0 {
	instance_destroy();
} else {
	destTimer--;
}