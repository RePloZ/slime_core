function gl_grid_set(argument0, argument1, argument2) {
	/**
	    Sets the grid contents at the given point.
    
	    @param grid
	    @param grid_point
	    @param value
    
	    @since 1.0
	*/
	var grid = argument0;
	var grid_point = argument1;
	var value = argument2;

	var bottom_left = grid[? "bottom_left"];
	var array_point = gl_vector_sub(grid_point, bottom_left);
	var grid_data = grid[? "grid_data"];

	var ax = array_point[ 0];
	var ay = array_point[ 1];

	grid_data[# ax, ay] = value;


}
