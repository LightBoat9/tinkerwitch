if destroy {
	solid_move.destroy = true;
	instance_destroy();
}

if state == "aiming" {
	if global.mouse_right {
		x = obj_player.x;
		y = obj_player.y;
	}
	else {
		state = "fire_now";
	}
}
else {
	if state = "fire_now" {
		scr_move_to(mouse_x,mouse_y,15);
		state = "fired";
	}
}

if (state = "fired") {
	vsp += grav;
}

if (place_meeting(x+hsp,y,obj_solid)) {
	while (!place_meeting(x+sign(hsp),y,obj_solid)) {
		x += sign(hsp);
	}
	hsp = 0;
}
else if (place_meeting(x+hsp,y,obj_solid_move)) {
	while (!place_meeting(x+sign(hsp),y,obj_solid_move)) {
		x += sign(hsp);
	}
	hsp = 0;
}

x += hsp;

if (place_meeting(x,y+vsp,obj_solid)) {
	while (!place_meeting(x,y+sign(vsp),obj_solid)) {
		y += sign(vsp);
	}
	vsp = 0;
	hsp = 0;
}
else if (place_meeting(x,y+vsp,obj_solid_move)) {
	while (!place_meeting(x,y+sign(vsp),obj_solid_move)) {
		y += sign(vsp);
	}
	vsp = 0;
	hsp = 0;
}

y += vsp;

if (hsp = 0 && vsp = 0) {
	if !(place_meeting(x,y,obj_player)) {
		instance_activate_object(solid_move);
		solid_move.x = x-16;
		solid_move.y = y-16;
	}
}


//Getting unstuck
var i = 0;
while place_meeting(x,y,obj_solid) {
	if !place_meeting(x+i,y,obj_solid_move) 
	&& !place_meeting(x+i,y,obj_solid) {
		x = x+i;
	}
	else if !place_meeting(x,y+i,obj_solid_move) 
	&& !place_meeting(x,y+i,obj_solid) {
		y = y+i;
	}
	else if !place_meeting(x-i,y,obj_solid_move) 
	&& !place_meeting(x-i,y,obj_solid){
		x = x-i;
	}
	else if !place_meeting(x,y-i,obj_solid_move) 
	&& !place_meeting(x,y-i,obj_solid) {
		y = y-i;
	}
	else if !place_meeting(x+i,y+i,obj_solid_move) 
	&& !place_meeting(x+i,y+i,obj_solid) {
		x = x+i;
	}
	else if !place_meeting(x+i,y-i,obj_solid_move) 
	&& !place_meeting(x+i,y-i,obj_solid) {
		x = x+i;
	}
	else if !place_meeting(x-i,y-i,obj_solid_move) 
	&& !place_meeting(x-i,y-i,obj_solid) {
		x = x+i;
	}
	else if !place_meeting(x-i,y+i,obj_solid_move) 
	&& !place_meeting(x-i,y+i,obj_solid) {
		x = x+i;
	}
	i++;
}