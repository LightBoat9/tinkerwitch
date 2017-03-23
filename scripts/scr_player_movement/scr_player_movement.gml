/// @desctiption scr_player_movement();
/**********************************************************
 * Movespeed Changes
 **********************************************************/
//Whether the player is meeting solid ground (For use from other objects only)
if place_meeting(x,y+1,obj_solid) || place_meeting(x,y+1,obj_solid_move) {
	grounded = true;
}
else {
	grounded = false;
}

//Getting unstuck
var i = 0;
while place_meeting(x,y,obj_solid_move) {
	if !place_meeting(x+i,y,obj_solid_move) 
	&& !place_meeting(x+i,y,obj_solid) {
		x = x+i;
	}
	else if !place_meeting(x,y+i,obj_solid_move) 
	&& !place_meeting(x,y+i,obj_solid) {
		y = y+i;
	}
	else if !place_meeting(x-i,y,obj_solid_move) 
	&& !place_meeting(x-i,y,obj_solid){
		x = x-i;
	}
	else if !place_meeting(x,y-i,obj_solid_move) 
	&& !place_meeting(x,y-i,obj_solid) {
		y = y-i;
	}
	i++;
}

//EMP Attack
if global.mouse_left {
	movespeed = 2;
}
//Shield Up
else if instance_exists(obj_bot) {
	if obj_bot.skill = 3 || obj_bot.skill = 2 {
		movespeed = 2;
	}
	else {
		movespeed = 5;
	}
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
	if grounded { //If grounded
		vsp = global.key_jump * -jumpspeed; //Jump based on input
		//Jump Sound
		if global.key_jump {
			audio_play_sound(snd_jump,0,false);
		}
		if global.autojump { //Autojumping at walls
			if place_meeting(x+sign(hsp),y,obj_solid) { //Meeting the wall while walking
				audio_play_sound(snd_jump,0,false);
				vsp = -jumpspeed; //Jump
			}
		}
	}
}

//All Collisions
if place_meeting(x+hsp,y,obj_solid) {
	while (!place_meeting(x+sign(hsp),y,obj_solid)) {
		x += sign(hsp)
	}
	hsp = 0;
}
//For Just Movement
if place_meeting(x+hsp,y,obj_solid_move) {
	while (!place_meeting(x+sign(hsp),y,obj_solid_move)) {
		x += sign(hsp)
	}
	hsp = 0;
}

x += hsp;

//All Collisions
if place_meeting(x,y+vsp,obj_solid) {
	while (!place_meeting(x,y+sign(vsp),obj_solid)) {
		y += sign(vsp);
	}
	vsp = 0;
//For Just Movement
}if place_meeting(x,y+vsp,obj_solid_move) {
	while (!place_meeting(x,y+sign(vsp),obj_solid_move)) {
		y += sign(vsp);
	}
	vsp = 0;
}

y += vsp;