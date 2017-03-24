//Create Controller
if !instance_exists(obj_controller) {
	instance_create_depth(0,0,0,obj_controller);
}

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
//Spawn Player at portal
else if obj_controller.prev_room = "rm_level_1_1" {
	obj_player.x = inst_portal_lvl_one.x + 38;
	obj_player.y = inst_portal_lvl_one.y + 50;
}
//Default
else {
	obj_player.x = inst_portal_index.x;
	obj_player.y = inst_portal_index.y - 64;

}

//Set Bots Position to player
if instance_exists(obj_bot) {
	obj_bot.x = obj_player.x;
	obj_bot.y = obj_player.y;
}


