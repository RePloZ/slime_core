function gl_shape_create_polygon(argument0) {
	/**
	    Creates a new shape from a list of vertices of a convex polygon.
	    @since 1.2
    
	    @param point_list A list of polygon vertices in anti-clockwise order.
    
	    @returns A new shape.
	*/
	var point_list = argument0;

	var i = 0;
	var point_list_size = ds_list_size(point_list);

	var polygon = ds_list_create();

	for(i = 0; i < point_list_size; i++)
	{
	    var vertex = point_list[| i];
	    var next_vertex = point_list[| ((i+1) mod point_list_size)];
	    var edge = gl_vector_sub(next_vertex, vertex);
	    var pseudo_normal = gl_vector_perp(edge);
	    var half_plane = gl_halfplane_create(vertex, pseudo_normal);
    
	    ds_list_add(polygon, half_plane);
	}

	var shape = ds_list_create();

	ds_list_add(shape, polygon);

	return shape;


}
