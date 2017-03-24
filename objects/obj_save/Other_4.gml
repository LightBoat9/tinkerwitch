show_debug_message("TESTOINWEPORIKWEF");
if (file_exists("Save.sav")) {
	file_delete("Save.sav");
}
//Open Ini File
ini_open("Save.sav");

//Save Variables
ini_write_real("Save1", "room", room);
ini_write_real("Save1", "charge", global.charge);
//Close The File
ini_close();

//Destroy The Object
instance_destroy();