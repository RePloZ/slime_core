function gl_polygon_clone(argument0) {
	/**
	    Recursively clones this polygon
    
	    @youmustdestroy gl_polygon_destroy
    
	    @param polygon
	    @returns A new polygon.
    
	    @since 1.0
	*/
	var polyogn = argument0;

	var new_polyogn = ds_list_create();

	var halfplane_count = ds_list_size(polyogn);

	var i;

	for(i = 0; i < halfplane_count; i++)
	{
	    ds_list_add(new_polyogn, gl_halfplane_clone(polyogn[| i]));
	}

	return new_polyogn;


}
