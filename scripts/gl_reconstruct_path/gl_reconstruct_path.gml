function gl_reconstruct_path(argument0, argument1) {
	/**
	    Private.
	    @since 1.0
	*/
	var came_from_map = argument0;
	var current_node = argument1;

	var path = ds_list_create();

	gl_reconstruct_path_impl(came_from_map, current_node, path);

	return path;


}
