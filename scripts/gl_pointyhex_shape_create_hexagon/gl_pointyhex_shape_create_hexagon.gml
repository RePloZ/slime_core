function gl_pointyhex_shape_create_hexagon(argument0) {
	/**
	    Creates a new hexagon (shape) in pointy hex coordinates.
    
	    @param side The length of the bexagon side grid coordinates
    
	    @returns A new shape.
    
	    @since 1.0
	*/
	var side = argument0;

	var hx1 = gl_halfplane_create(gl_vector_create(side, 0), gl_vector_create(-1, 0));
	var hx2 = gl_halfplane_create(gl_vector_create(-side, 0), gl_vector_create(1, 0));

	var hy1 = gl_halfplane_create(gl_vector_create(0, side), gl_vector_create(0, -1));
	var hy2 = gl_halfplane_create(gl_vector_create(0, -side), gl_vector_create(0, 1));

	var hz1 = gl_halfplane_create(gl_vector_create(0, side), gl_vector_create(-1, -1));
	var hz2 = gl_halfplane_create(gl_vector_create(0, -side), gl_vector_create(1, 1));

	var polygon = ds_list_create();

	ds_list_add(polygon, hx1, hx2, hy1, hy2, hz1, hz2);

	var shape = ds_list_create();

	ds_list_add(shape, polygon);

	return shape;


}
