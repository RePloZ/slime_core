function lightsout_draw_map() {
	var i, j;

	for(i = 0; i < 800; i+=10)
	{
	    for(j = 0; j < 800; j += 10)
	    {
	        var world_point = gl_vector_create(i, j);
	        var grid_point = gl_pointyhex_world2grid(map, world_point);
	        var color_index = gl_get_color(grid_point, 4, 1, 1);
	        var color = global.gl_colors[color_index];

	        draw_point_color(i, j, color);
	    }
	}


}
