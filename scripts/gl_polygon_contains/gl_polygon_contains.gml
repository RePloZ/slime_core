function gl_polygon_contains(argument0, argument1) {
	/**
	    A "polygon" is a list of halfplanes. The polygon 
	    is interpreted as the intersection of the halfplanes, 
	    and is therefor always convex. A point is inside the 
	    polygon if it is inside all halfplanes in the list.
    
	    (Note that polygons by this definition need not be bounded).
    
	    @param polygon A list of halfplanes  
	    @param point The point to check 
    
	    @returns True if the point is inside all the 
	    halfplanes; false otherwise.
    
	    @since 1.0
	*/
	var polygon = argument0;
	var point = argument1;

	var halfplane_count = ds_list_size(polygon);

	var i;
	for (i = 0; i < halfplane_count; i += 1)
	{
	    var halfplane = ds_list_find_value(polygon, i);
    
	    if(!gl_halfplane_contains(halfplane, point))
	    {
	        return false;
	    }
	}

	return true;


}
