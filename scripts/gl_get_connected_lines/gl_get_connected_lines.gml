function gl_get_connected_lines(argument0, argument1) {
	/**
	    Returns a list of lines conected to a point, where each line is a list of points.
    
	    @param grid The grid in which to check.
	    @param grid_point The point to check for.
    
	    @returns A list of lines (each line is a list of grid points). Each line will have at least two points.
    
	    @since 1.1
	*/
	var grid = argument0;
	var grid_point = argument1;

	var principle_directions = grid[? "principles"];
	var principle_count = ds_list_size(principle_directions);
	var lines = ds_list_create();

	for(var i = 0; i < principle_count; i++)
	{
	    var principle_direction = principle_directions[| i];
	    var line = gl_get_connected_line(grid, grid_point, principle_direction);
    
	    if(ds_list_size(line) > 1)
	    {
	        ds_list_add(lines, line);
	    }
	}

	return lines;


}
