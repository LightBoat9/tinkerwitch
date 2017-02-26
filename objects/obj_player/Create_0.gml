/// @description Variables

//Depth
depth = global.depth_2;

//Persistance
persistent = true; 

//Controller
if !instance_exists(obj_controller) {
	instance_create_depth(0,0,0,obj_controller);
}

//Movement
vsp = 0; // Vertical Speed
hsp = 0; //Horizontal Speed
grav = 1; //Gravity
jumpspeed = 13.5; //Jump "height"
movespeed = 5; //Horizontal movement
grounded = false; //Whether on ground or not

//Items
global.item_wrench = true; // Whether the player has the wrench or not
missileParts = 0; //The amount of parts for the missile the player has

//Shield
shield_health = 1;
shield_health_max = instance_number(obj_bot)/8;

//Attacking
empAttack = false;
empHoldTimer = room_speed / 4;

/*
 * Movement Manipulation
 * @move_manip The Ability to stop normal movement of the player 
 * and manipulate it as needed
*/
move_manip = false;
mm_timer = room_speed / 2;

//Health
player_health = 1;

//Mana
mana_timer = room_speed * 4;
mana_charge = false;

//Items
item_parts = 0;