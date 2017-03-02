/// @description scr_scroll_book_text();
/// @param "string"
/// @param speed
/// @param x
/// @param y

text_obj = instance_create_depth(argument2,argument3,depth-1,obj_scroll_book_text);
with (text_obj) {
	padding = 8; //Area arround the text
	maxlength = view_wview[0]; //Max amount the text can get
	text = " " + argument0; //String to draw
	spd = argument1; //Speed to draw it
	font = fnt_sign; //Font to draw it in
	
	text_length = string_length(text); //Amount of characters
	draw_set_font(font); //Set the font to the param
	font_size = font_get_size(font); //How big the font is
	
	text_width = string_width_ext(text,font_size+(font_size/2), maxlength); //How wide the font is
	text_height = string_height_ext(text,font_size, maxlength); //How tall the font is
	
	boxwidth = text_width + (padding*2);
	boxheight = text_height + (padding*2);
	
	//Set Position
	x = x-(boxwidth/2)+16;
	y = y-(boxheight+32);
}
return text_obj;