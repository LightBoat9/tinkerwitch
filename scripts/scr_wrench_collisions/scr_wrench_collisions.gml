/// @description scr_wrench_collisions();
/// @arg dir
/// @arg spd

var dir = argument0;
var spd = argument1;

if place_meeting(x+hspeed,y,obj_solid) {
	speed = 0;
	exit;
}

if place_meeting(x,y+vspeed,obj_solid) {
	speed = 0;
	exit;
}

motion_set(dir,spd);