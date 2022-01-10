function gl_map_snap(argument0, argument1) {
	/**
	    Returns the world point of the grid point of the given world_point.
	    This can be used to snap positions to a grid:
    
	    @code
	    gl_instance_set_position(obj, gl_map_snap(map, gl_instance_get_position(obj)));
	    @endcode
    
	    @param map The map to use for the point conversions
	    @param world_point The point to snap (as vector).
    
	    @returns The snapped position (as a vector).
    
	    @since 1.1
	*/
	var map = argument0;
	var world_point = argument1;

	var grid_point = gl_map_world2grid(map, world_point);
	var new_world_point = gl_map_grid2world(map, grid_point);

	return new_world_point;


}
