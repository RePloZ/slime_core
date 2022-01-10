function gl_list_add_range(argument0, argument1) {
	/**
	    Adds all the items of one list to another.
    
	    @param list1 The list to add the new items to.
	    @param list2 The list to get new items from.
    
	    @since1.1
	*/
	var list1 = argument0;
	var list2 = argument1;

	var list2_size = ds_list_size(list2);

	for(i = 0; i < list2_size; i++)
	{
	    ds_list_add(list1, list2[| i]);
	}


}
