function gl_vector_negate(argument0) {
	/**
	    Negates each component of this vector, and returns it as a new vector.
    
	    If you add a vector and it's negated vector, the result 
	    is the zero vector.
    
	    @param v
	    @return A new vector.
    
	    @since 1.0
	*/
	var v = argument0;

	var vx = v[ 0];
	var vy = v[ 1];

	return gl_vector_create(-vx, -vy);


}
