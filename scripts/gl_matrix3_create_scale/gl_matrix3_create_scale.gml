function gl_matrix3_create_scale(argument0) {
	/**
	    Creates a new matrix that denotes a scale transform.
    
	    @param scale
	    @since 1.0
	*/
	var scale = argument0;

	return gl_matrix3_create(
	    scale, 0, 0, 
	    0, scale, 0, 
	    0, 0, 1);


}
