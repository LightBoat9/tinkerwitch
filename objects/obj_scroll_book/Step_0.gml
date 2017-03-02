//Whether the player is using the station or not
if place_meeting(x,y,obj_player) {
	if using = false {
		if keyboard_check_pressed(ord("E")) {
				using = true;
				obj_player.interacting = true;
		}
	}
	else {
		if keyboard_check_pressed(ord("E")) {
				using = false;
				obj_player.interacting = false;
		}
	}
}
else {
	using = false;
	obj_player.interacting = false;
}


if item_missile {
	item_missile_width = sprite_get_width(spr_item_missile_scroll);
	item_missile_height = sprite_get_width(spr_item_missile_scroll);
}
else {
	item_missile_width = 0;
	item_missile_height = 0;
}

//All of the dimentions added together
total_width = 
item_missile_width;

total_height = 
item_missile_height;

//Draw Item Information
if using {
	if point_in_rectangle(mouse_x,mouse_y,mid_x-320, above_y-320,mid_x-320+item_missile_width, above_y-320+item_missile_height) {
		instance_activate_object(item_missile_text);
		item_missile_text.x = mouse_x;
		item_missile_text.y = mouse_y;
		//Buying the item
		if global.has_item_missile = false {
			if global.mouse_left {
				if item_missile_cost <= global.charge {
					global.has_item_missile = true;
					global.charge -= item_missile_cost;
					item_missile_text.text = purch_str;
				}
			}
		}
		else {
			if mouse_check_button_pressed(mb_left) {
				switch (move_item_missile) {
					case true:
						move_item_missile = false;
						break;
					case false:
						move_item_missile = true;
						break;
				}
			}
		}
	}
	else { //If not in rectangle
		instance_deactivate_object(item_missile_text);
		//Drop All Items
		if !mouse_over_itembar {
			if mouse_check_button_pressed(mb_left) {
				move_item_missile = false;
			}
		}
	}
}
else { //If not using
	instance_deactivate_object(item_missile_text);
	move_item_missile = false;
}

//Slowly increase alpha
if using {
	alpha += .05;
}
else {
	alpha = 0;
}

