function gl_rect_distance(argument0, argument1) {
	/**
	    Calculates the node-to-node (taxicab) distance between two rect points
	    (i.e. how many edges you have to cross moving from one node to the
	    other).
    
	    @param p1
	    @param p2
    
	    @returns An integer denoting the distance between the two nodes.
    
	    @since 1.2
	*/
	var p1 = argument0;
	var p2 = argument1;

	return gl_rect_magnitude(gl_vector_add(p1, gl_vector_negate(p2)));


}
