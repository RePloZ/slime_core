function gl_map_scale(argument0, argument1) {
	/**
	    Scales the map.
    
	    Scaling the map (by value larger than 1) has the effect that cell centers are placed further
	    apart.
    
	    @param map
	    @param scale The amount to scale by (a non-zero number).
    
	    @since 1.0
	*/
	var map = argument0;
	var scale = argument1;

	var transform = map[? "transform"];
	var new_transform = gl_matrix3_mul(transform, gl_matrix3_create_scale(scale));

	map[? "transform"] = new_transform;
	map[? "inverse"] = gl_matrix3_inverse(new_transform);


}
