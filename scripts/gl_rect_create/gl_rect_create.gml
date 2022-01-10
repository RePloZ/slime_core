function gl_rect_create(argument0, argument1, argument2, argument3) {
	/**
	    Creates a new rectangle.
    
	    @param px The x-coordinate of one corner of the rectangle.
	    @param py The y-coordinate of one corner of the rectangle.
	    @param width The width of the recctangle.
	    @param height The height of the rectangle.
    
	    The rectangle (as a list of four numbers), an the order above.  
	*/
	var px = argument0;
	var py = argument1;
	var width = argument2;
	var height = argument3;

	var rect = ds_list_create();

	ds_list_add(rect, px);
	ds_list_add(rect, py);
	ds_list_add(rect, width);
	ds_list_add(rect, height);

	return rect;


}
