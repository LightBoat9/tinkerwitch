draw_self();

//TEMPORARY HEALTH BAR
if (player_health > 0) {
	draw_sprite(spr_health_bar_top,-1,x-16,y-48);
	draw_sprite_ext(spr_health_bar_bot,-1,x-16,y-48,player_health,1,0,c_white,1);
}

/* Horizontal Movement */
var dir = global.key_left - global.key_right;
var mouseDir = scr_mouse_dir();
if empAttack = false {
	//With wrench
	if global.item_wrench = true {
		if dir != 0 {
			if dir = -1 {
				image_speed = 1;
				sprite_index = spr_player;
				image_xscale = 1;
			}
			else if dir = 1 {
				image_speed = 1;
				sprite_index = spr_player;
				image_xscale = -1;
			}
		}
		else if dir = 0 {
			image_speed = 1;
			sprite_index = spr_player;
			image_index = 0;
		}
	}
	//Without Wrench
	if global.item_wrench = false {
		if dir != 0 {
			if dir = -1 {
				image_speed = 1;
				sprite_index = spr_player_nowrench;
				image_xscale = 1;
			}
			else if dir = 1 {
				image_speed = 1;
				sprite_index = spr_player_nowrench;
				image_xscale = -1;
			}
		}
		else if dir = 0 {
			image_speed = 1;
			sprite_index = spr_player_nowrench;
			image_index = 0;
		}
	}
}
if empAttack = true {
	//Attack Animation
	if global.item_wrench = true {
		if mouseDir = 1 {
			image_speed = 0.3;
			sprite_index = spr_player_emp;
			image_xscale = 1;
		}
		else if mouseDir = -1 {
			image_speed = 0.3;
			sprite_index = spr_player_emp;
			image_xscale = -1;
		}
		
		//Create Hitbox
		if empAttack = true {
			if scr_animate_until(3) {
				empBoxInst = instance_create_depth(x,y,global.depth_1,obj_player_emp_proj);
				empAttack = false;
				scr_reset_dmgBox();
			}
		}
	}
} else {
	empAttack = false;
}