//Destroy Event
if destroy = true {
	//Particle Effect
	if global.particles {
		repeat(3) {
			instance_create_depth(x,y,global.depth_1,obj_bot_part);
		}
	}
	scr_bot_dest(bot_open);
	audio_play_sound(snd_metal_impact,0,false);
	instance_destroy();
}
//Float around the player
if skill = 1 {
	scr_bot_float(bot_id);
}

//Move to obj_player and destroy to create a missile
else if skill = 2 {
	var dir = point_direction(x,y,obj_player.x,obj_player.y);
	motion_set(dir,5);
}

//Position in shield
else if skill = 3 {
	scr_shield_up();
}