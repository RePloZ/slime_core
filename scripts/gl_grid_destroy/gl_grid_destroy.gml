function gl_grid_destroy(argument0) {
	/**
	    Destroys the given grid.
    
	    @param grid The grid to destroy.
	    @since 1.0
	*/
	var grid = argument0;

	ds_grid_destroy(grid[? "grid_data"]);
	gl_shape_destroy(grid[? "shape"]);
	ds_list_destroy(grid[? "principles"]);

	ds_map_destroy(grid);


}
