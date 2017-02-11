//GUI
display_set_gui_size(view_width,view_height);
draw_sprite(spr_item_bar,-1,view_width/2,view_height);

/* Healthbar */
if (obj_player.player_health > 0) {
	draw_sprite_ext(spr_healthbar_bot,-1,16,16,obj_player.player_health,1,0,c_white,1);
	draw_sprite(spr_healthbar_top,-1,16,16);
}

/* Metal Bar */
metalAmount = global.metal/24;
draw_sprite_ext(spr_metalbar_bot,-1,16,view_height-64,metalAmount,1,0,c_white,1);
draw_sprite(spr_medbar_top,-1,16,view_height-64);

/* Mana Bar */
manaAmount = global.mana/24;
draw_sprite_ext(spr_manabar_bot,-1,16,view_height-32,manaAmount,1,0,c_white,1);
draw_sprite(spr_medbar_top,-1,16,view_height-32);

