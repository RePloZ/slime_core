function debug_print_coordinates() {
	var mouse_position = gl_mouse_get_position();
	var grid_point = gl_map_world2grid(map, mouse_position);
	var world_point = gl_map_grid2world(map, grid_point);

	show_debug_message(grid_point);
	show_debug_message(world_point);


}
