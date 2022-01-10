function gl_pointyhex_map_create(argument0) {
	/**
	    Creates a new map that can be used with a pointy hex grid.
    
	    @youmustdestroy gl_map_destroy
    
	    @param cell_dimensions The dimensions (as a vector).
	    @returns A new map.
    
	    @since 1.0
	*/
	var cell_dimensions = argument0;

	var cx = cell_dimensions[ 0];
	var cy = cell_dimensions[ 1];

	var map = ds_map_create();

	map[? "cell_dimensions"] = cell_dimensions;

	map[? "base_transform"] = 
	    gl_matrix3_create(
	        cx, 0, 0, 
	        cx/2, 3/4*cy, 0, 
	        0, 0, 1);
 
	map[? "transform"] = gl_matrix3_identity();
	map[? "inverse"] = gl_matrix3_identity();
	map[? "type"] = global.gl_gridtype_pointyhex;

	return map;


}
