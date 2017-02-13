//Movement
scr_basic_movement();

//Destroy Event
if box_health <= 0 {
	//Corner Particles
	if global.particles {
		repeat(4) {
			part++;
			box_part = instance_create_depth(x+8,y+8,global.depth_1,obj_box_corner_part);
			box_part.part = part;
		}
	//Destroy Particles
		repeat(15) {
			instance_create_depth(x+8,y+8,global.depth_1,obj_box_part);
		}
	}
	//Drop Item
	instance_create_depth(x+8,y+8,global.depth_1,drop_item);
	instance_destroy();
}

//Add dmgBox for next damage
if createDmgBox = true {
	if !instance_exists(inst_dmgBox) {
		inst_dmgBox = instance_create_depth(x,y,global.depth_2,obj_box_dmgBox);
	}
	createDmgBox = false;
}