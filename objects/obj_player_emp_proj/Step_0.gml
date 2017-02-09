//Destroy Event
if destroy = true {
	instance_create_depth(x,y,global.depth_1,obj_player_emp_explosion);
	instance_destroy();
}

if destTimer <= 0 {
	instance_destroy();
	instance_create_depth(x+end_hsp,y+end_vsp,global.depth_1,obj_player_emp_explosion);
} 
else {
	destTimer--;
}

//Create engine particles
if global.particles = true {
	repeat(5) {
		//instance_create_depth(x,y,global.depth_1,obj_item_missile_fly_part);
	}
}

if place_meeting(x+hsp,y,obj_solid) {
	while !place_meeting(x+sign(hsp),y,obj_solid) {
		x += sign(hsp);
	}
	end_hsp = hsp;
	hsp = 0;
	dest_solid = true;
}

x += hsp;

if place_meeting(x,y+vsp,obj_solid) {
	while !place_meeting(x,y+sign(vsp),obj_solid) {
		y += sign(vsp);
	}
	end_vsp = vsp;
	vsp = 0;
	dest_solid = true;
}

y += vsp;

if dest_solid {
	instance_create_depth(x+end_hsp,y+end_vsp,global.depth_1,obj_player_emp_explosion);
	instance_destroy();
}