// @description ??
var mouse_position = gl_mouse_get_position();
var map = simpletest_pointyhex_control.map;
var grid_point = gl_map_world2grid(map, mouse_position);
var world_point = gl_map_grid2world(map, grid_point);

x = world_point[0]
y = world_point[1]

show_debug_message(grid_point);
show_debug_message(world_point);