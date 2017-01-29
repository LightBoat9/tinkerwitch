/// @description scr_move_to();
/// @arg x
/// @arg y
/// @arg spd
goal_x = argument0;
goal_y = argument1;
spd = argument2;

//Direction in degrees
var dir = point_direction(x,y,goal_x,goal_y);

//Convert Degrees to radians
deg = dir * (pi / 180);

//Get the angle from degrees
hsp = spd * cos(deg);
vsp = -(spd * sin(deg));