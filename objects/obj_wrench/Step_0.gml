/*
	@desc when the player throws the wrench it will return after a certain distance
	or stick in a wall then return
	@returnTimer the time the wrench stays in the wall
	@distance the distance from the original player position that the wrench will fly
*/

//Horizontal Movement / Collisions
if collided = false {
	if place_meeting(x+hsp, y, obj_solid) {
		while !place_meeting(x+sign(hsp),y,obj_solid) {
			x += sign(hsp);
		}
		hsp = 0;
		vsp = 0;
		collided = true;
		audio_play_sound_at(snd_impact_dirt,x,y,0,100,300,1,false,0);
	}
}

x += hsp;

//Vertical Movement / Collisions
if collided = false {
	if place_meeting(x, y+vsp, obj_solid) {
		while !place_meeting(x, y+sign(vsp), obj_solid) {
			y += sign(vsp);
		}
		hsp = 0;
		vsp = 0;
		collided = true;
		audio_play_sound_at(snd_impact_dirt,x,y,0,100,300,1,false,0);
	}
}

y += vsp;

//After Collided with wall
if collided = true { 
	if returnTimer <= 0 {
		scr_move_to(obj_player.x,obj_player.y,spd);
		var dir = point_direction(x,y,obj_player.x,obj_player.y);
		image_angle = dir;
		if place_meeting(x,y,obj_player) {
			global.item_wrench = true;
			instance_destroy();			
		}
	} else {
		returnTimer--;
	}
} else {
	//While no Collision
	if distance <= 0 {
		scr_move_to(obj_player.x,obj_player.y,spd);
		var dir = point_direction(x,y,obj_player.x,obj_player.y);
		image_angle = dir;
		if place_meeting(x,y,obj_player) {
			global.item_wrench = true;
			instance_destroy();			
		}
	}
	else {
		distance--;
	}
}