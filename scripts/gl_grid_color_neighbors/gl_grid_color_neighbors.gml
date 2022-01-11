// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function gl_grid_color_neighbors(grid, map, position_x, position_y)
{
	var iter = gl_grid_get_iter(grid);

	while(gl_iter_hasnext(iter))
	{
	    var grid_point_iter = gl_iter_next(iter)
		var grid_cell = gl_grid_get(grid, grid_point_iter);
		grid_cell.image_blend = c_white;
	}

	var player_position = gl_vector_create(position_x, position_y);
	var player_point = gl_map_world2grid(map, player_position);
		
	var neighbors_list = gl_grid_get_neighbors(grid, player_point);
	var size = ds_list_size(neighbors_list);
	for (var i = 0; i < size; i++)
	{
		var neighbor_position = neighbors_list[|i];
		if (gl_grid_contains(grid, neighbor_position))
		{
			var grid_cell = gl_grid_get(grid, neighbor_position);
			grid_cell.image_blend = global.gl_colors[4]
		}
	}
}