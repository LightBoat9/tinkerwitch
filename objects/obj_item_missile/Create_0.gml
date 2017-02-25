//Depth
depth = global.depth_3;

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
coll_solid = false; //Collision with obj_solid
collision = false; //Collision with other objects (See above)
end_hsp = 0;
end_vsp = 0;

//Particles
fly_part_timer = room_speed / 2;