// Getting Hit
if place_meeting(x,y,obj_player_slash_hitbox) {
	obj_snail.rolling = false;
	obj_snail.stunned = true;
	instance_destroy();
}

//Follow snail
x += obj_snail.hsp;
y += obj_snail.vsp;