//When to appear
if visible = false {
	if appear = false {
		if distance_to_object(obj_player) < (32 * 15) {
				image_index = 0;
				visible = true;
				appear = true;
		}
	}
}

//Add dmgBox for next damage
if createDmgBox = true {
	if !instance_exists(inst_dmgBox) {
		inst_dmgBox = instance_create_depth(x,y,global.depth_2,obj_ground_slug_dmgBox)
	}
	createDmgBox = false;
}

//Get Player Direction
if dir_timer <= 0 || attack_timer <= 0 {
	if obj_player.x > x {
		dir = 0;
	}
	else {
		dir = 1;
	}
	dir_timer = room_speed;
}
else {
	dir_timer--;
}

//Attacking
if attacking {
	if attack_timer <= 0 {
		if distance_to_object(obj_player) < (32 * 15) {
			if scr_animate_until(6) {
				instance_create_depth(x,y,global.depth_3, obj_ground_slug_attack_ball);
				attack_timer = room_speed + irandom_range(0,room_speed);
			}
		}
		else {
			attack_timer = room_speed + irandom_range(0,room_speed);
		}
	}
	else {
		attack_timer--;
	}
	
}

//Destroy If 0- Health
if enemy_health <= 0 {
	destroy = true;
}

//Destroy Event
if destroy = true {
	death_anim = instance_create_depth(x,y,global.depth_1,obj_ground_slug_anim_death);
	death_anim.dir = dir;
	drop = instance_create_depth(x,y-9,global.depth_1,obj_battery);
	drop.value = 2;
	instance_destroy();
}