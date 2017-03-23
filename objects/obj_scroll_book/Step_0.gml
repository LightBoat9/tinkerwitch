//Whether the player is using the station or not
if place_meeting(x,y,obj_player) {
	//If not using and press E start using
	if using = false {
		if keyboard_check_pressed(ord("E")) {
				using = true;
				audio_play_sound(snd_pageflip,0,false);
				obj_player.interacting = true;
		}
	}
	//If using and press E stop using
	else {
		if keyboard_check_pressed(ord("E")) {
				using = false;
				obj_player.interacting = false;
		}
	}
}
else { //If not meeting player stop using
	using = false;
	obj_player.interacting = false;
}

//Get the width and heigth of the missile scroll
if item_missile {
	item_missile_width = sprite_get_width(spr_item_missile_scroll);
	item_missile_height = sprite_get_height(spr_item_missile_scroll);
}
else {
	item_missile_width = 0;
	item_missile_height = 0;
}

//Get the width and heigth of the missile scroll
if item_checkpoint {
	item_checkpoint_width = sprite_get_width(spr_item_checkpoint_scroll);
	item_checkpoint_height = sprite_get_height(spr_item_checkpoint_scroll);
}
else {
	item_checkpoint_width = 0;
	item_checkpoint_height = 0;
}

//All of the dimentions added together
total_width = 
item_missile_width + item_checkpoint_width;

total_height = 
item_missile_height + item_checkpoint_height;

//Draw Item Information
if using {
	/* MISSILE */
	//If the mouse is in the scroll rectangle
	if point_in_rectangle(mouse_x,mouse_y,mid_x-320, above_y-320,mid_x-320+item_missile_width, above_y-320+item_missile_height) {
		instance_activate_object(item_missile_text); //Display text
		item_missile_text.x = mouse_x; //Set the text position
		item_missile_text.y = mouse_y;
		//Buying the item
		if global.has_item_missile = false { //When the item is not owned
			if global.mouse_left { //Buy Item 
				if item_missile_cost <= global.charge {
					global.has_item_missile = true;
					global.charge -= item_missile_cost;
					item_missile_text.destroy = true;
					item_missile_text = scr_scroll_book_text(purch_str, 2, item_missile_text.x,item_missile_text.y);
				}
			}
		}
		else {
			//Moving the item to itembar
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
			//Drop the scroll
			if !global.mouse_left {
				move_item_missile = false;
			}
		}
	}
	else { //If not in rectangle
		instance_deactivate_object(item_missile_text);
		//Drop All Items
		if !mouse_over_itembar {
			if !(mouse_check_button(mb_left)) {
				//All items listed
				move_item_missile = false;
			}
		}
	}
	
	/* Checkpoint */
	//If the mouse is in the scroll rectangle
	if point_in_rectangle(mouse_x,mouse_y,mid_x-256,above_y-320,mid_x-256+item_checkpoint_width,above_y-320+item_checkpoint_height) {
		instance_activate_object(item_checkpoint_text); //Display text
		item_checkpoint_text.x = mouse_x; //Set the text position
		item_checkpoint_text.y = mouse_y;
		//Buying the item
		if global.has_item_checkpoint = false { //When the item is not owned
			if global.mouse_left { //Buy Item 
				if item_checkpoint_cost <= global.charge {
					global.has_item_checkpoint = true;
					global.charge -= item_checkpoint_cost;
					item_checkpoint_text.destroy = true;
					item_checkpoint_text = scr_scroll_book_text(purch_str, 2, item_checkpoint_text.x,item_checkpoint_text.y);
				}
			}
		}
		else {
			//Moving the item to itembar
			if mouse_check_button_pressed(mb_left) {
				switch (move_item_checkpoint) {
					case true:
						move_item_checkpoint = false;
						break;
					case false:
						move_item_checkpoint = true;
						break;
				}
			}
			//Drop the scroll
			if !global.mouse_left {
				move_item_checkpoint = false;
			}
		}
	}
	else { //If not in rectangle
		instance_deactivate_object(item_checkpoint_text);
		//Drop All Items
		if !mouse_over_itembar {
			if !(mouse_check_button(mb_left)) {
				move_item_checkpoint = false;
			}
		}
	}
}
else { //If not using
	instance_deactivate_object(item_missile_text);
	//List All Items
	move_item_missile = false;
	move_item_checkpoint = false;
}

//Slowly increase alpha
if using {
	alpha += .1;
}
else {
	alpha = 0;
}

