function gl_list_delete_point(argument0, argument1) {
	/**
	    Deletes the first occurance a point (vector) from a list of points.
	    gl_vectoor_equals is used for comparison. Generally, this should
	    only be used for integer points.
    
	    @param list A list of points.
	    @param The point (a vector) to remove from the list.
	*/
	var list = argument0;
	var point = argument1;

	var list_size = ds_list_size(list);

	for(var i = 0; i < list_size; i++)
	{
	    if(gl_vector_equals(list[| i], point))
	    {
	        ds_list_delete(list, i);
	        return 0;
	    }
	}


}
