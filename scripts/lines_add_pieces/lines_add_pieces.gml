function lines_add_pieces(argument0, argument1, argument2, argument3) {
	var grid = argument0;
	var map = argument1;
	var piece_prefab = argument2;
	var new_piece_count = argument3;

	var new_points = lines_get_new_points(grid, new_piece_count);
	var new_points_count = ds_list_size(new_points);

	for(var i = 0; i < new_points_count; i++)
	{
	    var point = new_points[| i];
	    var world_point = gl_map_grid2world(map, point);
	    var piece = gl_instance_create(world_point, piece_prefab);
    
	    piece.connection_index = gl_random_int(4);
    
	    piece.sprite_index = lines_controller.images[piece.connection_index];
    
	    gl_grid_set(grid, point, piece);
    
	    var did_find_line = lines_update_matches(point);
	}

	ds_list_destroy(new_points);


}
