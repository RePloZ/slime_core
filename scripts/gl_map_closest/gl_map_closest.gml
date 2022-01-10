function gl_map_closest(argument0, argument1) {
	/**
	    Returns the world point of the grid point closest to the given 
	    world point. Useful for snapping objects to the grid.
    
	    @param map The map to use.
	    @param world_point The world point (as vector) to check.
    
	    @returns The world point of the grid point that contains 
	    the given world point.
    
	    @since 1.1
	*/
	var map = argument0;
	var world_point = argument1;

	var grid_point = gl_map_world2grid(map, world_point);
	return gl_map_grid2world(map, grid_point);


}
