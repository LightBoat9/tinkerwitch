//Fire the ball
if fired = false {
	image_index = 0;
	
	//Timer to fire
	if fire_timer <= 0 {
		instance_create_depth(x+16,y+32,depth + 1,obj_cannon_ball);
		fired = true;
		fire_timer = room_speed / 4;
	}
	else {
		fire_timer--;
	}
}

//After Fired
if fired = true {
	if scr_animate_until(image_number-1) {
		fired = false;
	}
}