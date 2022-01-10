function gl_instance_get_position(argument0) {
	/**
	    Returns the position of an instance as a vector.
    
	    @param instance The instance whose position to return.
	    @returns The position of the instance as a vector.
    
	    @since 1.1
	*/
	var instance = argument0;

	return gl_vector_create(instance.x, instance.y);


}
