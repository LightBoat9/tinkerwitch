//Start making metal
if instance_exists(obj_wrench) {
	if obj_wrench.returnTimer = 1 {
		if has_metal = true {
			if place_meeting(x+1,y,obj_wrench) {
				has_metal = false;
				make_metal = true;
			}
			else if place_meeting(x-1,y,obj_wrench) {
				has_metal = false;
				make_metal = true;
			}
			else if place_meeting(x,y+1,obj_wrench) {
				has_metal = false;
				make_metal = true;
			}
			else if place_meeting(x,y-1,obj_wrench) {
				has_metal = false;
				make_metal = true;
			}
		}
	}
}

//Create metal object based on metal value
if make_metal = true {
	inst_metal = instance_create_depth(obj_wrench.x,obj_wrench.y,global.depth_1,obj_metal);
	inst_metal.metal_val = metal_val;
	make_metal = false;
}