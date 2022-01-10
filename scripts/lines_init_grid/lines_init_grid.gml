function lines_init_grid() {
	gl_init();

	game_finished = false;

	images[0] = blue_piece;
	images[1] = green_piece;
	images[2] = red_piece;
	images[3] = yellow_piece;

	line_count = 0;

	current_piece = noone;

	var cell_prefab = lines_cell;
	var cell_dimensions = gl_sprite_get_size(object_get_sprite(cell_prefab));
	var room_rect = gl_room_get_extent();

	background_grid = gl_pointyhex_grid_create("hexagon", 4, 0);
	foreground_grid = gl_grid_clone_structure(background_grid);

	map = gl_pointyhex_map_create(cell_dimensions);

	gl_map_scale(map, 1.1);
	gl_map_center_grid_in_rect(map, background_grid, room_rect);

	var iter = gl_grid_get_iter(background_grid);

	while(gl_iter_hasnext(iter))
	{
	    var grid_point = gl_iter_next(iter);    
	    var world_point = gl_map_grid2world(map, grid_point);
    
	    var cell = gl_instance_create(world_point, cell_prefab);

	    cell.name = "";    
	    cell.image_blend = make_colour_rgb(50, 50, 50);
    
	    gl_grid_set(background_grid, grid_point, cell);
	    gl_grid_set(foreground_grid, grid_point, noone);
	}

	gl_iter_destroy(iter);

	lines_add_pieces(foreground_grid, map, lines_piece, 4);




}
