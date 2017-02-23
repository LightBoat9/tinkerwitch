/// @description scr_pause_text();
/// @param "string"
/// @param speed
/// @param x
/// @param y
/// @param function

text_obj = instance_create_depth(argument2,argument3,depth-1,obj_pause_graphics_text);
with (text_obj) {
	/*
	 * Function
	 * [1] Particles ON/OFF
	 */
	func = argument4;
	
	padding = 8; //Area arround the text
	maxlength = view_wview[0]; //Max amount the text can get
	text = argument0; //String to draw
	spd = argument1; //Speed to draw it
	font = fnt_pause; //Font to draw it in
	
	text_length = string_length(text); //Amount of characters
	draw_set_font(font); //Set the font to the param
	font_size = font_get_size(font); //How big the font is
	
	text_width = string_width_ext(text,font_size+(font_size/2), maxlength); //How wide the font is
	text_height = string_height_ext(text,font_size+(font_size/2), maxlength); //How tall the font is
	
	boxwidth = text_width + (padding*2);
	boxheight = text_height + (padding*2);
	
}