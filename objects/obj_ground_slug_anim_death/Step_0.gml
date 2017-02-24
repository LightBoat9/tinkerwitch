//Change sprite direction (same as obj_snail)
if dir = 0 {
	image_xscale = 1;
}
if dir = 1 {
	image_xscale = -1;
}

//Death particles
if global.particles = true {
	if part_timer > 0 {
		repeat(5) {
			instance_create_depth(x,y,global.depth_2,obj_ground_slug_part);
		}
		part_timer--;
	}
}

//Slowly go transparent until invisible then destroy
if image_alpha > 0 {
	image_alpha -= 0.05;
} else {
	instance_destroy();
}