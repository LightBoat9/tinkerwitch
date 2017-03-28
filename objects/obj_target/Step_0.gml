if (state = "dest") {
	if (instance_exists(obj_player_emp_proj)) {
		if place_meeting(x,y,obj_player_emp_proj) {
			emp = instance_nearest(x,y,obj_player_emp_proj);
			emp.destroy = true;
			destroy = true;
		}
	}
}
else if (state = "des3") {
	if (instance_exists(obj_player_emp_proj)) {
		if place_meeting(x,y,obj_player_emp_proj) {
			emp = instance_nearest(x,y,obj_player_emp_proj);
			emp.destroy = true;
			temp_des = true;
			obj_target.amount--;
		}
	}
	if (amount <= 0) {
		obj_target.destroy = true;
	}
}

if temp_des {
	if temp_timer <= 0 {
		obj_target.amount++;
		temp_des = false;
		temp_timer = room_speed * 1.5;
	}
	else {
		temp_timer--;
	}
}

if destroy = true {
	instance_destroy();
}


if (!temp_des) {
	visible = true;
}
else {
	visible = false;
}