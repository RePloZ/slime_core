function gl_map_translate(argument0, argument1) {
	/**
	    Translates a map.
    
	    This has the effect of moving all cells by the given amount.
    
	    @param map
	    @param offset A vector
    
	    @since 1.0
	*/

	var map = argument0;
	var offset = argument1;

	var transform = map[? "transform"];
	var new_transform = gl_matrix3_mul(transform, gl_matrix3_create_translation(offset));
	map[? "transform"] = new_transform;
	map[? "inverse"] = gl_matrix3_inverse(new_transform);


}
