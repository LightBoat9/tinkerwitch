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

if make_metal = true {
	inst_metal = instance_create_depth(obj_wrench.x,obj_wrench.y,global.depth_1,obj_metal);
	inst_metal.metal_val = metal_val;
	make_metal = false;
}