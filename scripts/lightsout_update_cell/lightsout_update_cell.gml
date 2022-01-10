function lightsout_update_cell(argument0) {
	var cell = argument0;

	var color_index = 0;

	if (cell.state)
	{
	    color_index = 2;
	}

	var color = global.gl_colors[color_index];  
    
	cell.image_blend = color;


}
