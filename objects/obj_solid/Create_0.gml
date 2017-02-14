has_metal = true; //Whether it has metal or not
make_metal = false; //When to make metal

/* Tilemap */
//Get the index of the current tile
var lay_id = layer_get_id("Tiles_CastleTop");
var map_id = layer_tilemap_get_id(lay_id);
var mx = tilemap_get_cell_x_at_pixel(map_id, x, y);
var my = tilemap_get_cell_y_at_pixel(map_id, x, y);
var data = tilemap_get(map_id, mx, my);
ind = tile_get_index(data); //Index of current tile

//Set the metal value based on the tile
metal_val = scr_get_tile_metal();

met_lay_exists = layer_tilemap_exists("Tiles_CastleTop",til_castle);