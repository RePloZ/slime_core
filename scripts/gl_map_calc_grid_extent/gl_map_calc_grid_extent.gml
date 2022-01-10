function gl_map_calc_grid_extent(argument0, argument1) {
	/**
	    Calculates the grids placement and size
	    in world space.
    
	    @param grid
	    @param map
    
	    @returns a rectangle that represents the grids bottom-left corner and dimensions.
	    @since 1.0
	*/
	var map = argument0;
	var grid = argument1;

	var iter = gl_grid_get_iter(grid);

	if(!gl_iter_hasnext(iter))
	{
	    return gl_rect_create(0, 0, 0, 0);
	}

	var first_time = true;
	var min_x, max_x, min_y, max_y;

	while (gl_iter_hasnext(iter))
	{
	    var p = gl_iter_next(iter);
	    var w = gl_map_grid2rawworld(map, p);    
    
	    if (first_time)
	    {
	        min_x = w[ 0];
	        max_x = min_x;
        
	        min_y = w[ 1];
	        max_y = min_y;
        
	        first_time = false;
	    }
	    else
	    {
	        var wx = w[ 0];
	        var wy = w[ 1];
        
	        if(wx < min_x)
	        {
	            min_x = wx;
	        }
	        else if(wx > max_x)
	        {
	            max_x = wx;
	        }
        
	        if(wy < min_y)
	        {
	            min_y = wy;
	        }
	        else if(wy > max_y)
	        {
	            max_y = wy;
	        }
	    }
	}

	var cell_dimensions = gl_map_get_cell_dimensions(map);

	var cell_width = cell_dimensions[ 0];
	var cell_height = cell_dimensions[ 1];

	var grid_anchor = gl_vector_transform(gl_vector_create(min_x - cell_width / 2, min_y - cell_height / 2), map[? "transform"]);
	var grid_topright = gl_vector_transform(gl_vector_create(max_x + cell_width / 2, max_y + cell_height / 2), map[? "transform"]);

	var grid_dimensions = gl_vector_sub(grid_topright, grid_anchor);

	return gl_rect_create(
	    grid_anchor[ 0],
	    grid_anchor[ 1],
	    grid_dimensions[ 0],
	    grid_dimensions[ 1]);


}
