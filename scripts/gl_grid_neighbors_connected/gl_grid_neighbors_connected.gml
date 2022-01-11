/// @desc Tests whether two points are connected, that is, have the same connection index.
/// @param grid 
/// @param point1
/// @param point2
/// @returns true if the two points are connected, false otherwise.
function gl_grid_neighbors_connected(grid, point1, point2) {
	/**
	    Tests whether two points are connected, 
	    that is, have the same connection index.    
	    It is assumed the two points are neighbors.
	*/
	return 
	    gl_grid_connection_index(grid, point1)
	    == gl_grid_connection_index(grid, point2);


}
