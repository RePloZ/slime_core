function gl_grid_get_points(argument0) {
	/**
	    Get all the points in this grid.
    
	    @param grid
	    @returns A list of grid points (vectors) inside the grid.
    
	    @since 1.0
	*/
	var grid = argument0;

	var iter = gl_grid_get_iter(grid);

	var points = ds_list_create();

	while(gl_iter_hasnext(iter))
	{
	    var point = gl_iter_next(iter);
	    ds_list_add(points, point);
	}

	return points;


}
