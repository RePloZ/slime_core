function gl_shape_union(argument0, argument1) {
	/**
	    Constructs a new shape that represents the union of the two shapes given.
    
	    @param shape1
	    @param shape2
    
	    @returns A new shape.
    
	    @since 1.0
	*/
	var shape1 = argument0;
	var shape2 = argument1;

	var new_shape = ds_list_create();

	var poly_count1 = ds_list_size(shape1);
	var i;

	for(i= 0; i < poly_count1; i += 1)
	{
	    ds_list_add(new_shape, shape1[| i]);
	}

	var poly_count2 = ds_list_size(shape2);
	var i;

	for(i= 0; i < poly_count2; i += 1)
	{
	    ds_list_add(new_shape, shape2[| i]);
	}


}
