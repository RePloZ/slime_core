function gl_shape_destroy(argument0) {
	/**
	    Destroys the given shape.
    
	    @param shape The shape to destroy
	*/
	var shape = argument0;

	var poly_count = ds_list_size(shape);

	var i;

	for(i = 0; i < poly_count; i++)
	{
	    gl_polygon_destroy(shape[| i]);
	}

	ds_list_destroy(shape);


}
