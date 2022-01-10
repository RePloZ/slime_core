function gl_flathex_magnitude(argument0) {
	/**
	    Gives the hex-magnitude of the given point, which is 
	    how many edges you would have to cross from the origin
	    to the point.
    
	    @param point The point whose magnitude to compute.
	    @returns An integer.
    
	    @since 1.0
	*/
	var p = argument0;

	var px = p[| 0];
	var py = p[| 1];

	var d = (abs(px) + abs(py) + abs(px + py)) div 2;
	return d;


}
