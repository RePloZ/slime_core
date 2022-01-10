function gl_iter_create(argument0, argument1, argument2, argument3) {
	/**
	    Private.
	    Creates a new iterator.
    
	    @param width
	    @param height
	    @param bottom_left
	    @param shape
	    @since 1.0
	*/
	var width = argument0;
	var height = argument1;
	var bottom_left = argument2;
	var shape = argument3;

	var iter = ds_map_create();

	iter[? "width"] = width;
	iter[? "height"] = height;
	iter[? "current"] = 0;
	iter[? "bottom_left"] = bottom_left;
	iter[? "shape"] = shape;

	gl_iter_move(iter);

	return iter;


}
