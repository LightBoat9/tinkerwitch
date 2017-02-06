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
	if !place_meeting(x,y+1,obj_solid) {
		switch (dir) {
			case 0:
				dir = 1;
				break;
			case 1:
				dir = 0;
				break;
		}
	}
	//Hit Player
	if player_hit {
		obj_player.player_health -= .25;
		obj_player.move_manip = true;
		obj_player.hsp = now_hsp;
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

