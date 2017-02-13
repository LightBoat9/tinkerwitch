/// @description scr_shield_up();
speed = 0;
if bot_num = 1 {
	nowX = lengthdir_x(8, obj_player.shield_dir + 90);
	nowY = lengthdir_y(8, obj_player.shield_dir + 90);
	x = obj_player.shield_x + nowX;
	y = obj_player.shield_y + nowY;
	image_angle = obj_player.shield_dir;
}
else if bot_num = 2 {
	nowX = lengthdir_x(24, obj_player.shield_dir + 90);
	nowY = lengthdir_y(24, obj_player.shield_dir + 90);

	x = obj_player.shield_x + nowX;
	y = obj_player.shield_y + nowY;
	image_angle = obj_player.shield_dir;
	exit;
} 
else if bot_num = 3 {
	nowX = lengthdir_x(40, obj_player.shield_dir + 90);
	nowY = lengthdir_y(40, obj_player.shield_dir + 90);

	x = obj_player.shield_x + nowX;
	y = obj_player.shield_y + nowY;
	image_angle = obj_player.shield_dir;
	exit;
}
else if bot_num = 4 {
	nowX = lengthdir_x(56, obj_player.shield_dir + 90);
	nowY = lengthdir_y(56, obj_player.shield_dir + 90);

	x = obj_player.shield_x + nowX;
	y = obj_player.shield_y + nowY;
	image_angle = obj_player.shield_dir;
	exit;
}
else if bot_num = 5 {
	nowX = lengthdir_x(8, obj_player.shield_dir - 90);
	nowY = lengthdir_y(8, obj_player.shield_dir - 90);

	x = obj_player.shield_x + nowX;
	y = obj_player.shield_y + nowY;
	image_angle = obj_player.shield_dir;
	exit;
}
else if bot_num = 6 {
	nowX = lengthdir_x(24, obj_player.shield_dir - 90);
	nowY = lengthdir_y(24, obj_player.shield_dir - 90);

	x = obj_player.shield_x + nowX;
	y = obj_player.shield_y + nowY;
	image_angle = obj_player.shield_dir;
	exit;
}
else if bot_num = 7 {
	nowX = lengthdir_x(40, obj_player.shield_dir - 90);
	nowY = lengthdir_y(40, obj_player.shield_dir - 90);

	x = obj_player.shield_x + nowX;
	y = obj_player.shield_y + nowY;
	image_angle = obj_player.shield_dir;
	exit;
}
else if bot_num = 8 {
	nowX = lengthdir_x(56, obj_player.shield_dir - 90);
	nowY = lengthdir_y(56, obj_player.shield_dir - 90);

	x = obj_player.shield_x + nowX;
	y = obj_player.shield_y + nowY;
	image_angle = obj_player.shield_dir;
	exit;
}