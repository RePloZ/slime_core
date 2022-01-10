function gl_room_get_extent() {
	/**
	    Gets the extent of the current room as a rectangle.
    
	    @returns A rectangle with [0, 0] as one corner, and 
	    dimensions the room width and height.
    
	    @since 1.1
	*/

	return gl_rect_create(0, 0, room_width, room_height);


}
