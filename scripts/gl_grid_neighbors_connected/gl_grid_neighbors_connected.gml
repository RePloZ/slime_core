function gl_grid_neighbors_connected(argument0, argument1, argument2) {
	/**
	    Tests whether two points are connected, 
	    that is, have the same connection index.
    
	    It is assumed the two points are neighbors.
    
	    @param grid
	    @param point1
	    @param point2
    
	    @returns true if the two points are connected, false otherwise.
    
	    @since 1.0
	*/
	var grid = argument0;
	var point1 = argument1;
	var point2 = argument2;

	return 
	    gl_grid_connection_index(grid, point1)
	    == gl_grid_connection_index(grid, point2);


}
