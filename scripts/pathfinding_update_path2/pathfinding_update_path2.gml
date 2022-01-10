function pathfinding_update_path2() {
	//path = ds_list_create();
	//ds_list_add(path, gl_vector_create(0, 0));

	if(path != noone) 
	{
	    ds_list_destroy(path);
	}

	path = gl_grid_astar(foreground_grid, map, start, goal);

	var iter = gl_grid_get_iter(foreground_grid);

	while(gl_iter_hasnext(iter))
	{
	    var point = gl_iter_next(iter);
    
	    var cell1 = gl_grid_get(foreground_grid, point);
	    cell1.path = false;
    
	    var cell2 = gl_grid_get(background_grid, point);
	    cell2.path = false;
	}

	gl_iter_destroy(iter);

	var path_length = ds_list_size(path);
	var i;

	for(i = 0; i < path_length; i += 1)
	{
	    var cell1 = gl_grid_get(foreground_grid, path[| i]);
	    cell1.path = true;
    
	    var cell2 = gl_grid_get(background_grid, path[| i]);
	    cell2.path = true;
	}

	iter = gl_grid_get_iter(foreground_grid);

	while(gl_iter_hasnext(iter))
	{
	    var point = gl_iter_next(iter);
	    var is_start = gl_vector_equals(point, start);
	    var is_goal = gl_vector_equals(point, goal);
    
	    var cell1 = gl_grid_get(foreground_grid, point);
	    pathfinding_update_cell(cell1, is_start, is_goal);
    
	    var cell2 = gl_grid_get(background_grid, point);
	    pathfinding_update_cell2(cell2, is_start, is_goal, point);
	}

	gl_iter_destroy(iter);


}
