function gl_grid_fill(argument0, argument1) {
	/**
	    Sets each cell in the grid to the given value.
	    This is a simple way to initialize grids, epsepcially 
	    if they don't contain GM objects.
    
	    @param grid
	    @param value
	    @since 1.0
	*/
	var grid = argument0;
	var value = argument1;

	ds_grid_clear(grid[? "grid_data"], value);


}
