function gl_grid_astar(argument0, argument1, argument2, argument3) {
	/**
	    Returns the shortest path between the start
	    and goal nodes in a grid.
    
	    This function can only be called when the grid contains
	    GM instances as cells. The cells in the grid must contain 
	    a boolean value accessible to indicate whether the cell is 
	    accesible or not.
    
	    @youmustdestroy ds_list_destroy
    
	    @param grid
	    @param map
	    @param start (vector)
	    @param goal (vector)
    
	    @returns noone if no path has been found; otherwise a list of grid points 
	    (vectors) of the path if one has been found
    
	    @since 1.0
	*/
	var grid = argument0;
	var map = argument1; 
	var start = argument2;
	var goal = argument3;

	var closed_lookup = gl_grid_clone_structure(grid);
	gl_grid_fill(closed_lookup, false);

	// The set of tentative nodes to be evaluated
	var openSet = ds_list_create();
	ds_list_add(openSet, start );

	var open_lookup = gl_grid_clone_structure(grid);
	gl_grid_fill(open_lookup, false);
	gl_grid_set(open_lookup, start, true);

	// The map of navigated nodes.
	var cameFrom = gl_grid_clone_structure(grid);
	gl_grid_fill(cameFrom, 0);

	// Cost from start along best known path.
	var gScore = gl_grid_clone_structure(grid);
	gl_grid_set(gScore, start, 0);

	// Estimated total cost from start to goal through y.
	var fScore = gl_grid_clone_structure(grid);

	gl_grid_set(fScore, start, gl_grid_get(gScore, start) + 
	    gl_map_rawdistance(map, start, goal)); //heuristic cost

	while (!ds_list_empty(openSet))
	{    
	    var currentIndex = gl_find_node_with_lowest_score_index(openSet, fScore);
	    var current = openSet[| currentIndex];
    
	    if (gl_vector_equals(current, goal))
	    {
	        var path = gl_reconstruct_path(cameFrom, goal);
        
	        gl_grid_destroy(open_lookup);
	        gl_grid_destroy(closed_lookup);
	        gl_grid_destroy(cameFrom);        
	        gl_grid_destroy(gScore);
	        gl_grid_destroy(fScore);
        
	        ds_list_destroy(openSet);
        
	        return path;
	    }

	    ds_list_delete(openSet,currentIndex);
	    gl_grid_set(open_lookup, start, false);
	    gl_grid_set(closed_lookup, current, true);

	    var currentNodeNeighbors = gl_grid_get_neighbors(grid, current);
	    var accessibleNeighbors = ds_list_create();
    
	    var currentNodeNeighborsCount = ds_list_size(currentNodeNeighbors);
	    var i;
    
	    for(i = 0; i < currentNodeNeighborsCount; i += 1)
	    {
	        var neighbor = currentNodeNeighbors[| i];
        
	        if((gl_grid_get(grid, neighbor)).accessible)
	        {
	            ds_list_add(accessibleNeighbors, neighbor);
	        }
	    }
    
	    var accessibleNeighborsCount = ds_list_size(accessibleNeighbors);
    
	    for(i = 0; i < accessibleNeighborsCount; i += 1)
	    {
	        var neighbor = accessibleNeighbors[| i];
	        var tentativeGScore = gl_grid_get(gScore, current) + 
	            gl_map_rawdistance(map, current, neighbor);//true cost


	        if (gl_grid_get(closed_lookup, neighbor))
	        {
	            if (tentativeGScore >= gl_grid_get(gScore, neighbor))
	            {
	                continue;
	            }
	        }
       
	        var alreadyInOpenset = gl_grid_get(open_lookup, neighbor);
        
	        if (!alreadyInOpenset || tentativeGScore < gl_grid_get(gScore, neighbor))
	        {
	            gl_grid_set(cameFrom, neighbor, current);
	            gl_grid_set(gScore, neighbor, tentativeGScore);
	            gl_grid_set(fScore, neighbor, gl_grid_get(gScore, neighbor) + 
	                gl_map_rawdistance(map, neighbor, goal)); //heuristic cost
                                    
	            if (!alreadyInOpenset)
	            {
	                ds_list_add(openSet, neighbor);
	                gl_grid_set(open_lookup, neighbor, true);
	            }
	        }
	    }
    
	    ds_list_destroy(accessibleNeighbors);
	    ds_list_destroy(currentNodeNeighbors);
	}

	gl_grid_destroy(open_lookup);
	gl_grid_destroy(closed_lookup);
	gl_grid_destroy(cameFrom);        
	gl_grid_destroy(gScore);
	gl_grid_destroy(fScore);

	ds_list_destroy(openSet);

	return ds_list_create(); //return an empty list


}
