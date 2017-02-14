if place_meeting(x,y,obj_player) {
	if keyboard_check_pressed(ord("E")) {
		obj_player.move_manip = true;
		port = true;
	}
}

if port = true {
	obj_player.vsp-=2;
	if obj_player.y < y+46 {
		port = false;
		room_goto(room_target);
	}
}


