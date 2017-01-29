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
	
	//Fire the missile
	if global.missileAiming = false {
		scr_move_to(mouse_x,mouse_y,20);
		fired = true;
	}
}

//While in air
if fired = true {
	scr_move_collisions(obj_solid,hsp,vsp);
	//Blow up at walls
	if collision = true {
		instance_create_depth(x+end_hsp,y+end_vsp,global.depth_1,obj_item_missile_explosion);
		//Eplosion Particles
		if global.particles = true {
			repeat(15) {
				instance_create_depth(x+end_hsp,y+end_vsp,global.depth_2,obj_item_missile_part);
			}
		}
		instance_destroy();
	}
}