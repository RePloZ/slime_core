function lines_check_game_end() {
	var iter = gl_grid_get_iter(foreground_grid);

	game_finished = true;

	while(gl_iter_hasnext(iter))
	{
	    var point = gl_iter_next(iter);    
	    var cell = gl_grid_get(foreground_grid, point);
    
	    if(cell == noone)
	    {
	        game_finished = false; //game has not ended, there are still cells left!
	        break; 
	    }
	}

	gl_iter_destroy(iter);


}
