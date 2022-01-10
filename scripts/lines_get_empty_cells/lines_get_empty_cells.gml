function lines_get_empty_cells(argument0) {
	var grid = argument0;

	var iter = gl_grid_get_iter(grid);
	var empty_points = ds_list_create();

	while(gl_iter_hasnext(iter))
	{
	    var grid_point = gl_iter_next(iter);
	    var cell = gl_grid_get(grid, grid_point);
    
	    if(cell == noone)
	    {
	        ds_list_add(empty_points, grid_point);
	    }
	}

	gl_iter_destroy(iter);

	return empty_points;


}
