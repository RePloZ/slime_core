function gl_grid_where_color_equals(argument0, argument1, argument2, argument3, argument4) {
	/**
	    Returns all points in a grid whose color (given the coloring parallelogram) matches the given color. 
	    @see gl_get_color.
    
	    @param grid The grid from which to select points
	    @param ux The x-coordinate of one side of the parallelogram
	    @param vx The x-coordinate of other side of the parallelogram
	    @param vy The y-coordinate of other side of the parallelogram   
	    @param color The color index to match.
    
	    @returns A list of points that have the given color index using the specified coloring.
    
	    @since 1.1
	*/
	var grid = argument0;
	var ux = argument1;
	var vx = argument2;
	var vy = argument3;
	var color = argument4;

	var points = ds_list_create();
	var iter = gl_grid_get_iter(grid);

	while(gl_iter_hasnext(iter))
	{
	    var point = gl_iter_next(iter);
	    var point_color = gl_get_color(point, ux, vx, vy);
    
	    if(point_color == color)
	    {
	        ds_list_add(points, point);
	    }
	}

	gl_iter_destroy(iter);

	return points;


}
