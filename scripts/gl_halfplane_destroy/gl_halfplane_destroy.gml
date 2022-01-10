function gl_halfplane_destroy(argument0) {
	/**
	    Destroys the given halfplane.
    
	    @param halfplane The halfplaneto destroy.
	*/
	var halfplane = argument0;

	ds_list_destroy(halfplane);


}
