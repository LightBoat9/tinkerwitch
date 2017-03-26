if (file_exists("Save.sav")) {
	//Reactivate Instances
	instance_activate_all();
	//Destroy Menu
	obj_menu_main_text.destroy = true;
	//Load Variables
	ini_open("Save.sav");
	
	
	switch (global.save_slot) {
		case 1:
			var LoadedRoom = ini_read_real("Save1","room",rm_index);
			global.charge = ini_read_real("Save1", "charge", 0);
			break;
		case 2:
			var LoadedRoom = ini_read_real("Save2","room",rm_index);
			global.charge = ini_read_real("Save2", "charge", 0);
			break;
		case 3:
			var LoadedRoom = ini_read_real("Save3","room",rm_index);
			global.charge = ini_read_real("Save3", "charge", 0);
			break;
		default:
			var LoadedRoom = ini_read_real("Save1","room",rm_index);
			global.charge = ini_read_real("Save1", "charge", 0);
			break;
	}
	
	ini_close();
	room_goto(LoadedRoom);
	instance_destroy();
}