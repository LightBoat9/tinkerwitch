if place_meeting(x,y,obj_player) {
	trap_start = true;
}

if trap_start = true {
	if !instance_exists(cof_inst) {
		cof_inst = instance_create_depth(cof_x,cof_y,global.depth_1,obj_trap_coffin);
		cof_inst.dir = cof_dir;
	}
	instance_destroy();
}