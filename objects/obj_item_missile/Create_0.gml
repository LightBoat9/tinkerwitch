//Not Fired
global.missileAiming = true;
fired = false;

//Direction (Fixes Quick Fire Bug)
dir = point_direction(x,y,mouse_x,mouse_y);
image_angle = dir;

//Movement
hsp = 0;
vsp = 0;

//Collisions
collision = false;
end_hsp = 0;
end_vsp = 0;

//Particles
fly_part_timer = room_speed / 2;