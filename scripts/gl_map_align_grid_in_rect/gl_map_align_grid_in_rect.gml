function gl_map_align_grid_in_rect(argument0, argument1, argument2, argument3) {
	/**
	    Transforma a map so that the grid
	    is aligned in the rectangle given
    
	    @param map
	    @param grid
	    @param window
	    @param alignment_type One of the constants global_gl_alignment_*.
    
	    @since 1.0
	*/

	var map = argument0;
	var grid = argument1;
	var window = argument2;
	var alignment_type = argument3;

	var grid_extent = gl_map_calc_grid_extent(map, grid);

	var grid_anchor = gl_rect_get_point(grid_extent);
	var grid_end = gl_rect_get_endpoint(grid_extent);

	var gx1 = grid_anchor[ 0];
	var gx2 = grid_end[ 0];

	var gy1 = grid_anchor[ 1];
	var gy2 = grid_end[ 1];

	var window_anchor = gl_rect_get_point(window);
	var window_end = gl_rect_get_endpoint(window);

	var wx1 = window_anchor[ 0];
	var wx2 = window_end[ 0];

	var wy1 = window_anchor[ 1];
	var wy2 = window_end[ 1];

	var cell_dimensions = map[? "cell_dimensions"];
	var cell_half_dimensions = gl_vector_mul(cell_dimensions, 0.5);

	switch (alignment_type)
	{
	    case global.gl_alignment_topleft:
	        var offset = gl_vector_create(wx1 - gx1, wy1 - gy1);
	        gl_map_translate(map, offset); 
	        break;
	    case global.gl_alignment_topcenter:
	        var offset = gl_vector_create(wx1 - gx1 + (wx2 - wx1)/2 - (gx2 - gx1)/2, wy1 - gy1);
	        gl_map_translate(map, offset);  
	        break;
	    case global.gl_alignment_topright: 
	        var offset = gl_vector_create(wx1 - gx1 + (wx2 - wx1) - (gx2 - gx1), wy1 - gy1);
	        gl_map_translate(map, offset); 
	        break;
    
	    case global.gl_alignment_middleleft: 
	        var offset = gl_vector_create(wx1 - gx1, wy1 - gy1 + (wy2 - wy1)/2 - (gy2 - gy1)/2);
	        gl_map_translate(map, offset); 
	        break;
	    case global.gl_alignment_middlecenter: 
	        var offset = gl_vector_create(wx1 - gx1 + (wx2 - wx1)/2 - (gx2 - gx1)/2, wy1 - gy1 + (wy2 - wy1)/2 - (gy2 - gy1)/2);
	        gl_map_translate(map, offset);  
	        break;
	    case global.gl_alignment_middleright: 
	        var offset = gl_vector_create(wx1 - gx1 + (wx2 - wx1) - (gx2 - gx1), wy1 - gy1 + (wy2 - wy1)/2 - (gy2 - gy1)/2);
	        gl_map_translate(map, offset); 
	        break;
    
	    case global.gl_alignment_bottomleft: 
	        var offset = gl_vector_create(wx1 - gx1, wy1 - gy1 + (wy2 - wy1) - (gy2 - gy1));
	        gl_map_translate(map, offset); 
	        break;
	    case global.gl_alignment_bottomcenter: 
	        var offset = gl_vector_create(wx1 - gx1 + (wx2 - wx1)/2 - (gx2 - gx1)/2, wy1 - gy1 + (wy2 - wy1) - (gy2 - gy1));
	        gl_map_translate(map, offset);  
	        break;
	    case global.gl_alignment_bottomright: 
	        var offset = gl_vector_create(wx1 - gx1 + (wx2 - wx1) - (gx2 - gx1), wy1 - gy1 + (wy2 - wy1) - (gy2 - gy1));
	        gl_map_translate(map, offset); 
	        break;
	    default: ;
	}
 


}
