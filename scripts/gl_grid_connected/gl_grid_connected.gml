function gl_grid_connected(argument0, argument1, argument2) {
	/**
	    Returns true if the points are "connected".
    
	    A point p1 is connected to another point p2 if
	    either p1 and p2 are neighbors, and the cells
	    at those points have the same connection_index,
	    or if p1 has a neighbor that is connected.
    
	    This function can only be called if the grid contains
	    GM instances, and they have the variable connection_index 
	    defined.
    
	    @param grid
	    @param point1
	    @param point2
    
	    @since 1.0
	*/
	var grid = argument0;
	var point1 = argument1;
	var point2 = argument2;

	var open_set = gl_pointset_create();
	gl_pointset_add(open_set, point1);

	var closed_set = gl_pointset_create();

	while (! gl_pointset_empty(open_set))
	{
	    var current = gl_pointset_findfirst(open_set);

	    if (gl_vector_equals(current, point2))
	    {
	        return true;
	    }

	    gl_pointset_delete(open_set, current);
	    gl_pointset_add(closed_set, current);
    
	    var connected_neighbors = ds_list_create();
	    var neighbors = gl_grid_get_neighbors(grid, current);
	    var neighbors_count = ds_list_size(neighbors);
	    var i;
    
	    for(i = 0; i < neighbors_count; i += 1)
	    {
	        var neighbor = neighbors[| i];
        
	        if (!gl_pointset_exists(closed_set, neighbor)
	            &&
	            (gl_grid_neighbors_connected(grid, neighbor, current)))
	        {
	            ds_list_add(connected_neighbors, neighbor);
	        }           
	    }
    
	    gl_pointset_addlist(open_set, connected_neighbors);
	}

	return false;


}
