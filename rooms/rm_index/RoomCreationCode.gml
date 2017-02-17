//Create Controller
if !instance_exists(obj_controller) {
	instance_create_depth(0,0,0,obj_controller);
}

//Update Room / Last Room Visited
scr_controller_rooms();

//Spawn Player at portal
if obj_controller.prev_room = "rm_level_1_1" {
	obj_player.x = inst_portal_lvl_one.x + 38;
	obj_player.y = inst_portal_lvl_one.y + 50;
}
