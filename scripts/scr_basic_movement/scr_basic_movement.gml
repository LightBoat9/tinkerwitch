/// @description scr_basic_movement();

vsp += grav;

if place_meeting(x+hsp,y,obj_solid) {
	while !place_meeting(x+sign(hsp),y,obj_solid) {
		x += sign(hsp);
	}
	hsp = 0;
}
if place_meeting(x+hsp,y,obj_box) {
	while !place_meeting(x+sign(hsp),y,obj_box) {
		x += sign(hsp);
	}
	hsp = 0;
}

x += hsp;

if place_meeting(x,y+vsp,obj_solid) {
	while !place_meeting(x,y+sign(vsp),obj_solid) {
		y += sign(vsp);
	}
	vsp = 0;
}
if place_meeting(x,y+vsp,obj_box) {
	while !place_meeting(x,y+sign(vsp),obj_box) {
		y += sign(vsp);
	}
	vsp = 0;
}

y += vsp;