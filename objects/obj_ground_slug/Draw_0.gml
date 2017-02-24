draw_self();

//Draw Healthbar
if !(enemy_health <= 0) {
	draw_sprite(spr_bar_top,-1,x-16,y-24);
	draw_sprite_ext(spr_health_bar_bot,-1,x-16,y-24,enemy_health,1,0,c_white,1);
}

if appear {
	if scr_animate_until(4) {
		appear = false;
		attacking = true;
	} else {
		image_speed = .1;
		sprite_index = spr_ground_slug_appear;
		//Particle Effects
		if global.particles {
			if image_index % 1 = 0 {
				repeat(5) {
					instance_create_depth(x,y+12,global.depth_3,obj_ground_slug_part);
				}
			}
		}
	}
}


//When attacking
if attacking {
	if attack_timer > 0 {
		image_speed = 1;
		sprite_index = spr_ground_slug;
	}
	else {
		image_speed = 1;
		sprite_index = spr_ground_slug_attack;
	}
}

//Direction
if dir = 0 {
	image_xscale = 1;
}
if dir = 1 {
	image_xscale = -1;
}
