function gl_shape_contains(argument0, argument1) {
	/**
	    Returns true if the given shape contains 
	    the given point.
    
	    A shape is simply a list of polygons 
	    (@see @ref gl_polygon_contains). The list
	    represents the shape as a union of these polygons. 
	    It is therefor possible for the shape to not be conected.
	    Because polygons can be unbounded, so can shapes.
    
	    @param shape A list of polygons.
	    @param point

	    @returns True if the point is in any of the polygons in the list.
    
	    @since 1.0
	*/
	var shape = argument0;
	var point = argument1;

	var polygon_count = ds_list_size(shape);

	var i;

	for (i = 0; i < polygon_count; i += 1)
	{
	    var polygon = ds_list_find_value(shape, i);
    
	    if (gl_polygon_contains(polygon, point))
	    {
	        return true;
	    }
	}

	return false;


}
