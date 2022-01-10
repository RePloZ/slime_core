function gl_rect_world2grid(argument0, argument1) {
	/**
	    Converts a world point to a rect grid point.
    
	    @param map The map to use for the conversion.
	    @param v_raw The world point.
    
	    @since 1.2
	*/
	var map = argument0;
	var v_raw = argument1;

	var v = gl_vector_transform(v_raw, map[? "inverse"]);

	var vx = v[ 0];
	var vy = v[ 1];

	var cell_dimensions = gl_map_get_cell_dimensions(map);

	var cx = cell_dimensions[ 0];
	var cy = cell_dimensions[ 1];

	var gx = floor((vx + cx / 2) / cx);
	var gy = floor((vy + cy / 2) / cy);

	return gl_vector_create(gx, gy);


}
