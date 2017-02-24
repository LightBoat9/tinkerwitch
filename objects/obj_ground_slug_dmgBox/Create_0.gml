//Testing mode vs normal
if global.testing = false {
	visible = false;
} else {
	visible = true;
}

//Slug Id
slug_inst = instance_nearest(x,y,obj_ground_slug);

//Follow Slug
if instance_exists(slug_inst) {
	x = slug_inst.x;
	y = slug_inst.y;
}

