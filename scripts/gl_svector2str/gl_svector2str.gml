function gl_svector2str(argument0) {
	/**
	    Returns a string presentation of the given spliced vector.
    
	    @returns If the spliced vector has components 0 and 3 with index 1, for example,
	    the string 0 3 1 is returned.
    
	    @since 1.0
	*/
	var v = argument0;

	return string(v[ 0]) + " " + string(v[ 1]) + " " + string(v[| 2]);


}
