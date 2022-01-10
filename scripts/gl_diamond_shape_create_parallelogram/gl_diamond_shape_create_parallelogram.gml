function gl_diamond_shape_create_parallelogram(argument0, argument1) {
	/**
	    Creates a new parallelogram (shape) in diamond coordinates.
    
	    @param width The width of the parallelogram in grid coordinates
	    @param height The height of the parallelogram in grid coordinates.
    
	    @returns A new shape.
    
	    @since 1.0
	*/
	var width = argument0;
	var height = argument1;

	var vertices = ds_list_create();

	var x_end = width - 1;
	var y_end = height - 1;

	ds_list_add(vertices, 
	    gl_vector_create(0, 0),
	    gl_vector_create(x_end, 0),
	    gl_vector_create(x_end, y_end),
	    gl_vector_create(0, y_end));
    
	return gl_shape_create_polygon(vertices);


}
