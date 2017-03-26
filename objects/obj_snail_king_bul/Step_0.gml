
if place_meeting(x+hsp,y,obj_player) {
	while (!place_meeting(x+sign(hsp),y,obj_player)) {
		x += sign(hsp);
	}
	scr_player_hurt(.1);
	hsp = 0;
	instance_destroy();
}

x += hsp;

if place_meeting(x,y+vsp,obj_player) {
	while (!place_meeting(x,y+sign(vsp),obj_player)) {
		y += sign(vsp);
	}
	scr_player_hurt(.1);
	vsp = 0;
	instance_destroy();
}

y += vsp;

scr_sk_bul_shield_coll();