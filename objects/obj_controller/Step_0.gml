/// @description Nonconstant Variables

//Allow true random
randomize();

/* Keybindings */
//Movement
global.key_left = keyboard_check(ord("A"));
global.key_right = keyboard_check(ord("D"));
global.key_up = keyboard_check(ord("W"));
global.key_down = keyboard_check(ord("S"));
global.key_jump = keyboard_check(vk_space);
//Items & Skills
global.key_wrench = keyboard_check(ord("Q"));
global.key_bots = keyboard_check(ord("R"));
global.key_missile = keyboard_check(ord("F"));
global.key_use = keyboard_check(ord("E"));
global.key_item = keyboard_check(ord("Z"));
//Item Bar
global.item_one = keyboard_check(ord("1"));
global.item_two = keyboard_check(ord("2"));
global.item_three = keyboard_check(ord("3"));
global.item_four = keyboard_check(ord("4"));
global.item_five = keyboard_check(ord("5"));

/* Mouse Bindings */
global.mouse_left = mouse_check_button(mb_left);
global.mouse_right = mouse_check_button(mb_right);

/* Backgrounds */
/* COMMENTED OUT CODE FOR MOVING BACKGROUNDS 
bgr_top = layer_get_id("Background_Top");
cam_x = camera_get_view_x(cam);
layer_x(bgr_top, cam_x);
*/

/* Item Bar */
if mouse_wheel_up() {
	if global.item_bar != 0 {
		global.item_bar--;
	}
	else {
		global.item_bar = 4;
	}
}
if mouse_wheel_down() {
	if global.item_bar != 4 {
		global.item_bar++;
	}
	else {
		global.item_bar = 0;
	}
}
//Quick Item Keybinds
if global.item_one { global.item_bar = 0 }
if global.item_two { global.item_bar = 1 }
if global.item_three { global.item_bar = 2 }
if global.item_four { global.item_bar = 3 }
if global.item_five { global.item_bar = 4 }