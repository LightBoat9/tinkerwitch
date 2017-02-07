//Change tilemap based on state of metal
if has_metal = false {
	var lay_id = layer_get_id("Tiles_CastleTop");
	var map_id = layer_tilemap_get_id(lay_id);
	var mx = tilemap_get_cell_x_at_pixel(map_id, x, y);
	var my = tilemap_get_cell_y_at_pixel(map_id, x, y);
	var data = tilemap_get(map_id, mx, my);
	var ind = tile_get_index(data);
	data = tile_set_index(data, 14);
	tilemap_set(map_id,data,mx,my);
}