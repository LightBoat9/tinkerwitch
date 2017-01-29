//Destroy Event
if destroy = true {
	scr_bot_dest(bot_open);
	instance_destroy();
}
//Float around the player
if skill = 1 {
	scr_bot_float(bot_id);
}

//Move to obj_player and destroy to create a missile
else if skill = 2 {
	var dir = point_direction(x,y,obj_player.x,obj_player.y);
	motion_set(dir,5);
}