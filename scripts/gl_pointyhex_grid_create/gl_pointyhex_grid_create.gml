/**
	@desc Creates a new pointy hex grid in a specified shape and size.
    
	@youmustdestroy gl_grid_destroy
    
	@param shape_label A string that represents the shape of the grid. The posibilities are "hexagon", "fatrectangle", "thinrectangle", and "parallelogram"
    
	@param size1 For most shapes, this denotes the width. For the hexagon, it denotes the side length.

	@param size2 For most figures, this denotes the height. For the hexagon, it is ignored.

	@returns A new grid.

	@since 1.0
*/
function gl_pointyhex_grid_create(shape_label, size1, size2 = 0) {
	var width;
	var height;
	var bottom_left;

	var shape;

	if(shape_label == "hexagon")
	{
	    //size2 is ignored
	    shape = gl_pointyhex_shape_create_hexagon(size1 - 1);
	    bottom_left = gl_vector_create(1 - size1, 1 - size1);
	    width = 2 * size1 - 1;
	    height = 2 * size1 - 1;
	}
	else if(shape_label == "thinrectangle")
	{
	    shape = gl_pointyhex_shape_create_thinrectangle(size1, size2);
	    bottom_left = gl_vector_create(-(size2 div 2), 0);
	    width = size1 + size2 div 2;
	    height = size2;
	}
	else if(shape_label == "fatrectangle")
	{
	    shape = gl_pointyhex_shape_create_fatrectangle(size1, size2);
	    bottom_left = gl_vector_create(-((size2 + 1) div 2), 0);
	    width = size1 + (size2 + 1) div 2;
	    height = size2;
	}
	else if(shape_label == "parallelogram")
	{
	    shape = gl_pointyhex_shape_create_parallelogram(size1, size2);
	    bottom_left = gl_vector_create(0, 0);
	    width = size1;
	    height = size2;
	}


	var grid = ds_map_create();
	var grid_data = ds_grid_create(width, height);

	grid[? "grid_data"] = grid_data;
	grid[? "bottom_left"] = bottom_left;
	grid[? "width"] = width;
	grid[? "height"] = height;
	grid[? "shape"] = shape;
	grid[? "neighbors"] = global.gl_pointyhex_neighbor_directions;

	var principle_directions = ds_list_create();

	ds_list_add(principle_directions, 
	    global.gl_pointyhex_e,
	    global.gl_pointyhex_ne,
	    global.gl_pointyhex_nw);

	grid[? "principles"] = principle_directions;

	return grid;


}
