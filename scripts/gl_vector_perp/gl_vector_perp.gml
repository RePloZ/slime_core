function gl_vector_perp(argument0) {
	/**
	    Returns the new vector (-y, x), which in rect coordinates is perpendicular to the give vector.
    
	    @param v The vector whose perp vector to calculate.
    
	    @returns A vector.
    
	    @since 1.2
	*/
	var v = argument0;

	return gl_vector_create(-v[1], v[0]);


}
