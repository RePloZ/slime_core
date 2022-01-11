function gl_grid_get(argument0, argument1) {
	/**
	    Returns the value in a grid at a given point.
    
	    @param grid
	    @param grid_point
    
	    @return the cell in the grid at the given point.
	    @since 1.0
	*/
	var grid = argument0;
	var grid_point = argument1; 

	var grid_data = grid[? "grid_data"];
	var bottom_left = grid[? "bottom_left"];

	var array_point = gl_vector_sub(grid_point, bottom_left);
	var ax = grid_point[ 0] - bottom_left[0];
	var ay = grid_point[ 1] - bottom_left[1];
	
	return grid_data[# ax, ay]
}
