function gl_grid_get_values(argument0) {
	/**
	    Gets all the cells in this grid, that is, the contents 
	    of the grid at each point.
    
	    @param grid
	    @returns A list of values.
    
	    @since 1.0
	*/
	var grid = argument0;

	var values = ds_list_create();
	var iter = gl_grid_get_iter(grid);

	while(gl_iter_hasnext(iter))
	{
	    var point = gl_iter_next(iter);
	    var value = gl_grid_get(grid, point);
	    ds_list_add(values, value);
	}

	return values;


}
