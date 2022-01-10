function gl_reconstruct_path_impl(argument0, argument1, argument2) {
	/**
	    Private.
    
	    @since 1.0
	*/
	var came_from_map = argument0;
	var current_node = argument1;
	var path = argument2;

	if (is_array(gl_grid_get(came_from_map, current_node)))
	{
	    gl_reconstruct_path_impl(came_from_map, gl_grid_get(came_from_map, current_node), path);
	}

	ds_list_add(path, current_node);


}
