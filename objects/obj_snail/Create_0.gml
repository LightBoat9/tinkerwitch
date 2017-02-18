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
stun_timer = room_speed;

//Damage Box
inst_dmgBox = instance_create_depth(x,y,global.depth_2,obj_snail_dmgBox)
createDmgBox = false;

//Direction #0 is left #1 is right
dir = irandom(1);

//Health & Damage
enemy_health = 1;