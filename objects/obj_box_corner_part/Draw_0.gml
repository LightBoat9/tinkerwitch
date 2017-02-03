/* 
 * Part 
 * 1 = Top Right
 * 2 = Top Left
 * 3 = Bot Left
 * 4 = Bot Right
*/
if part = 1 {
	draw_sprite_part(spr_box,0,16,0,16,16,x,y);
}
else if part = 2 {
	draw_sprite_part(spr_box,0,0,0,16,16,x,y);
}
else if part = 3 {
	draw_sprite_part(spr_box,0,0,16,16,16,x,y);
}
else if part = 4 {
	draw_sprite_part(spr_box,0,16,16,16,16,x,y);
}