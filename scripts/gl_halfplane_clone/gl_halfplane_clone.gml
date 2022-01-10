function gl_halfplane_clone(argument0) {
	/**
	    Clones the given halfplane.
    
	    @youmustdestroy gl_halfplane_destroy
    
	    @param halfplane
    
	    @returns A new halfplane.
    
	    @since 1.0
	*/
	var halfplane = argument0;

	return gl_halfplane_create(halfplane[| 0], halfplane[| 1]);


}
