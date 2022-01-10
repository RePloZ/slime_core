function gl_matrix3_mul(argument0, argument1) {
	/**
	    Multiplies two matrices together and returns the result as a new matrix.
    
	    @param m1
	    @param m2
    
	    @returns A matrix representing m1 multiplied with m2.
    
	    @since 1.0
	*/
	var m1 = argument0;
	var m2 = argument1;

	var a1 = m1[0];
	var b1 = m1[1];
	var c1 = m1[2];
	var d1 = m1[3];
	var e1 = m1[4];
	var f1 = m1[5];
	var g1 = m1[6];
	var h1 = m1[7];
	var i1 = m1[8];

	var a2 = m2[0];
	var b2 = m2[1];
	var c2 = m2[2];
	var d2 = m2[3];
	var e2 = m2[4];
	var f2 = m2[5];
	var g2 = m2[6];
	var h2 = m2[7];
	var i2 = m2[8];

	var a = a1*a2 + b1*d2 + c1*g2;
	var b = a1*b2 + b1*e2 + c1*h2;
	var c = a1*c2 + b1*f2 + c1*i2;
	var d = a2*d1 + d2*e1 + f1*g2;
	var e = b2*d1 + e1*e2 + f1*h2;
	var f = c2*d1 + e1*f2 + f1*i2;
	var g = a2*g1 + d2*h1 + g2*i1;
	var h = b2*g1 + e2*h1 + h2*i1;
	var i = c2*g1 + f2*h1 + i1*i2;

	return gl_matrix3_create(a, b, c, d, e, f, g, h, i);


}
