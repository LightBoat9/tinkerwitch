//Testing mode vs normal
if global.testing = false {
	visible = false;
} else {
	visible = true;
}

//Snail Id
snail_inst = instance_nearest(x,y,obj_snail);

//Follow snail
if instance_exists(obj_snail) {
	x = snail_inst.x;
	y = snail_inst.y;
}