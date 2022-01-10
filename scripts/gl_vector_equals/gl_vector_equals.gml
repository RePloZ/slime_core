function gl_vector_equals(argument0, argument1) {
	/**
	    Returns whether two vectors are equal, that is,
	    if corresponding components are equal.
    
	    This method is only reliable for integer 
	    vectors (grid points).
    
	    @param v1
	    @param v2
    
	    @returns true if the vectors are equal, false otherwise.
    
	    @since 1.0
	*/
	var v1 = argument0;
	var v2 = argument1;

	return (v1[ 0] == v2[ 0]) && (v1[ 1] == v2[ 1]);


}
