//Movement
//Hit Ground
if place_meeting(x,y+vsp,obj_solid) {
	while !place_meeting(x,y+sign(vsp),obj_solid) {
		y += sign(vsp);
	}
	vsp = 0;
	destroy = true;
}
//Hit Player
if place_meeting(x,y+vsp,obj_player) {
	while !place_meeting(x,y+sign(vsp),obj_player) {
		y += sign(vsp);
	}
	obj_player.player_health -= 1/10;
	vsp = 0;
	destroy = true;
}
//Hit Shield
// Bounce off of shield
if instance_exists(obj_bot) {
	if obj_bot.skill = 3 {
		if place_meeting(x,y+vsp,obj_bot) {
			while !place_meeting(x,y+sign(vsp),obj_bot) {
				y += sign(vsp);
			}
			//Damage Shield
			obj_player.shield_health -= 1/8;
			destroy = true;
		}
	}
}


y += vsp;

//Destroy Event
if destroy {
	//Particles
	if global.particles {
		repeat(5) {
			instance_create_depth(x,y,depth, obj_cannon_part);
		}
	}
	//Effect
	instance_destroy();
}