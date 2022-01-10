function gl_grid_contains(argument0, argument1) {
	/**
	    Returns true if the grid contains the given point.
    
	    @param grid The grid to use for the check.
	    @param point The point to check.
    
	    @returns true if the point is in the grid, false otherwise.
	    @since 1.0
	*/
	var grid = argument0;
	var point = argument1;

	return gl_shape_contains(grid[? "shape"], point)


}
