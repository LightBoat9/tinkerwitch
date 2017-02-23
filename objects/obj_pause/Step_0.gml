if keyboard_check_pressed(vk_escape) {
	instance_activate_all();
	sprite_delete(global.pause_surface);
	instance_destroy();
}