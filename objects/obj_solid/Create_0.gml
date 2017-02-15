has_metal = true; //Whether it has metal or not
make_metal = false; //When to make metal

/* Tilemap */
//Get whether there is a til_metal layer

//Get the index of the current tile
now_lay_id = layer_get_id("solid_tiles");
now_map_id = layer_tilemap_get_id(now_lay_id);
now_x = tilemap_get_cell_x_at_pixel(now_map_id, x, y);
now_y = tilemap_get_cell_y_at_pixel(now_map_id, x, y);
tm = tilemap_get(now_map_id, now_x, now_y);
ind = tile_get_index(tm); //Index of current tile

//Set the metal value based on the tile index
metal_val = scr_get_tile_metal();

//Current Tile
til_id = layer_tilemap_get_id("solid_tiles")
cur_tile = tilemap_get_tileset(til_id);

