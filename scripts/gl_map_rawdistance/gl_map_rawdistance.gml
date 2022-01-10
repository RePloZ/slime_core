function gl_map_rawdistance(argument0, argument1, argument2) {
	/**
	    Calculates the "raw" world distance between two
	    grid points.
    
	    Raw means if the map has been transformed (such as scaled)
	    those transfomrations won't be taken into acocunt.
    
	    @param map
	    @param v1
	    @param v2
    
	    @since 1.0
	*/
	var map = argument0;
	var v1 = argument1;
	var v2 = argument2;

	var w1 = gl_map_grid2rawworld(map, v1);
	var w2 = gl_map_grid2rawworld(map, v2);

	return gl_vector_distance(w1, w2);


}
