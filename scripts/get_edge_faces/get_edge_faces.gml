function get_edge_faces(argument0) {
	var point = argument0;
	var color = gl_get_color(point, 2, 0, 2);

	var faces = ds_list_create();

	switch (color)
	{
	    case 0:
	        //error!
	        break;
	    case 1:
	        ds_list_add(faces, gl_vector_add(point, global.gl_pointyhex_e));
	        ds_list_add(faces, gl_vector_add(point, global.gl_pointyhex_w));
	        break;
	    case 2:
	        ds_list_add(faces, gl_vector_add(point, global.gl_pointyhex_sw));
	        ds_list_add(faces, gl_vector_add(point, global.gl_pointyhex_ne));
	        break;
	    case 3:
	        ds_list_add(faces, gl_vector_add(point, global.gl_pointyhex_se));
	        ds_list_add(faces, gl_vector_add(point, global.gl_pointyhex_nw));
	        break;
	}

	return faces;


}
