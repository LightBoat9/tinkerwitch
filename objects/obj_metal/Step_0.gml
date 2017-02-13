//Move towards wrench/player
if instance_exists(obj_wrench) {
	//Towards Wrench
	if distance_to_object(obj_wrench) > 5 {
		scr_move_to(obj_wrench.x,obj_wrench.y,spd);
		x += hsp;
		y += vsp;
	}
}
else {
	//Towards Player
	scr_move_to(obj_player.x,obj_player.y,spd);
	x += hsp;
	y += vsp;
}

//Collide with player
if place_meeting(x,y,obj_player) {
	//Player Collects
	if global.metal+metal_val <= 24 {
		global.metal += metal_val;
	}
	instance_destroy();
}