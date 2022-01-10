function gl_map_grid2rawworld(argument0, argument1) {
	/**
	    Does the calculation for converting grid coordinates
	    to world coordinates. No map transforms are incorporated.
            
	    @note Generally, this method should not be used. Rather use one of the gl_*_map_grid2world functions.
    
	    @param map The map to use for the conversion.
	    @param point The point to convert.
    
	    @returns The point converted to workd coordinates.
    
	    @since 1.0
	*/
	var map = argument0;
	var point = argument1;

	var s = gl_vector_transform(point, map[? "base_transform"]);

	return s;


}
