/// @description set up the player
map = simpletest_pointyhex_control.map;
grid = simpletest_pointyhex_control.grid;
var point = gl_vector_create(0, 0);
var world_point = gl_pointyhex_grid2world(map, point);

x = world_point[0]
y = world_point[1]

gl_grid_color_neighbors(grid, map, x, y);