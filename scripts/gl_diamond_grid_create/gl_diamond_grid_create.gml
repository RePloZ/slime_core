function gl_diamond_grid_create(argument0, argument1, argument2) {
	/**
	    Creates a new diamond grid in a specified shape and size.
    
	    @youmustdestroy gl_grid_destroy
    
	    @param shape_label A string that represents the shape of the grid. 
	        The posibilities are "parallelogram", "rectangle".
    
	    @param size1 For most shapes, this denotes the width.     
	    @param size2 For most figures, this denotes the height. 
        
	    @returns A new grid.
    
	    @since 1.2
	*/
	var shape_label = argument0;
	var size1 = argument1;
	var size2 = argument2;

	var width;
	var height;
	var bottom_left;

	var shape;

	if(shape_label == "parallelogram")
	{
	    shape = gl_diamond_shape_create_parallelogram(size1, size2);
	    bottom_left = global.gl_vector_zero;
	    width = size1;
	    height = size2;
	}
	else if(shape_label == "rectangle")
	{
	    shape = gl_diamond_shape_create_rectangle(size1, size2);
    
	    var diamondSize = size1 + size2 - 1;
    
	    bottom_left = gl_vector_create(0, 1 - size1);
	    width = diamondSize;
	    height = diamondSize;
	}
	else if (shape_label == "circle")
	{
	    shape = gl_diamond_shape_create_circle(size1);
	    bottom_left = gl_vector_create(1 - size1, 1 - size1);    
	    width = 2 * size1 - 1;
	    height = 2 * size1 - 1;
	}

	var grid = ds_map_create();
	var grid_data = ds_grid_create(width, height);

	grid[? "grid_data"] = grid_data;
	grid[? "bottom_left"] = bottom_left;
	grid[? "width"] = width;
	grid[? "height"] = height;
	grid[? "shape"] = shape;
	grid[? "neighbors"] = global.gl_diamond_neighbor_directions;

	var principle_directions = ds_list_create();

	ds_list_add(principle_directions, 
	    global.gl_diamond_ne,
	    global.gl_diamond_nw);

	grid[? "principles"] = principle_directions;

	return grid;


}
