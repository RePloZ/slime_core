function gl_map_center_grid_in_rect(argument0, argument1, argument2) {
	/**
	    This is a convenience method for adjusting a map so that 
	    it will center a grid in a rectangle.
    
	    @param map The map to modify.
	    @param grid The grid that should be centered.
	    @param rect The rectangle in which the grid should be centered.
	    @since 1.1
	*/
	var map = argument0;
	var grid = argument1;
	var rect = argument2;

	gl_map_align_grid_in_rect(map, grid, rect, global.gl_alignment_middlecenter);


}
