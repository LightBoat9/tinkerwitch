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

	if global.missileAiming = false {
			motion_set(dir,20);
			fired = true;
	}
}

if fired = true {
	//Blow up at walls
	if place_meeting(x,y,obj_solid) {
		instance_create_depth(x,y,global.depth_1,obj_item_missile_explosion);
		//Eplosion Particles
		if global.particles = true {
			repeat(15) {
				instance_create_depth(x,y,global.depth_2,obj_item_missile_part);
			}
		}
		instance_destroy();
	}
}