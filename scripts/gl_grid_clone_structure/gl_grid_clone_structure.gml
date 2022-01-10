function gl_grid_clone_structure(argument0) {
	/**
	    This function returns a grid that is the same shape 
	    as the given grid, but without the same data.
    
	    @youmustdestroy gl_grid_destroy
    
	    @param grid The grid to clone.
	    @returns A grid in the same shape as the given grid.
	    @since 1.0
	*/
	var grid = argument0;

	var width = grid[? "width"];
	var height = grid[? "height"];

	var new_grid = ds_map_create();
	var grid_data = ds_grid_create(width, height);

	new_grid[? "grid_data"] = grid_data;
	new_grid[? "bottom_left"] = grid[? "bottom_left"];
	new_grid[? "width"] = width;
	new_grid[? "height"] = height;
	new_grid[? "shape"] = gl_shape_clone(grid[? "shape"]);
	new_grid[? "neighbors"] = grid[? "neighbors"];

	var cloned_principles = ds_list_create();

	ds_list_copy(cloned_principles, grid[? "principles"]);

	new_grid[? "principles"] = cloned_principles;

	return new_grid;


}
