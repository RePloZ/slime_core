function pathfinding_onrightclick2() {
	var world_point = gl_mouse_get_position();
	var grid_point = gl_map_world2grid(map, world_point);

	if(gl_grid_contains(foreground_grid, grid_point))
	{
	    goal = grid_point;
    
	    pathfinding_update_path2();
	}


}
