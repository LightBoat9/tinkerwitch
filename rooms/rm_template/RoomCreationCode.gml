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