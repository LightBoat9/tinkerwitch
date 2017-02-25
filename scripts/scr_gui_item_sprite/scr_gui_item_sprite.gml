/// @description scr_gui_item_sprite
/// @param item
/// @returns sprite
item = argument0;
//Checkpoint
if item = obj_checkpoint {
	return spr_item_checkpoint_scroll;
}
if item = obj_item_missile {
	return spr_item_missile_scroll;
}