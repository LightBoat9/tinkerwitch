/// @description Insert description here

//Movement
scr_player_movement();

//Throw Wrench
if global.item_wrench = true {
	if meleeAttack = false {
		if global.key_wrench {
			if !instance_exists(obj_wrench) {
				instance_create_depth(x,y,global.depth_1,obj_wrench);
				global.item_wrench = false;
			}
		}
	}
}

//Melee Attack
if meleeAttack = false {
	if global.missileAiming = false {
		if global.item_wrench {
			if global.mouse_left {
				image_index = 0;
				meleeAttack = true;
			}
		}
	}
}

//Create Bots
if global.missileAiming = false {
	if instance_number(obj_bot) < 8 {
		if global.key_bots {
			instance_create_depth(x,y,global.depth_1,obj_bot);
		}
	}
}

//Make Missile Parts
if global.missileAiming = false {
	if instance_exists(obj_bot) {
		if global.key_missile {
			obj_bot.skill = 2;
			if distance_to_point(obj_bot.x,obj_bot.y) < 1 {
				if missileParts < 8 {
					with (instance_nearest(x,y,obj_bot)) {
						destroy = true;
					}
					missileParts++;
				}
			}
		} else {
			obj_bot.skill = 1;
		}
	}
} else {
	if instance_exists(obj_bot) {
		obj_bot.skill = 1;
	}
}

//Create Missile
if missileParts >= 8 {
	instance_create_depth(x,y,global.depth_0,obj_item_missile);
	missileParts = 0;
}

