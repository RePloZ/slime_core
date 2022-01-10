function gl_random_int(argument0) {
	/**
	    Returns a random integer between 0 (inclusive)
	    and the given upper limit (exclusive).
    
	    @param upper_limit The upper limit of the random integer to return.
    
	    @returns A random integer.
    
	    @since 1.1
	*/
	var upper_limit = argument0; 

	return floor(random(upper_limit));


}
