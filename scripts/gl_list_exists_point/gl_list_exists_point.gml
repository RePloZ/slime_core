function gl_list_exists_point(argument0, argument1) {
	/**
	    Returns true if the given point is an item in the list.
    
	    Points are compared using gl_vector_equals.
    
	    @param list
	    @param point
    
	    @since 1.0
	*/
	var list = argument0;
	var point = argument1;

	var size = ds_list_size(list);
	var i;

	for(i = 0; i < size; i += 1)
	{
	    var item = list[|i ];

	    if item[0] == point[0] && item[1] == point[1]//gl_vector_equals(list[| i], point)
	    {
	        return true;
	    }
	}

	return false;


}
