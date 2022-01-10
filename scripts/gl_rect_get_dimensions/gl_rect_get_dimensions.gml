function gl_rect_get_dimensions(argument0) {
	/**
	    Returns the dimensions of a rectangle as a vector.
    
	    @param rect
	    @returns The dimensions of the rectangle as a vector.
    
	    @since 1.0
	*/
	var rect = argument0;

	return gl_vector_create(rect[| 2], rect[| 3]);


}
