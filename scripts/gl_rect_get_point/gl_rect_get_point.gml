function gl_rect_get_point(argument0) {
	/**
	    Gets the corner of the rectangle used to construct
	    the rectangle. (The top left ocrner if the the 
	    dimensions are all positive and the coordinate 
	    axes are left-to-right and top-to-bottom.)
    
	    @param rect
	    @returns the point as a vector.
    
	    @since 1.0
	*/
	var rect = argument0;

	return gl_vector_create(rect[| 0], rect[| 1]);


}
