draw_self();

draw_text(x,y-100,room_get_viewport(rm_level_1_1,0));

/* Horizontal Movement */
var dir = global.key_left - global.key_right;
var mouseDir = scr_mouse_dir();
if meleeAttack = false {
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
if meleeAttack = true {
	//Attack Animation
	if global.item_wrench = true {
		if mouseDir = 1 {
			image_speed = 0.3;
			sprite_index = spr_player_slash;
			image_xscale = 1;
		}
		else if mouseDir = -1 {
			image_speed = 0.3;
			sprite_index = spr_player_slash;
			image_xscale = -1;
		}
		
		//End Animation / Attack
		if scr_animate_until(3) {
			image_index = endFrame;		
			if meleeHoldTimer <= 0 {
				meleeAttack = false;
				meleeHoldTimer = room_speed / 4;
				//Reset Damage Boxes
				scr_reset_dmgBox();
			} else {
				meleeHoldTimer--;
			}
		}
		
		//Create Hitbox
		if meleeAttack = true {
			if !instance_exists(obj_player_slash_hitbox) {
				if scr_animate_until(3) {
					slashBoxInst = instance_create_depth(x,y,global.depth_1,obj_player_slash_hitbox);
				}
			}
		} else {
			if instance_exists(obj_player_slash_hitbox) {
				slashBoxInst.destroy = true;
			}
		}
	} else {
		meleeAttack = false;
	}
}