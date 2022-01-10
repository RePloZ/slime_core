function gl_vector_transform(argument0, argument1) {
	/**
	    Multiplies a vector with a matrix, and returns the result as a new
	    vector.
    
	    @param v
	    @param m
    
	    @returns A new vector.
    
	    @since 1.0
	*/
	var v = argument0;
	var m = argument1;

	var vx = v[0];
	var vy = v[1];

	var a = m[0];
	var b = m[1];
	var c = m[2];
	var d = m[3];
	var e = m[4];
	var f = m[5];
	var g = m[6];
	var h = m[7];
	var i = m[8];

	return gl_vector_create(g + a*vx + d*vy, h + b*vx + e*vy);


}
