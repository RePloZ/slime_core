function lines_pickup_piece() {
	if(game_finished) return 0;

	var mouse_position = gl_mouse_get_position();
	var grid_point = gl_map_world2grid(map, mouse_position);

	if(gl_grid_contains(foreground_grid, grid_point))
	{
	    var piece = gl_grid_get(foreground_grid, grid_point);
    
	    if(piece != noone)
	    {  
	        current_piece = piece;
	        gl_grid_set(foreground_grid, grid_point, noone);
	    }
	}


}
