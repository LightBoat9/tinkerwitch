//Follow snail
if instance_exists(snail_inst) {
	x = snail_inst.x;
	y = snail_inst.y;
}

//Change Direction With Snail
if instance_exists(snail_inst) {
	dir = snail_inst.dir;
	if dir = 0 {
		image_xscale = 1;
	}
	else if dir = 1 {
		image_xscale = -1;
	}
}

// Testing Mode vs Normal
if global.testing = false {
	visible = false;
} else {
	visible = true;
}

// Getting Hit
if place_meeting(x,y,obj_player_emp_proj) {
	snail_inst.enemy_health -= .05;
	empInst = instance_nearest(x,y,obj_player_emp_proj);
	empInst.destroy = true;
	if (obj_snail_king.attack_type = "roll") {
		obj_snail_king.roll_amount--;
	}
	instance_destroy();
}
if place_meeting(x,y,obj_item_missile) {
	if obj_item_missile.fired = true {
		obj_item_missile.collision = true;
		snail_inst.enemy_health -= .1;
		scr_reset_dmgBox();
		instance_destroy();
	}
	if (obj_snail_king.attack_type = "roll") {
		obj_snail_king.roll_amount--;
	}
}

//Destroy If Snail Dies
if !instance_exists(snail_inst) {
	instance_destroy();
}