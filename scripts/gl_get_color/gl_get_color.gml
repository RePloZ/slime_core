function gl_get_color(argument0, argument1, argument2, argument3) {
	/**
	    The parallelogram between (ux, 0) and (vx, vy) 
	    defines a grid coloring. This function returns the color
	    for the given point for the grid-coloring defined by the 
	    parallelogram between (ux, 0) and (vx, vy).
    
	    @see http://gamelogic.co.za/2013/12/18/what-are-grid-colorings/
    
	    @param point The point for which to calculate a color
    
	    @param ux The x-coordinate of one side of the parallelogram
	    @param vx The x-coordinate of other side of the parallelogram
	    @param vy The y-coordinate of other side of the parallelogram   
	    @returns an integer index.
	    @since 1.0
	*/
	var point = argument0;
	var ux = argument1;
	var vx = argument2;
	var vy = argument3;

	var px = point[0];
	var py = point[1];

	var colorCount = ux * vy;

	var a = (px * vy - py * vx) / colorCount;
	var b = (py * ux) / colorCount;

	var m = floor(a);
	var n = floor(b);

	var baseVectorX = m * ux + n * vx;
	var baseVectorY = n * vy;

	var offsetX = (px - baseVectorX) mod ux;
	var offsetY = py - baseVectorY;

	var colorIndex = floor(offsetX + offsetY * ux);

	return colorIndex;


}
