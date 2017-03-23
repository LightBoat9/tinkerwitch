if destroy = true {
	//Set tilemap to nothing
	var lay_id = layer_get_id("solid_tiles");
	var map_id = layer_tilemap_get_id(lay_id);
	var mx = tilemap_get_cell_x_at_pixel(map_id, x, y);
	var my = tilemap_get_cell_y_at_pixel(map_id, x, y);
	var data = tilemap_get(map_id, mx, my);
	var ind = tile_get_index(data);
	data = tile_set_index(data, 0);
	tilemap_set(map_id,data,mx,my);
	//Destroy
	instance_destroy();
}

//Start making metal
if global.metal + 1 <= 24 { //Check and make sure it wont overflow
	if cur_tile = til_castle {
		if instance_exists(obj_wrench) {
			if obj_wrench.returnTimer = 1 {
				if has_metal = true {
					if place_meeting(x+1,y,obj_wrench) {
						has_metal = false;
						make_metal = true;
					}
					else if place_meeting(x-1,y,obj_wrench) {
						has_metal = false;
						make_metal = true;
					}
					else if place_meeting(x,y+1,obj_wrench) {
						has_metal = false;
						make_metal = true;
					}
					else if place_meeting(x,y-1,obj_wrench) {
						has_metal = false;
						make_metal = true;
					}
				}
			}
		}
	}
}

//Create metal object based on metal value
if make_metal = true {
	inst_metal = instance_create_depth(obj_wrench.x,obj_wrench.y,global.depth_1,obj_metal);
	inst_metal.metal_val = metal_val;
	make_metal = false;
}