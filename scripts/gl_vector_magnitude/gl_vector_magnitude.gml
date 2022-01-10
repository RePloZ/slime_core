function gl_vector_magnitude(argument0) {
	/**
	    Returns the Euclidean magnitude of this vector.
    
	    @param v
    
	    @returns A real number denoting the magnitude of the given vector.
    
	    @since 1.0
	*/
	var v = argument0;

	return sqrt(v[ 0] * v[ 0] + v[ 1] * v[ 1]);


}
