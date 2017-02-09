//Depth
depth = global.depth_3;

//Movement
hsp = 0;
vsp = 0;
grav = 1;

//Health
box_health = 1;

//Create Damage Box
inst_dmgBox = instance_create_depth(x,y,global.depth_2,obj_box_dmgBox)
createDmgBox = false;

//Box Part
part = 0;

//Drop Item
drop_item = obj_metal;