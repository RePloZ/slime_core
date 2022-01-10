function gl_vector_create(argument0, argument1) {
	/**    
	    Creates a new vector from the given coordinates.
    
	    @param vx
	    @param vy
    
	    @since 1.0
	*/
	var vx = argument0;
	var vy = argument1;

	var v;

	v[1] = vy;
	v[0] = vx;

	return v;


}
