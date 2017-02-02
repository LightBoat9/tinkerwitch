//Movement
scr_box_movement();

//Destroy Event
if box_health <= 0 {
	repeat(4) {
		part++;
		box_part = instance_create_depth(x,y,global.depth_1,obj_box_part);
		box_part.part = part;
	}
	instance_destroy();
}

//Add dmgBox for next damage
if createDmgBox = true {
	if !instance_exists(inst_dmgBox) {
		inst_dmgBox = instance_create_depth(x,y,global.depth_2,obj_box_dmgBox)
	}
	createDmgBox = false;
}