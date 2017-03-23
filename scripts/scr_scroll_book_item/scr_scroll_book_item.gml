/// @description scr_scroll_book_item()
/// @param x_offset
/// @param y_offset
/// @param item_width
/// @param item_height
/// @param item_text_obj
/// @param global_has
/// @param cost
/// @param move_item

x_offset = argument0;
y_offset = argument1;
item_width = argument2;
item_height = argument3;
item_text_obj = argument4;
global_has = argument5;
cost = argument6;
move_item = argument7;



//If the mouse is in the scroll rectangle
if point_in_rectangle(mouse_x,mouse_y,mid_x-x_offset, above_y-y_offset,mid_x-x_offset+item_width, above_y-320+item_height) {
	instance_activate_object(item_text_obj); //Display text
	item_text_obj.x = mouse_x; //Set the text position
	item_text_obj.y = mouse_y;
	//Buying the item
	if global.has_item_missile = false { //When the item is not owned
		
		if global.mouse_left { //Buy Item 
			if cost <= global.charge {
				global.has_item_missile = true;
				global.charge -= cost;
				item_text_obj.destroy = true;
				item_text_obj = scr_scroll_book_text(purch_str, 2, item_text_obj.x,item_text_obj.y);
			}
		}
	}
	else {
		//Moving the item to itembar
		if mouse_check_button_pressed(mb_left) {
			switch (move_item) {
				case true:
					move_item = false;
					break;
				case false:
					move_item = true;
					break;
			}
		}
		//Drop the scroll
		if !global.mouse_left {
			move_item = false;
		}
	}
}
else { //If not in rectangle
	instance_deactivate_object(item_text_obj);
	//Drop All Items
	if !mouse_over_itembar {
		if !(mouse_check_button(mb_left)) {
			move_item = false;
		}
	}
}