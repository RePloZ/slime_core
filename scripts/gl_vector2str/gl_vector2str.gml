function gl_vector2str(argument0) {
	/**
	    Returns a string presentation of the given vector.
    
	    @returns If the vector has components 0 and 3, for example,
	    the string 0 3 is returned.
    
	    @since 1.0
	*/
	var v = argument0;

	return string(v[ 0]) + " " + string(v[ 1]);


}
