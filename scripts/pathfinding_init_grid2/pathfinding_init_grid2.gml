function pathfinding_init_grid2() {
	gl_init();

	var cell_dimensions = gl_vector_create(108, 94);
	var room_rect = gl_room_get_extent();

	foreground_grid = gl_flathex_grid_create("fatrectangle", 25, 15);
	background_grid = gl_grid_clone_structure(foreground_grid);

	map = gl_flathex_map_create(cell_dimensions);

	gl_map_scale(map, 1.1);
	gl_map_center_grid_in_rect(map, foreground_grid, room_rect);

	var iter = gl_grid_get_iter(foreground_grid);

	while(gl_iter_hasnext(iter))
	{
	    var grid_point = gl_iter_next(iter);
	    var world_point = gl_flathex_grid2world(map, grid_point);
    
	    var cell1 = gl_instance_create(world_point, pathfinding_cell);
	    gl_grid_set(foreground_grid, grid_point, cell1);  
    
	    var cell2 = gl_instance_create(world_point, pathfinding_background_cell);
	    gl_grid_set(background_grid, grid_point, cell2);
	}

	gl_iter_destroy(iter);

	start = gl_vector_create(5, 5);
	goal = gl_vector_create(7, 7);

	path = noone;

	pathfinding_update_path2();


}
