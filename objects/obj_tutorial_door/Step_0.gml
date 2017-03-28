if destroy {
	sol1.destroy = true;
	sol2.destroy = true;
	instance_destroy();
}

if state = "door1" {
	if instance_number(obj_bot) == 8 {
		destroy = true;
	}
}
else if (state = "door2") {
	if instance_exists(obj_checkpoint) {
		destroy = true;
	}
}
else if (state = "tar1") {
	if instance_number(obj_target) != tar_number {
		destroy = true;
	}
}
else if (state = "tar2") {
	if instance_number(obj_target) = 0 {
		destroy = true;
	}
}
else if (state = "tar3") {
	if instance_number(obj_target) < tar_number-1 {
		destroy = true;
	}
}
else if (state = "tor") {
	if (obj_candle.lit = true) {
		destroy = true;
	}
}