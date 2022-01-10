function gl_matrix3_create_flip_y() {
	/**
	    Creates a new matrix that will flip the y coordinate of a vector
	    if that vector is multiplied with the matrix.
    
	    @since 1.0
	*/
	return gl_matrix3_create(
	    1, 0, 0,
	    0, -1, 0,
	    0, 0, 1);


}
