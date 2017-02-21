//Movement
scr_basic_movement();

//Destroy Triggers
if place_meeting(x,y,obj_lava) {
	destroy = true;
}
else if place_meeting(x,y,obj_snail) {
	destroy = true;
}

//Destroy Event
if destroy {
	instance_create_depth(x,y,global.depth_1,obj_checkpoint_explosion);
	if global.particles {
		repeat(15) {
			instance_create_depth(x,y,global.depth_2,obj_checkpoint_part);
		}
	}
	instance_destroy();
}