function lines_update_current_piece() {
	if(current_piece != noone)
	{
	    current_piece.x = mouse_x;
	    current_piece.y = mouse_y;
	}


}
