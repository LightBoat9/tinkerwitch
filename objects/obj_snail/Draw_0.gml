draw_self();
//Draw Healthbar
if !(enemy_health <= 0) {
	draw_sprite(spr_bar_top,-1,x-16,y-24);
	draw_sprite_ext(spr_health_bar_bot,-1,x-16,y-24,enemy_health,1,0,c_white,1);
}

//Rolling Sprite
if rolling = true {
	if dir = 0 {
		image_speed = 1;
		sprite_index = spr_snail_rolling;
		image_xscale = 1;
	}
	if dir = 1 {
		image_speed = 1;
		sprite_index = spr_snail_rolling;
		image_xscale = -1;
	}
}
//Stunned Sprite
else if stunned = true {
	if dir = 0 {
		image_speed = 1;
		sprite_index = spr_snail_stunned;
		image_xscale = 1;
	}
	if dir = 1 {
		image_speed = 1;
		sprite_index = spr_snail_stunned;
		image_xscale = -1;
	}
}
//Normal Movement Sprite
else {
	if dir = 0 {
		image_speed = 1;
		sprite_index = spr_snail;
		image_xscale = 1;
	}
	if dir = 1 {
		image_speed = 1;
		sprite_index = spr_snail;
		image_xscale = -1;
	}
}