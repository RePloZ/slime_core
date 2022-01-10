function gl_diamond_grid2world(argument0, argument1) {
	/**
	    Converts a grid point to world point using the given map.
    
	    @param map The map to use for the conversion
	    @param point The point to convert
    
	    @returns A new vector.
    
	    @since 1.2
	*/
	var map = argument0;
	var point = argument1;

	var s = gl_map_grid2rawworld(map, point);

	return gl_vector_transform(s, map[? "transform"]);


}
