//Meeting Player
if place_meeting(x,y,obj_player) {
	obj_player.player_health -= .025; //Damage Player
	obj_player.move_manip = true; //Stop player movement
	obj_player.hsp = 0; //Stop player movement
	obj_player.vsp = 1; //Sink slowly
}