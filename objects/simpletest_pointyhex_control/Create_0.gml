gl_init();

var cell_prefab = pointyhex_cell;

var cell_dimensions = gl_sprite_get_size(object_get_sprite(cell_prefab));
var room_rect = gl_room_get_extent();

grid = gl_pointyhex_grid_create("hexagon", 5);
map = gl_pointyhex_map_create(cell_dimensions);

gl_map_scale(map, 1.1);
gl_map_center_grid_in_rect(map, grid, room_rect);

var iter = gl_grid_get_iter(grid);

while(gl_iter_hasnext(iter))
{
    var grid_point = gl_iter_next(iter);    
    var world_point = gl_map_grid2world(map, grid_point);
    var cell = gl_instance_create(world_point, cell_prefab);

    cell.name = gl_vector2str(grid_point);
	
	gl_grid_set(grid, grid_point, cell);
}

gl_iter_destroy(iter);
