//Death Event
if destroy = true || enemy_health <= 0 {
	obj_solid_dest.destroy = true;
	layer_set_visible("Tiles_CastleMid",false);
	instance_destroy();
}

//Pause for 5 Seconds
if !(pause_timer <= 0) {
	pause_timer--;
}
else {
	if (state == "idle") {
		state = "move";
	}
	//Switch Direction at walls
	if place_meeting(x+hsp,y,obj_solid) {
		scr_sk_switch_dir();
	}

	//Set speed based on direction
	switch(dir) {
		case 0:
			if (attack_type == "none") hsp = 7;
			else if (attack_type == "roll") hsp = 20;
			else hsp = 0;
			break;
		case 1:
			if (attack_type == "none") hsp = -7;
			else if (attack_type == "roll") hsp = -20;
			else hsp = 0;
			break;
	}
}

//Gravity
vsp += grav;

//Collision Testing
if place_meeting(x+hsp,y,obj_solid) {
	while !place_meeting(x+sign(hsp),y,obj_solid) {
		x += sign(hsp);
	}
	hsp = 0;
}

x += hsp;

if place_meeting(x,y+vsp, obj_solid) {
	while !place_meeting(x,y+sign(vsp),obj_solid) {
		y += sign(vsp);
	}
	vsp = 0;
}

y += vsp;

//Add dmgBox for next damage
if createDmgBox = true {
	if !instance_exists(inst_dmgBox) {
		inst_dmgBox = instance_create_depth(x,y,global.depth_2,obj_snail_king_dmgBox)
	}
	createDmgBox = false;
}

if (state == "move") {
	if state_timer <= 0 {
		state = "attack";
		state_timer = room_speed * 2;
	}
	else {
		state_timer--;
	}
}
else if (state == "attack" && attack_type == "none") {
	scr_sk_choose_attack();
}
else if (attack_type == "roll") {
	scr_sk_shield_coll();
	if (roll_amount > 0) {
		if instance_exists(obj_player) {
			if obj_player.move_manip = false {
				if place_meeting(x+hsp,y,obj_player) {
					roll_amount--;
					scr_player_hurt(.25);
					obj_player.move_manip = true;
					obj_player.hsp = (hsp * 2);
					obj_player.vsp = -5;
					scr_sk_switch_dir();
				}
				else if place_meeting(x,y+vsp,obj_player) {
					roll_amount--;
					scr_player_hurt(.25);
					obj_player.move_manip = true;
					obj_player.hsp = (hsp * 2);
					obj_player.vsp = -5;
					scr_sk_switch_dir();
				}
			}
		}
	}
	else {
		attack_type = "none";
		state = "move"
		roll_amount = 2;
	}
}
else if (attack_type == "fire") {
	if (fire_amount > 0) {
		if (image_index == 3) {
			sk_bul = instance_create_depth(x,y,global.depth_2,obj_snail_king_bul);
			sk_bul.dir = dir;
			fire_amount--;
		}
	}
	else {
		attack_type = "none";
		state = "move"
		fire_amount = 5;
	}
}

//Getting unstuck
var i = 0;
while place_meeting(x,y,obj_solid_move) || place_meeting(x,y,obj_solid) {
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
	else if !place_meeting(x+i,y+i,obj_solid_move) 
	&& !place_meeting(x+i,y+i,obj_solid) {
		x = x+i;
	}
	else if !place_meeting(x+i,y-i,obj_solid_move) 
	&& !place_meeting(x+i,y-i,obj_solid) {
		x = x+i;
	}
	else if !place_meeting(x-i,y-i,obj_solid_move) 
	&& !place_meeting(x-i,y-i,obj_solid) {
		x = x+i;
	}
	else if !place_meeting(x-i,y+i,obj_solid_move) 
	&& !place_meeting(x-i,y+i,obj_solid) {
		x = x+i;
	}
	i++;
}