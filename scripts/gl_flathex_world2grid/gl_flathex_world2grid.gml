function gl_flathex_world2grid(argument0, argument1) {
	/**
	    Converts a world point to a flat hex grid point.
    
	    @param map The map to use for the conversion.
	    @param v_raw The world point.
    
	    @since 1.0
	*/
	var map = argument0;
	var v_raw = argument1;

	var v = gl_vector_transform(v_raw, map[? "inverse"]);
	var vx = v[0];
	var vy = v[1];

	var cell_dimensions = gl_map_get_cell_dimensions(map);
	var cx = cell_dimensions[0];
	var cy = cell_dimensions[1];

	var hexSize = cx / 2;

	var sy = vy / cy;
	var sx = vx / hexSize;

	var ti = floor(sx - sy);
	var tj = floor(sx + sy);
	var tk = floor(-2 * sy);

	var hi0 = floor((+ti + tk + 2) / 3);
	var hj0 = floor((+tj - tk + 1) / 3);
	var hk0 = -hi0 - hj0;

	var hi = -hi0;
	var hj = hk0;

	return gl_vector_create(-hk0, -hi0);


}
