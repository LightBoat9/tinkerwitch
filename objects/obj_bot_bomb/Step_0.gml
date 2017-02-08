
/* Stop or Start the bot */
if keyboard_check_pressed(ord("R")) {
	switch (moving) {
		case true:
			moving = false;
			break;
		case false:
			moving = true;
			break;
	}
}

/* Set Direction To Player */
if obj_player.x > x {
	dir = 0
} 
else {
	dir = 1;
}

/* Jump at walls */
if moving {
	if place_meeting(x+1,y,obj_solid) || place_meeting(x-1,y,obj_solid){
		if place_meeting(x,y+1,obj_solid) {
			vsp -= jumpspeed
		}
	}
}

/* Switch hsp based on direction */
switch (dir) {
	case 0:
		hsp = movespeed;
		break;
	case 1:
		hsp = -movespeed;
		break;
}

/* Stop movement when near player */
if distance_to_object(obj_player) < 32*2 {
	hsp = 0;
}

/* Stopped by player */
if moving = false {
	hsp = 0;
}

/* Gravity */
vsp += grav;

/* Horizontal Movement */
if place_meeting(x+hsp,y,obj_solid) {
	while !place_meeting(x+sign(hsp),y,obj_solid) {
		x+=sign(hsp);
	}
	hsp = 0;
}

x += hsp;

/* Vertical Movement */

if place_meeting(x,y+vsp,obj_solid) {
	while !place_meeting(x,y+sign(vsp), obj_solid) {
		y+=sign(vsp);
	}
	vsp = 0;
}

y += vsp;