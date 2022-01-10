function gl_shape_clone(argument0) {
	/**
	    Recursively clones a shape.
    
	    @youmustdestroy gl_shape_destroy
    
	    @param shape The shape to clone.
    
	    @returns a new shape
    
	    @since 1.0
	*/
	var shape = argument0;

	var new_shape = ds_list_create();
	var poly_count = ds_list_size(shape);

	var i;

	for(i = 0; i < poly_count; i++)
	{
	    ds_list_add(new_shape, gl_polygon_clone(shape[| i]));
	}

	return new_shape;


}
