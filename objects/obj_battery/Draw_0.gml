draw_self();
if image_xscale != 0 && image_yscale != 0 { //If the image is not resized to be invisible
	if collected { //If the player has interacted
		image_xscale-=.1; //Reduce size
		image_yscale-=.1; //Reduce size
	}
}
else {
	instance_destroy(); //Destroy
}

//Draw Based on currency/value amount
if value = 1 {
	sprite_index = spr_battery_red;
}
else if value = 2 {
	sprite_index = spr_battery_blue;
}
else if value = 10 {
	sprite_index = spr_battery_gold;
}