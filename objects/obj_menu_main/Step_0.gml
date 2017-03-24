//Unpause with escape
if start {
	//Reactivate Instances
	instance_activate_all();
	//Goto next room
	room_goto_next();
	//Destroy Menu
	obj_menu_main_text.destroy = true;
	instance_destroy();
	exit;
}

//Resume Game
if resume {
	//Goto index room
	scr_load();
	instance_destroy();
	exit;
	
}

//Scroll through menu with keyboard
if !graphics {
	instance_deactivate_object(obj_menu_main_graphics_text);
	if keyboard_check_pressed(ord("S")) {
		if select < instance_number(obj_menu_main_text) {
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
			select = instance_number(obj_menu_main_text);
		}
	}
}
//Scroll through options
else {
	select = 0;
	instance_activate_object(obj_menu_main_graphics_text);
	if keyboard_check_pressed(ord("S")) {
		if graphic_select < instance_number(obj_menu_main_graphics_text) {
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
			graphic_select = instance_number(obj_menu_main_graphics_text);
		}
	}
}