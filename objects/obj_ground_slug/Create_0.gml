/* Hitboxes & Collisions */
//Depth
depth = global.depth_3;

/* Movement */
hsp = 0;
vsp = 0;
grav = 1;
movespeed = 2;

//Destroy Event
destroy = false;

//Damage Box
inst_dmgBox = instance_create_depth(x,y,global.depth_2,obj_ground_slug_dmgBox);
createDmgBox = false;

//Direction #0 is left #1 is right
dir = irandom(1);

//Health & Damage
enemy_health = 1;

//How often to change direction
dir_timer = room_speed;

//Whether to show up or not
appear = false;
visible = false;

//Whether it is attacking or not
attacking = false;
attack_timer = room_speed / 2;

sprite_index = spr_ground_slug_appear;