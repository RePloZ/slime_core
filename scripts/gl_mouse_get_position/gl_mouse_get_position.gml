function gl_mouse_get_position() {
	/**
	    Returns the current mouse position as a vector.
    
	    @returns A vector containing mouse_x and mouse_y.
    
	    @since 1.1
	*/

	return gl_vector_create(mouse_x, mouse_y);


}
