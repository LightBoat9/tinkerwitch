//Add dmgBox for next damage
if createDmgBox = true {
	if !instance_exists(inst_dmgBox) {
		inst_dmgBox = instance_create_depth(x,y,global.depth_2,obj_snail_dmgBox)
	}
	createDmgBox = false;
}

//Start rolling
if stunned = false {
	if distance_to_object(obj_player) < (32 * 10) {
		rolling = true;
	}
}

/* Direction */
//Switch Direction At Walls
if place_meeting(x+hsp,y,obj_solid) {
	switch(dir) {
		case 0:
			dir = 1;
			break;
		case 1:
			dir = 0;
			break;
	}
}

//Change horizontal speed based on direction
if stunned = false {
	switch (dir) {
		case 0:
			if rolling = false {
				hsp = movespeed;
			}
			else if rolling = true {
				hsp = rollspeed;
			}
			break;
		case 1:
			if rolling = false {
				hsp = -movespeed;
			}
			else if rolling = true {
				hsp = -rollspeed;
			}
			break;
	}
}

//Stunned
if stunned = true {
	if hsp != 0 {
		if dir = 0 {
			hsp -= .5;
		}
		if dir = 1 {
			hsp += .5;
		}
	} else {
		stunned = false;
	}
}
scr_snail_movement();

// Destroy Event
if enemy_health <= 0 {
	instance_destroy();
}