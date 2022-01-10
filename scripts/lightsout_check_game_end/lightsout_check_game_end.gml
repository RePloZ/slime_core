function lightsout_check_game_end() {
	var values = gl_grid_get_values(grid);

	var value_count = ds_list_size(values);
	var i;

	game_finished = true;

	for(i = 0; i < value_count; i += 1)
	{
	    var cell = values[| i];
    
	    if(cell.state == true)
	    {
	        game_finished = false;
	        break;
	    }
	}


}
