draw_self();
if read = false { 
	image_index = 0; //By default unread sign
}
else {
	image_index = 1;
}

if draw_spr {
	//Player Collision
	if place_meeting(x,y,obj_player) {
		//Move sprite up into position
		if draw_y >= draw_max {
			draw_sprite_ext(sprite,0,x,y-draw_y,1,1,0,c_white,alpha);
		}
		else {
			draw_sprite_ext(sprite,0,x,y-draw_y,1,1,0,c_white,alpha); //Draw at current alpha
			draw_y += 2; //Slowly move up
			//Slowly gain alpha until fully visible
			if alpha < 1 {
				alpha += .05;
			}
		}
		read = true; //Change to read sign
	}
	else {
		//Reset
		draw_y = 0;
		alpha = 0;
	}
}
//Player Collision
else if draw_txt {
	//Player Collision
	if place_meeting(x,y,obj_player) {
		//Align to center
		draw_set_halign(fa_center);
		//Move text up into position
		if draw_y >= draw_max {
			draw_text_colour(x+16,y-draw_y,text,c_white,c_white,c_white,c_white,alpha);
		}
		else {
			draw_text_colour(x+16,y-draw_y,text,c_white,c_white,c_white,c_white,alpha); //Draw at current alpha
			draw_y += 2; //Slowly move up
			//Slowly gain alpha until fully visible
			if alpha < 1 {
				alpha += .05;
			}
		}
		image_index = 1; //Change to read sign
	}
	else {
		//Reset
		draw_y = 0;
		alpha = 0;
	}
}