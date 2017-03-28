//Check for trigger
if (!wait) {
	if place_meeting(x,y,obj_player) {
		trap_start = true;
		//Play a click sound
		if sound {
			audio_play_sound(snd_pressureplate,0,false);
			sound = false;
		}
	}
}
else if (!place_meeting(x,y,obj_player)) {
	wait = false;
}

//After trap is triggered
if state = "once" {
	if trap_start = true {
		if delay <= 0 {
			if !instance_exists(cof_inst) {
				cof_inst = instance_create_depth(cof_x,cof_y,global.depth_1,obj_trap_coffin);
				cof_inst.dir = cof_dir;
			}
			instance_destroy();
			} 
		else {
			delay--;
		}
	}
}
else if state = "mult" {
	if trap_start = true {
		if delay <= 0 {
			if !instance_exists(cof_inst) {
				cof_inst = instance_create_depth(cof_x,cof_y,global.depth_1,obj_trap_coffin);
				cof_inst.dir = cof_dir;
			}
			trap_start = false;
			wait = true;
			delay = room_speed;
			sound = true;
			} 
		else {
			delay--;
		}
	}
}