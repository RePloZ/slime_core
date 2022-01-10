function gl_pointset_addlist(argument0, argument1) {
	var set = argument0;
	var list = argument1;
	var size = ds_list_size(list);
	var i;

	for(i = 0; i < size; i++)
	{
	    gl_pointset_add(set, list[| i]);
	}


}
