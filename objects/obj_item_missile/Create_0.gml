//Not Fired
global.missileAiming = true;
fired = false;

//Direction (Fixes Quick Fire Bug)
dir = point_direction(x,y,mouse_x,mouse_y);
image_angle = dir;