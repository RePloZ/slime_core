function gl_iter_move(argument0) {
	/**
	    Private.
	    Advances the given iterator.
    
	    @param iter
	    @since 1.0
	*/
	var iter = argument0;

	var width = iter[? "width"];
	var height = iter[? "height"];
	var current = iter[? "current"];
	var bottom_left = iter[? "bottom_left"];
	var shape = iter[? "shape"];

	while current < width * height
	{
	    var ax = current mod width;
	    var ay = current div width;
    
	    var p = gl_vector_create(ax + bottom_left[0], ay + bottom_left[1]);

	    if gl_shape_contains(shape, p)
	    {
	        iter[? "current"] = current + 1;
	        iter[? "has_next"] = true;
	        iter[? "current_point"] = p;
        
	        break;
	    }
    
	    current_point = p;
    
	    current = current + 1;
	}

	if current >= width * height
	{
	    iter[? "current"] = -1;
	    iter[? "current_point"] = 0;
	    iter[? "has_next"] = false;
	}


}
