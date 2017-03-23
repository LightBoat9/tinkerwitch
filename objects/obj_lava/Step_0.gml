//Meeting Player
if place_meeting(x,y,obj_player) {
	scr_player_hurt(1); //Damage Player
	obj_player.move_manip = true; //Stop player movement
	obj_player.hsp = 0; //Stop player movement
	obj_player.vsp = 1; //Sink slowly
}