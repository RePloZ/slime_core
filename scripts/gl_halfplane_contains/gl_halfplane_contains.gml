function gl_halfplane_contains(argument0, argument1) {
	/**
	    Returns whether a point is contained in the given
	    halfplane.
    
	    @param halfplane
	    @param point
    
	    @since 1.0
	*/
	var halfplane = argument0;
	var point = argument1;

	var halfplane_point = halfplane[| 0];
	var halfpoint_pseudo_normal = halfplane[| 1];

	//return gl_vector_dot(gl_vector_sub(point, halfplane_point), halfpoint_pseudo_normal) >= 0;

	return 
	    (point[0] - halfplane_point[0])*halfpoint_pseudo_normal[0]
	    + (point[1] - halfplane_point[1])*halfpoint_pseudo_normal[1] 
	    >= 0;


}
