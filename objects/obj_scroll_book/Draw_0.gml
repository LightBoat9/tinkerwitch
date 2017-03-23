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

