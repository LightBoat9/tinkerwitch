vsp += grav;

//Collision With Walls
if place_meeting(x+hsp,y,obj_solid) {
	while !place_meeting(x+sign(hsp),y,obj_solid) {
		x += sign(hsp);
	}
	destroy = true;
}

x += hsp;

if place_meeting(x,y+vsp,obj_solid) {
	while !place_meeting(x,y+sign(vsp),obj_solid) {
		y += sign(vsp);
	}
	destroy = true;
}

y += vsp;

//Collision With Player
if place_meeting(x+hsp,y,obj_player) {
	while !place_meeting(x+sign(hsp),y,obj_player) {
		x += sign(hsp);
	}
	obj_player.player_health -= .1;
	destroy = true;
}
else if place_meeting(x,y+vsp,obj_player) {
	while !place_meeting(x,y+sign(vsp),obj_player) {
		y += sign(vsp);
	}
	obj_player.player_health -= .1;
	destroy = true;
}

//Collision With Shield
if instance_exists(obj_bot) {
	if obj_bot.skill = 3 {
		if place_meeting(x+hsp,y,obj_bot) {
			while !place_meeting(x+sign(hsp),y,obj_bot) {
				x += sign(hsp);
			}
			//Destroy Event
			destroy = true;
			//Damage Shield
			obj_player.shield_health -= .25;
		}
		else if place_meeting(x,y+vsp,obj_bot) {
			while !place_meeting(x,y+sign(vsp),obj_bot) {
				y += sign(vsp);
			}
			//Destroy Event
			destroy = true;
			//Damage Shield
			obj_player.shield_health -= .25;
		}
	}
}

//Destroy Timer
if dest_timer <= 0 {
	destroy = true;
}
else {
	dest_timer--;
}

//Destroy Event
if destroy = true {
	//Particles
	if global.particles {
		repeat(5) { instance_create_depth(x+hsp,y+vsp,global.depth_2,obj_ground_slug_attack_part); }
	}
	//Destroy
	instance_destroy();
}