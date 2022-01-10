function lightsout_init_pattern() {
	randomize();

	var points = gl_grid_get_points(grid);
	var point_count = ds_list_size(points);

	repeat 5
	{
	    var random_index = floor(random_range(0, point_count - 0.01));
	    var random_point = points[| random_index];
    
	    lightsout_toggle_neighbors(random_point);
	}

	game_finished = false;


}
