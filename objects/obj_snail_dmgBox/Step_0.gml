//Follow snail
if instance_exists(snail_inst) {
	x = snail_inst.x;
	y = snail_inst.y;
}

// Testing Mode vs Normal
if global.testing = false {
	visible = false;
} else {
	visible = true;
}

// Getting Hit
if place_meeting(x,y,obj_player_slash_hitbox) {
	with (snail_inst) {
		if stunned = true {
			enemy_health -= .5;
		}
		rolling = false;
		stunned = true;
	}
	instance_destroy();
}
if place_meeting(x,y,obj_item_missile) {
	if obj_item_missile.fired = true {
		obj_item_missile.collision = true;
		with (snail_inst) {
			enemy_health -= .5;
			rolling = false;
			stunned = true;
		}
		scr_reset_dmgBox();
		instance_destroy();
	}
}

//Destroy If Snail Dies
if !instance_exists(snail_inst) {
	instance_destroy();
}