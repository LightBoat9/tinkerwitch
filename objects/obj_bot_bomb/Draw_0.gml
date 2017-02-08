draw_self();
depth = 0;

if hsp != 0 {
	if dir = 0 {
		sprite_index = spr_bot_walking;
		image_xscale = 1;
	}
	else if dir = 1 {
		sprite_index = spr_bot_walking;
		image_xscale = -1;
	}
}
else {
	sprite_index = spr_bot_idle;
}