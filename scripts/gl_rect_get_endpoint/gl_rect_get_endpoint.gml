function gl_rect_get_endpoint(argument0) {
	/**
	    This function returns the corner of the rectangle opposite
	    to the corner used to construct the rectangle.
    
	    @param rect
    
	    @returns the end point as a vector.
    
	    @since 1.0
	*/
	var rect = argument0;

	return gl_vector_create(rect[| 0] + rect[| 2], rect[| 1] + rect[| 3]);


}
