//Unpause with escape
if keyboard_check_pressed(vk_escape) || unpause {
	instance_activate_all();
	sprite_delete(global.pause_surface);
	//Destroy Menu
	obj_pause_text.destroy = true;
	instance_destroy();
	exit;
}

//Scroll through menu with keyboard
if keyboard_check_pressed(ord("W")) {
	if select < instance_number(obj_pause_text) {
		select++;
	}
	else {
		select = 1;
	}
}
if keyboard_check_pressed(ord("S")) {
	if select > 1 {
		select--;
	}
	else {
		select = instance_number(obj_pause_text);
	}
}
