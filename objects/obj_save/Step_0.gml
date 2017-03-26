//Open Ini File
ini_open("Save.sav");

//Save Variables
switch (global.save_slot) {
	case 1:
		ini_write_real("Save1", "room", room);
		ini_write_real("Save1", "charge", global.charge);
		break;
	case 2:
		ini_write_real("Save2", "room", room);
		ini_write_real("Save2", "charge", global.charge);
		break;
	case 3:
		ini_write_real("Save3", "room", room);
		ini_write_real("Save3", "charge", global.charge);
		break;
}

//Close The File
ini_close();

//Destroy The Object
instance_destroy();

if exit_game {
	game_end();
}