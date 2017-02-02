//Move Direction Based On Part

/* 
 * 1 = Top Right
 * 2 = Top Left
 * 3 = Bot Left
 * 4 = Bot Right
*/

if part = 1 {
	x += movespeed;
	y -= movespeed;
}
else if part = 2 {
	x -= movespeed;
	y -= movespeed;
}
else if part = 3 {
	x -= movespeed;
	y += movespeed;
}
else if part = 4 {
	x += movespeed;
	y += movespeed;
}

//Becomes transparent
if image_alpha > 0 {
	image_alpha -= .15;
} else {
	instance_destroy();
}