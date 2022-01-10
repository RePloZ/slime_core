function gl_pointyhex_shape_create_parallelogram(argument0, argument1) {
	/**
	    Creates a new parallelogram (shape) in pointy hex coordinates.
    
	    @param width The width of the parallelogram in grid coordinates
	    @param height The height of the parallelogram in grid coordinates.
    
	    @returns A new shape.
    
	    @since 1.0
	*/
	var width = argument0;
	var height = argument1;

	var h1 = gl_halfplane_create(gl_vector_create(0, 0), gl_vector_create(1, 0));
	var h2 = gl_halfplane_create(gl_vector_create(width - 1, 0), gl_vector_create(-1, 0));

	var h3 = gl_halfplane_create(gl_vector_create(0, 0), gl_vector_create(0, 1));
	var h4 = gl_halfplane_create(gl_vector_create(0, height - 1), gl_vector_create(0, -1));

	var polygon = ds_list_create();

	ds_list_add(polygon, h1, h2, h3, h4);

	var shape = ds_list_create();

	ds_list_add(shape, polygon);

	return shape;


}
