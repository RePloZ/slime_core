function gl_matrix3_create_translation(argument0) {
	/**
	    Creates a vector that represents a 
	    translation by the given amount.
    
	    @param v The translation as a vector.
    
	    @since 1.0
	*/
	var v = argument0;

	var vx = v[ 0];
	var vy = v[ 1];

	return gl_matrix3_create(1, 0, 0, 0, 1, 0, vx, vy, 1);


}
