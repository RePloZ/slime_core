function gl_diamond_map_create(argument0) {
	/**
	    Creates a new map that ccan be used with a diamond grid.
    
	    @youmustdestroy gl_map_destroy
    
	    @param cell_dimensions The dimensions (as a vector).
	    @returns A new map.
    
	    @since 1.2
	*/
	var cell_dimensions = argument0;

	var cx = cell_dimensions[ 0];
	var cy = cell_dimensions[ 1];

	var map = ds_map_create();

	map[? "cell_dimensions"] = cell_dimensions;

	map[? "base_transform"] = 
	    gl_matrix3_create(
	        cx/2, -cx/2, 0, 
	        cy/2, cy/2, 0, 
	        0, 0, 1);
 
	map[? "transform"] = gl_matrix3_identity();
	map[? "inverse"] = gl_matrix3_identity();
	map[? "type"] = global.gl_gridtype_diamond;

	return map;


}
