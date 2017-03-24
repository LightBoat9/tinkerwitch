if (file_exists("Save.sav")) {
	//Reactivate Instances
	instance_activate_all();
	//Destroy Menu
	obj_menu_main_text.destroy = true;
	//Load Variables
	ini_open("Save.sav");
	var LoadedRoom = ini_read_real("Save1","room",rm_index);
	global.charge = ini_read_real("Save1", "charge", 0);
	ini_close();
	room_goto(LoadedRoom);
}