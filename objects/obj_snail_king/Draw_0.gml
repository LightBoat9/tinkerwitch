draw_self();

//Draw Healthbar
if !(enemy_health <= 0) {
	draw_sprite(spr_bar_top,-1,x-12,y-48);
	draw_sprite_ext(spr_health_bar_bot,-1,x-12,y-48,enemy_health,1,0,c_white,1);
}


if hsp != 0 {
	if dir = 0 {
		image_xscale = 1;
	}
	else if dir = 1 {
		image_xscale = -1;
	}
}
else {
	image_index = 0;
}