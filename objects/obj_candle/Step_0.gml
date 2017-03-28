if place_meeting(x,y,obj_player) {
	if obj_player.mana_charge {
		lit = true;
	}
}
show_debug_message(lit);