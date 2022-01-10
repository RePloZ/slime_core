function gl_pointset_add(argument0, argument1) {
	var set = argument0;
	var point = argument1;

	if(!ds_map_exists(set, point))
	{
	    set[? point] = point;
	}


}
