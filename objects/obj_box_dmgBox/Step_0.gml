//Follow box
if instance_exists(box_inst) {
	x = box_inst.x;
	y = box_inst.y;
}

// Testing Mode vs Normal
if global.testing = false {
	visible = false;
} else {
	visible = true;
}

// Getting Hit
if place_meeting(x,y,obj_player_slash_hitbox) {
	with (box_inst) {
		box_health -= .5;
	}
	instance_destroy();
}
if place_meeting(x,y,obj_item_missile) {
	if obj_item_missile.fired = true {
		obj_item_missile.collision = true;
		with (box_inst) {
			enemy_health -= 1;
		}
		scr_reset_dmgBox();
		instance_destroy();
	}
}

//Destroy If Snail Dies
if !instance_exists(box_inst) {
	instance_destroy();
}