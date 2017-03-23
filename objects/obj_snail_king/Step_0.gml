//Death Event
if destroy = true || enemy_health <= 0 {
	obj_solid_dest.destroy = true;
	layer_set_visible("Tiles_CastleMid",false);
	instance_destroy();
}

//Pause for 5 Seconds
if !(pause_timer <= 0) {
	pause_timer--;
}
else {
	//Switch Direction at walls
	if place_meeting(x+hsp,y,obj_solid) {
		scr_sk_switch_dir();
	}

	//Set speed based on direction
	switch(dir) {
		case 0:
			hsp = 7;
			break;
		case 1:
			hsp = -7;
			break;
	}
}

//Gravity
vsp += grav;

//Collision Testing
if place_meeting(x+hsp,y,obj_solid) {
	while !place_meeting(x+sign(hsp),y,obj_solid) {
		x += sign(hsp);
	}
	hsp = 0;
}

x += hsp;

if place_meeting(x,y+vsp, obj_solid) {
	while !place_meeting(x,y+sign(vsp),obj_solid) {
		y += sign(vsp);
	}
	vsp = 0;
}

y += vsp;

//Add dmgBox for next damage
if createDmgBox = true {
	if !instance_exists(inst_dmgBox) {
		inst_dmgBox = instance_create_depth(x,y,global.depth_2,obj_snail_king_dmgBox)
	}
	createDmgBox = false;
}