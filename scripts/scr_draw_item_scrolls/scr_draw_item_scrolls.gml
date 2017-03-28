/* Item Icons */
if global.item_one_obj != 0 {
	//Scroll
	draw_sprite(scr_gui_item_sprite(global.item_one_obj),
	scr_item_cooldown_get(global.item_one_obj)/room_speed,(view_width/2-151),(view_height-55));
}
if global.item_two_obj != 0 {
	//Scroll
	draw_sprite(scr_gui_item_sprite(global.item_two_obj),
	scr_item_cooldown_get(global.item_two_obj)/room_speed,(view_width/2-87),(view_height-55));
}
if global.item_three_obj != 0 {
	//Scroll
	draw_sprite(scr_gui_item_sprite(global.item_three_obj),
	scr_item_cooldown_get(global.item_three_obj)/room_speed,(view_width/2-23),(view_height-55));
}
if global.item_four_obj != 0 {
	//Scroll
	draw_sprite(scr_gui_item_sprite(global.item_four_obj),
	scr_item_cooldown_get(global.item_four_obj)/room_speed,(view_width/2+41),(view_height-55));
}
if global.item_five_obj != 0 {
	//Scroll
	draw_sprite(scr_gui_item_sprite(global.item_five_obj),
	scr_item_cooldown_get(global.item_five_obj)/room_speed,(view_width/2+105),(view_height-55));
}