/// @description scr_controller_rooms();
if obj_controller.cur_room != room_get_name(room) {
	obj_controller.prev_room = obj_controller.cur_room;
	obj_controller.cur_room = room_get_name(room);
}