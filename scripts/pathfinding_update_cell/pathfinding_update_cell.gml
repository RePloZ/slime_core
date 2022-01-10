function pathfinding_update_cell(argument0, argument1, argument2) {
	var cell = argument0;
	var is_start = argument1;
	var is_goal = argument2;

	if(is_start)
	{
	    cell.sprite_index = start_sprite;
	    //cell.image_blend = global.gl_colors[1];    
	}
	else if(is_goal)
	{
	    cell.sprite_index = goal_sprite;
	    //cell.image_blend = global.gl_colors[3];
	}
	else if cell.path
	{
	    cell.sprite_index = path_sprite;
	    //cell.image_blend = global.gl_colors[2];
	}
	else if cell.accessible
	{
	   cell.sprite_index = grass_sprite;
	   //cell.image_blend = global.gl_colors[1];
	}
	else
	{
	    cell.sprite_index = mountain_sprite;
	    cell.image_blend = c_white;
	} 


}
