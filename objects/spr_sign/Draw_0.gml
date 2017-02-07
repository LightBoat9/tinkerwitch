draw_self();
image_index = -1;
//Player Collision
if place_meeting(x,y,obj_player) {
	if draw_y >= 40 {
		draw_sprite_ext(sprite,0,x,y-draw_y,1,1,0,c_white,alpha);
	} 
	else {
		draw_sprite_ext(sprite,0,x,y-draw_y,1,1,0,c_white,alpha);
		draw_y += 2;
		if alpha < 1 {
			alpha += .05;
		}
	}
	sprite_index = spr_sign_normal;
}
else {
	draw_y = 0;
	alpha = 0;
}