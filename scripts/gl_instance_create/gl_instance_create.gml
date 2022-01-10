function gl_instance_create(argument0, argument1) {
	/**
	    Creates an instance of anobject at a given point.
    
	    @param position (A vector in world-space).
	    @param obj the object to instantiate.
    
	    @since 1.0
	*/
	var position = argument0;
	var obj = argument1;

	return instance_create(position[0], position[1], obj);


}
