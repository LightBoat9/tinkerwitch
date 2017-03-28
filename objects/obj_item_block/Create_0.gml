hsp = 0;
vsp = 0;
grav = 1;
state = "aiming";

//Depth
depth = global.depth_3;

if instance_exists(obj_item_block) {
	obj_item_block.destroy = true;
}

solid_move = instance_create_depth(x-16,y-16,0,obj_solid_move);
instance_deactivate_object(solid_move);

destroy = false;