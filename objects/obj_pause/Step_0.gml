//Unpause with escape
if keyboard_check_pressed(vk_escape) || unpause {
	instance_activate_all();
	sprite_delete(global.pause_surface);
	//Destroy Menu
	obj_pause_text.destroy = true;
	obj_pause_graphics_text.destroy = true;
	instance_destroy();
	exit;
}

//Scroll through menu with keyboard
if !graphics {
	instance_deactivate_object(obj_pause_graphics_text);
	if keyboard_check_pressed(ord("S")) {
		if select < instance_number(obj_pause_text) {
			select++;
		}
		else {
			select = 1;
		}
	}
	if keyboard_check_pressed(ord("W")) {
		if select > 1 {
			select--;
		}
		else {
			select = instance_number(obj_pause_text);
		}
	}
}

//Scroll through options
else {
	select = 0;
	instance_activate_object(obj_pause_graphics_text);
	if keyboard_check_pressed(ord("S")) {
		if graphic_select < instance_number(obj_pause_graphics_text) {
			graphic_select++;
		}
		else {
			graphic_select = 1;
		}
	}
	if keyboard_check_pressed(ord("W")) {
		if graphic_select > 1 {
			graphic_select--;
		}
		else {
			graphic_select = instance_number(obj_pause_graphics_text);
		}
	}
}