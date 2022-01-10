function gl_diamond_shape_create_circle(argument0) {
	/**
	    Creates a new circle in diamond coordinates. 
    
	    (The circle has the shape of a diamond).
    
	    @param radius The radius of the circle.
    
	    @returns A new shape.
    
	    @since 1.2
	*/
	var radius = argument0;

	var x_end = radius - 1;
	var vertices = ds_list_create();
	ds_list_add(vertices, 
	    gl_vector_create(-x_end, x_end),
	    gl_vector_create(-x_end, -x_end),
	    gl_vector_create(x_end, -x_end),
	    gl_vector_create(x_end, x_end)
	    );
    
	return gl_shape_create_polygon(vertices);


}
