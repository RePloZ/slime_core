function gl_diamond_shape_create_rectangle(argument0, argument1) {
	/**
	    Creates a new rectangle (shape) in diamond coordinates.
    
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
	    gl_vector_create(x_end, -x_end),
	    gl_vector_create(x_end + y_end, -x_end + y_end),
	    gl_vector_create(y_end, y_end));
    
	return gl_shape_create_polygon(vertices);


}
