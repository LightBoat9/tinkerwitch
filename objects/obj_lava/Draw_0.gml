draw_self();
image_speed = .5;

//Draw "bottom" lava
if place_meeting(x,y-1,obj_lava) {
	sprite_index = spr_lava_bot;
}