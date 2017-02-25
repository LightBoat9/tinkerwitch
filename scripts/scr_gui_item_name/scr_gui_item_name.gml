/// @description scr_gui_item_sprite
/// @param item
/// @returns name
item = argument0;
//Checkpoint
if item = obj_checkpoint {
	return "CHECKPOINT";
}
if item = obj_item_missile {
	return "MISSILE";
}
else {
	return "";
}