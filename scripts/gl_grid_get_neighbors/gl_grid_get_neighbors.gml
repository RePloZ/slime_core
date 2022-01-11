function gl_grid_get_neighbors(grid, point) {
	/**
	    Get the neighbors in the grid for the given point.
    
	    @param grid
	    @param point
    
	    @returns The neighbors as a list of grid points (vectors).
    
	    @since 1.0
	*/

	var i;

	var all_neighbors = grid[? "neighbors"];
	var neighbor_count = ds_list_size(all_neighbors);

	neighbors = ds_list_create();

	for(i = 0; i < neighbor_count; i+=1)
	{
	    var offset = all_neighbors[| i];
	    var neighbor = gl_vector_add(point, offset);
    
	    if(gl_grid_contains(grid, neighbor))
	    {
	        ds_list_add(neighbors, neighbor);
	    }
	}

	return neighbors;


}
