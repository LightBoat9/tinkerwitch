if instance_exists(obj_bot) {
	if obj_bot.skill = 3 {
		if place_meeting(x+hsp,y,obj_bot) {
			while !place_meeting(x+sign(hsp),y,obj_bot) {
				x += sign(hsp);
			}
			obj_player.shield_health -= .1;
			instance_destroy();
		}
		else if place_meeting(x,y+vsp,obj_bot) {
			while !place_meeting(x,y+sign(vsp),obj_bot) {
				y += sign(vsp);
			}
			//Damage Shield
			obj_player.shield_health -= .1;
			instance_destroy();
		}
	}
}