/// @description set up the player

var point = gl_vector_create(0, 0);
var world_point = gl_pointyhex_grid2world(simpletest_pointyhex_control.map, point);

x = world_point[0]
y = world_point[1]