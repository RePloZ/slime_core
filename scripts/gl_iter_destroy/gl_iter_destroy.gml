function gl_iter_destroy(argument0) {
	/**
	    Destroys the given iterator.
    
	    @param iter The iterator to destroy.
    
	    @since 1.0
	*/
	var iter = argument0;

	ds_map_destroy(iter);


}
