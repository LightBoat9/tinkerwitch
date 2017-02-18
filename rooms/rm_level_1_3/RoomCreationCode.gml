//Update Room / Last Room Visited
scr_controller_rooms();

//Spawn Player at portal
if obj_controller.prev_room = "rm_level_1_2" {
	obj_player.x = port_1_3_enter.x + 38;
	obj_player.y = port_1_3_enter.y + 50;
}
else if obj_controller.prev_room = "rm_level_1_4" {
	obj_player.x = port_1_3_exit.x + 38;
	obj_player.y = port_1_3_exit.y + 50;
}