/// @description scr_shield();

//Puttin up Shield
if instance_exists(obj_bot) {
	if global.mouse_right {
		obj_bot.skill = 3;
	} else {
		obj_bot.skill = 1;
	}
}

//Direction of mouse
shield_dir = point_direction(obj_player.x,obj_player.y,mouse_x, mouse_y);

//Lenght to point
orb_x = lengthdir_x(64, shield_dir);
orb_y = lengthdir_y(64, shield_dir);

//Shield Position
shield_x = obj_player.x + orb_x;
shield_y = obj_player.y + orb_y;

