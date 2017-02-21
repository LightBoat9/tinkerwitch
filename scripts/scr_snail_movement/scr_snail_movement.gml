/// @description scr_snail_movement();

//Gravity
vsp += grav;

if place_meeting(x+hsp,y,obj_solid) {
	while !place_meeting(x+sign(hsp),y,obj_solid) {
		x += sign(hsp);
	}
	hsp = 0;
}

x += hsp;

if place_meeting(x,y+vsp,obj_solid) {
	while !place_meeting(x,y+sign(vsp),obj_solid) {
		y += sign(vsp);
	}
	vsp = 0;
}

y += vsp;

if instance_exists(obj_bot) {
	if obj_bot.skill = 3 {
		if place_meeting(x+hsp,y,obj_bot) {
			while !place_meeting(x+sign(hsp),y,obj_bot) {
				x += sign(hsp);
			}
			//Switch Direction
			scr_snail_dir_switch();
			
			//Stop
			hsp = 0;
			
			if stunned = false { //Stops multiple damages from happening
				//Damage Shield
				obj_player.shield_health -= .25;
			}
		}
		else if place_meeting(x,y+vsp,obj_bot) {
			while !place_meeting(x,y+sign(vsp),obj_bot) {
				y += sign(vsp);
			}
			//Switch Direction
			scr_snail_dir_switch();
			
			//Stop
			hsp = 0;
			
			if stunned = false { //Stops multiple damages from happening
				//Damage Shield
				obj_player.shield_health -= .25;
			}
		}
	}
}