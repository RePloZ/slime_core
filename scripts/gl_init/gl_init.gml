function gl_init() {
	/**
	    Initializes constants necessary to use Grids.
    
	    @since 1.0
	*/

	// Colors
	global.gl_colors[0] = make_colour_rgb(133, 219, 233);
	global.gl_colors[1] = make_colour_rgb(198, 224, 34);
	global.gl_colors[2] = make_colour_rgb(255, 215, 87);
	global.gl_colors[3] = make_colour_rgb(228, 120, 129);

	global.gl_colors[4] = make_colour_rgb(42, 192, 217);
	global.gl_colors[5] = make_colour_rgb(114, 197, 29);
	global.gl_colors[6] = make_colour_rgb(247, 188, 0);
	global.gl_colors[7] = make_colour_rgb(215, 55, 82);

	global.gl_colors[8] = make_colour_rgb(205, 240, 246);
	global.gl_colors[9] = make_colour_rgb(229, 242, 154);
	global.gl_colors[10] = make_colour_rgb(255, 241, 153);
	global.gl_colors[11] = make_colour_rgb(240, 182, 187);

	global.gl_colors[12] = make_colour_rgb(235, 249, 252);
	global.gl_colors[13] = make_colour_rgb(241, 249, 204);
	global.gl_colors[14] = make_colour_rgb(255, 252, 193);
	global.gl_colors[15] = make_colour_rgb(247, 222, 217);

	global.gl_alignment_topleft = 0;
	global.gl_alignment_topcenter = 1;
	global.gl_alignment_topright = 2;

	global.gl_alignment_middleleft = 3;
	global.gl_alignment_middlecenter = 4;
	global.gl_alignment_middleright = 5;

	global.gl_alignment_bottomleft = 6;
	global.gl_alignment_bottomcenter = 7;
	global.gl_alignment_bottomright = 8;

	global.gl_pointyhex_ne = gl_vector_create(0, 1);
	global.gl_pointyhex_nw = gl_vector_create(-1, 1);
	global.gl_pointyhex_w = gl_vector_create(-1, 0);

	global.gl_pointyhex_sw = gl_vector_create(0, -1);
	global.gl_pointyhex_se = gl_vector_create(1, -1);
	global.gl_pointyhex_e = gl_vector_create(1, 0);

	global.gl_pointyhex_neighbor_directions = ds_list_create();

	ds_list_add(global.gl_pointyhex_neighbor_directions,
	    global.gl_pointyhex_ne,
	    global.gl_pointyhex_nw,
	    global.gl_pointyhex_w,
	    global.gl_pointyhex_sw,
	    global.gl_pointyhex_se,
	    global.gl_pointyhex_e);
    
	global.gl_flathex_ne = gl_vector_create(1, 0);
	global.gl_flathex_n = gl_vector_create(0, 1);
	global.gl_flathex_nw = gl_vector_create(-1, 1);

	global.gl_flathex_sw = gl_vector_create(-1, 0);
	global.gl_flathex_s = gl_vector_create(0, -1);
	global.gl_flathex_se = gl_vector_create(1, -1);

	global.gl_flathex_neighbor_directions = ds_list_create();

	ds_list_add(global.gl_flathex_neighbor_directions,
	    global.gl_flathex_ne,
	    global.gl_flathex_n,
	    global.gl_flathex_nw,
	    global.gl_flathex_sw,
	    global.gl_flathex_s,
	    global.gl_flathex_se);
    
	//-- @since 1.2
	global.gl_rect_e = gl_vector_create(1, 0);
	global.gl_rect_n = gl_vector_create(0, 1);
	global.gl_rect_w = gl_vector_create(-1, 0);
	global.gl_rect_s = gl_vector_create(0, -1);

	global.gl_rect_neighbor_directions = ds_list_create();

	ds_list_add(global.gl_rect_neighbor_directions,
	    global.gl_rect_e,
	    global.gl_rect_n,
	    global.gl_rect_w,
	    global.gl_rect_s);    

	global.gl_diamond_ne = gl_vector_create(1, 0);
	global.gl_diamond_nw = gl_vector_create(0, 1);
	global.gl_diamond_sw = gl_vector_create(-1, 0);
	global.gl_diamond_se = gl_vector_create(0, -1);

	global.gl_diamond_neighbor_directions = ds_list_create();

	ds_list_add(global.gl_diamond_neighbor_directions,
	    global.gl_diamond_ne,
	    global.gl_diamond_nw,
	    global.gl_diamond_sw,
	    global.gl_diamond_se);

	//-- @since 1.0
	global.gl_gridtype_rect = 0; // @since 1.2
	global.gl_gridtype_diamond = 1;// @since 1.2    
	global.gl_gridtype_pointyhex = 2;
	global.gl_gridtype_flathex = 3;

	global.gl_vector_zero = gl_vector_create(0, 0);


}
