// Testing Mode vs Normal
if global.testing = false {
	visible = false;
} else {
	visible = true;
}

// Getting Hit
if place_meeting(x,y,obj_player_slash_hitbox) {
	with (obj_snail) {
		if stunned = true {
			enemy_health -= .5;
		}
		rolling = false;
		stunned = true;
	}
	instance_destroy();
}

// Follow snail
x += obj_snail.hsp;
y += obj_snail.vsp;