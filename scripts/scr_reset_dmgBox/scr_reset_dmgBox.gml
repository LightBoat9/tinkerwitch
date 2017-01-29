/// @description scr_reset_dmgBoxes();
if instance_exists(obj_snail) {
	if !instance_exists(obj_snail_dmgBox) {
		obj_snail.createDmgBox = true;
	}
}