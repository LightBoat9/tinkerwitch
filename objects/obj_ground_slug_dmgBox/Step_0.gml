//Follow Slug
if instance_exists(slug_inst) {
	x = slug_inst.x;
	y = slug_inst.y;
}

//Change Direction With Slug
if instance_exists(slug_inst) {
	dir = slug_inst.dir;
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
	with (slug_inst) {
		if attacking {
			enemy_health -= .5;
		}
	}
	empInst = instance_nearest(x,y,obj_player_emp_proj);
	empInst.destroy = true;
	instance_destroy();
}
if place_meeting(x,y,obj_item_missile) {
	if obj_item_missile.fired = true {
		obj_item_missile.collision = true;
		with (slug_inst) {
			if attacking {
				enemy_health -= 1;
			}
		}
		scr_reset_dmgBox();
		instance_destroy();
	}
}

//Destroy If Slug Dies
if !instance_exists(slug_inst) {
	instance_destroy();
}