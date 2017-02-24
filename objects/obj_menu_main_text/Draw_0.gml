if destroy { exit; }

//Camera Dimentions
var cam_w = camera_get_view_width(view_get_camera(view_current));

//Alpha change over time
draw_set_alpha(alpha);
if (alpha < 1) alpha += spd/10; else alpha = 1;

//Set box values
draw_set_font(font);
draw_set_color(c_black);

//Draw Box
if point_in_rectangle(mouse_x,mouse_y,x,y,x+(cam_w/4),y+boxheight) || obj_menu_main.select = (func+1) {
	draw_rectangle(x,y,x+(cam_w/4),y+boxheight,0);
}
else {
	alpha = 0;
}
draw_set_color(c_white); //Reset Color

//Align text correctly to box
draw_set_halign(fa_left);
draw_set_valign(fa_top);

//Semi Transparent if not selected
if point_in_rectangle(mouse_x,mouse_y,x,y,x+(cam_w/4),y+boxheight) || obj_menu_main.select = (func+1) {
	draw_set_alpha(1);
}
else {
	draw_set_alpha(.5);
}

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