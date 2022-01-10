function gl_map_world2grid(argument0, argument1) {
	/**
	    Converts a world point to a grid point using the given map.
    
	    @param map The map to use for the conversion.
	    @param world_point The world point (as vector) to convert.
    
	    @returns The grid point as vector.    
	    @since 1.1
	*/
	var map = argument0;
	var world_point = argument1;

	switch(map[? "type"])
	{
	    case global.gl_gridtype_rect: return gl_rect_world2grid(map, world_point);
	    case global.gl_gridtype_diamond: return gl_diamond_world2grid(map, world_point);
	    case global.gl_gridtype_pointyhex: return gl_pointyhex_world2grid(map, world_point);
	    case global.gl_gridtype_flathex: return gl_flathex_world2grid(map, world_point);
	}


}
