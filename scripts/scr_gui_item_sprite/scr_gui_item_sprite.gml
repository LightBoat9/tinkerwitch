/// @description scr_gui_item_sprite
/// @param item
/// @returns sprite
item = argument0;
//Checkpoint
if item = obj_checkpoint {
	if global.item_checkpoint_cool <= 0 {
		return spr_item_checkpoint_scroll;
	}
	else {
		return spr_scroll_cooldown;
	}
}
else if item = obj_item_missile {
	if global.item_missile_cool <= 0 {
		return spr_item_missile_scroll;
	}
	else {
		return spr_scroll_cooldown;
	}
}
else if item = obj_item_block {
	if global.item_block_cool <= 0 {
		return spr_item_block_scroll;
	}
	else {
		return spr_scroll_cooldown;
	}
}