function maze_init_grid() {
	gl_init();

	var cell_prefab = maze_cell;

	var cell_dimensions = gl_sprite_get_size(object_get_sprite(cell_prefab));
	var room_rect = gl_room_get_extent();

	grid = gl_pointyhex_grid_create("hexagon", 10, 7);
	map = gl_pointyhex_map_create(cell_dimensions);

	gl_map_scale(map, 0.97);
	gl_map_center_grid_in_rect(map, grid, room_rect);

	var walls = maze_get_wall_grid(grid);

	var iter = gl_grid_get_iter(grid);

	while(gl_iter_hasnext(iter))
	{
	    var grid_point = gl_iter_next(iter);    
	    var world_point = gl_map_grid2world(map, grid_point);
	    var cell = gl_instance_create(world_point, cell_prefab);

	    cell.name = gl_vector2str(grid_point);    
    
	    if(gl_grid_get(walls, grid_point))
	    {
	        cell.sprite_index = maze_open;
	    }
	    else
	    {
	        cell.sprite_index = maze_close;
	    }
        
	    gl_grid_set(grid, grid_point, cell);
	}

	gl_iter_destroy(iter);

	var up_triangle = ds_list_create();

	ds_list_add(up_triangle,
	    gl_vector_create(0, 0),
	    gl_vector_create(1, 0),
	    gl_vector_create(0, 1));
    
	var up_triangle_offset = gl_vector_sub(
	    gl_map_grid2world(map, gl_vector_create(1/3, 1/3)),
	    gl_map_grid2world(map, gl_vector_create(0, 0)));
    
	var up_triangles = maze_find_shape(walls, up_triangle);
	var up_triangles_size = ds_list_size(up_triangles);

	for(var i = 0; i < up_triangles_size; i++)
	{
	    var filler_point = gl_vector_add(gl_map_grid2world(map, up_triangles[| i]), up_triangle_offset);
    
	    gl_instance_create(filler_point, maze_filler_cell);
	}

	ds_list_destroy(up_triangles);

	var down_triangle = ds_list_create();

	ds_list_add(down_triangle,
	    gl_vector_create(0, 0),
	    gl_vector_create(1, 0),
	    gl_vector_create(1, -1));
    
	var down_triangle_offset = gl_vector_sub(
	    gl_map_grid2world(map, gl_vector_create(2/3, -1/3)),
	    gl_map_grid2world(map, gl_vector_create(0, 0)));
    
	var down_triangles = maze_find_shape(walls, down_triangle);
	var down_triangles_size = ds_list_size(down_triangles);

	for(var i = 0; i < down_triangles_size; i++)
	{
	    var filler_point = gl_vector_add(gl_map_grid2world(map, down_triangles[| i]), down_triangle_offset);
    
	    gl_instance_create(filler_point, maze_filler_cell);
	}

	ds_list_destroy(down_triangles);


}
