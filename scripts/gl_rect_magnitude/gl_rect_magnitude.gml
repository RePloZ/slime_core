function gl_rect_magnitude(argument0) {
	/**
	    Gives the taxicab-magnitude of the given point, which is 
	    how many edges you would have to cross from the origin
	    to the point (if you do not move diagonally).
    
	    @param point The point whose magnitude to compute.
	    @returns An integer.
    
	    @since 1.2
	*/
	var p = argument0;

	var px = p[| 0];
	var py = p[| 1];

	var d = (abs(px) + abs(py))
	return d;


}
