/// @description scr_move_collisions();
/// @arg collision_obj
/// @arg hsp
/// @arg vsp
collision_obj = argument0;
hsp = argument1;
vsp = argument2;

if place_meeting(x+hsp, y, collision_obj) {
	while !place_meeting(x+sign(hsp), y, collision_obj) {
		x += sign(hsp);
	}
	end_hsp = hsp;
	hsp = 0;
	coll_solid = true;
}

x += hsp;

if place_meeting(x, y+vsp, collision_obj) {
	while !place_meeting(x, y+sign(vsp), collision_obj) {
		y += sign(vsp);
	}
	end_vsp = vsp;
	vsp = 0;
	coll_solid = true;
}

y += vsp;