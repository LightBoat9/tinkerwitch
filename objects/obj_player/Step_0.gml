//Knockback timer
if move_manip = true {
	if mm_timer <= 0 {
		if place_meeting(x,y+1,obj_solid) {
			move_manip = false;
			mm_timer = room_speed / 2;
		}
	} else {
		mm_timer--;
	}
}

//Movement
scr_player_movement();

//Throw Wrench
if global.item_wrench = true {
	if empAttack = false {
		if global.key_wrench {
			if !instance_exists(obj_wrench) {
				instance_create_depth(x,y,global.depth_1,obj_wrench);
				global.item_wrench = false;
			}
		}
	}
}

//EMP Attack
global.mouse_left = mouse_check_button(mb_left);
if global.mana > 0 {
	if empAttack = false {
		if global.missileAiming = false {
			if global.item_wrench {
				if global.mouse_left {
					image_index = 0;
					empAttack = true;
				}
			}
		}
	}
}
if empAttack = true {
	if !global.mouse_left {
		empAttack = false;
	}
}

//Create Bots
if global.metal > 0 {
	if global.item_wrench = true {
		if global.missileAiming = false {
			if instance_number(obj_bot) < 8 {
				if global.key_bots {
					instance_create_depth(x,y,global.depth_1,obj_bot);
				}
			}
		}
	}
}

//Bots Shield
scr_shield();

//Make Missile Parts
if global.item_wrench = true {
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
				if !global.mouse_right {
					obj_bot.skill = 1;
				}
			}
		}
	} else {
		if instance_exists(obj_bot) {
			if !global.mouse_right {
				obj_bot.skill = 1;
			}
		}
	}
}

//Create Missile
if missileParts >= 8 {
	instance_create_depth(x,y,global.depth_0,obj_item_missile);
	missileParts = 0;
}

//Death Event
if player_health <= 0 {
	room_restart();
}
