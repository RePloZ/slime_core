function gl_grid_random_point(argument0) {
	/**
	    Returns a random point from a grid.
    
	    @param grid The grid from which to return a random point.
    
	    @returns A point (vector) randomly selected from all 
	    points in the grid.
    
	    @since 1.1
	*/
	var grid = argument0;

	var points = gl_grid_get_points(grid);

	return gl_list_random_item(points);


}
