function lines_drop_piece() {
	var mouse_position = gl_mouse_get_position()
	var grid_point = gl_map_world2grid(map, mouse_position);
	var piece = gl_grid_get(foreground_grid, grid_point);

	if(piece == noone)
	{
	    gl_instance_set_position(current_piece, gl_map_grid2world(map, grid_point));
	    gl_grid_set(foreground_grid, grid_point, current_piece);
    
	    current_piece = noone;
    
	    var did_find_line = lines_update_matches(grid_point);
    
	    if(!did_find_line)
	    {
	        lines_add_pieces(foreground_grid, map, lines_piece, 4);
	    }    
	}


}
