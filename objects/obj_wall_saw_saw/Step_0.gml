if (state = "left") {
	hsp = 6;
	if (x >= obj_wall_saw_wall.x + obj_wall_saw_wall.sprite_width-32) {
		state = "right";
		damage = true;
		hsp = 0;
	}
}
else if (state = "right") {
	hsp = -6;
	if (x <= obj_wall_saw_wall.x) {
		state = "left";
		damage = true;
		hsp = 0;
	}
}

if (damage = true) {
	if (place_meeting(x+hsp,y,obj_player)) {
		scr_player_hurt(.1);
		damage = false;
	}
}

x += hsp;