function gl_iter_hasnext(argument0) {
	/**
	    Returns true if the iterator has a valid
	    next value.
    
	    @see @ref gl_grid_get_iter
    
	    @since 1.0
	*/
	var iter = argument0;

	return iter[? "has_next"];


}
