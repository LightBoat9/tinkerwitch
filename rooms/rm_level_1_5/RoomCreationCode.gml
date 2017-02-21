//Update Room / Last Room Visited
scr_controller_rooms();

//Coming from prev room
if obj_controller.prev_room = "rm_level_1_4" {
	obj_player.x = port_1_5_enter.x + 38;
	obj_player.y = port_1_5_enter.y + 50;
}
//Coming from next room
else if obj_controller.prev_room = "rm_level_1_6" {
	obj_player.x = port_1_5_exit.x + 38;
	obj_player.y = port_1_5_exit.y + 50;
}
//Default
else {
	obj_player.x = port_1_5_enter.x + 38;
	obj_player.y = port_1_5_enter.y + 50;
}