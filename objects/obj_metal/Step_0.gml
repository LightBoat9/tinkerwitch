//Move towards Player
//Towards Player
scr_move_to(obj_player.x,obj_player.y,spd);
x += hsp;
y += vsp;

//Collide with player
if place_meeting(x,y,obj_player) {
	//Player Collects
	while global.metal+metal_val > 24 {
		metal_val--;
	}
	global.metal += metal_val;
	instance_destroy();
}