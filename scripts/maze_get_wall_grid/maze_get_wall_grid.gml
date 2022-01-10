function maze_get_wall_grid(argument0) {
	var grid = argument0;

	var walls = gl_grid_clone_structure(grid); //true indicates passable

	var iter = gl_grid_get_iter(walls);

	while(gl_iter_hasnext(iter))
	{
	    var point = gl_iter_next(iter);
	    gl_grid_set(walls, point, gl_get_color(point, 2, 0, 2) == 0);
	}

	gl_iter_destroy(iter);

	var wallList = ds_list_create();

	var newMaizePoint = gl_list_random_item(gl_grid_where_color_equals(grid, 2, 0, 2, 0));
	var inMaze = ds_list_create();

	ds_list_add(inMaze, newMaizePoint);

	var edges = gl_grid_get_neighbors(grid, newMaizePoint); 
	gl_list_add_range(wallList, edges);
	while (!ds_list_empty(wallList))
	{
	    var randomWall = gl_list_random_item(wallList);
	    //var faces = GetEdgeFaces(randomWall).Where(grid.Contains);
	    var all_faces = get_edge_faces(randomWall);    
	    var faces = ds_list_create();
	    var is_face_in_maze = false;
	    var face_in_maze;
    
	    for(var i = 0; i < 2; i++)
	    {
	        var face = all_faces[| i];
        
	        if(gl_grid_contains(walls, face))
	        {
	            ds_list_add(faces, face);

	            if(!gl_list_exists_point(inMaze, face))
	            {
	                is_face_in_maze = true;
	                face_in_maze = face;
	            }
	        }
	    }
    
	    //At least one of the two faces must be in the maze
	    if (is_face_in_maze)
	    {
	        newMaizePoint = face_in_maze;
	        ds_list_add(inMaze, newMaizePoint);
	        gl_grid_set(walls, randomWall, true);
        
	        // Add all edges that are not passages
	        //edges = newMaizePoint.GetNeighbors().Where(edge => !(walls[edge]));
	        edges = ds_list_create();
	        var neighbors = gl_grid_get_neighbors(walls, newMaizePoint);
	        var neighbors_size = ds_list_size(neighbors);
        
	        for(var i = 0; i < neighbors_size; i++)
	        {
	            if(!gl_grid_get(walls, neighbors[| i]))
	            {
	                ds_list_add(edges, neighbors[| i]);
	            }
	        }
        
	        gl_list_add_range(wallList, edges);
	    }
	    else
	    {
	        gl_list_delete_point(wallList, randomWall);
	    }
	}

	return walls;


}
