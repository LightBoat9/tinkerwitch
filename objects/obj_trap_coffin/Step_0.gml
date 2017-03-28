//Change Direction
if dir = 0 {
	hsp = movespeed;
}
else if dir = 1 {
	hsp = -movespeed;
}

//Gravity
vsp += grav;

/* Collisions */

//Horizontal Movement
hsp_free = place_meeting(x+hsp,y,obj_solid) + place_meeting(x+hsp,y,obj_player);
hsp_free_precise = !place_meeting(x+sign(hsp),y,obj_solid) + !place_meeting(x+sign(hsp),y,obj_player);
player_hit = place_meeting(x+hsp,y,obj_player);

now_hsp = hsp;

if hsp_free > 0 {
	while hsp_free_precise = 2 {
		hsp_free_precise = !place_meeting(x+sign(hsp),y,obj_solid) + !place_meeting(x+sign(hsp),y,obj_player);
		x += sign(hsp);
	}
	//Bounce off wall and add gravity
	hsp = 0;
	grav = 1;
	movespeed = 3;
	//Switch Direction #only when not on the ground
	if hit_obj = false {
		switch (dir) {
			case 0:
				dir = 1;
				hit_obj = true;
				break;
			case 1:
				dir = 0;
				hit_obj = true;
				break;
		}
	}
	//Hit Player
	if !player_hit_bool {
		if player_hit {
			scr_player_hurt(.25);
			obj_player.move_manip = true;
			obj_player.hsp = now_hsp;
			player_hit_bool = true;
		}
	}
}

x += hsp;

//Vertical Movement
vsp_free = place_meeting(x,y+vsp,obj_solid) + place_meeting(x,y+vsp,obj_player);
vsp_free_precise = !place_meeting(x,y+sign(vsp),obj_solid) + !place_meeting(x,y+sign(vsp),obj_player);

if vsp_free > 0 {
	while vsp_free_precise = 2 {
		vsp_free_precise = !place_meeting(x,y+sign(vsp),obj_solid) + !place_meeting(x,y+sign(vsp),obj_player);
		y += sign(vsp);
	}
	vsp = 0;
}

y += vsp;

// Bounce off of shield
if instance_exists(obj_bot) {
	if obj_bot.skill = 3 {
		if place_meeting(x+hsp,y,obj_bot) {
			while !place_meeting(x+sign(hsp),y,obj_bot) {
				x += sign(hsp);
			}
			//Damage Shield
			obj_player.shield_health -= 1;
			
			//Bounce off and add gravity
			hsp = 0;
			grav = 1;
			movespeed = 3;
			player_hit_bool = true;
			
			//Switch direction
			if hit_obj = false {
				switch (dir) {
					case 0:
						dir = 1;
						hit_obj = true;
						break;
					case 1:
						dir = 0;
						hit_obj = true;
						break;
				}
			}
		}
		else if place_meeting(x,y+vsp,obj_bot) {
			while !place_meeting(x,y+sign(vsp),obj_bot) {
				y += sign(vsp);
			}
			//Damage Shield
			obj_player.shield_health -= 1;
			
			//Bounce off and add gravity
			hsp = 0;
			grav = 1;
			movespeed = 3;
			
			player_hit_bool = true;
			
			//Switch direction
			if hit_obj = false {
				switch (dir) {
					case 0:
						dir = 1;
						hit_obj = true;
						break;
					case 1:
						dir = 0;
						hit_obj = true;
						break;
				}
			}
		}
	}
}

