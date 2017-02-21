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

//Charge Mana Faster
global.mouse_left = mouse_check_button(mb_left);
if global.mana < 24 {
	if hsp = 0 {
		if !global.mouse_left {
			if global.key_down {
				mana_charge = true;
				//Set the timer to lower
				if mana_timer > (room_speed / 2) {
					mana_timer = room_speed / 2;
				}
			} else {
				mana_charge = false;
			}
		} else {
			mana_charge = false;
		}
	} else {
		mana_charge = false;
	}

	//Charge Over Time
	if mana_timer <= 0 {
		global.mana++;
	
		//Reset timer if not charging
		if !mana_charge {
			mana_timer = room_speed * 4;
		}
		else { //If is charging set timer to faster
			mana_timer = room_speed / 2;
		}
	} else {
		mana_timer--;
	}
}
else { //Reset
	mana_charge = false;
	mana_timer = room_speed * 4;
}

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
//Repair shield
if shield_health < 1 {
	if instance_exists(obj_bot) {
		if obj_bot.skill != 3 {
			shield_health += .01;
		}
	}
	else {
		shield_health += .01;
	}
}
//Keeps shield_health from going under 0
if shield_health < 0 {
	shield_health = 0;
}

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
	scr_reset_dmgBox();
	instance_create_depth(x,y,global.depth_0,obj_item_missile);
	missileParts = 0;
}


//Choose Item Based On Bar
item_obj = scr_gui_item_obj();
	//Make Item Parts
if item_obj != 0 {
	if global.item_wrench = true {
		if global.missileAiming = false {
			if instance_exists(obj_bot) {
				if global.key_item {
					obj_bot.skill = 2;
					if distance_to_point(obj_bot.x,obj_bot.y) < 1 {
						if item_parts < 8 {
							with (instance_nearest(x,y,obj_bot)) {
								destroy = true;
							}
							item_parts++;
						}
					}
				} else {
					if !global.item_one {
						obj_bot.skill = 1;
					}
				}
			}
		} else {
			if instance_exists(obj_bot) {
				if !global.item_one {
					obj_bot.skill = 1;
				}
			}
		}
	}
	//Create Item
	if item_parts >= 8 {
		instance_create_depth(x,y,global.depth_0,item_obj);
		item_parts = 0;
	}
}

//Death Event
if player_health <= 0 {
	player_health = 1;
	room_restart();
}
