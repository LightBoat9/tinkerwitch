draw_self();

//Slowly go transparent until invisible then destroy
if image_alpha > 0 {
	image_alpha -= 0.05;
} else {
	instance_destroy();
}