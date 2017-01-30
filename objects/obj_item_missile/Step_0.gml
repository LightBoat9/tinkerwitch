//While aiming the missile
if fired = false {
	if global.missileAiming = true {
		if global.key_missile {
			dir = point_direction(x,y,mouse_x,mouse_y);
			image_angle = dir;	
			//Match player movement
			x += obj_player.hsp;
			y += obj_player.vsp;
		} else {
			global.missileAiming = false;
		}
	}
	
	//Get the missile target
	if global.missileAiming = false {
		scr_move_to(mouse_x,mouse_y,20);
		fired = true;
	}
}

//While in air
if fired = true {
	//Move towards target
	scr_move_collisions(obj_solid,hsp,vsp);
	//Create engine particles
	if global.particles = true {
		repeat(5) {
			instance_create_depth(x,y,global.depth_1,obj_item_missile_fly_part);
		}
	}
	//Blow up at walls or objects
	if collision = true || coll_solid = true {
		//Create explosion object
		if coll_solid = true {
			instance_create_depth(x+end_hsp,y+end_vsp,global.depth_1,obj_item_missile_explosion);
		}
		else if collision = true {
			instance_create_depth(x,y,global.depth_1,obj_item_missile_explosion);
		}
		//Eplosion particles
		if global.particles = true {
			if coll_solid = true {
				repeat(15) {
					instance_create_depth(x+end_hsp,y+end_vsp,global.depth_2,obj_item_missile_part);
				}
			}
			else if collision = true {
				repeat(15) {
					instance_create_depth(x,y,global.depth_2,obj_item_missile_part);
				}
			}
		}
		instance_destroy();
	}
}