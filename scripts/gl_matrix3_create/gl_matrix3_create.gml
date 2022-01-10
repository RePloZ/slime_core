function gl_matrix3_create(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8) {
	/**
	    Creates a new matrix from the 9 given components.
    
	    @since 1.0
	*/
	var matrix;

	matrix[8] = argument8;
	matrix[7] = argument7;
	matrix[6] = argument6;

	matrix[5] = argument5;
	matrix[4] = argument4;
	matrix[3] = argument3;

	matrix[2] = argument2;
	matrix[1] = argument1;
	matrix[0] = argument0;

	return matrix;


}
