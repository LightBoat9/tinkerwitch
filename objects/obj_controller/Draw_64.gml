//GUI
display_set_gui_size(view_width,view_height);
draw_sprite(spr_item_bar,-1,view_width/2,view_height);

if (obj_player.player_health > 0) {
	draw_sprite_ext(spr_healthbar_bot,-1,16,16,obj_player.player_health,1,0,c_white,1);
	draw_sprite(spr_healthbar_top,-1,16,16);
}