function gl_map_flip_y(argument0) {
	/**
	    Flips a map's world Y-coordinate.
    
	    @param map
    
	    @since 1.0
	*/
	var map = argument0;

	var transform = map[? "transform"];
	var new_transform = gl_matrix3_mul(transform, gl_matrix3_create_flip_y());

	map[? "transform"] = new_transform;
	map[? "inverse"] = gl_matrix3_inverse(new_transform);


}
