function gl_grid_connection_index(argument0, argument1) {
	/**
	    Returns the connection_index of the cell
	    in the grid at the given point.
    
	    You can only call this function on a grid
	    if the contents are GM objects, with variable
	    connection_index.
    
	    In connection algorithms, neighbors are connected
	    if their connection indices are equal.
    
	    @param grid
	    @param point
	    @returns The connection index
	    @since 1.0
	*/

	var grid = argument0;
	var point = argument1;

	var cell = gl_grid_get(grid, point);
	show_debug_message(cell)
	
	if(cell == noone)
	{
	    return -1;
	}

	return cell.connection_index


}
