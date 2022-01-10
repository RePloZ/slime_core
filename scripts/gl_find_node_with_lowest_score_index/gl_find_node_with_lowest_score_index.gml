function gl_find_node_with_lowest_score_index(argument0, argument1) {
	/**
	    Private.
	    @since 1.0
	*/
	var list = argument0;
	var score_map = argument1;

	var point_count = ds_list_size(list);

	var i;

	var point = list[| 0];
	var point_score = score_map[? point];
	var min_score = point_score;
	var min_index = 0;

	for(i = 1; i < point_count; i += 1)
	{
	    point = list[| i];
	    point_score  = gl_grid_get(score_map, point);
    
	    if(point_score < min_score)
	    {
	        min_score = point_score;
	        min_index = i;
	    }   
	}

	return min_index;


}
