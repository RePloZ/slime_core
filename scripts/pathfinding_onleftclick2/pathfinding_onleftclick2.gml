function pathfinding_onleftclick2() {
	var world_point = gl_mouse_get_position();
	var grid_point = gl_map_world2grid(map, world_point);

	if(gl_grid_contains(foreground_grid, grid_point))
	{
	    var cell1 = gl_grid_get(foreground_grid, grid_point);
	    cell1.accessible = !cell1.accessible;
    
	    var cell2 = gl_grid_get(background_grid, grid_point);
	    cell2.accessible = !cell2.accessible;
    
	    pathfinding_update_path2();
	}


}
