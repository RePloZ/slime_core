function gl_instance_set_position(argument0, argument1) {
	/**
	    Sets the position of an instance to the ggiven vector coordinates.
    
	    @param instance The instance to move.
	    @param world_point The location to move the instance to (as a vector).
    
	    @since 1.1
	*/
	var instance = argument0;
	var world_point = argument1;

	instance.x = world_point[0];
	instance.y = world_point[1];


}
