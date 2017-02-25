if destroy { exit; }

//Alpha change over time
draw_set_alpha(alpha);
if (alpha < 7/8) alpha += spd/10; else alpha = 7/8;

//Set box values
draw_set_font(font);
var col = make_color_rgb(87,52,1)
draw_set_color(col);

//Draw Box
draw_rectangle(x,y,x+boxwidth,y+boxheight,0);

//Set box outline values
draw_set_font(font);
draw_set_color(c_black);
draw_set_alpha(1);

//Draw Box
draw_rectangle(x,y,x+boxwidth,y+boxheight,1);

draw_set_color(c_white); //Reset Color

//Align text correctly to box
draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_set_alpha(1);

//Draw text
draw_text_ext(
	x + padding,
	y + padding,
	text,
	font_size+(font_size/2),
	maxlength
);

//Reset alpha
draw_set_alpha(1);