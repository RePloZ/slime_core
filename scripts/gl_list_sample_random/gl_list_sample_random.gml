function gl_list_sample_random(argument0, argument1) {
	/**
	    Returns a random sample from the given list.
    
	    @param list The list to sample.
	    @param count The number of samples to return.
    
	    @since 1.1
	*/
	var list = argument0;
	var count = argument1;

	var list_count = ds_list_size(list);

	var a;

	a[count - 1] = 0;

	for(var i = 0; i < list_count; i++)
	{
	    a[i] = i;
	}

	for(var i = 0; i < count; i++)
	{
	    var r = gl_random_int(list_count);    
	    var tmp = a[i];
    
	    a[i] = a[r];
	    a[r] = tmp;
	}

	var sample_list = ds_list_create();

	for(i = 0; i < count; i++)
	{
	    ds_list_add(sample_list, list[| a[i]]);
	}

	a = 0;

	return sample_list;


}
