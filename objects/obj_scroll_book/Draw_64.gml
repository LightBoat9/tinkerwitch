//Distance from mouse to view corner
mouse_gui_xpos = mouse_x - camera_get_view_x(view_get_camera(0));
mouse_gui_ypos = mouse_y - camera_get_view_y(view_get_camera(0));

//Draw sprite dragging
if move_item_missile {
	draw_sprite(spr_item_missile_scroll,-1,mouse_gui_xpos,mouse_gui_ypos);
	if mouse_check_button_released(mb_left) {
		if point_in_rectangle(
			mouse_gui_xpos,mouse_gui_ypos, //Mouse x and y position
			(obj_controller.view_width/2)-162,
			obj_controller.view_height-64,
			(obj_controller.view_width/2)-96,
			obj_controller.view_height,
		) {
			global.item_one_obj = obj_item_missile;
			move_item_missile = false;
		}
		else if point_in_rectangle(
			mouse_gui_xpos,mouse_gui_ypos, //Mouse x and y position
			(obj_controller.view_width/2)-98,
			obj_controller.view_height-64,
			(obj_controller.view_width/2)-32,
			obj_controller.view_height,
		) {
			global.item_two_obj = obj_item_missile;
			move_item_missile = false;
		}
		else if point_in_rectangle(
			mouse_gui_xpos,mouse_gui_ypos, //Mouse x and y position
			(obj_controller.view_width/2)-32,
			obj_controller.view_height-64,
			(obj_controller.view_width/2)+32,
			obj_controller.view_height,
		) {
			global.item_three_obj = obj_item_missile;
			move_item_missile = false;
		}
		else if point_in_rectangle(
			mouse_gui_xpos,mouse_gui_ypos, //Mouse x and y position
			(obj_controller.view_width/2)+32,
			obj_controller.view_height-64,
			(obj_controller.view_width/2)+96,
			obj_controller.view_height,
		) {
			global.item_four_obj = obj_item_missile;
			move_item_missile = false;
		}
		else if point_in_rectangle(
			mouse_gui_xpos,mouse_gui_ypos, //Mouse x and y position
			(obj_controller.view_width/2)+96,
			obj_controller.view_height-64,
			(obj_controller.view_width/2)+128,
			obj_controller.view_height,
		) {
			global.item_five_obj = obj_item_missile;
			move_item_missile = false;
		}
	}
}

if move_item_checkpoint {
	draw_sprite(spr_item_checkpoint_scroll,-1,mouse_gui_xpos,mouse_gui_ypos);
	if mouse_check_button_released(mb_left) {
		if point_in_rectangle(
			mouse_gui_xpos,mouse_gui_ypos, //Mouse x and y position
			(obj_controller.view_width/2)-162,
			obj_controller.view_height-64,
			(obj_controller.view_width/2)-96,
			obj_controller.view_height,
		) {
			global.item_one_obj = obj_checkpoint;
			move_item_checkpoint = false;
		}
		else if point_in_rectangle(
			mouse_gui_xpos,mouse_gui_ypos, //Mouse x and y position
			(obj_controller.view_width/2)-98,
			obj_controller.view_height-64,
			(obj_controller.view_width/2)-32,
			obj_controller.view_height,
		) {
			global.item_two_obj = obj_checkpoint;
			move_item_checkpoint = false;
		}
		else if point_in_rectangle(
			mouse_gui_xpos,mouse_gui_ypos, //Mouse x and y position
			(obj_controller.view_width/2)-32,
			obj_controller.view_height-64,
			(obj_controller.view_width/2)+32,
			obj_controller.view_height,
		) {
			global.item_three_obj = obj_checkpoint;
			move_item_checkpoint = false;
		}
		else if point_in_rectangle(
			mouse_gui_xpos,mouse_gui_ypos, //Mouse x and y position
			(obj_controller.view_width/2)+32,
			obj_controller.view_height-64,
			(obj_controller.view_width/2)+96,
			obj_controller.view_height,
		) {
			global.item_four_obj = obj_checkpoint;
			move_item_checkpoint = false;
		}
		else if point_in_rectangle(
			mouse_gui_xpos,mouse_gui_ypos, //Mouse x and y position
			(obj_controller.view_width/2)+96,
			obj_controller.view_height-64,
			(obj_controller.view_width/2)+128,
			obj_controller.view_height,
		) {
			global.item_five_obj = obj_checkpoint;
			move_item_checkpoint = false;
		}
	}
}

if point_in_rectangle(
	mouse_gui_xpos,mouse_gui_ypos,
	(obj_controller.view_width/2)-162,
	obj_controller.view_height-64,
	(obj_controller.view_width/2)+128,
	obj_controller.view_height
) {
	mouse_over_itembar = true;
}
else {
	mouse_over_itembar = false;
}