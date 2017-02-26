draw_self();
draw_speed = movespeed/5;
/* Horizontal Movement */
var dir = global.key_left - global.key_right;
var mouseDir = scr_mouse_dir();
if !mana_charge {
	if empAttack = false {
		//With wrench
		if global.item_wrench = true {
			if dir != 0 {
				if dir = -1 {
					image_speed = draw_speed;
					sprite_index = spr_player;
					image_xscale = 1;
				}
				else if dir = 1 {
					image_speed = draw_speed;
					sprite_index = spr_player;
					image_xscale = -1;
				}
			}
			else if dir = 0 {
				image_speed = draw_speed;
				sprite_index = spr_player;
				image_index = 0;
			}
		}
		//Without Wrench
		if global.item_wrench = false {
			if dir != 0 {
				if dir = -1 {
					image_speed = draw_speed;
					sprite_index = spr_player_nowrench;
					image_xscale = 1;
				}
				else if dir = 1 {
					image_speed = draw_speed;
					sprite_index = spr_player_nowrench;
					image_xscale = -1;
				}
			}
			else if dir = 0 {
				image_speed = draw_speed;
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
				if scr_animate_until(2) {
					scr_reset_dmgBox();
				}
				if scr_animate_until(3) {
					empBoxInst = instance_create_depth(x,y,global.depth_1,obj_player_emp_proj);
					empAttack = false;
				}
			}
		}
	} else {
		empAttack = false;
	}
}
else { //Draw mana charging animation
	image_speed = .75;
	sprite_index = spr_player_mana_charge;
	if dir = -1 {
		image_xscale = 1;
	}
	else if dir = 1 {
		image_xscale = -1;
	}
}

//Destroy bots if shield breaks
if shield_health <= 0 {
	if instance_exists(obj_bot) {
		obj_bot.destroy = true;
		shield_health = 1;
	}
}
//Draw Shield Bar
if shield_health < shield_health_max && shield_health != 0 {
	draw_sprite(spr_bar_top,-1,x-16,y-48);
	draw_sprite_ext(spr_shield_bar_bot,-1,x-16,y-48,shield_health/shield_health_max,1,0,c_white,1);
}