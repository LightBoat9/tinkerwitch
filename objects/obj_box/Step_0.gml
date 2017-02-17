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
	//Value of battery if that is the object
	if drop_item = obj_battery {
		ran = irandom(2);
		if ran = 0 {
			var value = 1;
		}
		else if ran = 1 {
			var value = 2;
		}
		else if ran = 2 {
			var value = 10;
		}
	}
	//Drop Item
	drop = instance_create_depth(x+8,y+8,global.depth_1,drop_item);
	if drop_item = obj_battery {
		drop.value = value;
	}
	//Destroy
	instance_destroy();
}

//Add dmgBox for next damage
if createDmgBox = true {
	if !instance_exists(inst_dmgBox) {
		inst_dmgBox = instance_create_depth(x,y,global.depth_2,obj_box_dmgBox);
	}
	createDmgBox = false;
}