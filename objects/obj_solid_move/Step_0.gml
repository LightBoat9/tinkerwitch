if destroy {
	instance_destroy();
}

//Testing
if global.testing = true {
	visible = true;
}
else {
	visible = false;
}