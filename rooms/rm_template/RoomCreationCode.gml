//Add controller
if !instance_exists(obj_controller) {
	instance_create_depth(0,0,0,obj_controller)
}

//Stop Player
obj_player.move_manip = false;
obj_player.hsp = 0;
obj_player.vsp = 0;

//Update Room / Last Room Visited
scr_controller_rooms();

//Spawn on checkpoint
if instance_exists(obj_checkpoint) {
	obj_player.x = obj_checkpoint.x;
	obj_player.y = obj_checkpoint.y-16;
}

//Set Bots Position to player
if instance_exists(obj_bot) {
	obj_bot.x = obj_player.x;
	obj_bot.y = obj_player.y;
}