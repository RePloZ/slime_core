function get_point_axis_color(argument0, argument1) {
	var point = argument0;
	var show_z = argument1;

	if point[0] == 0 && point[1] == 0
	{
	    return c_black;
	}
	else if point[0] == 0
	{
	    return global.gl_colors[7];
	}
	else if point[1] == 0
	{
	    return global.gl_colors[5];
	}
	else if show_z && (point[0] + point[1] == 0)
	{
	    return global.gl_colors[4];
	}
	else
	{
	    var i = 255*(.5 - gl_get_color(point, 3, 1, 1)/10);
    
	    return make_colour_hsv(0, 0, i);
	}


}
