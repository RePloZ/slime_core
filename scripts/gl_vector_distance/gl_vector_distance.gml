function gl_vector_distance(argument0, argument1) {
	/**
	    Calculates the Euclidean distance between two vectors,
	    and returns the result.
    
	    @param v1 
	    @param v2
    
	    @param returns A real number representing the distance between 
	    the two vectors.
    
	    @since 1.0
	*/
	var v1 = argument0;
	var v2 = argument1;

	var offset = gl_vector_sub(v1, v2);

	return gl_vector_magnitude(offset);


}
