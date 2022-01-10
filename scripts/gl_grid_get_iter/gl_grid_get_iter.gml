function gl_grid_get_iter(argument0) {
	/**
	    Gets a new iterator for this grid.
    
	    The typical way to use this is in a while loop
	    to iterate over all points in a grid.
    
	    @code
	    var iter = gl_grid_iter_create(grid);
    
	    while(gl_iter_hasnext(iter))
	    {
	        var point = gl_iter_next(grid);
        
	        ...
	    }  
	    @endcode
    
	    @param grid.
    
	    @since 1.0
	*/

	var grid = argument0;

	var width = grid[? "width"];
	var height = grid[? "height"];
	var bottom_left = grid[? "bottom_left"];
	var shape = grid[? "shape"];

	return gl_iter_create(width, height, bottom_left, shape);


}
