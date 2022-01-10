function gl_iter_next(argument0) {
	/**
	    Returns the next item the iterator points to,
	    and advances the iterator.
    
	    @param iter 
    
	    @see @ref gl_grid_get_iter
	    @since 1.0
	*/
	var iter = argument0;

	var p = iter[? "current_point"]

	gl_iter_move(iter);

	return p;


}
