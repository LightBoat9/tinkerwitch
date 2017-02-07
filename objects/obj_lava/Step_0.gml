//Damage Player
if place_meeting(x,y,obj_player) {
	obj_player.player_health -= .025;
	obj_player.move_manip = true;
	obj_player.vsp = 1;
}