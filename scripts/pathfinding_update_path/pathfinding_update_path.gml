function pathfinding_update_path() {
	//path = ds_list_create();
	//ds_list_add(path, gl_vector_create(0, 0));

	if(path != noone)
	{
	    ds_list_destroy(path);
	}

	path = gl_grid_astar(grid, map, start, goal);

	var iter = gl_grid_get_iter(grid);

	while(gl_iter_hasnext(iter))
	{
	    var point = gl_iter_next(iter);
	    var cell = gl_grid_get(grid, point);
	    cell.path = false;
	}

	gl_iter_destroy(iter);

	var path_length = ds_list_size(path);
	var i;

	for(i = 0; i < path_length; i += 1)
	{
	    var cell = gl_grid_get(grid, path[| i]);
	    cell.path = true;
	}

	iter = gl_grid_get_iter(grid);

	while(gl_iter_hasnext(iter))
	{
	    var point = gl_iter_next(iter);
	    var cell = gl_grid_get(grid, point);
    
	    pathfinding_update_cell(cell, gl_vector_equals(point, start), gl_vector_equals(point, goal));
	}

	gl_iter_destroy(iter);


}
