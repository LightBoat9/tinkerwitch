//Testing mode vs normal
if global.testing = false {
	visible = false;
} else {
	visible = true;
}

//Box Id
box_inst = instance_nearest(x,y,obj_box);

//Follow box
if instance_exists(box_inst) {
	x = box_inst.x;
	y = box_inst.y;
}