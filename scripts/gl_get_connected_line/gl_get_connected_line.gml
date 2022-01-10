function gl_get_connected_line(argument0, argument1, argument2) {
	/**
	    Gets the line of connected cells through the given point in the given direction.
    
	    @returns A line as a list of points.
	    @since 1.1
	*/
	var grid = argument0;
	var point = argument1;
	var dir = argument2;

	var next_point = gl_vector_add(point, dir);

	while(gl_grid_contains(grid, next_point) && gl_grid_neighbors_connected(grid, point, next_point))
	{
	    next_point = gl_vector_add(next_point, dir);
	}

	var end_point = gl_vector_sub(next_point, dir);

	var line = ds_list_create();
	ds_list_add(line, point);

	next_point = gl_vector_sub(end_point, dir);

	while(gl_grid_contains(grid, next_point) && gl_grid_neighbors_connected(grid, point, next_point))
	{
	    ds_list_add(line, next_point);
	    next_point = gl_vector_sub(next_point, dir);
	}

	return line;


}
