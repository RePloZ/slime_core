function gl_vector_add(argument0, argument1) {
	/**
	    Adds two vectors together and returns the sum as a new vector.
    
	    @param v1
	    @param v2
    
	    @returns A new vector.
    
	    @since 1.0
	*/
	var v1 = argument0;
	var v2 = argument1;

	return gl_vector_create(v1[ 0] + v2[ 0], v1[ 1] + v2[ 1]);


}
