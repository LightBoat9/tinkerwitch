/// @desctiption scr_player_movement();
/**********************************************************
 * Movespeed Changes
 **********************************************************/
//Shield Up
if instance_exists(obj_bot) {
	if obj_bot.skill = 3 || obj_bot.skill = 2 {
		movespeed = 2;
	}
	else {
		movespeed = 5;
	}
}
//EMP Attack
else if global.mouse_left {
	movespeed = 2;
}
else {
	movespeed = 5;
}

//Input
move = global.key_right - global.key_left;
//While not getting hit move horizontally 
if move_manip = false {	
	hsp = move * movespeed;
}

//Gravity
vsp += grav;

//Jumping
if move_manip = false {
	if place_meeting(x,y+1,obj_solid) {
		vsp = global.key_jump * -jumpspeed;
	}
}

//Collisions
if place_meeting(x+hsp,y,obj_solid) {
	while (!place_meeting(x+sign(hsp),y,obj_solid)) {
		x += sign(hsp)
	}
	hsp = 0;
}

x += hsp;

if place_meeting(x,y+vsp,obj_solid) {
	while (!place_meeting(x,y+sign(vsp),obj_solid)) {
		y += sign(vsp);
	}
	//Fall Damage
	if vsp > 25 {
		player_health -= vsp * .01;
	}
	vsp = 0;
}

y += vsp;