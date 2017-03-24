//Stop Player
if instance_exists(obj_player) {
	obj_player.move_manip = false;
	obj_player.hsp = 0;
	obj_player.vsp = 0;
}
//Create Player
else {
	instance_create_depth(0,0,0,obj_player);
}

//Update Room / Last Room Visited
scr_controller_rooms();

//Spawn on checkpoint
if instance_exists(obj_checkpoint) {
	obj_player.x = obj_checkpoint.x;
	obj_player.y = obj_checkpoint.y-16;
}
//Coming from prev room
else if obj_controller.prev_room = "rm_level_1_1" {
	obj_player.x = port_1_2_enter.x + 38;
	obj_player.y = port_1_2_enter.y + 50;
}
//Coming from next room
else if obj_controller.prev_room = "rm_level_1_3" {
	obj_player.x = port_1_2_exit.x + 38;
	obj_player.y = port_1_2_exit.y + 50;
}
//Default
else {
	obj_player.x = port_1_2_enter.x + 38;
	obj_player.y = port_1_2_enter.y + 50;
}

//Set Bots Position to player
if instance_exists(obj_bot) {
	obj_bot.x = obj_player.x;
	obj_bot.y = obj_player.y;
}