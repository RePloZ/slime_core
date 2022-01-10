function gl_get_biggest_pointset(argument0) {
	/**
	    Returns the biggest pointset from a list of pointsets.
    
	    @param list A list of list of points.
	    @returns The biggest pointset (as a list of points) from the list above.
    
	    @since 1.1
	*/
	var pointsets = argument0;

	pointset_count = ds_list_size(pointsets);

	if(pointset_count == 0)
	{
	    return ds_list_create(); //or should we trow an error?
	}

	if(pointset_count == 1)
	{
	    return pointsets[| 0];    
	}

	var biggest_pointset = pointsets[| 0];
	var biggest_pointset_count = ds_list_size(biggest_pointset);

	for(var i = 1; i < pointset_count; i++)
	{
	    var pointset = pointsets[| i];
	    var count = ds_list_size(pointset);
    
	    if(count > biggest_pointset_count)
	    {
	        biggest_pointset = pointset;
	        biggest_pointset_count = count;
	    }
	}

	return biggest_pointset;


}
