function gl_map_magnitude(argument0, argument1) {
	/**
	    Gives the world magnitude of a grid vector.
    
	    param map The map to use for the calculation.
	    @grid_point The grid point.
    
	    @returns The world magnitude of the point.
    
	    @since 1.1
	*/
	var map = argument0;
	var grid_point = argument1;

	var world_point = gl_map_grid2world(map, grid_point);

	return gl_vector_magnitude(world_point);


}
