function lightsout_toggle_neighbors(argument0) {
	var point = argument0;

	var neighbors = gl_grid_get_neighbors(grid, point);
	var neighbor_count = ds_list_size(neighbors);
	var i;

	for(i = 0; i < neighbor_count; i += 1)
	{
	    var neighbor = neighbors[| i];
	    var cell = gl_grid_get(grid, neighbor);
	    cell.state = !cell.state;
	    lightsout_update_cell(cell);
	}


}
