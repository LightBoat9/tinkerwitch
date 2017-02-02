/// @description Variables

//Controller
if !instance_exists(obj_controller) {
	instance_create_depth(0,0,0,obj_controller);
}

//Movement
vsp = 0;
hsp = 0;
grav = 1;
jumpspeed = 13.5;
movespeed = 5;

//Items
global.item_wrench = true;
missileParts = 0;

//Attacking
meleeAttack = false;
meleeHoldTimer = room_speed / 4;

/*
 * Movement Manipulation
 * @move_manip The Ability to stop normal movement of the player 
 * and manipulate it as needed
*/
move_manip = false;
mm_timer = room_speed / 2;

//Health
player_health = 1;