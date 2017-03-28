draw_self();

//Meeting Player
if using {
	//Draw Sets
	draw_set_color(c_dkgray);
	draw_set_alpha(alpha);
	
	//Box of the book contents
	draw_rectangle(
		mid_x-320-padding,
		above_y-320-padding,
		mid_x+total_width+padding,
		above_y-total_height+padding,
		false
	);
	
	//Draw Outline
	draw_set_color(c_black);
	draw_set_alpha(1);	//Box of the book contents
	draw_rectangle(
		mid_x-320-padding,
		above_y-320-padding,
		mid_x+total_width+padding,
		above_y-total_height+padding,
		true
	);
	
	//Draw Contents
	if item_missile {
		draw_sprite(spr_item_missile_scroll, -1, mid_x-320, above_y-320);
		draw_sprite(spr_item_checkpoint_scroll, -1, mid_x-256, above_y-320);
	}
}
draw_set_color(c_white);
draw_set_alpha(1);

//While not using 
if !using {
	//Player Collision
	if place_meeting(x,y,obj_player) {
		//Move sprite up into position
		if draw_y >= draw_max {
			draw_sprite_ext(spr_kb_e,0,x,y-draw_y,1,1,0,c_white,spr_alpha);
			if spr_alpha < 1 {
				spr_alpha += .05;
			}
		}
		else {
			draw_sprite_ext(spr_kb_e,0,x,y-draw_y,1,1,0,c_white,spr_alpha); //Draw at current alpha
			draw_y += 2; //Slowly move up
			//Slowly gain alpha until fully visible
			if spr_alpha < 1 {
				spr_alpha += .05;
			}
		}
	}
	else {
		//Reset
		draw_y = 32;
		spr_alpha = 0;
	}
}

