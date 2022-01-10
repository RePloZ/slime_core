function gl_map_grid2world(argument0, argument1) {
	/**
	    Converts a grid point to a world point using the given map.
    
	    @param map The map to use for the conversion.
	    @param grid_point The grid point (as vector) to convert.
    
	    @returns The world point as vector. 
	    @since 1.1  
	*/
	var map = argument0;
	var grid_point = argument1;

	switch(map[? "type"])
	{
	    case global.gl_gridtype_rect: return gl_rect_grid2world(map, grid_point);
	    case global.gl_gridtype_diamond: return gl_diamond_grid2world(map, grid_point);
	    case global.gl_gridtype_pointyhex: return gl_pointyhex_grid2world(map, grid_point);
	    case global.gl_gridtype_flathex: return gl_flathex_grid2world(map, grid_point);
	}


}
