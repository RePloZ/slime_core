function gl_map_distance(argument0, argument1, argument2) {
	/**
	    Gives the world distance between two grid points.
    
	    @param map The map to use for the calculation.
	    @grid_point1 The one grid point.
	    @grid_point1 The other grid point.
    
	    @returns The world distance between the two points.
    
	    @since 1.1
	*/
	var map = argument0;
	var grid_point1 = argument1;
	var grid_point2 = argument2;

	var world_point1 = gl_map_grid2world(map, grid_point1);
	var world_point2 = gl_map_grid2world(map, grid_point2);
	var offset  = gl_vector_sub(world_point1, world_point2);

	return gl_vector_magnitude(offset);


}
