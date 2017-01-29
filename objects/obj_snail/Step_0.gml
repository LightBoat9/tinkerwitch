if !instance_exists(obj_snail_dmgBox) {
	if createDmgBox = true {
		dmgBoxInst = instance_create_depth(x,y,global.depth_2,obj_snail_dmgBox)
		createDmgBox = false;
	}
}