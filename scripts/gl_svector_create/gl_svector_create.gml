function gl_svector_create(argument0, argument1, argument2) {
	/**    
	    Creates a new spliced vector from the given coordinates.
    
	    @param vx
	    @param vy
    
	    @since 1.0
	*/
	var vx = argument0;
	var vy = argument1;
	var vi = argument2;

	var v;

	v[2] = vi;
	v[1] = vy;
	v[0] = vx;

	return v;


}
