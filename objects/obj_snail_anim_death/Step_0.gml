//Slowly stop moving horizontally
if hsp > 0 { hsp--; }
if hsp < 0 { hsp++; }
scr_snail_movement();

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
			instance_create_depth(x+hsp,y+vsp,global.depth_2,obj_snail_part);
		}
		part_timer--;
	}
}