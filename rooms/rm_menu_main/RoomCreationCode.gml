//Add controller
if !instance_exists(obj_controller) {
	instance_create_depth(0,0,0,obj_controller)
}

//Update Room / Last Room Visited
scr_controller_rooms();

//Deactivate all instances
instance_deactivate_all(false);
//Create room controller
instance_create_depth(0,0,0,obj_menu_main);

