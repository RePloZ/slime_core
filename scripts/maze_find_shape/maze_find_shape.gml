function maze_find_shape(argument0, argument1) {
	var grid = argument0;
	var shape = argument1;

	var shape_size = ds_list_size(shape);
	var shape_locations = ds_list_create();
	var iter = gl_grid_get_iter(grid);

	while(gl_iter_hasnext(iter))
	{
	    var point = gl_iter_next(iter);
    
	    var shape_in_grid = true;
	    for(var i = 0; i < shape_size; i++)
	    {
	        var shape_point = gl_vector_add(point, shape[| i]);
        
	        if(!gl_grid_contains(grid, shape_point) || !gl_grid_get(grid, shape_point))
	        {
	            shape_in_grid = false;
	            break;
	        }
	    }
    
	    if(shape_in_grid)
	    {
	        ds_list_add(shape_locations, point);
	    }
	}

	gl_iter_destroy(iter);

	return shape_locations;


}
