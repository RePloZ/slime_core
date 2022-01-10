function __global_object_depths() {
	// Initialise the global array that allows the lookup of the depth of a given object
	// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
	// NOTE: MacroExpansion is used to insert the array initialisation at import time
	gml_pragma( "global", "__global_object_depths()");

	// insert the generated arrays here
	global.__objectDepths[0] = 0; // lightsout_pointyhex_cell
	global.__objectDepths[1] = 0; // lightsout_control
	global.__objectDepths[2] = 0; // pathfinding_cell
	global.__objectDepths[3] = 0; // pathfinding_control
	global.__objectDepths[4] = 0; // path_finding_control2
	global.__objectDepths[5] = 0; // pathfinding_background_cell
	global.__objectDepths[6] = 0; // pointyhex_cell
	global.__objectDepths[7] = 0; // simpletest_pointyhex_control
	global.__objectDepths[8] = 0; // flathex_cell
	global.__objectDepths[9] = 0; // simpletest_flathex_control
	global.__objectDepths[10] = -1; // lines_piece
	global.__objectDepths[11] = 0; // lines_controller
	global.__objectDepths[12] = 0; // lines_cell
	global.__objectDepths[13] = 0; // maze_cell
	global.__objectDepths[14] = 0; // maze_controller
	global.__objectDepths[15] = -2; // maze_filler_cell
	global.__objectDepths[16] = 0; // ResetButton
	global.__objectDepths[17] = 0; // rect_cell
	global.__objectDepths[18] = 0; // simpletest_rect_control
	global.__objectDepths[19] = 0; // diamond_cell
	global.__objectDepths[20] = 0; // simpletest_diamond_control


	global.__objectNames[0] = "lightsout_pointyhex_cell";
	global.__objectNames[1] = "lightsout_control";
	global.__objectNames[2] = "pathfinding_cell";
	global.__objectNames[3] = "pathfinding_control";
	global.__objectNames[4] = "path_finding_control2";
	global.__objectNames[5] = "pathfinding_background_cell";
	global.__objectNames[6] = "pointyhex_cell";
	global.__objectNames[7] = "simpletest_pointyhex_control";
	global.__objectNames[8] = "flathex_cell";
	global.__objectNames[9] = "simpletest_flathex_control";
	global.__objectNames[10] = "lines_piece";
	global.__objectNames[11] = "lines_controller";
	global.__objectNames[12] = "lines_cell";
	global.__objectNames[13] = "maze_cell";
	global.__objectNames[14] = "maze_controller";
	global.__objectNames[15] = "maze_filler_cell";
	global.__objectNames[16] = "ResetButton";
	global.__objectNames[17] = "rect_cell";
	global.__objectNames[18] = "simpletest_rect_control";
	global.__objectNames[19] = "diamond_cell";
	global.__objectNames[20] = "simpletest_diamond_control";


	// create another array that has the correct entries
	var len = array_length_1d(global.__objectDepths);
	global.__objectID2Depth = [];
	for( var i=0; i<len; ++i ) {
		var objID = asset_get_index( global.__objectNames[i] );
		if (objID >= 0) {
			global.__objectID2Depth[ objID ] = global.__objectDepths[i];
		} // end if
	} // end for


}
