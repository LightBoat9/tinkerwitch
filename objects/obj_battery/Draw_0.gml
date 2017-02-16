draw_self();
if image_xscale != 0 && image_yscale != 0 {
	if collected {
		image_xscale-=.1;
		image_yscale-=.1;
	}
}
else {
	global.charge += value;
	instance_destroy();
}

if value = 0 {
	image_index = spr_battery_red;
}
else if value = 2 {

}
else if value = 3 {
}