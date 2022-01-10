function pathfinding_update_cell2(argument0, argument1, argument2, argument3) {
	var cell = argument0;
	var is_start = argument1;
	var is_goal = argument2;
	var point = argument3;

	var color_offset1 = gl_get_color(point, 3, 1, 1)*4;
	var color_offset2 = gl_get_color(point, 2, 1, 1)*4;

	if(is_start)
	{
	    cell.image_blend = global.gl_colors[7];    
	}
	else if(is_goal)
	{
	    cell.image_blend = global.gl_colors[7];
	}
	else if cell.path
	{
	    cell.image_blend = global.gl_colors[color_offset2 + 2];
	}
	else if cell.accessible
	{
	   cell.image_blend = global.gl_colors[color_offset1 + 1];
	}
	else
	{
	    cell.image_blend = global.gl_colors[color_offset2 + 0];
	} 


}
