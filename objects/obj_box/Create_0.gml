//Movement
hsp = 0; //Horizontal Speed
vsp = 0; //Vertical Speed
grav = 1; //Gravity

//Health
box_health = 1; //Heatlh

//Create Damage Box
inst_dmgBox = instance_create_depth(x,y,global.depth_2,obj_box_dmgBox)
createDmgBox = false;

//Box Part
part = 0; //Corner particles when broken

//Drop Item
drop_item = obj_battery; //Item to drop upon break

//Solid Object
solid_obj = instance_create_depth(x,y,0,obj_solid_move);