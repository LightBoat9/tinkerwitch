// Getting Hit
if place_meeting(x,y,obj_player_slash_hitbox) {
	instance_destroy();
}

//Follow snail
x += obj_snail.hsp;
y += obj_snail.vsp;