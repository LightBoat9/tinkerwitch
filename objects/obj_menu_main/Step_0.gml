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
	if (!file_exists("Save.sav")) {
		resume = false;
	}
	exit;
}

//Scroll through menu with keyboard
if !graphics && !saves && !newsave {
	instance_deactivate_object(obj_menu_main_graphics_text);
	instance_deactivate_object(obj_menu_main_saves_text);
	instance_deactivate_object(obj_menu_main_newsave_text);
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
//Scroll through save slots
else if saves {
	select = 0;
	instance_deactivate_object(obj_menu_main_graphics_text);
	instance_activate_object(obj_menu_main_saves_text);
	instance_deactivate_object(obj_menu_main_newsave_text);
	if keyboard_check_pressed(ord("S")) {
		if saves_select < instance_number(obj_menu_main_saves_text) {
			saves_select++;
		}
		else {
			saves_select = 1;
		}
	}
	if keyboard_check_pressed(ord("W")) {
		if saves_select > 1 {
			saves_select--;
		}
		else {
			saves_select = instance_number(obj_menu_main_saves_text);
		}
	}
}
//Scroll through new game save slots
else if newsave {
	select = 0;
	instance_deactivate_object(obj_menu_main_graphics_text);
	instance_deactivate_object(obj_menu_main_saves_text);
	instance_activate_object(obj_menu_main_newsave_text);
	if keyboard_check_pressed(ord("S")) {
		if newsave_select < instance_number(obj_menu_main_newsave_text) {
			newsave_select++;
		}
		else {
			newsave_select = 1;
		}
	}
	if keyboard_check_pressed(ord("W")) {
		if newsave_select > 1 {
			newsave_select--;
		}
		else {
			newsave_select = instance_number(obj_menu_main_newsave_text);
		}
	}
}
//Scroll through graphics options
else if graphics {
	select = 0;
	instance_deactivate_object(obj_menu_main_saves_text);
	instance_activate_object(obj_menu_main_graphics_text);
	instance_deactivate_object(obj_menu_main_newsave_text);
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

//Views And Camera
view_enabled = true;
view_set_visible(0,true);
view_set_wport(0,1280);
view_set_hport(0,768);

cam = camera_create_view(0, 0, 1280, 768, 0, obj_player, -1, -1, 1280/2, 768/2);
view_set_camera(0,cam);