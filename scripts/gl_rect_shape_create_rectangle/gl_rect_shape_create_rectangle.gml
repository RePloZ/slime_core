function gl_rect_shape_create_rectangle(argument0, argument1) {
	/**
	    Creates a new rectangle in rect coordinates.
    
	    @param width The width of the parallelogram in grid coordinates
	    @param height The height of the parallelogram in grid coordinates.
    
	    @returns A new shape.
    
	    @since 1.0
	*/
	var width = argument0;
	var height = argument1;

	return gl_rect_shape_create_parallelogram(width, height);


}
