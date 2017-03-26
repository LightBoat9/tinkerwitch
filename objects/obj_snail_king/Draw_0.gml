draw_self();

//Draw Healthbar
if !(enemy_health <= 0) {
	draw_sprite(spr_bar_top,-1,x-12,y-48);
	draw_sprite_ext(spr_health_bar_bot,-1,x-12,y-48,enemy_health,1,0,c_white,1);
}

if (attack_type == "none") {
	image_speed = 1;
	sprite_index = spr_snail_king;
}
else if (attack_type == "roll") {
	image_speed = 1;
	sprite_index = spr_snail_king_roll;
}
else if (attack_type == "fire") {
	image_speed = .5;
	sprite_index = spr_snail_king_fire;
}

if (attack_type = "fire") {
	if dir = 0 {
		image_xscale = 1;
	}
	else if dir = 1 {
		image_xscale = -1;
	}
}
else {
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
}

draw_text(x,y-100,attack_type);
draw_text(x,y-132,state);
draw_text(x,y-164,"fire amount: " + string(fire_amount));