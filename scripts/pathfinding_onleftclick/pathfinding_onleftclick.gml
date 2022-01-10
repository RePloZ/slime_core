function pathfinding_onleftclick() {
	var world_point = gl_mouse_get_position();
	var grid_point = gl_map_world2grid(map, world_point);

	if(gl_grid_contains(grid, grid_point))
	{
	    var cell = gl_grid_get(grid, grid_point);
	    cell.accessible = !cell.accessible;
    
	    pathfinding_update_path();
	}


}
