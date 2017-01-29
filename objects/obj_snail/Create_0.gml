/* Hitboxes & Collisions */

//Depth
depth = global.depth_3;

/* Movement */
hsp = 0;
vsp = 0;
grav = 1;
movespeed = 2;

//Rolling
rollspeed = 15;
rolling = false;

//Stun
stunned = false;

//Damage Box
dmgBoxInst = instance_create_depth(x,y,global.depth_2,obj_snail_dmgBox)
createDmgBox = false;

//Direction #0 is left #1 is right
dir = irandom(1);