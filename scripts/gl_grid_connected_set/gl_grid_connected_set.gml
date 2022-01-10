function gl_grid_connected_set(argument0, argument1) {
	/**
	    Find the set of points connected to 
	    the given point in the grid.
    
	    @since 1.0
	*/
	var grid = argument0;
	var point = argument1;

	var open_set = gl_pointset_create();
	gl_pointset_add(open_set, point);

	var closed_set = gl_pointset_create();

	while(! gl_pointset_empty(open_set))
	{
	    var current = gl_pointset_findfirst(open_set);
	    gl_pointset_delete(open_set, current);
	    gl_pointset_add(closed_set, current);
    
	    var connected_neighbors = ds_list_create();
	    var neighbors = gl_grid_get_neighbors(grid, current);
	    var neighbors_count = ds_list_size(neighbors);
	    var i;
    
	    for(i = 0; i < neighbors_count; i += 1)
	    {
	        var neighbor = neighbors[| i];
        
	        if(!gl_pointset_exists(closed_set, neighbor) && gl_grid_neighbors_connected(grid, current, neighbor))
	        {
	            ds_list_add(connected_neighbors, neighbor);
	        }
	    }
    
	    gl_pointset_addlist(open_set, connected_neighbors);    
	}

	return gl_pointset_tolist(closed_set);


}
