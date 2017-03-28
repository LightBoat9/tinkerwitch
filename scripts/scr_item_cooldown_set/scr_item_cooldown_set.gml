item = argument0;

if (item == obj_checkpoint) {
	global.item_checkpoint_cool = room_speed * 30;
}
else if (item == obj_item_missile) {
	global.item_missile_cool = room_speed * 2;
}
else if (item == obj_item_block) {
	global.item_block_cool = room_speed * 3;
}