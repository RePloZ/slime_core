function gl_vector_mul(argument0, argument1) {
	/**
	    Multiplies a vector with a real number and returns the result.
    
	    @param v
	    @param r
    
	    @returns A new vector that is the original vector multiplied 
	    with the real number.
    
	    @since 1.0
	*/
	var v = argument0;
	var r = argument1;

	return gl_vector_create(v[ 0]*r, v[ 1]*r);


}
