//Add dmgBox for next damage
if !instance_exists(obj_snail_dmgBox) {
	if createDmgBox = true {
		dmgBoxInst = instance_create_depth(x,y,global.depth_2,obj_snail_dmgBox)
		createDmgBox = false;
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
switch (dir) {
	case 0:
		hsp = -5;
		break;
	case 1:
		hsp = 5;
		break;
}

scr_snail_movement();