// @description ??
var mouse_position = gl_mouse_get_position();
var grid_point = gl_map_world2grid(map, mouse_position);
var mouse_point = gl_map_grid2world(map, grid_point);

var player_position = gl_vector_create(x, y);
var player_point = gl_map_world2grid(map, player_position);

var neighbors_list = gl_grid_get_neighbors(grid, player_point);
var is_neighbor = gl_list_exists_point(neighbors_list, grid_point);

if (gl_grid_contains(grid, grid_point) && is_neighbor)
{
	x = mouse_point[0]
	y = mouse_point[1]
	gl_grid_color_neighbors(grid, map, mouse_point[0], mouse_point[1]);
}
