function gl_list_random_item(argument0) {
	/**
	    Returns a random item from a list.
    
	    @param list The list from which to return a random instance. The list must be non-empty.
    
	    @since 1.1
	*/
	var list = argument0;

	var index = gl_random_int(ds_list_size(list));

	return list[| index];


}
