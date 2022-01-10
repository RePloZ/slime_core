function gl_pointset_tolist(argument0) {
	var set = argument0;

	var point = ds_map_find_first(set);
	var size = ds_map_size(set);

	var list = ds_list_create();
	ds_list_add(point);

	repeat size - 1
	{
	    point = ds_map_find_next(set, point);
	    ds_list_add(point);
	}


}
