function gl_map_get_cell_dimensions(argument0) {
	/**
	    Gets the cell dimensions of the given map.
	    The dimensions are not transformed (scaled, 
	    for example) even if the map has been transformed 
	    (scaled).
    
	    @param map
    
	    @since 1.0
	*/
	var map = argument0;

	return map[? "cell_dimensions"];


}
