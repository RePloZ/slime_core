function gl_halfplane_create(argument0, argument1) {
	/**
	    Creates a new halfplane from the given point
	    and pseudo-normal.
    
	    @youmustdestroy gl_halfplane_destroy
    
	    @param point A point on the border of the halfplane.
    
	    @param pseudo_normal If the half-plane border is (parallel to) 
	    the line a*x + b*y = 0, then the pseudo-normal is the vector 
	    (a, b) or (-a, -b). The two possibilites correspond to the two sides
	    of the line.
    
	    @return the halfplane
    
	    @since 1.0
	*/
	var point = argument0;
	var pseudo_normal = argument1;

	var halfplane = ds_list_create();

	ds_list_add(halfplane, point, pseudo_normal);

	return halfplane;



}
