function lines_get_new_points(argument0, argument1) {
	var grid = argument0;
	var new_point_count = argument1;

	var empty_points = lines_get_empty_cells(grid);

	var empty_points_count = ds_list_size(empty_points);

	if(empty_points_count <= new_point_count)
	{
	    return empty_points;
	}

	var sample = gl_list_sample_random(empty_points, new_point_count);

	ds_list_destroy(empty_points);

	return sample;


}
