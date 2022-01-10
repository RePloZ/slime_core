function pathfinding_init_grid() {
	gl_init();

	var cell_prefab = pathfinding_cell;
	var cell_dimensions = gl_vector_create(108, 94);
	var room_rect = gl_room_get_extent();

	grid = gl_flathex_grid_create("fatrectangle", 19, 7);
	map = gl_flathex_map_create(cell_dimensions);

	//gl_map_scale(map, 1.1);
	gl_map_center_grid_in_rect(map, grid, room_rect);

	var iter = gl_grid_get_iter(grid);

	while(gl_iter_hasnext(iter))
	{
	    var grid_point = gl_iter_next(iter);
	    var world_point = gl_map_grid2world(map, grid_point);
	    var cell = gl_instance_create(world_point, cell_prefab);
    
	    gl_grid_set(grid, grid_point, cell);        
	}

	gl_iter_destroy(iter);

	start = gl_vector_create(1, 1);
	goal = gl_vector_create(3, 3);

	path = noone;

	pathfinding_update_path();


}
