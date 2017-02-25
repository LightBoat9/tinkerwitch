//GUI
display_set_gui_size(view_width,view_height);

/* Testing */
//draw_text(view_width/2,view_height/2,obj_solid.til_id);

/* Healthbar */
if instance_exists(obj_player) {
	if (obj_player.player_health > 0) {
		draw_sprite_ext(spr_healthbar_bot,-1,16,16,obj_player.player_health,1,0,c_white,1);
		draw_sprite(spr_healthbar_top,-1,16,16);
	}
}

/* Metal Bar */
metalAmount = global.metal/24;
draw_sprite_ext(spr_metalbar_bot,-1,16,view_height-64,metalAmount,1,0,c_white,1);
draw_sprite(spr_medbar_top,-1,16,view_height-64);

/* Mana Bar */
manaAmount = global.mana/24;
draw_sprite_ext(spr_manabar_bot,-1,16,view_height-32,manaAmount,1,0,c_white,1);
draw_sprite(spr_medbar_top,-1,16,view_height-32);

/* Charge Bar */
draw_sprite(spr_charge,-1,view_width-144,16);
draw_sprite(spr_charge_num,floor(global.charge/1000),view_width-144,16);
draw_sprite(spr_charge_num,floor(global.charge/100),view_width-111,16);
draw_sprite(spr_charge_num,floor(global.charge/10),view_width-78,16);
draw_sprite(spr_charge_num,global.charge%10,view_width-45,16);


/* Item Bar */
draw_sprite(spr_item_bar,global.item_bar,view_width/2,view_height);

//Font Style
draw_set_font(fnt_sign);
draw_set_valign(fa_bottom);
draw_set_halign(fa_middle);
draw_set_color(c_white);

/* Item Icons */
if global.item_one_obj != 0 {
	//Scroll
	draw_sprite(scr_gui_item_sprite(global.item_one_obj),-1,(view_width/2-152),(view_height-56));
}
if global.item_two_obj != 0 {
	//Scroll
	draw_sprite(scr_gui_item_sprite(global.item_two_obj),-1,(view_width/2-88),(view_height-56));
}
if global.item_three_obj != 0 {
	//Scroll
	draw_sprite(scr_gui_item_sprite(global.item_two_obj),-1,(view_width/2-24),(view_height-56));
}
if global.item_four_obj != 0 {
	//Scroll
	draw_sprite(scr_gui_item_sprite(global.item_two_obj),-1,(view_width/2+40),(view_height-56));
}
if global.item_five_obj != 0 {
	//Scroll
	draw_sprite(scr_gui_item_sprite(global.item_two_obj),-1,(view_width/2+104),(view_height-56));
}

//Object Name Text
if global.item_name_timer > 0 {
	draw_set_alpha(global.item_name_alpha);
	if global.item_bar = 0 {
		draw_text(view_width/2,view_height-64,scr_gui_item_name(global.item_one_obj));
	}
	else if global.item_bar = 1 {
		draw_text(view_width/2,view_height-64,scr_gui_item_name(global.item_two_obj));
	}
	else if global.item_bar = 2 {
		draw_text(view_width/2,view_height-64,scr_gui_item_name(global.item_three_obj));
	}
	else if global.item_bar = 3 {
		draw_text(view_width/2,view_height-64,scr_gui_item_name(global.item_four_obj));
	}
	else if global.item_bar = 4 {
		draw_text(view_width/2,view_height-64,scr_gui_item_name(global.item_five_obj));
	}
	//Slowly go transparent
	if global.item_name_timer <= room_speed {
		global.item_name_alpha -= 1/room_speed;
	}
	global.item_name_timer--;
}
draw_set_alpha(1);//Reset Alpha