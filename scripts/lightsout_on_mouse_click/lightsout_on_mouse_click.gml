function lightsout_on_mouse_click() {
	var world_point = gl_mouse_get_position();

	var grid_point = gl_map_world2grid(map, world_point);

	if(gl_grid_contains(grid, grid_point))
	{
	    lightsout_toggle_neighbors(grid_point);
	}


}
