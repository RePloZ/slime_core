function gl_matrix3_inverse(argument0) {
	/**
	    Returns the inverse matrix of the 
	    given matrix (provided it has one).
    
	    @param m The matrix for which to calculate 
	    the inverse for.
    
	    @since 1.0
	*/

	var m = argument0;

	var a = m[0];
	var b = m[1];
	var c = m[2];
	var d = m[3];
	var e = m[4];
	var f = m[5];
	var g = m[6];
	var h = m[7];
	var i = m[8];

	return gl_matrix3_create(
	  (e*i - f*h)/(a*e*i - a*f*h - b*d*i + b*f*g + c*d*h - c*e*g),
	  -(b*i - c*h)/(a*e*i - a*f*h - b*d*i + b*f*g + c*d*h - c*e*g),
	  (b*f - c*e)/(a*e*i - a*f*h - b*d*i + b*f*g + c*d*h - c*e*g),
	  -(d*i - f*g)/(a*e*i - a*f*h - b*d*i + b*f*g + c*d*h - c*e*g),
	  (a*i - c*g)/(a*e*i - a*f*h - b*d*i + b*f*g + c*d*h - c*e*g),
	  -(a*f - c*d)/(a*e*i - a*f*h - b*d*i + b*f*g + c*d*h - c*e*g),
	  (d*h - e*g)/(a*e*i - a*f*h - b*d*i + b*f*g + c*d*h - c*e*g), 
	  -(a*h - b*g)/(a*e*i - a*f*h - b*d*i + b*f*g + c*d*h - c*e*g),
	  (a*e - b*d)/(a*e*i - a*f*h - b*d*i + b*f*g + c*d*h - c*e*g));
 


}
