function lines_update_matches(argument0) {
	var point = argument0;

	var lines = gl_get_connected_lines(foreground_grid, point);
	var lines_count = ds_list_size(lines);
	var did_find_line = false;

	for(var i = 0; i < lines_count; i++)
	{
	    var line = lines[| i];
	    var line_length = ds_list_size(line);
    
	    if(line_length >= 4)
	    {
	        did_find_line = true;
	        line_count++;
        
	        for(var j = 0; j < line_length; j++)
	        {
	            var line_point = line[| j];
	            var piece = gl_grid_get(foreground_grid, line_point);
            
	            if(piece != noone)
	            {
	                with (piece)
	                {
	                    instance_destroy();
	                }
                
	                gl_grid_set(foreground_grid, line_point, noone);
	            }
	        }
	    }
	}

	return did_find_line;


}
