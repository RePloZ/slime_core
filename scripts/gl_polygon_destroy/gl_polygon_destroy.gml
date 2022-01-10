function gl_polygon_destroy(argument0) {
	/**
	    Destroys the given polygon.
    
	    @param polygon (A list of halfplanes).
    
	    @since 1.0
	*/
	var polygon = argument0;

	var halfplane_count = ds_list_size(polygon);

	var i;

	for(i = 0; i < halfplane_count; i++)
	{
	    gl_halfplane_destroy(polygon[| i]);
	}

	ds_list_destroy(polygon);


}
