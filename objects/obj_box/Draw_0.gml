draw_self();

//Health Bar
if !(box_health <= 0) && (box_health < 1) {
	draw_sprite(spr_health_bar_top,-1,x,y-8);
	draw_sprite_ext(spr_health_bar_bot,-1,x,y-8,box_health,1,0,c_white,1);
}